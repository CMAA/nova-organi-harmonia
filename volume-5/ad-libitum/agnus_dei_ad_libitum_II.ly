\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.151
%(volume.page)

%Proofed 3/14

global = {
 \key g \lydian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
A -- gnus De -- i, 
\set stanza = " * " qui tol -- lis pec -- cá -- ta mun -- di: 
mi -- se -- ré -- re no -- bis. 
A -- gnus De -- i, 
\set stanza = " * " qui tol -- lis pec -- cá -- ta mun -- di: 
mi -- se -- ré -- re no -- bis. 
A -- gnus De -- i, 
\set stanza = " * " qui tol -- lis pec -- cá -- ta mun -- di: 
do -- na nó -- bis pa -- cem. }

chantMusic = {
\tieDown    c''4 b'4 ( a'4) b'4 g'4 \divisioMinima
 fis'4 g'4 a'4 a'4 g'4 e'4 fis'4 d'4 \divisioMaior
 \forceBreak
 g'4 e'4 fis'4 g'4 a'4 g'4 \finalis
  c''4 b'4 ( a'4) b'4 g'4 \divisioMinima
 fis'4 g'4 a'4 a'4 \forceBreak
 g'4 e'4 fis'4 d'4 \divisioMaior
 g'4 e'4 fis'4 g'4 a'4 g'4 \finalis
  c''4 b'4 ( a'4) b'4 g'4 \divisioMinima
 \forceBreak
 fis'4 g'4 a'4 a'4 g'4 e'4 fis'4 d'4 \divisioMaior
 g'4 e'4 fis'4 g'4 a'4 g'4 \finalis

}

altoMusic = {
g'4 fis'2 ~ fis'4 -\tweak Glissando.Y-offset #-0.8 \glissando g'4 \divisioMinima
r4 d'2*3/2 e'2 d'2 ~ \divisioMaior
d'2 ~ d'2 ~ d'2 e'2*3/2 d'2 ~ \divisioMinima
d'4 c'2*3/2 ~ c'2 a2 \divisioMaior
d'2 c'2 b2 e'4 ~ e'2 ~ e'4 ~ e'4 ~ \divisioMinima
e'4 d'2*3/2 e'2 d'2 ~ \divisioMaior
d'2 c'2 b2 \finalis
}

tenorMusic = {
e'4 d'2 ~ d'2 ~ \divisioMinima
d'4 b2*3/2 c'2 \shiftRight d'2 \divisioMaior
b2 ~ b2 c'4 b4 \finalis
g2*3/2 ~ g2 \divisioMinima
d4 e2*3/2 ~ e2 d2 ~ \divisioMaior
d2 ~ d2 ~ d2 \finalis
g4 fis2 g4 b4 ~ \divisioMinima
b4 ~ b2*3/2 ~ b2 a2 \divisioMaior
d2 ~ d2 ~ d2 \finalis
}

bassMusic = {
r2*3/2 b2 ~ \divisioMinima
b4 a2*3/2 ~ a2 d'2 \divisioMaior
r2 a2 g2 e2*3/2 b,2 ~ \divisioMinima
b,4 a,2*3/2 c2 \shiftRight d2 \divisioMaior
b,2 g,2 ~ g,2 e4 ~ e2 ~ e4 ~ e4 \divisioMinima
b,4 ~ b,2*3/2 c2 d2 \divisioMaior
b,2 g,2 ~ g,2 \finalis
}

voiceLines = {
\voiceLineStyle


s2*5/2
\allowVoiceLineBreak
\voiceLine "down" "up" d'2*1/2 d'2*1/2


}

voiceLinesTwo = {
\voiceLineStyle


s2*5/2
\allowVoiceLineBreak
\voiceLine "down" "down" b2*1/2 b2*1/2


}


\score{
  <<
    \new Lyrics
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
	\new Voice {
        \voiceThree \global \voiceLinesTwo
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
