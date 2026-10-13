\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.72
%(volume.page)

%Proofed 3/14

global = {
 \key f \mixolydian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantTextA = \lyricmode {
I -- te, _ _ mis -- sa est. }
chantTextB = \lyricmode {
De -- o, _ _ grá -- ti -- as. }

chantMusic = {
\tieDown   f'4 ( g'4) a'4 ( f'4) c''4 ( bes'4 a'4 g'4 f'4.) g'4 ( f'4) g'4 ( a'4 g'4) g'4 f'4 \finalis

}

altoMusic = {
f'2 ~ f'2 ~ f'2*4/2 c'2*7/4 d'2*3/2 ~ d'4 c'4 \finalis
}

tenorMusic = {
r2 g2 a2*4/2 ~ a2*7/4 f2*3/2 g4 -\tweak Glissando.Y-offset #-0.8 \glissando \voiceTwo \change Staff = "up" a4 \finalis
}

bassMusic = {
f2 ~ f2 ~ f2*4/2 f2*7/4 bes,2*3/2 ~ bes,4 f,4 \finalis
}

voiceLines = {
\voiceLineStyle


s2*8/2
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" f2*7/4 f2*1/2


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
