\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.33
%(volume.page)

%Proofed 3/14

global = {
 \key e \phrygian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
San -- _ ctus, 
\set stanza = " * " San -- ctus, 
San -- _ ctus Dó -- mi -- nus De -- us Sá -- ba -- oth. 
Ple -- ni sunt cœ -- li et ter -- ra gló -- ri -- a tu -- _ a. 
Ho -- _ sán -- na in ex -- cél -- _ sis. 
Be -- ne -- dí -- ctus qui ve -- nit in nó -- mi -- ne Dó -- mi -- ni. 
Ho -- _ sán -- na in ex -- cél -- _ sis. }

chantMusic = {
\tieDown   d'4 ( a'4) ~ a'4 ( g'4) ~ g'4 ( d'4) g'4 ( \once \tweak #'font-size #-4 f' ) e'4 \divisioMinima
 d'4 ( e'4 \quil f' g'4 f'4 g'4) g'4 \divisioMaior
 a'4 ( a'4 g'4) ~ g'4 ( d'4) g'4 ( \once \tweak #'font-size #-4 f' ) e'4 \divisioMinima \forceBreak
 f'4 d'4 e'4 g'4 a'4 c''4 ( a'4 g'4) f'4 ( f'4 e'4) e'4 \divisioMaxima
 d'4 e'4 g'4 a'4 a'4 g'4 ( \once \tweak #'font-size #-4 a' ) f'4 ( e'4) e'4 \divisioMinima
 f'4 ( g'4) e'4 ( f'4 g'4) g'4 ( f'4) \forceBreak
 e'4 ( d'4) f'4 ( f'4 e'4) e'4 \divisioMaxima
 g'4 ( \quil a' b'4) c''4 ( a'4 g'4 a'4) g'4 ( g'4) d'4 e'4 f'4 ( g'4) g'4 ( f'4) a'4 ( g'4 e'4) e'4 \divisioMaxima
 \forceBreak
 d'4 e'4 f'4 g'4 a'4 a'4 ( g'4) e'4 ( f'4 g'4) \divisioMinima
 a'4 a'4 ( g'4) f'4 ( e'4) e'4 f'4 ( g'4) e'4 ( f'4 g'4) g'4 \divisioMaxima
 \forceBreak
 g'4 ( \quil a' b'4) c''4 ( a'4 g'4 a'4) g'4 ( g'4) d'4 e'4 f'4 ( g'4) g'4 ( f'4) a'4 ( g'4 e'4) e'4 \finalis

}

altoMusic = {
d'4 ~ d'2 ~ d'2 ~ d'4 c'2*3/2 \divisioMinima
a4 ~ a2*5/2 c'4 \divisioMaior
e'2 d'2 ~ d'4 c'2*3/2 ~ \divisioMinima
c'2*3/2 ~ c'2 ~ c'2*3/2 b2*3/2 c'4 \divisioMaxima
d'2*3/2 c'2 ~ c'2 ~ c'2 ~ c'4 \divisioMinima
a2 ~ a2*3/2 ~ a2 ~ a2 ~ a2*3/2 c'4 \divisioMaxima
d'2*3/2 c'2*4/2 d'2 ~ d'4 c'2*3/2 ~ c'2 ~ c'2*3/2 b4 \divisioMaxima
d'2 ~ d'2 e'4 d'2 e'2*3/2 ~ \divisioMinima
e'4 d'2 c'2*3/2 ~ c'2*5/2 d'4 \divisioMaxima
d'2*3/2 c'2*4/2 d'2 ~ d'4 ~ d'4 c'2 ~ c'2 b2*3/2 c'4 \finalis
}

tenorMusic = {
r2*3/2 b2*3/2 a2*3/2 \divisioMinima
f4 e2*5/2 ~ e4 \divisioMaior
c'2 b2*3/2 a2*3/2 ~ \divisioMinima
a2*3/2 g2 f2*3/2 ~ f2*3/2 g4 \divisioMaxima
e2*3/2 ~ e2 ~ e2 d2 g4 \divisioMinima
f2 g2*3/2 a2 g2 f2*3/2 a4 \divisioMaxima
g2*3/2 ~ g2*4/2 ~ g2*3/2 ~ g2*3/2 d2 e2*3/2 ~ e4 \divisioMaxima
r2 c'2 ~ c'4 b2 c'2*3/2 ~ \divisioMinima
c'4 b2 a2*3/2 ~ a2*5/2 b4 \divisioMaxima
g2*3/2 ~ g2*4/2 ~ g2*3/2 e4 ~ e2 d2 ~ d2*3/2 e4 \finalis
}

bassMusic = {
r2*9/2 \divisioMinima
d4 ~ d2*5/2 c4 \divisioMaior
r2*8/2 \divisioMinima
d2*3/2 e2 d2*3/2 ~ d2*3/2 c4 \divisioMaxima
b,2*3/2 a,2 c2 ~ c2 ~ c4 \divisioMinima
d2 ~ d2*3/2 ~ d2 ~ d2 ~ d2*3/2 a,4 \divisioMaxima
b,2*3/2 a,2*4/2 b,2*3/2 c2*3/2 ~ c2 ~ c2*3/2 \shiftRight e4 \divisioMaxima
r2*7/2 a2*3/2 ~ \divisioMinima
a4 b2 a2*3/2 g2*5/2 ~ g4 \divisioMaxima
b,2*3/2 a,2*4/2 b,2*3/2 ~ b,4 a,2 ~ a,2 ~ a,2*3/2 ~ a,4 \finalis
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
}
