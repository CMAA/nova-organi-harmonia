\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.35
%(volume.page)

%Proofed 3/14

global = {
 \key g \mixolydian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantTextA = \lyricmode {
I -- te, _ _ _ _ _ _ mis -- sa est. }
chantTextB = \lyricmode {
De -- o, _ _ _ _ _ _ grá -- ti -- as. }

chantMusic = {
\tieDown   g'4 g'4 ( a'4 b'4) c''4 ( b'4 a'4 g'4) a'4 ( b'4 e'4.) f'4 ( e'4 d'4 c'4) \divisioMinima
 g'4 ( a'4 b'4) c''4 ( b'4 a'4 g'4.) a'4 ( a'4 g'4 f'4 e'4) f'4 g'4 g'4 \finalis

}

altoMusic = {
e'4 d'2*3/2 c'2*4/2 b2*7/4 c'2*3/2 ~ c'4 \divisioMinima
d'2*3/2 c'2*9/4 ~ c'2*5/2 ~ c'2 b4 \finalis
}

tenorMusic = {
g4 ~ g2*3/2 ~ g2*4/2 ~ g2*7/4 ~ g2*4/2 ~ \divisioMinima
g2*3/2 ~ g2*9/4 f2*3/2 ~ f2 d2 ~ d4 \finalis
}

bassMusic = {
c4 b,2*3/2 a,2*4/2 g,2*7/4 a,2*4/2 \divisioMinima
b,2*3/2 e2*9/4 \shiftRight f2*3/2 d2 a,2 g,4 \finalis
}

voiceLines = {
\voiceLineStyle


s2*26/2
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" d2*2/2 d2*1/2


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
