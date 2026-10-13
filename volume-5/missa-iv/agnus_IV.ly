\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.28
%(volume.page)

%Proofed 3/14

global = {
 \key f \lydian
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
\tieDown   f'4 (g'4) g'4 (a'4) a'4 (g'4 f'4 e'4) f'4 \divisioMinima
 f'4 g'4 (\once \tweak #'font-size #-4 a'4) a'4 c''4  bes'4 a'4 (g'4 f'4) g'4 (\once \tweak #'font-size #-4 a'4) a'4 \divisioMaior
 \forceBreak
 a'4 f'4 g'4 (f'4 e'4) g'4 g'4 (a'4 f'4) f'4 \finalis
 f'4 a'4  bes'4 c''4 \divisioMinima
  bes'4 d''4 c''4  bes'4 c''4 \forceBreak
 a'4 (g'4 f'4) g'4 (\once \tweak #'font-size #-4 a'4) a'4 \divisioMaior
 a'4 f'4 g'4 (f'4 e'4) g'4 g'4 (a'4 f'4) f'4 \finalis
 f'4 (g'4) g'4 (a'4) a'4 (g'4 f'4 e'4) f'4 \divisioMinima
 \forceBreak
 f'4 g'4 (\once \tweak #'font-size #-4 a'4) a'4 c''4  bes'4 a'4 (g'4 f'4) g'4 (\once \tweak #'font-size #-4 a'4) a'4 \divisioMaior
 a'4 f'4 g'4 (f'4 e'4) g'4 g'4 (a'4 f'4) f'4 \finalis

}

altoMusic = {
a2 c'2 ~ c'2 ~ c'2 ~ c'4 ~ \divisioMinima
c'4 ~ c'2 ~ c'2 d'4 ~ d'2*3/2 ~ d'2 c'4 ~ \divisioMaior
c'2 ~ c'2 ~ c'2 c'2*3/2 ~ c'4 \finalis
f'2 ~ f'2 ~ f'4 ~ f'2*3/2 ~ f'4 e'2 -\tweak Glissando.Y-offset #-0.8 \glissando f'4 d'2 e'4 \divisioMaior
f'2 c'2 ~ c'2 ~ c'2*3/2 ~ c'4 \finalis
a2 c'2 ~ c'2 ~ c'2 a4 ~ \divisioMinima
a4 d'2 c'2 f'4 d'2*3/2 ~ d'2 c'4 ~ \divisioMaior
c'2 ~ c'2 ~ c'2 bes2*3/2 a4 \finalis
}

tenorMusic = {
r2*4/2 e2 g2 a4 ~ \divisioMinima
a4 \shiftRight f2 ~ f2 ~ f4 ~ f2*3/2 d2 e4 \divisioMaior
f2 e2 g2 bes2*3/2 a4 \finalis
r2 g4 a4 r4 bes2*3/2 \shiftRight a4 c'2*3/2 d'2 c'4 ~ \divisioMaior
c'2 ~ c'2 ~ c'2 bes2*3/2 a4 \finalis
r2*4/2 e2 g2 f4 ~ \divisioMinima
f4 ~ f2 ~ f2 ~ f4 ~ f2*3/2 d2 e4 \divisioMaior
f2 e2 \shiftRight c2 ~ c2*3/2 ~ c4 \finalis
}

bassMusic = {
f2 ~ f2 c2 ~ c2 f4 ~ \divisioMinima
f4 ~ f2 e2 d4 c2*3/2 bes,2 a,4 ~ \divisioMaior
a,2 c2 ~ c2 f2*3/2 ~ f4 \finalis
f2 ~ f2 \divisioMinima g4 ~ g2*3/2 a4 ~ a2*3/2 bes2 a4 \divisioMaior
f2 e2 c2 f2*3/2 ~ f4 \finalis
f2 ~ f2 c2 ~ c2 d4 ~ \divisioMinima
d4 bes,2 a,2 d4 c2*3/2 bes,2 a,4 ~ \divisioMaior
a,2 c2 ~ c2 f,2*3/2 ~ f,4 \finalis
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
    \context Lyrics {
      \lyricsto chant {
      \chantText
    }
    }
  >>
  \layout{
  }
  
}
