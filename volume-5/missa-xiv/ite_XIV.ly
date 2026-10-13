\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.83
%(volume.page)

%Proofed 3/14

global = {
 \key g \mixolydian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantTextA = \lyricmode {
I -- _ te, _ mis -- sa est. }
chantTextB = \lyricmode {
De -- _ o, _ grá -- ti -- as. }

chantMusic = {
\tieDown   g'4 ( a'4 g'4) a'4 ( g'4 g'4) d'4 ( g'4.) f'4 ( g'4 f'4 e'4 d'4) \divisioMinima
 d'4 ( e'4 f'4 g'4 a'4) ~ a'4 ( g'4) f'4 ( g'4) g'4 \finalis

}

altoMusic = {
c'2*3/2 d'2*3/2 ~ d'2*5/4 c'2*4/2 ~ c'4 \divisioMinima
a2*4/2 d'2*3/2 c'2 b4 \finalis
}

tenorMusic = {
e2*3/2 d2*3/2 g2*5/4 d2*4/2 f4 ~ \divisioMinima
f2*4/2 e2*3/2 d2 ~ d4 \finalis
}

bassMusic = {
c2*3/2 b,2*3/2 ~ b,2*5/4 a,2*4/2 ~ a,4 \divisioMinima
c2*4/2 b,2*3/2 a,2 g,4 \finalis
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
        "VIII."
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
