\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.39
%(volume.page)

%Proofed 3/14

global = {
 \key d \phrygian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
San -- ctus, San -- ctus, San -- ctus Dó -- mi -- nus De -- us Sá -- ba -- oth. 
Ple -- ni sunt cœ -- li et ter -- ra gló -- ri -- a tu -- a. 
Ho -- sán -- na _ in ex -- cél -- sis. 
Be -- ne -- dí -- ctus qui ve -- nit in nó -- mi -- ne Dó -- mi -- ni. 
Ho -- sán -- na in ex -- cél -- _ sis. }

chantMusic = {
\tieDown   bes'4 bes'4 ( a'4 g'4) \divisioMinima
 a'4 ( \quil bes' c''4) a'4 \divisioMinima
 bes'4 g'4 ( f'4) g'4 g'4 ( a'4) a'4 \divisioMinima
 bes'4 g'4 ( f'4 ees'4) \forceBreak
 f'4 ( g'4) f'4 ( ees'4) d'4 \divisioMaxima
 d'4 d'4 d'4 ( \once \tweak #'font-size #-4 c' ) f'4 ( \quil g' a'4) bes'4 ( a'4) g'4 ( a'4) g'4 ( g'4) f'4 \divisioMinima
 bes'4 g'4 ( f'4) f'4 \forceBreak
 g'4 ( bes'4 g'4) a'4 \divisioMaxima
 a'4 ( \quil bes' c''4) ~ c''4 ( bes'4 a'4) a'4 f'4 ( \quil g' a'4) bes'4 ( g'4 f'4 ees'4) f'4 f'4 ( g'4 f'4) d'4 ( c'4 d'4) d'4 \divisioMaxima
 \forceBreak
 d'4 d'4 ( c'4) f'4 g'4 ( bes'4) bes'4 bes'4 ( a'4) g'4 \divisioMinima
 g'4 a'4 ( \quil bes' c''4) ~ c''4 ( bes'4 a'4) bes'4 g'4 ( f'4) g'4 g'4 ( a'4) a'4 \divisioMaxima
 \forceBreak
 bes'4 ( g'4 f'4 )( \quil g' a'4 bes'4 g'4 f'4) f'4 d'4 ( \quil ees' f'4) ~ f'4 ( ees'4 d'4 c'4) \divisioMinima
 c'4 ( g'4) g'4 ( f'4) g'4 ( bes'4 f'4) g'4 ( f'4 ees'4 c'4 d'4) d'4 \finalis

}

altoMusic = {
d'4 ~ d'2 ~ d'4 \divisioMinima
f'2*3/2 ~ f'4 ~ \divisioMinima
f'4 ees'2 d'4 ~ d'2 ~ d'4 \divisioMinima
bes4 ~ bes2*3/2 ~ bes2 ~ bes2 ~ bes4 \divisioMaxima
bes2 a2 c'2*3/2 d'2 ~ d'2 ~ d'2*3/2 ~ \divisioMinima
d'2*3/2 c'4 d'2*3/2 ~ d'4 \divisioMaxima
f'2 ~ f'2*4/2 ~ f'4 ~ f'2*3/2 ees'2*3/2 ~ ees'4 bes4 ~ bes2*3/2 ~ bes2*3/2 ~ bes4 \divisioMaxima
r2*2/2 c'4 ~ c'4 d'2 ~ d'4 ~ d'2 ~ d'4 ~ \divisioMinima
d'4 ~ d'2 ~ d'2*4/2 ees'2*3/2 d'4 ~ d'2 ~ d'4 \divisioMaxima
d'2 c'2*3/2 bes2*3/2 c'4 bes2 g2*5/2 \divisioMinima
c'2 ~ c'2 bes2*3/2 ~ bes2*3/2 g2 bes4 \finalis
}

tenorMusic = {
bes4 c'2 bes4 \divisioMinima
d'2*3/2 c'4 \divisioMinima
bes4 ~ bes2 ~ bes4 g2 f4 ~ \divisioMinima
f4 ees2*3/2 d2 g2 ~ g4 \divisioMaxima
r2*4/2 a2*3/2 \shiftRight g2 bes2 a2*3/2 \divisioMinima
g2*3/2 ~ g4 ~ g2*3/2 f4 \divisioMaxima
f2 d'2*4/2 c'4 bes2*3/2 ~ bes2*4/2 ~ bes4 f2*3/2 ~ f2*3/2 g4 \divisioMaxima
r4 a2*3/2 bes2 d'4 c'2 bes4 ~ \divisioMinima
bes4 a2 \shiftRight g2*4/2 ~ g2*3/2 ~ g4 ~ g2 f4 \divisioMaxima
f2 ~ f2*3/2 ~ f2*3/2 ~ f4 ~ f2 ees2*5/2 ~ \divisioMinima
ees2 d2 ~ d2*3/2 ees2*3/2 ~ ees2 f4 \finalis
}

bassMusic = {
g4 ~ g2 ~ g4 \divisioMinima
d2*3/2 ~ d4 ~ \divisioMinima
d4 c2 bes,4 ~ bes,2 d4 \divisioMinima
g,4 ~ g,2*3/2 ~ g,2 ~ g,2 ~ g,4 \divisioMaxima
g2 ~ g2 ~ g2*3/2 ~ g2 ~ g2 d2*3/2 \divisioMinima
bes,2*3/2 a,4 g,2*3/2 d4 \divisioMaxima
d2 ~ d2*4/2 ~ d4 ~ d2*3/2 c2*4/2 d4 ~ d2*3/2 bes,2*3/2 g,4 \divisioMaxima
g4 ~ g2*3/2 ~ g2 ~ g4 ~ g2 ~ g4 ~ \divisioMinima
g4 ~ g2 ~ g2*4/2 c2*3/2 bes,4 d2 ~ d4 \divisioMaxima
bes,2 a,2*3/2 g,2*3/2 a,4 bes,2 c2*5/2 \divisioMinima
bes,2 a,2 g,2*3/2 ~ g,2*3/2 c2 bes,4 \finalis
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
        "III."
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
