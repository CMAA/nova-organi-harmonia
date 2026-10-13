\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.77
%(volume.page)

%Proofed 3/14

global = {
 \key d \dorian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
Be -- ne -- di -- cá -- mus Dó -- _ mi -- no. }

chantMusic = {
\tieDown   d'4 d'4 d'4 d'4 ( c'4) d'4 ( f'4 e'4 c'4) e'4 ( d'4) f'4 ( f'4 d'4) c'4 ( d'4) d'4 \finalis

}

altoMusic = {
a2*3/2 ~ a2 ~ a2*4/2 ~ a2 ~ a2*3/2 ~ a2 ~ a4 \finalis
}

tenorMusic = {
f2*3/2 e2 d2*4/2 c2 d2*3/2 e2 f4 \finalis
}

bassMusic = {
d2*3/2 a,2 ~ a,2*4/2 ~ a,2 ~ a,2*3/2 ~ a,2 d4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new Lyrics
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "I."
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
    \context Lyrics {
      \lyricsto chant {
      \chantText
    }
    }
  >>
  \layout{
  }
  
}
