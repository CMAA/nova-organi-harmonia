\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.66
%(volume.page)

%Proofed 3/14

global = {
 \key fis \minor
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
San -- _ ctus, 
\set stanza = " * " San -- ctus, San -- ctus Dó -- mi -- nus De -- us Sá -- ba -- oth. 
Ple -- ni sunt cœ -- li et ter -- ra gló -- ri -- a tu -- a. 
Ho -- sán -- na in ex -- cél -- sis. 
Be -- ne -- dí -- ctus qui ve -- nit in nó -- mi -- ne Dó -- mi -- ni. _ 
Ho -- sán -- na in ex -- cél -- sis. }

chantMusic = {
\tieDown   fis'4 ( cis'4) e'4 ( \once \tweak #'font-size #-4 fis' ) fis'4 \divisioMinima
 fis'4 ( e'4 gis'4) ~ gis'4 ( \once \tweak #'font-size #-4 fis' ) fis'4 \divisioMinima
 fis'4 ( gis'4 a'4 b'4) b'4 ( cis''4 b'4) a'4 ( gis'4) fis'4 ( gis'4) gis'4 \divisioMinima
 gis'4 ( fis'4) fis'4 ( gis'4 a'4) \forceBreak
 gis'4 ( fis'4) e'4 ( fis'4) fis'4 \divisioMaxima
 cis''4 ( b'4) a'4 ( gis'4 fis'4) fis'4 ( b'4) b'4 ( cis''4 b'4) a'4 ( gis'4) e'4 ( \once \tweak #'font-size #-4 fis' ) fis'4 ( gis'4 fis'4 fis'4) e'4 \divisioMinima
 gis'4 ( a'4 b'4) \forceBreak
 b'4 ( a'4) gis'4 ( a'4 gis'4) fis'4 fis'4 \divisioMaxima
 fis'4 ( cis''4) b'4 ( \once \tweak #'font-size #-4 cis'' ) cis''4 ( b'4 a'4 gis'4 fis'4) e'4 gis'4 ( fis'4 a'4) ~ a'4 ( fis'4) e'4 ( \once \tweak #'font-size #-4 fis' ) fis'4 \divisioMaxima
 \forceBreak
 e'4 e'4 ( fis'4) fis'4 ( gis'4) fis'4 gis'4 ( a'4 b'4) b'4 ( a'4) gis'4 \divisioMinima
 fis'4 ( cis''4) ~ cis''4 ( b'4)  cis''4 ( d''4 cis''4) b'4 b'4 ( cis''4 b'4) a'4 ( gis'4) \forceBreak
 fis'4 ( gis'4) gis'4 ( a'4 b'4 gis'4 fis'4) gis'4 ( e'4 fis'4) \divisioMaxima
 fis'4 ( cis''4) b'4 ( \once \tweak #'font-size #-4 cis'' ) cis''4 ( b'4 a'4 gis'4 fis'4) e'4 gis'4 ( fis'4 a'4) ~ a'4 ( fis'4) e'4 ( \once \tweak #'font-size #-4 fis' ) fis'4 \finalis

}

altoMusic = {
cis'2 ~ cis'2 ~ cis'4 \divisioMinima
cis'2 ~ cis'2*3/2 ~ cis'4 \divisioMinima
fis'2*4/2 ~ fis'2*3/2 ~ fis'2*4/2 e'4 ~ \divisioMinima
e'2 ~ e'2*3/2 cis'2 ~ cis'2 ~ cis'4 \divisioMaxima
fis'2 e'2*3/2 ~ e'2 d'2*3/2 ~ d'2 ~ d'2 cis'2*5/2 ~ \divisioMinima
cis'2*3/2 ~ cis'2 ~ cis'2*3/2 ~ cis'2 \divisioMaxima
fis'2 ~ fis'2 e'2*5/2 ~ e'4 cis'2 ~ cis'2*3/2 ~ cis'2 ~ cis'4 \divisioMaxima
cis'4 ~ cis'2 ~ cis'2*3/2 ~ cis'2*3/2 ~ cis'2*3/2 \divisioMinima
fis'4 ~ fis'2*3/2 ~ fis'2*4/2 ~ fis'2*3/2 e'2 ~ e'2 ~ e'2*5/2 ~ e'4 ~ e'4 cis'4 \divisioMaxima
fis'2 ~ fis'2 e'2*4/2 cis'2 ~ cis'2 ~ cis'2*3/2 ~ cis'2 ~ cis'4 \finalis
}

tenorMusic = {
a2 ~ a2 ~ a4 \divisioMinima
gis2 b2*3/2 a4 \divisioMinima
e'2*4/2 d'2*3/2 ~ d'2*4/2 cis'4 ~ \divisioMinima
cis'2 ~ cis'2*3/2 ~ cis'2 a2 ~ a4 \divisioMaxima
fis2 ~ fis2*3/2 ~ fis2 ~ fis2*3/2 b2 a2 gis2*5/2 \divisioMinima
e2*3/2 gis2 b2*3/2 ~ b4 a4 \divisioMaxima
a2 ~ a2 ~ a2*6/2 e2 fis2*3/2 gis2 a4 \divisioMaxima
a4 ~ a2 ~ a2*3/2 b2*3/2 gis2*3/2 \divisioMinima
a4 ~ a2*3/2 ~ a2*4/2 b2*3/2 ~ b2 a2 gis2*5/2 b2 a4 \divisioMaxima
a2 ~ a2 ~ a2*4/2 gis2 b2 ~ b2*3/2 gis2 a4 \finalis
}

bassMusic = {
r2 gis2 fis4 \divisioMinima
cis2 ~ cis2*3/2 fis4 \divisioMinima
r2*4/2 r2*3/2 cis'2*4/2 ~ cis'4 \divisioMinima
b2 a2*3/2 ~ a2 gis2 fis4 \divisioMaxima
d2 cis2*3/2 b,2 ~ b,2*3/2 ~ b,2 ~ b,2 cis2*5/2 ~ \divisioMinima
cis2*3/2 ~ cis2 ~ cis2*3/2 fis2 \divisioMaxima
e2 d2 cis2*6/2 ~ cis2 ~ cis2*3/2 ~ cis2 fis4 \divisioMaxima
r4 gis2 fis2*3/2 ~ fis2*3/2 ~ fis2*3/2 ~ \divisioMinima
fis4 e2*3/2 d2*4/2 ~ d2*3/2 cis2 ~ cis2 ~ cis2*5/2 ~ cis2 fis4 \divisioMaxima
e2 d2 cis2*4/2 ~ cis2 ~ cis2 fis2*3/2 ~ fis2 ~ fis4 \finalis
}

voiceLines = {
\voiceLineStyle


s2*28/2
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" a2*2/2 a2*1/2


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
