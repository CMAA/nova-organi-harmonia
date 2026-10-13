\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.95
%(volume.page)

%Proofed 3/14

global = {
 \key f \major
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantTextA = \lyricmode {
I -- te, mis -- _ _ sa est. }
chantTextB = \lyricmode {
De -- o, grá -- _ _ ti -- as. }

chantMusic = {
\tieDown   f'4( g'4 f'4 g'4) a'4 c''4( bes'4 a'4 g'4) a'4( f'4 e'4) g'4( a'4 g'4) g'4 f'4 \finalis

}

altoMusic = {
  c'2*2~ c'4~ c'2*2~ c'2*3/2~ c'2*3/2 a2
}

tenorMusic = {
  f2*2 e4 f2*2 e2*3/2~ e2*3/2 c2 \finalis
}

bassMusic = {
  a,2*2~ a,4~ a,2*2~ a,2*3/2 c2*3/2 f,2
}

voiceLines = {
\voiceLineStyle

  s2*6
  \allowVoiceLineBreak
  \voiceLine "down" "down" c2*3/2 c2
}

\score{
  <<
    \new Lyrics = "chanta"
    \new Lyrics = "chantb"
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "VI."
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
