\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.67
%(volume.page)

%Proofed 3/14

global = {
 \key d \minor
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
Be -- ne -- di -- cá -- mus Dó -- _ mi -- no }

chantMusic = {
\tieDown    a'4 ( bes'4) a'4 g'4 a'4 d'4 \divisioMinima
  f'4 ( g'4 a'4 bes'4 a'4 g'4) f'4 ( e'4 d'4) c'4 ( d'4) d'4 \finalis

}

altoMusic = {
d'2*4/2 ~ d'2 ~ d'2*3/2 ~ d'2*3/2 bes2*3/2 a2 ~ a4 \finalis
}

tenorMusic = {
f2*4/2 ~ f2 ~ \divisioMinima f2*3/2 ~ f2*3/2 ~ f2*3/2 e2 f4 \finalis
}

bassMusic = {
d2*4/2 c2 bes,2*3/2 a,2*3/2 g,2*3/2 a,2 d4 \finalis
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
