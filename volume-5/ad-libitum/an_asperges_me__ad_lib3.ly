\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.4
%(volume.page)

%Proofed 3/14

global = {
 \key d \mixolydian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
A -- spér -- ges me, 
\set stanza = " * " Dó -- mi -- ne, hys -- só -- po, et mun -- dá -- bor: 
la -- vá -- bis me, et su -- per ni -- vem de -- al -- bá -- bor. }

chantMusic = {
\tieDown   d'4 ( e'4) g'4 ( \once \tweak #'font-size #-4 fis' ) g'4 ( a'4) a'4 \divisioMinima
 b'4 ( b'4 c''4) b'4 a'4 b'4 a'4 ( g'4) fis'4 ( g'4) a'4 ( g'4) e'4 d'4 d'4 \divisioMaxima
 \forceBreak
 d'4 ( e'4) g'4 ( fis'4) g'4 ( a'4) a'4 \divisioMinima
 a'4 ( b'4) g'4 g'4 ( \once \tweak #'font-size #-4 e' ) g'4 fis'4 ( g'4) a'4 ( g'4) e'4 d'4 d'4 \finalis

}

altoMusic = {
b2 ~ b2 d'2 ~ d'4 ~ \divisioMinima
d'2*3/2 ~ d'2*3/2 b2 ~ b2 a2*3/2 ~ a2 \divisioMaxima
b2 d'2 ~ d'2 ~ d'4 ~ \divisioMinima
d'2*3/2 c'2*3/2 d'2 e'2 ~ e'4 d'4 a4 \finalis
}

tenorMusic = {
g2 ~ g2 e2 fis4 \divisioMinima
g2*3/2 fis2*3/2 e2 ~ e2 ~ e2 g4 ~ g4 fis4 \divisioMaxima
g2 a2 e2 fis4 \divisioMinima
g2*3/2 ~ g2*3/2 ~ g2 ~ g2*3/2 ~ g4 fis4 \finalis
}

bassMusic = {
r2 e2 d2 ~ d4 \divisioMinima
b,2*3/2 d2*3/2 \shiftRight e2 d2 c2 ~ c4 d2 \divisioMaxima
r2 d2 ~ d2 ~ d4 \divisioMinima
b,2*3/2 a,2*3/2 b,2 c2*3/2 d2 \finalis
}

voiceLines = {
\voiceLineStyle


s2*2/2
\allowVoiceLineBreak
\voiceLine "down" "down" e2*2/2 e2*1/2


}

\score{
  <<
    \new Lyrics
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Ant."
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
    \context Lyrics {
      \lyricsto chant {
      \chantText
    }
    }
  >>
  \layout{
  }
  
}
