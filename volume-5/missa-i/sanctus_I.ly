\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.8
%(volume.page)

%Proofed 2/13

global = {
 \key a \locrian
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
\tieDown   a'4 g'4 ( a'4 g'4 f'4) \divisioMinima
 f'4 ( g' a'4) g'4 ( a'4 g'4 f'4) \divisioMinima
 \once\override NoteHead.Y-extent=#'(5 . 0) f'4 a'4 c''4 bes'4 ( c''4) c''4 c''4 c''4 ( bes'4) c''4 ( d''4)
 \forceBreak
 c''4 ( bes'4 a'4) a'4 \divisioMaxima
 g'4 ( d''4 ees''4) d''4 d''4 c''4 ( c''4 bes'4) c''4 c''4 ( d''4 c''4) a'4 a'4 \divisioMinima
 \forceBreak
 a'4 ( \quil bes' c''4 bes'4 a'4) g'4 g'4 ( a'4)
 g'4 ( f'4) f'4 \divisioMaxima
 f'4 f'4 ( \once \tweak #'font-size #-4 c'' ) c''4 ( c''4 bes'4) c''4 c''4 ( d''4 c''4) a'4 a'4 \divisioMaxima
 \forceBreak
 g'4 ( d''4) d''4 ( c''4) d''4 ( ees''4) d''4 d''4 c''4 ( bes'4) c''4 \divisioMinima
 c''4 c''4 ( c''4 bes'4) c''4
 c''4 ( d''4 c''4) bes'4 ( a'4) g'4 ( a'4) a'4 \divisioMaxima
 \forceBreak
 a'4 ( \quil bes' c''4 bes'4 a'4) g'4 ( a'4) g'4 ( f'4) f'4 ( c''4) c''4 ( bes'4) c''4 ( d''4 c''4 c''4) a'4 \finalis

}

altoMusic = {
f'2*3/2 ~ f'2 \divisioMinima
d'2*3/2 c'2 ~ c'2 \divisioMinima
r4 a'4 ~ a'4 bes'2*3/2 a'4 f'2*4/2 ~ f'2*3/2 ~ f'4 \divisioMaxima
d'2*5/2 f'2*4/2 ~ f'2*3/2 ~ f'2 \divisioMinima
d'2*5/2 ~ d'4 bes2 ~ bes2 a4 \divisioMaxima
c'4 ~ c'2 d'2*4/2 ~ d'2*3/2 ~ d'2 \divisioMaxima
r2 bes'2 ~ bes'2*4/2 ~ bes'2*3/2 \divisioMinima
a'4 ~ a'2*4/2 ~ a'2*3/2 g'2 ~ g'2 f'4 \divisioMaxima
d'2 ~ d'2*3/2 c'2*4/2 ~ c'2 f'2 ~ f'2 g'2 f'4 \finalis
}

tenorMusic = {
c'4 d'2 ~ d'2 \divisioMinima
f2*3/2 ~ f2 a2 \divisioMinima
r2*3/2 g'2*3/2 \shiftRight f'4 d'2 ~ d'2 ~ d'2*3/2 ~ d'4 \divisioMaxima
bes2*5/2 ~ bes2*4/2 a2*3/2 c'2 \divisioMinima
f2 ~ f2*3/2 ees4 ~ ees2 \shiftRight f2 r4 \divisioMaxima
f4 ~ f2 g2*4/2 ~ g2*3/2 ~ g4 f4 \divisioMaxima
g'2*4/2 ~ g'2*4/2 ~ g'2*3/2 ~ \divisioMinima
g'4 ~ g'2*4/2 f'2*3/2 ees'2*4/2 \shiftRight d'4 \divisioMaxima
f2 ~ f2*3/2 ~ f2*4/2 ~ f2 g2 a2 ees'2 d'4 \finalis
}

bassMusic = {
a4 bes2 \shiftRight d'2 \divisioMinima
bes,2*3/2 a,2 ~ a,2 \divisioMinima
f'2*3/2 ~ f'2*3/2 ~ f'4 r2 a2 g2*3/2 \shiftRight d'4 \divisioMaxima
g2*5/2 d2*4/2 ~ d2*3/2 ~ d2 \divisioMinima
c2 bes,2*3/2 ~ bes,4 c2 f2 ~ f4 \divisioMaxima
d4 a,2 g,2*4/2 bes,2*3/2 d2 \divisioMaxima
r2*4/2 f'2*4/2 ees'2*3/2 ~ \divisioMinima
ees'4 d'2*4/2 ~ d'2*3/2 ~ d'2*4/2 ~ d'4 \divisioMaxima
c2 bes,2*3/2 a,2*4/2 d2 ~ d2 ~ d2 ~ d2 ~ d4 \finalis
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
