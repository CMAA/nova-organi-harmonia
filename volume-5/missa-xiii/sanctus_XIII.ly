\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.76
%(volume.page)

%Proofed 3/14

global = {
 \key f \mixolydian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
San -- ctus, San -- ctus, San -- ctus Dó -- mi -- nus De -- us Sá -- ba -- oth. 
Ple -- ni sunt cœ -- li et ter -- ra gló -- ri -- a tu -- a. 
Ho -- sán -- na in ex -- cél -- sis. 
Be -- ne -- dí -- ctus qui ve -- nit in nó -- mi -- ne Dó -- mi -- ni. 
Ho -- sán -- na in ex -- cél -- sis. }

chantMusic = {
\tieDown   f'4 ( g'4) f'4 \divisioMinima
 d'4 ( ees'4) c'4 \divisioMinima
 d'4 f'4 \divisioMinima
 f'4 g'4 a'4 bes'4 g'4 f'4 ees'4 ( f'4) f'4 \divisioMaxima
 \forceBreak
 f'4 a'4 bes'4 c''4 d''4 bes'4 c''4 a'4 \divisioMinima
 bes'4 g'4 g'4 f'4 f'4 \divisioMaxima
 \forceBreak
 g'4 f'4 ( d' ) f'4 g'4 ( a'4) a'4 ( g'4 f'4) g'4 f'4 \divisioMaxima
 f'4 f'4 g'4 f'4 ees'4 ees'4 ( d'4) c'4 d'4 \forceBreak
 d'4 ( f'4) d'4 c'4 d'4 f'4 f'4 \divisioMaxima
 f'4 g'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 ( g'4 f'4 ees'4) g'4 g'4 ( a'4 g'4) f'4 f'4 \finalis

}

altoMusic = {
d'2 c'4 \divisioMinima
g2 ~ g4 \divisioMinima
d'2 \divisioMinima
c'2*3/2 d'2 c'4 bes2 c'4 \divisioMaxima
f'2*3/2 ~ f'2*3/2 ~ f'2 \divisioMinima
d'2*3/2 c'2 \divisioMaxima
d'4 ~ d'2*3/2 ~ d'2 c'2*3/2 bes4 a4  \divisioMaxima
bes2 ~ bes2*3/2 ~ bes2*4/2 a2*4/2 c'2 d'4 \divisioMaxima
c'4 bes2 ~ bes2*5/2 ~ bes2*3/2 ~ bes4 a4 \finalis
}

tenorMusic = {
bes2 a4 \divisioMinima
f2 ees4 \divisioMinima
bes2 \divisioMinima
a2*3/2 g2 ~ g4 ~ g2 f4 \divisioMaxima
r2*3/2 g2*3/2 a4 c'4 \divisioMinima
bes2*3/2 c'2 \divisioMaxima
r4 bes2*3/2 f2 ~ f2*3/2 c2 \divisioMaxima
d2 ees2*3/2 g2*4/2 f2*4/2 ~ f2 bes4 \divisioMaxima
d4 ~ d2 ees2*3/2 c2 ~ c2*3/2 ~  <f c>2 \finalis
}

bassMusic = {
r2*3/2 \divisioMinima
c2 ~ c2*3/2 \divisioMinima
r2*6/2 r2*3/2 \divisioMaxima
f2*3/2 ~ f2*3/2 ~ f2 \divisioMinima
g2*3/2 a2 \divisioMaxima
bes,4 ~ bes,2*3/2 ~ bes,2 f,2*3/2 ~ f,2 \divisioMaxima
s2*13/2 bes,2 ~ bes,4 \divisioMaxima
a,4 g,2 ~ g,2*3/2 ~ g,2 f,2*3/2 ~ f,2 \finalis
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
