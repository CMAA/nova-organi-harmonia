\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.71
%(volume.page)

%Proofed 3/14

global = {
 \key fis \minor
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
San -- ctus, 
\set stanza = " * " San -- _ ctus, San -- _ _ ctus Dó -- mi -- nus De -- us Sá -- ba -- oth. 
Ple -- ni sunt cœ -- li et ter -- ra gló -- ri -- a tu -- a. 
Ho -- sán -- na in ex -- cél -- _ sis. 
Be -- ne -- dí -- ctus qui ve -- nit in nó -- mi -- ne Dó -- mi -- ni. 
Ho -- sán -- na in ex -- cél -- _ sis. }

chantMusic = {
\tieDown   fis'4 ( a'4 gis'4 fis'4 e'4 fis'4) fis'4 \divisioMinima
  fis'4 ( a'4) cis''4 ( cis''4 d''4) cis''4 \divisioMinima
 cis''4 ( a'4) b'4 ( fis'4) a'4 ( gis'4 fis'4 e'4 fis'4) fis'4 \divisioMinima
 \forceBreak
 cis'4 e'4 ( fis'4) fis'4 a'4 ( gis'4) fis'4 e'4 e'4 ( fis'4) fis'4 \divisioMaxima
 fis'4 a'4 ( cis''4) cis''4 cis''4 b'4 gis'4 a'4 ( gis'4) fis'4 \divisioMinima
 \forceBreak
 e'4 gis'4 ( fis'4) gis'4 ( a'4 gis'4) fis'4 fis'4 \divisioMaxima
 cis'4 e'4 ( \once \tweak #'font-size #-4 fis' ) fis'4 cis''4 b'4 ( a'4) b'4 ( fis'4) a'4 ( gis'4 fis'4 e'4 fis'4) fis'4 \divisioMaxima
 \forceBreak
 fis'4 a'4 ( cis''4) cis''4 b'4 gis'4 a'4 ( gis'4) fis'4 \divisioMinima
 e'4 gis'4 ( fis'4) gis'4 a'4 ( gis'4) fis'4 e'4 ( fis'4) fis'4 \divisioMaxima
 \forceBreak
 cis'4 e'4 ( \once \tweak #'font-size #-4 fis' ) fis'4 cis''4 b'4 ( a'4) b'4 ( fis'4) a'4 ( gis'4 fis'4 e'4 fis'4) fis'4 \finalis

}

altoMusic = {
cis'2*3/2 ~ cis'2*3/2 ~ cis'4 fis'2 ~ fis'2*3/2 e'4 \divisioMinima
e'2 d'2 ~ d'2*3/2 cis'2 cis'4 ~ \divisioMinima
cis'4 ~ cis'2*3/2 ~ cis'2*3/2 ~ cis'4 b2 cis'4 \divisioMaxima
r4 e'2*3/2 d'2*3/2 cis'2 ~ cis'4 ~ \divisioMinima
cis'4 ~ cis'2 ~ cis'2*3/2 ~ cis'2 \divisioMaxima
cis'4 ~ cis'2 ~ cis'2 e'2 d'2 ~ d'2*3/2 cis'2 ~ cis'4 \divisioMaxima
fis'4 ~ fis'2 ~ fis'2*3/2 ~ fis'2 cis'4 ~ \divisioMinima
cis'4 ~ cis'2*3/2 ~ cis'2 ~ cis'4 b2 cis'4 \divisioMaxima
cis'4 ~ cis'2 ~ cis'2 e'2 d'2 ~ d'2*3/2 cis'2 ~ cis'4 \finalis
}

tenorMusic = {
a2*3/2 ~ a2*3/2 ~ a4 \divisioMinima a2 ~ a2*3/2 ~ a4 \divisioMinima
fis2 ~ fis2 b2*3/2 ~ b2 a4 ~ \divisioMinima
a4 gis2*3/2 \shiftRight fis2*3/2 gis4 ~ gis2 a4 \divisioMaxima
fis4 ~ fis2*3/2 ~ fis2*3/2 ~ fis2 ~ fis4 \divisioMinima
gis4 e2 b2*3/2 ~ b4 a4 \divisioMaxima
a4 gis2 fis2 ~ fis2 ~ fis2 b2*3/2 ~ b2 a4 \divisioMaxima
fis'4 e'2 d'2*3/2 cis'2*3/2 ~ \divisioMinima
cis'4 b2*3/2 a2 gis4 ~ gis2 a4 \divisioMaxima
a4 gis2 fis2 ~ fis2 ~ fis2 b2*3/2 ~ b2 a4 \finalis
}

bassMusic = {
r2*3/2 gis2*3/2 fis4 e2 d2*3/2 a,4 \divisioMinima
b,2 ~ b,2 ~ b,2*3/2 cis2 fis4 ~ \divisioMinima
fis4 ~ fis2*3/2 ~ fis2*3/2 ~ fis4 ~ fis2 ~ fis4 \divisioMaxima
fis,4 ~ fis,2*3/2 ~ fis,2*3/2 ~ fis,2 a,4 \divisioMinima
cis4 ~ cis2 ~ cis2*3/2 fis2 \divisioMaxima
a,4 ~ a,2 ~ a,2 cis2 b,2 ~ b,2*3/2 cis2 fis4 \divisioMaxima
fis4 ~ fis2 ~ fis2*3/2 ~ fis2*3/2 ~ \divisioMinima
fis4 ~ fis2*3/2 ~ fis2 ~ fis4 ~ fis2 ~ fis4 \divisioMaxima
a,4 ~ a,2 ~ a,2 cis2 b,2 ~ b,2*3/2 cis2 fis4 \finalis
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
