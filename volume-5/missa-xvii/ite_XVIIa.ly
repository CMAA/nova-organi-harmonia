\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.95
%(volume.page)

%Proofed 3/14

global = {
 \key e \dorian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantTextA = \lyricmode {
I -- te, mis -- _ _ sa est. }
chantTextB = \lyricmode {
De -- o, grá -- _ _ ti -- as. }

chantMusic = {
\tieDown   d'4( e'4 g'4) fis'4( e'4 d'4 e'4) e'4( g'4 e'4 fis'4.) \divisioMinima
fis'4( g'4 a'4 g'4 fis'4 e'4) d'4( e'4 fis'4 g'4) fis'4 e'4 \finalis

}

altoMusic = {
  d'2*3/2 b2*2 cis'2*3/2~ cis'2*3/4 d'2*3~ d'2*2 b2
}

tenorMusic = {
  b2*3/2~ b2*2~ b2*3/2 a2*3/4~ \divisioMinima
  a2*3~ a2*2~ a4 g \finalis
}

bassMusic = {
  s2*3/2 g2*2~ g2*3/2 fis2*3/4 d2*3 b,2*2 e2
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
