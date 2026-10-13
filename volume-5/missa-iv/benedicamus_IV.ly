\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page ii.28
%(volume.page)

%Proofed 3/14

global = {
 \key d \dorian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
Be -- ne -- di -- cá -- mus Dó -- _ _ _ mi -- no. }

chantMusic = {
\tieDown   a'4 a'4 a'4 a'4 ( g'4 a'4) a'4 c''4 ( b'4 a'4 g'4 a'4) \divisioMinima
 a'4 ( g'4 f'4 d'4 e'4) \divisioMinima
 e'4 ( g'4 a'4 d'4.) e'4 ( g'4 f'4 e'4 f'4) d'4 d'4 \finalis

}

altoMusic = {
c'2*3/2 ~ c'2*4/2 ~ c'2 b2 c'4 ~ \divisioMinima
c'2 ~ c'2*3/2 \divisioMinima
a2 ~ a2*5/4 c'2 ~ c'2*3/2 a2 \finalis
}

tenorMusic = {
e2*3/2 f2*4/2 e2*4/2 ~ e4 \divisioMinima
f2 g2*3/2 ~ \divisioMinima
g2 f2*5/4 a2 g2*3/2 ~ g4 f4 \finalis
}

bassMusic = {
a,2*3/2 ~ a,2*4/2 ~ a,2*4/2 ~ a,4 ~ \divisioMinima
a,2 c2*3/2 \divisioMinima
d2 ~ d2*5/4 a,2 ~ a,2*3/2 d2 \finalis
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
