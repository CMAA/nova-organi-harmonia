\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.61
%(volume.page)

%Proofed 3/14

global = {
 \key fis \phrygian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
San -- ctus, 
\set stanza = " * " San -- ctus, San -- ctus 
Dó -- mi -- nus De -- us Sá -- ba -- oth. 
Ple -- ni sunt cœ -- li et ter -- ra gló -- ri -- a tu -- a. 
Ho -- sán -- na in ex -- cél -- sis. 
Be -- ne -- dí -- ctus qui ve -- nit in nó -- mi -- ne Dó -- mi -- ni. 
Ho -- sán -- na in ex -- cél -- sis. }

chantMusic = {
\tieDown   fis'4 ( fis'4 a'4) fis'4 \divisioMinima
 g'4 ( g'4 g'4) e'4 ( d'4) \divisioMinima
 e'4 ( g'4 e'4) fis'4 \divisioMaior
 a'4 g'4 a'4 a'4 a'4 ( g'4) \forceBreak
 a'4 g'4 ( fis'4) fis'4 \divisioMaxima
 a'4 g'4 e'4 ( d'4) e'4 g'4 e'4 e'4 ( fis'4) fis'4 \divisioMinima
 a'4 g'4 a'4 g'4 ( fis'4) fis'4 \divisioMaxima
 \forceBreak
 a'4 a'4 ( \once \tweak #'font-size #-4 b' ) b'4 a'4 g'4 a'4 ( a'4) fis'4 \divisioMaxima
 a'4 fis'4 g'4 e'4 ( d'4) e'4 e'4 ( g'4 e'4) fis'4 \divisioMinima
 \forceBreak
 a'4 a'4 a'4 g'4 a'4 g'4 ( fis'4) fis'4 \divisioMaxima
 a'4 a'4 ( \once \tweak #'font-size #-4 b' ) b'4 a'4 g'4 a'4 ( a'4) fis'4 \finalis

}

altoMusic = {
d'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando fis'4 \divisioMinima
e'2*3/2 ~ e'4 r4 \divisioMinima
r2*4/2 \divisioMaior
d'2*3/2 ~ d'4 e'2 ~ e'2*3/2 d'4 \divisioMaxima
d'2*2/2 -\tweak Glissando.Y-offset #-0.8 \glissando e'4 d'4 b2*3/2 d'2*3/2 ~ \divisioMinima
d'2*3/2 ~ d'2*3/2 \divisioMaxima
d'4 ~ d'2 ~ d'2*3/2 cis'2 d'4 \divisioMaxima
d'2 ~ d'2*4/2 ~ d'2*3/2 ~ d'4 ~ \divisioMinima
d'4 ~ d'2*3/2 ~ d'4 ~ d'2 ~ d'4 \divisioMaxima
d'4 e'2 d'2*3/2 cis'2 d'4 \finalis
}

tenorMusic = {
b2*3/2 ~ b4 \divisioMinima
b2*3/2 a2 \divisioMinima
b2*3/2 ~ b4 ~ \divisioMaior
b2*3/2 ~ b4 ~ b2 ~ b2*3/2 ~ b4 \divisioMaxima
a2 ~ a2 g2*3/2 a2*3/2 ~ \divisioMinima
a2*3/2 b2*3/2 \divisioMaxima
r4 fis2 g2*3/2 e2 fis4 \divisioMaxima
a2 b2*4/2 ~ b2*3/2 a4 ~ \divisioMinima
a4 fis2*3/2 ~ fis4 g2 b4 \divisioMaxima
r4 e2 fis2*3/2 e2 fis4 \finalis
}

bassMusic = {
r2*3/2 d4 \divisioMinima
e2*3/2 fis2 \divisioMinima
g2*3/2 \shiftRight b4 \divisioMaior
r2*3/2 g4 ~ g2 e2*4/2 \divisioMaxima
d2 fis2 e2*3/2 d2*3/2 \divisioMinima
b,2*3/2 ~ b,2*3/2 \divisioMaxima
d4 ~ d2 b,2*3/2 ~ b,2 ~ b,4 \divisioMaxima
fis2 e2*4/2 d2*3/2 ~ d4 ~ \divisioMinima
d4 ~ d2*3/2 b,4 ~ b,2 ~ b,4 \divisioMaxima
d4 cis2 b,2*3/2 ~ b,2 ~ b,4 \finalis
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
