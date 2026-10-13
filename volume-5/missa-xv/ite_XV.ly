\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.88
%(volume.page)

%Proofed 3/14

global = {
 \key a \phrygian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantTextA = \lyricmode {
I -- te, mis -- sa est. }
chantTextB = \lyricmode {
De -- o, grá -- ti -- as. }

chantMusic = {
\tieDown   f'4 g'4 ( bes'4) bes'4 ( a'4) g'4 a'4 \finalis

}

altoMusic = {
d'4 ~ d'2 f'2 e'4 f'4 \finalis
}

tenorMusic = {
bes4 ~ bes2 ~ bes2*3/2 a4 \finalis
}

bassMusic = {
r4 g2 d2*3/2 ~ d4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new Lyrics = "chanta"
    \new Lyrics = "chantb"
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "IV."
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
    \context Lyrics = "chanta" {
      \lyricsto chant {
      \chantTextA
    }
    }
    \context Lyrics = "chantb" {
      \lyricsto chant {
      \chantTextB
    }
    }
  >>
  \layout{
  }
  
}
