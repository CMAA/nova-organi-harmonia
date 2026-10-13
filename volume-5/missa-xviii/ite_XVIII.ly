\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.95
%(volume.page)

%Proofed 3/14

global = {
 \key fis \phrygian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantTextA = \lyricmode {
I -- te, mis -- sa est. }
chantTextB = \lyricmode {
De -- o, grá -- ti -- as. }

chantMusic = {
  \tieDown b'4 b'4 a'4( b'4) a'4 a'4( g'4 fis'4) \finalis

}

altoMusic = {
  fis'2 e'2*3/2 d'2*3/2
}

tenorMusic = {
  fis2~ fis2*3/2~ fis2*3/2 \finalis
}

bassMusic = {
  d2 cis2*3/2 b,2*3/2
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
        ""
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
