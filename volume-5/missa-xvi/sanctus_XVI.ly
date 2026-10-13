\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.89
%(volume.page)

%Proofed 3/14

global = {
 \key g \dorian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
San -- ctus, 
\set stanza = " * " San -- ctus, San -- ctus Dó -- mi -- nus De -- us Sá -- ba -- oth. 
Ple -- ni sunt cœ -- li et ter -- ra gló -- ri -- a tu -- a. 
Ho -- sán -- na in ex -- cél -- sis. 
Be -- ne -- dí -- ctus qui ve -- nit in nó -- mi -- ne Dó -- mi -- ni. 
Ho -- sán -- na in ex -- cél -- sis. }

chantMusic = {
\tieDown   bes'4 g'4 ( f'4) \divisioMinima
 g'4 bes'4 ( a'4) \divisioMinima
 g'4 f'4 \divisioMinima
 g'4 ( bes'4) bes'4 bes'4 bes'4 ( a'4) g'4 \forceBreak
 a'4 bes'4 ( c''4) c''4 \divisioMaxima
 c''4 c''4 d''4 c''4 bes'4 bes'4 bes'4 ( a'4) g'4 a'4 g'4 f'4 g'4 ( a'4) a'4 \divisioMaxima
 \forceBreak
 c''4 c''4 c''4 ( c''4 bes'4 a'4) a'4 a'4 ( g'4) a'4 ( bes'4 c''4) bes'4 ( a'4) \divisioMaxima
 a'4 c''4 c''4 ( d''4) c''4 bes'4 bes'4 ( a'4) g'4 \divisioMinima
 \forceBreak
 bes'4 a'4 ( bes'4 c''4) bes'4 ( a'4) g'4 ( f'4) g'4 ( a'4) a'4 a'4 \divisioMaxima
 c''4 c''4 c''4 ( c''4 bes'4 a'4) a'4 a'4 ( g'4) f'4 ( g'4 \quil a' bes'4) a'4 ( g'4) \finalis

}

altoMusic = {
d'4 -\tweak Glissando.Y-offset #-0.8 \glissando g'4 f'4 \divisioMinima
d'4 ~ d'2 \divisioMinima
d'2 ~ \divisioMinima
d'2*4/2 ~ d'2 ~ d'4 f'4 ~ f'2 ~ f'4 \divisioMaxima
g'2 f'4 ~ f'2*3/2 ~ f'2*3/2 ~ f'2 ~ f'4 e'2 f'4 \divisioMaxima
f'2 ~ f'2*5/2 d'2 e'2*3/2 f'2 \divisioMaxima
a'4 ~ a'4 g'2*3/2 f'4 d'2 ~ d'4 ~ \divisioMinima
d'4 f'2*3/2 ~ f'2 ~ f'2 e'2*3/2 f'4 \divisioMaxima
f'2 ~ f'2*5/2 ~ f'2 ~ f'2*4/2 d'2 \finalis
}

tenorMusic = {
g4 c'2 \divisioMinima
g4 f2 \divisioMinima
a2 \divisioMinima
bes2*4/2 c'2 bes4 c'4 g2 a4 \divisioMaxima
g2 a4 d'2*3/2 c'2*3/2 bes2*3/2 ~ bes2 a4 \divisioMaxima
a4 bes4 c'2*5/2 ~ c'2 bes2*3/2 d'2 \divisioMaxima
r2*8/2 bes4 ~ \divisioMinima
bes4 c'2*3/2 ~ c'2 bes2 ~ bes2*3/2 a4 \divisioMaxima
a4 bes4 c'2*5/2 bes2 c'2*4/2 ~ c'4 bes4 \finalis
}

bassMusic = {
r4 a2 \divisioMinima
bes,4 d2 \divisioMinima
d2 \divisioMinima
g2*4/2 ~ g2 ~ g4 f4 ~ f2 ~ f4 \divisioMaxima
e2 d4 ~ d2*3/2 ~ d2*3/2 ~ d2*3/2 ~ d2 ~ d4 \divisioMaxima
d2 ~ d2*5/2 g2 ~ g2*3/2 d2 \divisioMaxima
f2 e2*3/2 d4 g2 ~ g4 ~ \divisioMinima
g4 f2*3/2 d2 ~ d2 ~ d2*3/2 ~ d4 \divisioMaxima
d2 ~ d2*5/2 ~ d2 ~ d2*4/2 g2 \finalis
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
        "II."
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
