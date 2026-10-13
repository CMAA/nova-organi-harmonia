\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.87
%(volume.page)

%Proofed 3/14

global = {
 \key g \minor
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
\tieDown   f'4 ( f'4 \once \tweak #'font-size #-4 g' ) g'4 \divisioMinima
 a'4 ( bes'4) g'4 \divisioMinima
 a'4 c''4 \divisioMinima
 c''4 a'4 bes'4 a'4 g'4 \forceBreak
 a'4 ( g'4) f'4 ( g'4) g'4 \divisioMaxima
 f'4 f'4 ( g'4) g'4 g'4 ( f'4) a'4 bes'4 ( a'4) g'4 ( g'4) f'4 \divisioMinima
 a'4 ( g'4) g'4 ( f'4) f'4 ( g'4) g'4 g'4 \divisioMaxima
 \forceBreak
 g'4 ( a'4 \quil bes' c''4 d''4) c''4 ( c''4) g'4 ( a'4 bes'4 a'4 g'4) g'4 g'4 ( f'4) a'4 ( bes'4 \once \tweak #'font-size #-4 g' ) g'4 \divisioMaxima
 f'4 f'4 ( g'4) g'4 ( a'4) g'4 bes'4 \forceBreak
 a'4 ( g'4) f'4 \divisioMinima
 a'4 c''4 a'4 bes'4 a'4 ( g'4) f'4 ( g'4) g'4 \divisioMaxima
 g'4 ( a'4 \quil bes' c''4 d''4) c''4 ( c''4) \forceBreak
 g'4 ( a'4 bes'4 a'4 g'4) g'4 g'4 ( f'4) a'4 ( bes'4 \once \tweak #'font-size #-4 g' ) g'4 \finalis

}

altoMusic = {
d'2*3/2 ~ d'4 \divisioMinima
d'2 ~ d'4 \divisioMinima
g'2 ~ \divisioMinima
g'2*3/2 d'2 ~ d'2*4/2 ~ d'4 \divisioMaxima
d'4 ~ d'2 ~ d'4 c'2*3/2 bes2 a2*3/2 \divisioMinima
d'2 ~ d'2 c'2 ~ c'4 bes4 \divisioMaxima
d'2*5/2 g'2 f'2 ees'2*3/2 d'4 c'2 ~ c'2*3/2 bes4 \divisioMaxima
d'4 ~ d'2 ~ d'2*4/2 ~ d'2 -\tweak Glissando.Y-offset #-0.8 \glissando f'4 ~ \divisioMinima
f'4 g'2*3/2 d'2 ~ d'2 ~ d'4 \divisioMaxima
d'2*5/2 g'2 f'2 ees'2*3/2 d'4 c'2 ~ c'2*3/2 bes4 \finalis
}

tenorMusic = {
bes2*3/2 ~ bes4 \divisioMinima
c'2 bes4 \divisioMinima
ees'2 \divisioMinima
d'2*3/2 c'2 a2*4/2 bes4 ~ \divisioMaxima
bes4 a2 g4 d2*3/2 ~ d2 ~ d2*3/2 \divisioMinima
f2 d2 ~ d2 ~ d2 \divisioMaxima
g2*5/2 ~ g2 ~ g2 ~ g2*3/2 ~ g4 d2 ~ d2*3/2 ~ d4 \divisioMaxima
r4 c'2 bes2*4/2 c'2 d'4 ~ \divisioMinima
d'4 ees'2*3/2 bes2 c'2 bes4 \divisioMaxima
g2*5/2 ~ g2 ~ g2 ~ g2*3/2 ~ g4 d2 ~ d2*3/2 ~ d4 \finalis
}

bassMusic = {
r2*3/2 g4 \divisioMinima
g2 ~ g4 \divisioMinima
c'2 \divisioMinima
g2*3/2 ~ g2 ~ g2*4/2 ~ g4 \divisioMaxima
bes,4 ~ bes,2 ~ bes,4 a,2*3/2 g,2 \shiftRight d2*3/2 ~ \divisioMinima
d2 bes,2 a,2 g,2 \divisioMaxima
bes,2*5/2 ees2 d2 c2*3/2 bes,4 a,2 g,2*3/2 ~ g,4 \divisioMaxima
s2*10/2 \divisioMinima
r4 c'2*3/2 \shiftRight bes2 a2 g4 \divisioMaxima
bes,2*5/2 ees2 d2 c2*3/2 bes,4 a,2 g,2*3/2 ~ g,4 \finalis
}

voiceLines = {
\voiceLineStyle


s2*31/2
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" d2*2/2 d2*0


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
