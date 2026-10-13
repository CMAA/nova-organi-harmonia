\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.77
%(volume.page)

%Proofed 3/14

global = {
 \key d \dorian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
A -- gnus De -- i, 
\set stanza = " * " qui tol -- lis pec -- cá -- ta mun -- di: 
mi -- se -- ré -- re no -- bis. 
A -- gnus De -- i, 
\set stanza = " * " qui tol -- lis pec -- cá -- ta mun -- di: 
mi -- se -- ré -- re no -- _ _ bis. 
A -- gnus De -- i, 
\set stanza = " * " qui tol -- lis pec -- cá -- ta mun -- di: 
do -- na nó -- bis pa -- cem. }

chantMusic = {
\tieDown   d'4 ( e'4) d'4 ( c'4) f'4 e'4 ( d'4) \divisioMinima
 e'4 g'4 a'4  a'4 ( bes'4 a'4) g'4 f'4 ( e'4 d'4) c'4 ( e'4 f'4 e'4 d'4 c'4) d'4 \divisioMaior
 e'4 g'4 a'4 \forceBreak
 d'4 ( f'4 e'4 d'4 c'4) f'4 e'4 ( d'4) \finalis
 a'4 c''4 ( d''4) c''4 ( b'4 a'4 g'4) a'4 \divisioMinima
  a'4 ( bes'4 a'4 g'4) f'4 ( e'4 d'4 e'4) d'4 e'4 g'4 ( a'4) d'4 \forceBreak
 e'4 ( f'4) e'4 ( d'4 c'4) \divisioMaior
 e'4 f'4 e'4 ( d'4 c'4) d'4 e'4 g'4 ( a'4 d'4) f'4 ( e'4 d'4 c'4 f'4) e'4 ( d'4) \finalis
 d'4 ( e'4) d'4 ( c'4) f'4 e'4 ( d'4) \divisioMinima
 \forceBreak
 e'4 g'4 a'4  a'4 ( bes'4 a'4) g'4 f'4 ( e'4 d'4) c'4 ( e'4 f'4 e'4 d'4 c'4) d'4 \divisioMaior
 e'4 g'4 a'4 d'4 ( f'4 e'4 d'4 c'4) f'4 e'4 ( d'4) \finalis

}

altoMusic = {
a2 ~ a2 ~ a4 ~ a2 \divisioMinima
r4 c'2 d'2*3/2 ~ d'4 ~ d'2*3/2 c'2 ~ c'2*4/2 a4 \divisioMaior
c'2 ~ c'4 a2*5/2 ~ a2 ~ a4 \finalis
r4 e'2 ~ e'2*4/2 ~ e'4 c'2*4/2 ~ c'2*4/2 a2 ~ a2*3/2 ~ a2 ~ a2*3/2 \divisioMaior
c'2 ~ c'2*4/2 ~ c'4 ~ c'2*3/2 a2*3/2 ~ a2 ~ a2 \finalis
a2 ~ a2 ~ a4 ~ a2 \divisioMinima
r4 c'2 d'2*3/2 ~ d'4 c'2*3/2 ~ c'2 ~ c'2*4/2 a4 \divisioMaior
c'2 ~ c'4 a2*5/2 ~ a2 ~ a4 \finalis
}

tenorMusic = {
a2 g2 ~ g4 f2 \divisioMinima
r4 e2 f2*3/2 g4 d2*3/2 e2 g2*4/2 f4 \divisioMaior
g2 e4 f2*5/2 g2 f4 \finalis
r4 e'2 d'2*4/2 c'4 \divisioMinima f2*4/2 g2*4/2 f2 e2*3/2 \shiftRight d2 e2*3/2 ~ \divisioMaior
e2 a2*4/2 g4 e2*3/2 \shiftRight d2*3/2 e2 f2 \finalis
a2 g2 ~ g4 f2 \divisioMinima
r4 e2 f2*3/2 d4 ~ d2*3/2 e2 g2*4/2 f4 \divisioMaior
g2 e4 f2*5/2 g2 f4 \finalis
}

bassMusic = {
f2 e2 d4 ~ d2 \divisioMinima
r4 c2 bes,2*3/2 ~ bes,4 ~ bes,2*3/2 a,2 ~ a,2*4/2 d4 \divisioMaior
c2 ~ c4 d2*5/2 ~ d2 ~ d4 \finalis
a4 ~ a2 ~ a2*4/2 ~ a4 r2*4/2 c2*4/2 d2 ~ d2*3/2 ~ d2 a,2*3/2 ~ \divisioMaior
a,2 ~ a,2*4/2 c4 ~ c2*3/2 d2*3/2 ~ d2 ~ d2 \finalis
f2 e2 d4 ~ d2 \divisioMinima
r4 c2 bes,2*3/2 ~ bes,4 a,2*3/2 ~ a,2 ~ a,2*4/2 d4 \divisioMaior
c2 ~ c4 d2*5/2 ~ d2 ~ d4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new Lyrics
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
    \context Lyrics {
      \lyricsto chant {
      \chantText
    }
    }
  >>
  \layout{
  }
  
}
