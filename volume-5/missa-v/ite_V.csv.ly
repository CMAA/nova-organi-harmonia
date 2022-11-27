\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.35
%(volume.page)

global = {
 \key g \mixolydian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

\header {
  title = \markup \center-column {"Ite V." \vspace #1 }
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
I -- te, _ _ _ _ _ _ mis -- sa est. }
chantTextB = \lyricmode {
De -- o, _ _ _ _ _ _ grá -- ti -- as. }

chantMusic = {
\tieDown   g'4 g'4 ( a'4 b'4) c''4 ( b'4 a'4 g'4) a'4 ( b'4 e'4.) f'4 ( e'4 d'4 c'4) \divisioMinima
 g'4 ( a'4 b'4) c''4 ( b'4 a'4 g'4.) a'4 ( a'4 g'4 f'4 e'4) f'4 g'4 g'4 \finalis

}

altoMusic = {
e'4 d'2*3/2 c'2*4/2 b2*7/4 c'2*3/2 ~ c'4 \divisioMinima
d'2*3/2 c'2*9/4 ~ c'2*5/2 ~ c'2 b4 \finalis
}

tenorMusic = {
g4 ~ g2*3/2 ~ g2*4/2 ~ g2*7/4 ~ g2*4/2 ~ \divisioMinima
g2*3/2 ~ g2*9/4 f2*3/2 ~ f2 d2 ~ d4 \finalis
}

bassMusic = {
c4 b,2*3/2 a,2*4/2 g,2*7/4 a,2*4/2 \divisioMinima
b,2*3/2 e2*9/4 \shiftRight f2*3/2 d2 a,2 g,4 \finalis
}

voiceLines = {
\voiceLineStyle


s2*26/2
\allowVoiceLineBreak
\voiceLine "down" "down" d2*2/2 d2*1/2


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
