\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.34
%(volume.page)

%Proofed 3/14

global = {
 \key e \phrygian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
A -- gnus De -- i, 
\set stanza = " * " qui tol -- _ lis pec -- cá -- ta mun -- _ di: 
mi -- se -- ré -- _ re no -- _ bis. 
A -- gnus De -- i, 
\set stanza = " * " qui tol -- _ lis pec -- cá -- ta mun -- _ di: 
mi -- se -- ré -- _ re no -- _ bis. 
A -- gnus De -- i, 
\set stanza = " * " qui tol -- _ lis pec -- cá -- ta mun -- _ di: 
do -- na nó -- _ bis pa -- _ cem. }

chantMusic = {
\tieDown   c'4 ( d'4 \quil e' f'4) ~ f'4 ( e'4 d'4 c'4 d'4) d'4 e'4 ( f'4 g'4) f'4 ( e'4) \divisioMinima
 g'4 g'4 ( a'4) c''4 ( a'4 g'4 a'4) f'4 ( f'4 e'4) g'4 ( g'4 f'4) \forceBreak
 e'4 ( f'4 e'4 d'4) d'4 ( c'4) d'4 ( e'4 f'4 g'4.) d'4 ( \once \tweak #'font-size #-4 e' ) e'4 \divisioMaior
 g'4 g'4 ( a'4) a'4 ( c''4 a'4 g'4) a'4 ( g'4) f'4 ( e'4) e'4 ( f'4 e'4 d'4.) g'4 ( a'4 g'4) f'4 ( e'4) \finalis
 \forceBreak
 c'4 ( d'4 \quil e' f'4) ~ f'4 ( e'4 d'4 c'4 d'4) d'4 e'4 ( f'4 g'4) f'4 ( e'4) \divisioMinima
 g'4 g'4 ( a'4) c''4 ( a'4 g'4 a'4) f'4 ( f'4 e'4) g'4 ( g'4 f'4) \forceBreak
 e'4 ( f'4 e'4 d'4) d'4 ( c'4) d'4 ( e'4 f'4 g'4.) d'4 ( \once \tweak #'font-size #-4 e' ) e'4 \divisioMaior
 g'4 g'4 ( a'4) a'4 ( c''4 a'4 g'4) a'4 ( g'4) f'4 ( e'4) e'4 ( f'4 e'4 d'4.) g'4 ( a'4 g'4) f'4 ( e'4) \finalis
 \forceBreak
 c'4 ( d'4 \quil e' f'4) ~ f'4 ( e'4 d'4 c'4 d'4) d'4 e'4 ( f'4 g'4) f'4 ( e'4) \divisioMinima
 g'4 g'4 ( a'4) c''4 ( a'4 g'4 a'4) f'4 ( f'4 e'4) g'4 ( g'4 f'4) \forceBreak
 e'4 ( f'4 e'4 d'4) d'4 ( c'4) d'4 ( e'4 f'4 g'4.) d'4 ( \once \tweak #'font-size #-4 e' ) e'4 \divisioMaior
 g'4 g'4 ( a'4) a'4 ( c''4 a'4 g'4) a'4 ( g'4) f'4 ( e'4) e'4 ( f'4 e'4 d'4.) g'4 ( a'4 g'4) f'4 ( e'4) \finalis

}

altoMusic = {
a2*3/2 ~ a2*4/2 ~ a2 ~ a4 c'2*5/2 ~ \divisioMinima
c'4 ~ c'2 ~ c'2*4/2 ~ c'2*3/2 a2*3/2 ~ a2*4/2 -\tweak Glissando.Y-offset #-0.8 \glissando d'4 c'4 a2*3/2 ~ a2*3/4 ~ a2 c'4 \divisioMaior
d'4 c'2 ~ c'2*4/2 ~ c'2 ~ c'2 a2*3/2 ~ a2*3/4 c'2*3/2 ~ c'2 \finalis
a2*3/2 ~ a2*4/2 ~ a2 ~ a4 ~ a2*3/2 c'2 ~ \divisioMinima
c'4 ~ c'2 ~ c'2*4/2 ~ c'2*3/2 ~ c'2*3/2 a2*4/2 -\tweak Glissando.Y-offset #-0.8 \glissando d'4 c'4 a2*9/4 ~ a2 ~ a4 \divisioMaior
d'4 ~ d'2 c'2*4/2 ~ c'2 ~ c'2 a2*3/2 ~ a2*3/4 c'2*3/2 ~ c'2 \finalis
c'2*3/2 a2*4/2 ~ a2 a4 c'2*3/2 ~ c'2 ~ \divisioMinima
c'4 ~ c'2 ~ c'2*4/2 ~ c'2*3/2 ~ c'2*3/2 a2*4/2 -\tweak Glissando.Y-offset #-0.8 \glissando d'4 c'4 a2*3/2 ~ a2*3/4 ~ a2 ~ a4 \divisioMaior
d'4 ~ d'2 c'2*4/2 ~ c'2 ~ c'2 a2*3/2 ~ a2*3/4 c'2*3/2 ~ c'2 \finalis
}

tenorMusic = {
f2*3/2 ~ f2*4/2 g2 f4 g2*5/2 \divisioMinima
e4 ~ e2 ~ e2*4/2 a2*3/2 ~ a2*3/2 g2*4/2 ~ g2 f2*3/2 e2*3/4 f2 g4 ~ \divisioMaior
g4 ~ g2 f2*4/2 g2 a2 ~ a2*3/2 f2*3/4 e2*3/2 g2 \finalis
f2*3/2 ~ f2*4/2 g2 f4 e2*3/2 g2 ~ \divisioMinima
g4 ~ g2 f2*4/2 g2*3/2 a2*3/2 g2*4/2 ~ g2 ~ g2*9/4 f2 e4 \divisioMaior
d4 e2 ~ e2*4/2 f2 g2 ~ g2*3/2 f2*3/4 e2*3/2 g2 \finalis
r2*3/2 f2*4/2 g2 a4 ~ a2*3/2 ~ a2 \divisioMinima
g4 f2 e2*4/2 a2*3/2 g2*3/2 ~ g2*4/2 ~ g2 f2*3/2 e2*3/4 f2 e4 \divisioMaior
d4 e2 ~ e2*4/2 f2 g2 ~ g2*3/2 f2*3/4 e2*3/2 a2 \finalis
}

bassMusic = {
r2*3/2 d2*4/2 ~ d2 ~ d4 c2*5/2 ~ \divisioMinima
c4 b,2 a,2*4/2 ~ a,2*3/2 d2*3/2 ~ d2*4/2 e2 d2*3/2 ~ d2*3/4 ~ d2 c4 \divisioMaior
b,4 a,2 ~ a,2*4/2 ~ a,2 ~ a,2 d2*3/2 ~ d2*3/4 c2*3/2 ~ c2 \finalis
r2*3/2 d2*4/2 ~ d2 ~ d4 c2*3/2 ~ c2 \divisioMinima
e4 a,2 ~ a,2*4/2 ~ a,2*3/2 ~ a,2*3/2 d2*4/2 e2 d2*9/4 ~ d2 a,4 \divisioMaior
b,4 ~ b,2 a,2*4/2 ~ a,2 ~ a,2 d2*3/2 ~ d2*3/4 c2*3/2 ~ c2 \finalis
r2*3/2 r2*4/2 r2*6/2 a,2 ~ \divisioMinima
a,4 ~ a,2 ~ a,2*4/2 ~ a,2*3/2 ~ a,2*3/2 d2*4/2 e2 d2*3/2 ~ d2*3/4 ~ d2 a,4 \divisioMaior
b,4 ~ b,2 a,2*4/2 ~ a,2 ~ a,2 d2*3/2 ~ d2*3/4 c2*3/2 a,2 \finalis
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
        "IV."
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
