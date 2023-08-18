\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.17
%(volume.page)

global = {
 \key e \phrygian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

\header {
  title = \markup \center-column {"Ite IIa." \vspace #1 }
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
I -- te, _ _ _ _ mis -- sa est. }
chantTextB = \lyricmode {
De -- o, _ _ _ _ grá -- ti -- as. }

chantMusic = {
\tieDown   g'4 ( a'4 b'4) b'4. a'4 ( c''4 b'4 a'4 g'4.) a'4 ( a'4 g'4 f'4 e'4 d'4) \divisioMinima
 d'4 ( a'4) ~ a'4 ( g'4) a'4 ( c''4 b'4 a'4 g'4 f'4) g'4 ( a'4 g'4) g'4 e'4 \finalis

}

altoMusic = {
e'2*3/2 ~ e'2*3/4 ~ e'2*4/2 d'2*3/4 c'2*3/2 ~ c'2 a4 -\tweak Glissando.Y-offset #-0.8 \glissando \divisioMinima
d'4 f'2*3/2 e'2*4/2 d'2 ~ d'2*4/2 b4 \finalis
}

tenorMusic = {
b2*3/2 g2*3/4 a2*4/2 e2*3/4 f2*3/2 g2 f4 ~ \divisioMinima
f4 a2*3/2 ~ a2*4/2 ~ a2 g2*4/2 ~ g4 \finalis
}

bassMusic = {
e2*3/2 d2*3/4 c2*4/2 b,2*3/4 a,2*3/2 ~ a,2 d4 ~ \divisioMinima
d4 ~ d2*3/2 c2*4/2 ~ c2 b,2*4/2 e4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "III"
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
