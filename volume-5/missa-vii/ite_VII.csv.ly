\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.46
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

\header {
  title = \markup \center-column {"Ite VII." \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page ""
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "" }
    \line {}
  }
}

chantTextA = \lyricmode {
I -- te, _ _ _ _ _ mis -- sa est. }
chantTextB = \lyricmode {
De -- o, _ _ _ _ _ grá -- ti -- as. }

chantMusic = {
\tieDown   bes'4 a'4 ( g'4 f'4) ~ f'4 ( ees'4 g'4) \divisioMinima
 bes'4 ( a'4 f'4) g'4 ( f'4) ~ f'4 ( ees'4 g'4) ~ g'4 ( c'4) \divisioMinima
 c'4 ( d'4 ees'4 f'\prall g'4 f'4 ees'4 d'4 c'4) \divisioMinima
 c'4 ( d'4 ees'4 f'\prall g'4) ~ g'4 ( f'4) g'4 ( ees'4) g'4 g'4 f'4 \finalis

}

altoMusic = {
d'4 ~ d'2 c'2*4/2 \divisioMinima
d'2*4/2 c'2*3/2 ~ c'2*3/2 ~ \divisioMinima
c'2 ~ c'2 bes2*5/2 ~ \divisioMinima
bes2 ~ bes2 ~ bes2*3/2 ~ bes2 ~ bes2 a4 \finalis
}

tenorMusic = {
g4 ~ g2 ~ g2*4/2 ~ \divisioMinima
g2*4/2 ~ g2*3/2 ees2*3/2 \divisioMinima
f2 g2 ~ g2*5/2 \divisioMinima
f2 ees2 d2*3/2 c2 ~ c2 ~ c4 \finalis
}

bassMusic = {
r4 d2 ees2*4/2 \divisioMinima
bes,2*4/2 c2*3/2 ~ c2*3/2 ~ \divisioMinima
c2 ~ c2 g,2*5/2 ~ \divisioMinima
g,2 ~ g,2 ~ g,2*3/2 ~ g,2 ees,2 f,4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "VIII"
      }
      \new Staff = up <<
        \new Voice = "chant" {
          \voiceOne \global \chantMusic
        }
        \new Voice {
          \voiceTwo \global \altoMusic
        }
      >>

      \new Staff = down <<
        \clef bass
        \new Voice {
          \voiceOne \global \tenorMusic
        }
        \new Voice {
          \voiceTwo \global \bassMusic
        }
	\new Voice {
        \voiceThree \global \voiceLines
        }
      >>
    >>
    \new Lyrics \lyricsto chant {
      \chantTextA
    }
    \new Lyrics \lyricsto chant {
      \chantTextB
    }
  >>
  \layout{
  }
  \midi{
    \tempo 4 = 125
  }
}
