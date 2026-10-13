\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.17
%(volume.page)

% Proofed 2/18

global = {
 \key c \major
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
Be -- ne -- di -- cá -- mus Dó -- _ _ _ _ _ _ _ mi -- no. }

chantMusic = {
\tieDown   c''4 b'4 g'4 a'4 g'4 e'4 ( f'4 g'4 g'4) d'4 ( e'4 d'4 c'4) \divisioMinima
 c''4 ( b'4 g'4) a'4 ( g'4.) e'4 ( f'4 g'4 g'4) d'4 ( e'4 d'4 c'4) \divisioMinima
 c'4 ( d'4 e'4) f'4 ( e'4) d'4 ( c'4) c'4 \finalis

}

altoMusic = {
g'2*3/2 d'2 c'2 d'2 ~ d'4 r2*3/2 \divisioMinima
e'2*3/2 d'2*5/4 c'2 b2 a2*4/2 ~ \divisioMinima
a2*3/2 c'2 g2 ~ g4 \finalis
}

tenorMusic = {
e'2*3/2 d'2 a2 b2 g2*4/2 ~ \divisioMinima
g2*3/2 ~ g2*5/4 ~ g2 ~ g2 e2*4/2 \divisioMinima
f2*3/2 ~ f2 ~ f2 e4 \finalis
}

bassMusic = {
c'2*3/2 b2 g2 ~ g2 e2*4/2 \divisioMinima
c2*3/2 b,2*5/4 a,2 g,2 a,2*4/2 \divisioMinima
f,2*3/2 a,2 c2 ~ c4 \finalis
}

voiceLines = {
\voiceLineStyle


s2*7/2
\allowVoiceLineBreak
\voiceLine "down" "down" g2*2/2 g2*1/2


}

\score{
  <<
    \new Lyrics
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "V."
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
