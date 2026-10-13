\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.149
%(volume.page)

%Proofed 3/14

global = {
 \key f \mixolydian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
San -- _ ctus, 
\set stanza = " * " San -- ctus, San -- ctus Dó -- mi -- nus De -- us Sá -- _ _ ba -- oth. 
Ple -- ni sunt cœ -- li et _ ter -- ra gló -- ri -- a tu -- a. 
Ho -- sán -- na in ex -- cél -- sis. 
Be -- ne -- dí -- ctus qui ve -- nit 
in nó -- mi -- ne Dó -- mi -- ni. 
Ho -- sán -- na in ex -- cél -- sis. }

chantMusic = {
\tieDown   f'4 ( f'4 g'4 f'4) bes'4 ( a'4 g'4) a'4 \divisioMinima
 f'4 ( g'4 f'4) f'4 \divisioMinima
 f'4 a'4 ( c''4) c''4 bes'4 ( a'4 g'4) a'4 \divisioMinima
 \forceBreak
 f'4 g'4 ( a'4) a'4 ( c''4 a'4 f'4.) bes'4 ( a'4 g'4 f'4) g'4 ( a'4) g'4 ( f'4) f'4 \divisioMaxima
 f'4 ( g'4) f'4 g'4 ( a'4) f'4 ( g'4 f'4) f'4 \divisioMinima
 \forceBreak
 f'4 a'4 ( c''4) bes'4 ( a'4 g'4) a'4 f'4 g'4 g'4 ( a'4) g'4 ( f'4) f'4 \divisioMaxima
 f'4 a'4 ( \once \tweak #'font-size #-4 c'' ) c''4 ( a'4 f'4) bes'4 g'4 ( a'4 g'4) f'4 f'4 \divisioMaxima
 \forceBreak
 c''4 ( d''4 c''4) a'4 bes'4 ( c''4) c''4 \divisioMinima
 c''4 ( bes'4 g'4 a'4) f'4 ( g'4 f'4) f'4 \divisioMaior
 f'4 ( g'4) f'4 g'4 ( a'4) a'4 c''4 d''4 ( c''4 bes'4) c''4 \divisioMaxima
 \forceBreak
 c''4 a'4 f'4 bes'4 g'4 ( a'4 g'4) f'4 f'4 \finalis

}

altoMusic = {
r2*3/2 f'4 ~ f'2*4/2 \divisioMinima
c'2*3/2 ~ c'4 \divisioMinima
f'4 ~ f'2*3/2 g'2*3/2 f'4 ~ \divisioMinima
f'4 ~ f'2 ~ f'2*3/2 ~ f'4. d'2*4/2 ~ d'2 c'2 d'4 \divisioMaxima
d'2*3/2 ees'2 c'2*3/2 ~ c'4 ~ \divisioMinima
c'4 ~ c'2 d'2*4/2 f'2 ees'2 c'2 ~ c'4 \divisioMaxima
f'4 ~ f'2 ~ f'2*4/2 ~ f'2*3/2 c'2 \divisioMaxima
f'2*4/2 ~ f'2 ~ f'4 \divisioMinima
d'2*4/2 ~ d'2*3/2 ~ d'4 ~ \divisioMaior
d'2 ~ d'4 ~ d'2 ~ d'2 ~ d'2*3/2 ees'4 \divisioMaxima
c'4 d'2*3/2 ees'2*3/2 c'2 \finalis
}

tenorMusic = {
d'2*4/2 ~ d'2*4/2 \divisioMinima
bes2*3/2 a4 \divisioMinima
r2*4/2 ees'2*3/2 d'4 ~ \divisioMinima
d'4 ~ d'2 c'2*9/4 ~ c'2*4/2 bes2 a2 bes4 \divisioMaxima
a2*3/2 bes2 ~ bes2*3/2 a4 ~ \divisioMinima
a4 \shiftRight f2 ~ f2*4/2 bes2 ~ bes2 ~ bes2 a4 \divisioMaxima
f2*3/2 a2*4/2 bes2*3/2 ~ bes4 a4 \divisioMaxima
a2*4/2 g2 a4 \divisioMinima
g2*4/2 a2*3/2 ~ a4 \divisioMaior
bes2 a4 g2 f2 ~ f2*3/2 g4 \divisioMaxima
f4 ~ f2*3/2 bes2*3/2 ~ bes4 a4 \finalis
}

bassMusic = {
bes2*4/2 \shiftRight d'2*4/2 \divisioMinima
f2*3/2 ~ f4 \divisioMinima
d'2*4/2 ~ d'2*3/2 c'4 ~ \divisioMinima
c'4 bes2 f2*9/4 g2*4/2 ~ g2 \shiftRight a2*3/2 \divisioMaxima
d2*3/2 c2 f2*3/2 ~ f4 ~ \divisioMinima
f4 ~ f2 d2*4/2 ~ d2 ees2 f2 ~ f4 d2*3/2 ~ d2*4/2 ~ d2*3/2 f2 \divisioMaxima
f2*4/2 ~ f2 ~ f4 \divisioMinima
r2*4/2 d2*3/2 c4 \divisioMaior
bes,2 ~ bes,4 ~ bes,2 d2 c2*3/2 ~ c4 \divisioMaxima
a,4 bes,2*3/2 c2*3/2 f2 \finalis
}

voiceLines = {
\voiceLineStyle


s2*16/2
\allowVoiceLineBreak
\voiceLine "down" "down" d'2*3/2 d'2*1/2


}

\score{
  <<
    \new Lyrics
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
    \context Lyrics {
      \lyricsto chant {
      \chantText
    }
    }
  >>
  \layout{
  }
  
}
