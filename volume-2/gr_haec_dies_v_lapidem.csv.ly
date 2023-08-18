\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.23
%(volume.page)

global = {
 \key fis \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Haec dies. V/. Lapidem" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Haec dies. V/. Lapidem"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Haec dies. V/. Lapidem" }
    \line {}
  }
}

chantText = \lyricmode {
Hæc _ _ _ di -- _ _ es, 
\set stanza = " * " 
quam fe -- cit _ _ Dó -- mi -- nus: _ _ _ 
ex -- sul -- té -- _ _ _ _ mus, _ _ _ _ _ 
et læ -- té -- _ mur 
in e -- _ a. _ _ _ _ _ _ _ ℣. 
Lá -- pi -- dem, _ quem re -- pro -- ba -- ve -- runt æ -- di -- fi -- cán -- _ _ tes, _ _ _ _ _ 
hic fa -- ctus _ est _ _ _ _ _ _ _ 
in ca -- _ _ put _ án -- _ _ _ _ _ _ _ _ gu -- li: 
a Dó -- mi -- no fa -- _ ctum est, 
et est _ mi -- rá -- _ bi -- le _ _ _ 
in ó -- _ cu -- lis 
\set stanza = " * " no -- _ stris. _ _ _ }

chantMusic = {
\tieDown    fis'4 ( e'4) g'4 ( fis'4 e'4) fis'4 ( d'4) fis'4 ( a'4) a'4 ( a'4) ~ a'4 ( fis'4 e'4) fis'4 ( e'4 fis'4) fis'4 \divisioMaior
 e'4 ( fis'4) a'4 ( a'4) a'4 ( a'4.) b'4 ( cis''4 a'4) ~ a'4 ( fis'4 e'4 fis'4) \divisioMinima
 a'4 ( fis'4 a'4) a'4 ( a'4 a'4) a'4 ( fis'4 gis'\prall a'4 b'4.) a'4 ( b'4) cis''4 ( a'4 a'4) b'4 ( b'4 a'4) \divisioMaxima
 fis'4 a'4 a'4 ( gis'4) a'4 ( b'4 cis''4 a'4 gis'4) a'4 ( a'4 gis'4) \divisioMinima
 b'4 ( a'4) b'4 ( a'4 fis'4) fis'4 ( a'4 fis'4 e'4) fis'4 ( a'4) ~ a'4 ( fis'4.) a'4 ( a'4 gis'4 fis'4) a'4 ( e'4) ~ e'4 ( d'4) \divisioMaxima
 d'4 ( e'4 fis'4) fis'4 ( e'4 fis'4) a'4 ( fis'4) a'4 ( a'4 a'4) a'4 ( b'4 a'4 fis'4) \divisioMaior
 e'4 ( fis'4) a'4 ( fis'4) a'4 ( b'4) b'4 ( a'4) b'4 ( cis''4 b'4 a'4) \divisioMinima
 cis''4 ( a'4) cis''4 ( d''4 b'4 gis'4) a'4 ( fis'4 e'4.) fis'4 ( gis'\prall a'4 b'4.) a'4 ( b'4 cis''4) \divisioMinima
 b'4 ( cis''4 b'4 cis''4 a'4 fis'4 gis'\prall a'4 fis'4) \finalis
 gis'4 ( b'4) b'4 \forceBreak
 b'4 ( cis''4 b'4) cis''4 ( cis''4 b'4) \divisioMinima
 fis'4 fis'4 fis'4 fis'4 fis'4 ( b'4) b'4 \divisioMinima
 b'4 b'4 b'4 b'4 ( a'4) b'4 ( cis''4 d''4 cis''4 a'4. \forceBreak
) b'4 ( cis''4 b'4 cis''4) cis''4 d''4 ( cis''4 a'4) cis''4 ( a'4) cis''4 ( b'4) d''4 ( cis''4 b'4) d''4 ( cis''4 b'4) \divisioMaxima
 fis'4 a'4 ( b'4) b'4 ( gis'4) a'4 ( b'4 fis'4 e'4 fis'4 \forceBreak
) a'4 ( b'4 fis'4) \divisioMinima
 b'4 ( a'4 b'4) gis'4 ( a'4 fis'4) b'4 ( a'4 b'4.) a'4 ( cis''4 b'4) cis''4 ( d''4 cis''4 b'4) cis''4 ( a'4 b'\prall cis''4 d''4 cis''4 b'4) cis''4 ( cis''4 b'4) \divisioMaxima \forceBreak

 b'4 b'4. a'4 ( b'4) cis''4 ( b'4 cis''4) cis''4 ( b'4) a'4 ( a'4 fis'4) a'4 ( b'4 cis''4) a'4 ( cis''4 b'4 a'4) ~ a'4 ( fis'4) a'4 ( a'4 fis'4) a'4. ~ a'4 ( a'4) ~ a'4 ( fis'4) \divisioMinima
 a'4 ( b'4 cis''4 b'4 a'4 \forceBreak
) cis''4 ( b'4 a'4) b'4 ( \once \tweak #'font-size #-4 fis' ) fis'4 ( gis'\prall a'4 fis'4) fis'4 \divisioMaxima
 fis'4 ( gis'4 e'4) a'4 ( a'4) b'4 ( a'4) a'4 b'4 ( a'4) ~ a'4 ( gis'4 fis'4) gis'4 fis'4 \divisioMaior
 fis'4 ( b'4 \forceBreak
) b'4 ( fis'4) a'4. gis'4 ( a'4 fis'4 e'4) fis'4 ( e'4 fis'4) a'4 ( fis'4) a'4 ( a'4 a'4) a'4 a'4 ( fis'4 gis'\prall a'4 b'4.) a'4 ( b'4) cis''4 ( a'4 a'4) b'4 ( b'4 a'4) \divisioMaxima \forceBreak

 d'4 d'4 ( e'4 fis'4) a'4 ( gis'4 fis'4 gis'4) e'4 fis'4  a'4 ( fis'4) a'4 ( b'4) b'4 ( cis''4 a'4 gis'4) a'4 ( b'4) \divisioMinima
 e'4 ( fis'4 a'4) ~ a'4 ( cis''4 b'4 a'4 gis'4 fis'4 gis'\prall a'4 fis'4) \finalis

}

altoMusic = {
r2*18/2 \divisioMaior
cis'2 ~ cis'2 fis'2*9/4 e'2*5/2 \divisioMinima
d'2*3/2 cis'2*3/2 ~ cis'2*4/2 fis'2*3/4 ~ fis'2*5/2 ~ fis'2*3/2 ~ \divisioMaxima
fis'2 e'2*7/2 ~ e'2*3/2 \divisioMinima
cis'2*5/2 ~ cis'2*3/2 ~ cis'2 ~ cis'2*7/4 e'2*3/2 cis'2 b2*3/2 \divisioMaxima
a2*3/2 b2*3/2 cis'2 ~ cis'2*3/2 ~ cis'2*4/2 ~ \divisioMaior
cis'2 ~ cis'2 d'2 e'2 ~ e'2*4/2 \divisioMinima
fis'2 ~ fis'2*4/2 cis'2*7/4 ~ cis'2*3/2 ~ cis'2*3/4 ~ cis'2*3/2 \divisioMinima
e'2*5/2 d'2 cis'2 \finalis
fis'2 ~ fis'4 ~ fis'2*3/2 ~ fis'2 ~ fis'4 ~ \divisioMinima
fis'2 ~ fis'2 ~ fis'2 ~ fis'4 \divisioMinima
e'2*3/2 ~ e'2 fis'2*4/2 ~ fis'2*3/4 ~ fis'2*4/2 a'2*3/2 ~ a'4 fis'2*4/2 ~ fis'2*3/2 ~ fis'2*3/2 \divisioMaxima
r4 cis'2 e'2 ~ e'2*3/2 ~ e'4 fis'4 ~ fis'2 ~ fis'4 \divisioMinima
e'2*3/2 ~ e'2*3/2 d'2*7/4 e'2*3/2 fis'2*4/2 e'2*4/2 d'2*3/2 e'2*3/2 ~ \divisioMaxima
e'4 ~ e'2*7/4 ~ e'2*3/2 fis'2 e'2*3/2 d'2*3/2 e'2*3/2 cis'2*3/2 ~ cis'2*3/2 d'2*3/4 cis'2 ~ cis'2 \divisioMinima
e'2*5/2 ~ e'2*3/2 fis'2 cis'2*4/2 ~ cis'4 \divisioMaxima
r2 e'4 ~ e'2 fis'2 ~ fis'2 cis'2*5/2 ~ cis'4 \divisioMaior
fis'2 ~ fis'2 cis'2*11/4 ~ cis'2*3/2 ~ cis'2 ~ cis'2*4/2 e'2*4/2 fis'2*3/4 e'2 ~ e'2*3/2 cis'2*3/2 \divisioMaxima
d'4 ~ d'2*3/2 e'2*4/2 ~ e'2 cis'2 e'2 ~ e'2*4/2 ~ e'2 ~ \divisioMinima
e'2 ~ e'2*4/2 cis'2 ~ cis'2 ~ cis'2 \finalis
}

tenorMusic = {
r2*18/2 \divisioMaior
a2 ~ a2 ~ a2*9/4 ~ a2*5/2 ~ \divisioMinima
a2*3/2 ~ a2*3/2 fis2*4/2 ~ fis2*3/4 b2*5/2 cis'2*3/2 \divisioMaxima
a2 ~ a2*7/2 b2*3/2 ~ \divisioMinima
b2*5/2 a2*3/2 gis2 fis2*7/4 e2*3/2 fis2 ~ fis2*3/2 ~ \divisioMaxima
fis2*3/2 gis2*3/2 fis2 ~ fis2*3/2 ~ fis2*4/2 \divisioMaior
gis2 fis2 ~ fis2 e2 a2*4/2 ~ \divisioMinima
a2 b2*4/2 ~ b2*7/4 a2*3/2 gis2*3/4 a2*3/2 ~ \divisioMinima
a2*5/2 ~ a2 ~ a2 \finalis
d'2 cis'4 d'2*3/2 e'2 d'4 ~ \divisioMinima
d'2 cis'2 e'2 d'4 \divisioMinima
cis'2*3/2 d'2 ~ d'2*4/2 ~ d'2*3/4 ~ d'2*4/2 e'2*4/2 ~ e'2*4/2 ~ e'2*3/2 d'2*3/2 \divisioMaxima
r2*3/2 cis'2 b2*5/2 ~ b2*3/2 ~ \divisioMinima
b2*3/2 a2*3/2 ~ a2*7/4 ~ a2*3/2 ~ a2*4/2 ~ a2*4/2 ~ a2*3/2 gis2*3/2 ~ \divisioMaxima
gis4 fis2*7/4 gis2*3/2 a2 ~ a2*3/2 ~ a2*3/2 ~ a2*3/2 b2*3/2 a2*3/2 ~ a2*3/4 ~ a2 b4 a4 ~ \divisioMinima
a2*5/2 ~ a2*3/2 ~ a2 b2*4/2 a4 \divisioMaxima
b2*3/2 a2 ~ a2 b2 ~ b2*5/2 a4 \divisioMaior
b2 a2 ~ a2*11/4 ~ a2*3/2 ~ a2 ~ a2*4/2 b2*4/2 ~ b2*3/4 ~ b2 a2*3/2 ~ a2*3/2 \divisioMaxima
b4 a2*3/2 ~ a2*4/2 gis2 a2 ~ a2 ~ a2*4/2 gis2 \divisioMinima
a2 ~ a2*4/2 ~ a2 b2 a2 \finalis
}

bassMusic = {
r2*18/2 \divisioMaior
gis2 fis2 d2*9/4 cis2*5/2 \divisioMinima
b,2*3/2 fis2*3/2 e2*4/2 d2*3/4 ~ d2*5/2 fis2*3/2 \divisioMaxima
d2 cis2*7/2 ~ cis2*3/2 \divisioMinima
fis2*5/2 ~ fis2*3/2 ~ fis2 ~ fis2*7/4 cis2*3/2 a,2 b,2*3/2 \divisioMaxima
gis,2*3/2 fis,2*3/2 ~ fis,2 gis,2*3/2 a,2*4/2 ~ \divisioMaior
a,2 ~ a,2 b,2 cis2 ~ cis2*4/2 \divisioMinima
d2 ~ d2*4/2 fis2*7/4 ~ fis2*3/2 ~ fis2*3/4 ~ fis2*3/2 \divisioMinima
cis2*5/2 b,2 fis2 \finalis
b2 ~ b4 ~ b2*3/2 ~ b2 ~ b4 ~ \divisioMinima
b2 ~ b2 ~ b2 ~ b4 \divisioMinima
r2*9/2 cis'2*3/4 b2*4/2 a2*4/2 ~ a2*4/2 b2*3/2 ~ b2*3/2 \divisioMaxima
fis4 ~ fis2 cis2 ~ cis2*5/2 d2*3/2 \divisioMinima
cis2*3/2 ~ cis2*3/2 b,2*7/4 cis2*3/2 d2*4/2 cis2*4/2 b,2*3/2 e2*3/2 ~ \divisioMaxima
e4 ~ e2*7/4 ~ e2*3/2 d2 cis2*3/2 b,2*3/2 cis2*3/2 fis2*3/2 ~ fis2*3/2 ~ fis2*3/4 ~ fis2 ~ fis2 ~ \divisioMinima
fis2*5/2 cis2*3/2 d2 fis2*4/2 ~ fis4 \divisioMaxima
cis2*3/2 ~ cis2 d2 ~ d2 fis2*5/2 ~ fis4 \divisioMaior
d2 ~ d2 fis2*11/4 a2*3/2 gis2 fis2*4/2 e2*4/2 d2*3/4 cis2 ~ cis2*3/2 fis2*3/2 \divisioMaxima
b,4 ~ b,2*3/2 cis2*4/2 ~ cis2 fis2 ~ fis2 cis2*4/2 ~ cis2 ~ \divisioMinima
cis2 fis2*4/2 ~ fis2 ~ fis2 ~ fis2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Gradual"
        "II"
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
    \new Lyrics \lyricsto chant {
      \chantText
    }
  >>
  \layout{
  }
  \midi{
    \tempo 4 = 125
  }
}
