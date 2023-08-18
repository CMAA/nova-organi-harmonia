\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.17
%(volume.page)

global = {
 \key c \major
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

\header {
  title = \markup \center-column {"Ite IIb." \vspace #1 }
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
I -- te, _ _ _ _ _ _ mis -- _ sa est. }
chantTextB = \lyricmode {
De -- o, _ _ _ _ _ _ grá -- _ ti -- as. }

chantMusic = {
\tieDown   c''4 ( b'4 g'4 a'4) g'4. e'4 ( f'4 g'4 g'4) d'4 ( e'4 d'4 c'4) \divisioMinima
 c''4 ( b'4 g'4) a'4 ( g'4.) e'4 ( f'4 g'4 g'4) d'4 ( e'4 d'4 c'4) \divisioMinima
 c'4 ( d'4 e'4) f'4 ( e'4) d'4 ( c'4) c'4 \finalis

}

altoMusic = {
g'2*4/2 ~ g'4. c'2 d'2 ~ d'4 r2*3/2 \divisioMinima
e'2*3/2 d'2*5/4 c'2 b2 a2*4/2 ~ \divisioMinima
a2*3/2 c'2 g2 ~ g4 \finalis
}

tenorMusic = {
e'2*4/2 d'2*3/4 a2 b2 g2*4/2 ~ \divisioMinima
g2*3/2 ~ g2*5/4 ~ g2 ~ g2 e2*4/2 \divisioMinima
f2*3/2 ~ f2 ~ f2 e4 \finalis
}

bassMusic = {
c'2*4/2 b2*3/4 g2 ~ g2 e2*4/2 \divisioMinima
c2*3/2 b,2*5/4 a,2 g,2 a,2*4/2 \divisioMinima
f,2*3/2 a,2 c2 ~ c4 \finalis
}

voiceLines = {
\voiceLineStyle


s2*15/4
\allowVoiceLineBreak
\voiceLine "down" "down" g2*2/2 g2*1/2


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "V"
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
