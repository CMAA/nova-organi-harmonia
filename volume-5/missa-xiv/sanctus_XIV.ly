\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.82
%(volume.page)

%Proofed 3/14

global = {
 \key d \dorian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
San -- _ ctus, San -- _ ctus, San -- _ ctus Dó -- mi -- nus De -- us Sá -- _ ba -- oth. 
Ple -- ni sunt cœ -- _ li et ter -- ra gló -- ri -- a tu -- a. 
Ho -- _ sán -- na in ex -- cél -- _ sis. 
Be -- _ ne -- dí -- _ ctus qui ve -- nit in nó -- mi -- ne Dó -- mi -- ni. 
Ho -- _ sán -- na in ex -- cél -- _ sis. }

chantMusic = {
\tieDown   d'4 ( \quil e' f'4 e'4 c'4) f'4 ( f'4) e'4 ( d'4) \divisioMinima
 f'4 ( g'4 a'4 g'4 f'4) g'4 ( g'4) f'4 ( e'4) \divisioMinima
 d'4 ( \quil e' f'4 e'4 c'4) f'4 ( f'4) e'4 ( d'4) \divisioMinima
 \forceBreak
 e'4 g'4 a'4 a'4 ( g'4 f'4) e'4 ( d'4) e'4 ( g'4 e'4) f'4 ( d'4) e'4 ( c'4) d'4 \divisioMaxima
 a'4 g'4 a'4 d''4 ( c''4 b'4) c''4 ( d''4) a'4 \forceBreak
  a'4 ( bes'4 a'4 g'4) f'4 ( e'4) d'4 \divisioMinima
 c'4 e'4 g'4 a'4 ( g'4 f'4) e'4 ( d'4) \divisioMaxima
 e'4 ( g'4 e'4) f'4 ( d'4) e'4 ( \once \tweak #'font-size #-4 c' ) d'4 \divisioMinima
 \forceBreak
 c'4 ( e'4) g'4 ( a'4) d'4 ( \quil e' f'4 e'4 c'4) f'4 ( f'4) e'4 ( d'4) \divisioMaxima
 d''4 ( c''4 b'4) c''4 ( d''4) a'4 a'4 ( \quil b' c''4 b'4 g'4) c''4 ( c''4) b'4 ( a'4) \divisioMinima
 \forceBreak
  a'4 ( bes'4 a'4 g'4) f'4 ( e'4) d'4 c'4 e'4 g'4 a'4 a'4 ( g'4 f'4) e'4 ( d'4) d'4 \divisioMaxima
 e'4 ( g'4 e'4) f'4 ( d'4) e'4 ( \once \tweak #'font-size #-4 c' ) d'4 \divisioMinima
 \forceBreak
 c'4 ( e'4) g'4 ( a'4) d'4 ( \quil e' f'4 e'4 c'4) f'4 ( f'4) e'4 ( d'4) \finalis

}

altoMusic = {
a2*5/2 ~ a2 ~ a2 \divisioMinima
c'2*5/2 ~ c'2 ~ c'2 \divisioMinima
a2*5/2 ~ a2 ~ a2 \divisioMinima
e'2*3/2 c'2*3/2 ~ c'2 ~ c'2*3/2 a2 ~ a2 ~ a4 \divisioMaxima
f'2*3/2 e'2*3/2 d'2*3/2 ~ d'2*4/2 ~ d'2 ~ d'4 \divisioMinima
c'2*3/2 ~ c'2*3/2 a2 \divisioMaxima
c'2*3/2 a2 ~ a2 ~ a4 \divisioMinima
c'2 ~ c'2 ~ c'2*4/2 ~ c'4 ~ c'2 a2 \divisioMaxima
<a' f'>2*3/2 <g' e'>2*3/2 f'2*5/2 e'2 ~ e'2 f'2*4/2 ~ f'4 r2 c'4 ~ c'2*3/2 ~ c'2*3/2 a2 ~ a4 \divisioMaxima
c'2*3/2 a2 ~ a2 ~ a4 \divisioMinima
c'2 ~ c'2 ~ c'2*4/2 ~ c'4 ~ c'2 a2 \finalis
}

tenorMusic = {
f2*5/2 g2 f2 \divisioMinima
f2*5/2 e2 a2 \divisioMinima
f2*5/2 g2 f2 \divisioMinima
g2*3/2 ~ g2*3/2 f2 e2*3/2 \shiftRight d2 g2 f4 \divisioMaxima
a2*3/2 g2*3/2 f2*3/2 ~ f2*4/2 g2*3/2 ~ \divisioMinima
g2*3/2 e2*3/2 f2 \divisioMaxima
g2*3/2 ~ g2 e2 f4 \divisioMinima
g2 e2 f2*5/2 g2 ~ g4 f4 \divisioMaxima
d'2*3/2 ~ d'2*3/2 ~ d'2*5/2 r2 c'2 \divisioMinima d'2*4/2 a2*3/2 g4 ~ g2*3/2 f2*3/2 g2 f4 \divisioMaxima
g2*3/2 ~ g2 e2 f4 \divisioMinima
g2 e2 f2*5/2 g2 ~ g4 f4 \finalis
}

bassMusic = {
d2*5/2 ~ d2 ~ d2 \divisioMinima
a,2*5/2 ~ a,2 ~ a,2 \divisioMinima
d2*5/2 ~ d2 ~ d2 \divisioMinima
c2*3/2 a,2*3/2 ~ a,2 ~ a,2*3/2 d2 ~ d2 ~ d4 \divisioMaxima
d2*3/2 ~ d2*3/2 ~ d2*3/2 bes,2*4/2 ~ bes,2*3/2 \divisioMinima
a,2*3/2 ~ a,2*3/2 d2 \divisioMaxima
c2*3/2 d2 ~ d2 ~ d4 \divisioMinima
a,2 ~ a,2 ~ a,2*5/2 ~ a,2 d2 \divisioMaxima
r2*11/2 a2 ~ a2 d2*4/2 ~ d2*3/2 e4 ~ e2*3/2 d2*3/2 ~ d2 ~ d4 \divisioMaxima
c2*3/2 d2 ~ d2 ~ d4 \divisioMinima
a,2 ~ a,2 ~ a,2*5/2 ~ a,2 d2 \finalis
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
