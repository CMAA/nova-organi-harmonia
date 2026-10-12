\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.10
%(volume.page)

%Proofed 2/13

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
\tieDown   f'4 ( a'4 \quil bes' c''4) bes'4 ( c''4) d''4 ( c''4) ~ c''4 ( a'4) c''4 ( bes'4 a'4 g'4 f'4) g'4 ( a'4 g'4) g'4 f'4 \finalis

}

altoMusic = {
c'2*4/2 d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 c'2 bes2*3/2 a2 \finalis
}

tenorMusic = {
f2*4/2 ~ f2*3/2 ~ f2*3/2 ~ f2*3/2 ~ f2 ees2*3/2 f2 \finalis
}

bassMusic = {
a,2*4/2 bes,2*3/2 d2*3/2 g,2*3/2 a,2 c2*3/2 \shiftRight f2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new Lyrics = "chantLyricsA"
    \new Lyrics = "chantLyricsB"
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "VII."
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
    \context Lyrics = "chantLyricsA" {
      \lyricsto chant {
      \chantTextA
    }
    }
    \context Lyrics = "chantLyricsB" \lyricsto chant {
      \chantTextB
    }
  >>
  \layout{
  }
  
}
