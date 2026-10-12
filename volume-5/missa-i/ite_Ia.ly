\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.10
%(volume.page)

%Proofed 2/13

global = {
 \key g \mixolydian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantTextA = \lyricmode {
I -- te, mis -- sa est, al -- le -- lú -- ia, al -- le -- lú -- ia. }
chantTextB = \lyricmode {
De -- o, grá -- ti -- as, al -- le -- lú -- ia, al -- le -- lú -- ia. }

chantMusic = {
\tieDown   g'4 g'4 g'4 g'4 a'4 g'4 f'4 g'4 ( \once \tweak #'font-size #-4 a' ) a'4 \divisioMinima
 a'4 g'4 ( c''4 b'4 a'4 g'4) f'4 ( g'4 a'4) a'4 ( g'4) \finalis

}

altoMusic = {
c'2 b2 a4 ~ a2 ~ a2 ~ a4 \divisioMinima
d'4 g'2*4/2 ~ g'4 f'2*3/2 d'2 \finalis
}

tenorMusic = {
e2*4/2 ~ e4 \shiftRight d2 e2 f4 \divisioMinima
r4 c'2*5/2 ~ c'2*3/2 ~ c'4 b4 \finalis
}

bassMusic = {
c2*4/2 ~ c4 d2 ~ d2 ~ d4 \divisioMinima
e4 ~ e2*5/2 d2*3/2 g2 \finalis
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
