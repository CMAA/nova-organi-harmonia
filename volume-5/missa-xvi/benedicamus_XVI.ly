\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

% For some reason, the NOH puts this together with the Agnus Dei.
% I'm not sure why, and I've separated it.

%Page reference: page v.90
%(volume.page)

% Proofed 3/14

global = {
 \key e \phrygian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
Be -- ne -- di -- cá -- mus Dó -- mi -- no -- 
De -- o grá -- ti -- as }

chantMusic = {
\tieDown    a'4 a'4 a'4 f'4 ( a'4)
 a'4 g'4 ( a'4) g'4 g'4 ( f'4 e'4) \finalis
 a'4 a'4 g'4 ( a'4) g'4 g'4 ( f'4 e'4) \finalis

}

altoMusic = {
s2*12/2 \finalis
c'2 ~ c'2*3/2 ~ c'2*3/2 \finalis
}

tenorMusic = {
s2*12/2 \finalis
e2 f2*3/2 a2*3/2 \finalis
}

bassMusic = {
s2*12/2 \finalis
a,2 ~ a,2*3/2 ~ a,2*3/2 \finalis
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
    \context Lyrics {
      \lyricsto chant {
      \chantText
    }
    }
  >>
  \layout{
  }
  
}
