\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.72
%(volume.page)

%Proofed 3/14

global = {
 \key fis \minor
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
A -- gnus De -- i, 
\set stanza = " * " qui tol -- lis pec -- cá -- ta mun -- di: 
mi -- se -- ré -- re no -- bis. 
A -- gnus De -- i, 
\set stanza = " * " qui tol -- lis pec -- cá -- ta mun -- di: 
mi -- se -- ré -- re no -- bis. 
A -- gnus De -- i, 
\set stanza = " * " qui tol -- lis pec -- cá -- ta mun -- di: 
do -- na nó -- bis pa -- cem. }

chantMusic = {
\tieDown   cis'4 ( e'4) fis'4 ( a'4) gis'4 ( a'4 gis'4 fis'4) fis'4 \divisioMinima
 gis'4 b'4 ( a'4 b'4) a'4 ( gis'4) fis'4 ( cis''4) cis''4 ( cis''4 b'4) a'4 ( gis'4) fis'4 ( \once \tweak #'font-size #-4 gis' ) gis'4 \divisioMaior
 \forceBreak
 gis'4 gis'4 ( fis'4 a'4) a'4 ( gis'4) e'4 ( fis'4) fis'4 fis'4 \finalis
 cis'4 e'4 fis'4 ( e'4) fis'4 \divisioMinima
 fis'4 fis'4 ( gis'4) fis'4 fis'4 ( e'4) \forceBreak
 e'4 ( gis'4) gis'4 fis'4 ( fis'4) e'4 \divisioMaior
 fis'4 fis'4 ( e'4) fis'4 ( gis'4) gis'4 fis'4 fis'4 \finalis
 cis'4 ( e'4) fis'4 ( a'4) gis'4 ( a'4 gis'4 fis'4) fis'4 \divisioMinima
 \forceBreak
 gis'4 b'4 ( a'4 b'4) a'4 ( gis'4) fis'4 ( cis''4) cis''4 ( cis''4 b'4) a'4 ( gis'4) fis'4 ( \once \tweak #'font-size #-4 gis' ) gis'4 \divisioMaior
 gis'4 gis'4 ( fis'4 a'4) a'4 ( gis'4) e'4 ( fis'4) fis'4 fis'4 \finalis

}

altoMusic = {
cis'2 ~ cis'2 ~ cis'2*4/2 ~ cis'4 \divisioMinima
e'4 ~ e'2*3/2 ~ e'2 ~ e'2 ~ e'2*3/2 ~ e'2 ~ e'2 ~ e'4 ~ \divisioMaior
e'4 cis'2*3/2 ~ cis'2 ~ cis'2 ~ cis'2 \finalis
cis'2 ~ cis'2 ~ cis'4 \divisioMinima
r4 cis'2*3/2 ~ cis'2 ~ cis'2*3/2 ~ cis'2*3/2 ~ \divisioMaior
cis'4 ~ cis'2 ~ cis'2*3/2 ~ cis'2 \finalis
cis'2 ~ cis'2 ~ cis'2*4/2 ~ cis'4 \divisioMinima
r4 d'2*3/2 e'2 fis'2 e'2*3/2 cis'2 ~ cis'2 e'4 \divisioMaior
cis'4 ~ cis'2*3/2 d'2 b2 ~ b4 a4 \finalis
}

tenorMusic = {
a2 ~ a2 b2*4/2 a4 \divisioMinima
r4 gis2*3/2 fis2 a2 gis2*3/2 b2 a2 cis'4 ~ \divisioMaior
cis'4 a2*3/2 b2 gis2 a2 \finalis
gis2 b2 a4 \divisioMinima
fis4 ~ fis2*3/2 gis2 e2*3/2 a2*3/2 ~ \divisioMaior
a4 gis2 b2*3/2 ~ b4 a4 \finalis
a2 gis2 b2*4/2 a4 \divisioMinima
r4 fis2*3/2 ~ fis2 ~ fis2 gis2*3/2 \shiftRight fis2 a2 cis'4 \divisioMaior
e4 fis2*3/2 ~ fis2 cis2 ~ cis2 \finalis
}

bassMusic = {
r2 gis2 fis2*4/2 ~ fis4 \divisioMinima
cis4 ~ cis2*3/2 ~ cis2 ~ cis2 ~ cis2*3/2 ~ cis2 ~ cis2 ~ cis4 ~ \divisioMaior
cis4 fis2*3/2 ~ fis2 ~ fis2 ~ fis2 \finalis
fis2 ~ fis2 ~ fis4 \divisioMinima
r4 a,2*3/2 ~ a,2 ~ a,2*3/2 ~ a,2*3/2 ~ \divisioMaior
a,4 cis2 ~ cis2*3/2 fis2 \finalis
fis2 ~ fis2 ~ fis2*4/2 ~ fis4 \divisioMinima
r4 b,2*3/2 cis2 d2 e2*3/2 fis2 ~ fis2 cis4 ~ \divisioMaior
cis4 a,2*3/2 b,2 \shiftRight cis2 fis,2 \finalis
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
