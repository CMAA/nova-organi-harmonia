\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.244
%(volume.page)

global = {
 \key fis \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Domine refugium" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Domine refugium"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Domine refugium" }
    \line {}
  }
}

chantText = \lyricmode {
Do -- mi -- ne, 
\set stanza = " * " re -- fú -- _ _ gi -- um 
fa -- _ ctus es _ no -- _ bis, _ _ _ _ _ 
a ge -- ne -- ra -- ti -- ó -- _ _ _ _ ne _ _ _ _ _ 
et _ pro -- gé -- ni -- e. _ _ _ _ _ _ _ ℣. 
Pri -- ús -- quam mon -- _ _ _ _ _ _ _ _ _ tes 
fí -- e -- rent, aut for -- ma -- ré -- tur ter -- _ _ _ _ _ _ _ _ ra et or -- bis: 
a sǽ -- _ _ _ cu -- lo, _ _ _ _ _ 
et in sǽ -- cu -- lum _ tu es 
\set stanza = " * " De -- _ us. _ _ _ }

chantMusic = {
\tieDown   e'4 ( gis'4 fis'4) fis'4 fis'4 \divisioMinima
 fis'4 a'4 ( fis'4 gis'4) a'4 ( fis'4 e'4) gis'4 ( e'4 fis'4) gis'4 ( fis'4) fis'4 \divisioMaior
 a'4 ( fis'4) a'4 ( b'4 cis''4) a'4 ( gis'4 fis'4 \forceBreak
)  fis'4 ( e'4) g'4 ( fis'4 e'4) \divisioMinima
 e'4 ( d'4) fis'4 ( e'4 fis'4) fis'4 ( d'4) e'4 ( fis'4) a'4 ( a'4 fis'4 e'4.) fis'4 ( gis'\prall a'4) b'4 ( a'4 a'4) fis'4 ( gis'4 fis'4) \divisioMaxima
 a'4 ( a'4) a'4 a'4 a'4 a'4 \forceBreak
 a'4 ( gis'4) a'4 ( b'4 cis''4 a'4 gis'4) a'4 ( a'4 gis'4) \divisioMinima
 b'4 ( a'4) b'4 ( a'4 fis'4) fis'4 ( a'4 fis'4 e'4) fis'4 ( a'4) ~ a'4 ( fis'4) a'4 ( a'4 gis'4 fis'4) a'4 ( e'4) ~ e'4 ( d'4) \divisioMaxima \forceBreak

 d'4 ( e'4 fis'4) a'4 ( gis'4 fis'4 gis'4) e'4 ( fis'4) a'4 ( fis'4) a'4 ( b'4) b'4 ( a'4) b'4 ( cis''4 b'4 a'4) \divisioMinima
 cis''4 ( a'4) cis''4 ( d''4 b'4 gis'4) a'4 ( fis'4 e'4.) fis'4 ( gis'\prall a'4 b'4.) a'4 ( b'4 cis''4) \divisioMinima \forceBreak

 b'4 ( cis''4 b'4 cis''4 a'4 fis'4 gis'\prall a'4 fis'4) \finalis
 fis'4 a'4 b'4 ( \once \tweak #'font-size #-4 cis'' ) cis''4 ( b'4 a'4 gis'4) a'4 ( fis'4 e'4) \divisioMinima
 gis'4 ( e'4) fis'4 a'4 ( a'4) b'4 ( cis''4 b'4 cis''4) \divisioMinima \forceBreak

 a'4 ( cis''4 d''4 b'4 gis'4) a'4 ( fis'4 e'4.) fis'4 ( gis'4 fis'4 e'4 fis'4) \divisioMinima
 b'4 ( cis''\prall d''4 cis''4) d''4 ( cis''4 b'4 cis''4) cis''4 ( b'4) \divisioMaxima
 b'4 ( cis''\prall d''4 cis''4 b'4 cis''\prall d''4 cis''4 b'4 \forceBreak
) b'4 b'4 \divisioMinima
 b'4 b'4 b'4 b'4 b'4 ( \once \tweak #'font-size #-4 cis'' ) cis''4 ( a'4) cis''4 ( b'4 a'4) ~ a'4 ( fis'4) a'4 ( a'4 fis'4) a'4. ~ a'4 ( a'4) ~ a'4 ( fis'4) \divisioMinima \forceBreak

 a'4 ( b'4 cis''4 b'4 a'4) c'4 ( b'4 fis'4) b'4 ( fis'4) fis'4 a'4 ( a'4) a'4 a'4 \divisioMaxima
 a'4 ( b'4) b'4 ( a'4 gis'4 e'4) fis'4 ( a'4 gis'4 e'4) fis'4 ( a'4) \divisioMinima \forceBreak

 gis'4 ( b'4 cis''4 a'4 fis'4) fis'4 fis'4 ( a'4 fis'4 e'4) fis'4 ( a'4) ~ a'4 ( fis'4) a'4 ( a'4 gis'4 fis'4) a'4 ( e'4) ~ e'4 ( d'4) \divisioMaxima
 d'4 d'4 d'4 ( e'4 fis'4) fis'4 \forceBreak
 fis'4 a'4 ( gis'4 fis'4 gis'4) \divisioMinima
 e'4 fis'4  a'4 ( fis'4) a'4 ( b'4) b'4 ( cis''4 a'4 gis'4) a'4 ( b'4) \divisioMinima
 e'4 ( fis'4 a'4) ~ a'4 ( cis''4 b'4 a'4 gis'4 fis'4 gis'\prall a'4 fis'4) \finalis

}

altoMusic = {
cis'2*6/2 ~ cis'2*6/2 ~ cis'2*5/2 ~ cis'4 ~ \divisioMaior
cis'2 e'2*6/2 d'2 b2*3/2 ~ \divisioMinima
b2 ~ b2*3/2 ~ b2*4/2 e'2*3/2 d'2*3/4 ~ d'2*3/2 ~ d'2*3/2 cis'2 ~ cis'4 \divisioMaxima
e'2*6/2 cis'2*7/2 e'2*3/2 \divisioMinima
fis'2 ~ fis'2 ~ fis'4 e'2*5/2 d'2*3/2 cis'2*5/2 b2*3/2 \divisioMaxima
d'2*3/2 e'2*4/2 ~ e'2 cis'2 ~ cis'2 fis'2*6/2 \divisioMinima
e'2*4/2 ~ e'2 ~ e'2*7/4 ~ e'2*3/2 d'2*9/4 \divisioMinima
cis'2*5/2 ~ cis'2*3/2 ~ cis'4 \finalis
fis'2 ~ fis'2 ~ fis'2*4/2 e'2*3/2 ~ \divisioMinima
e'2*3/2 fis'2 ~ fis'2*3/2 ~ fis'4 ~ \divisioMinima
fis'2 ~ fis'2*3/2 e'2 ~ e'2*3/4 cis'2*4/2 ~ cis'4 \divisioMinima
fis'2*4/2 ~ fis'2*4/2 e'2 \divisioMaxima
d'2*4/2 fis'2*5/2 ~ fis'2 \divisioMinima
e'2*3/2 ~ e'4 ~ e'2 ~ e'2 ~ e'2 fis'2*3/2 ~ fis'2*3/2 ~ fis'2*3/4 e'2 d'2 \divisioMinima
cis'2 e'2*3/2 ~ e'2*3/2 d'2*3/2 cis'2 ~ cis'2 \divisioMaxima
d'2 ~ d'2 e'2 cis'2*4/2 ~ cis'2 \divisioMinima
e'2 ~ e'2*4/2 ~ e'2*5/2 d'2*3/2 cis'2*5/2 b2*3/2 \divisioMaxima
a2 b2*5/2 cis'2*4/2 ~ \divisioMinima
cis'2 ~ cis'2 ~ cis'2 e'2 ~ e'2 ~ e'2 ~ \divisioMinima
e'2 ~ e'2 d'2 ~ d'2 cis'2*3/2 ~ cis'4 \finalis
}

tenorMusic = {
a2*5/2 ~ \divisioMinima
a4 ~ a2*6/2 b2*5/2 a4 ~ \divisioMaior
a2 ~ a2*6/2 ~ a2 ~ a2*3/2 \divisioMinima
gg2 fis2*3/2 ~ fis2*4/2 ~ fis2*9/4 ~ fis2*3/2 ~ fis2*3/2 b2 a4 ~ \divisioMaxima
a2*6/2 ~ a2*7/2 b2*3/2 ~ \divisioMinima
b2 fis2*3/2 ~ fis2*5/2 ~ fis2*3/2 ~ fis2*5/2 ~ fis2*3/2 \divisioMaxima
a2*3/2 ~ a2*4/2 gis2 fis2 ~ fis2 ~ fis2*6/2 \divisioMinima
a2*4/2 gis2 fis2*7/4 ~ fis2*3/2 ~ fis2*9/4 ~ \divisioMinima
fis2*5/2 b2*3/2 a4 \finalis
r2 e'2 d'2*4/2 cis'2*3/2 ~ \divisioMinima
cis'2*3/2 ~ cis'2 ~ cis'2*3/2 ~ cis'4 ~ \divisioMinima
cis'2 b2*3/2 cis'2*7/4 b2 gis2 a4 \divisioMinima
b2*4/2 a2*4/2 gis2 \divisioMaxima
fis2*4/2 ~ fis2*5/2 a2 ~ \divisioMinima
a2*3/2 gis4 ~ gis2 a2 ~ a2 cis'2*3/2 ~ cis'2*3/2 fis2*3/4 ~ fis2 ~ fis2 ~ \divisioMinima
fis2 ~ fis2*3/2 ~ fis2*3/2 ~ fis2*3/2 ~ fis2 ~ fis2 ~ \divisioMaxima
fis2 e2 b2 ~ b2*4/2 a2 \divisioMinima
b2 a2*4/2 ~ a2*5/2 fis2*3/2 ~ fis2*5/2 ~ fis2*3/2 ~ \divisioMaxima
fis2 ~ fis2*5/2 e2*4/2 \divisioMinima
b2 ~ b2 a2 ~ a2 fis2 ~ fis4 gis4 \divisioMinima
a2 fis2 ~ fis2 b2 ~ b2*3/2 a4 \finalis
}

bassMusic = {
r2*6/2 fis2*6/2 ~ fis2*5/2 ~ fis4 ~ \divisioMaior
fis2 cis2*6/2 d2 e2*3/2 ~ \divisioMinima
e2 ~ e2*3/2 d2*4/2 cis2*9/4 ~ cis2*3/2 b,2*3/2 fis2 ~ fis4 \divisioMaxima
cis2*6/2 fis2*7/2 e2*3/2 \divisioMinima
d2 ~ d2*3/2 cis2*5/2 b,2*3/2 a,2*5/2 b,2*3/2 ~ \divisioMaxima
b,2*3/2 cis2*4/2 ~ cis2 fis2 e2 d2*6/2 \divisioMinima
cis2*4/2 ~ cis2 ~ cis2*7/4 b,2*3/2 ~ b,2*9/4 \divisioMinima
fis2*5/2 ~ fis2*3/2 ~ fis4 \finalis
r2*11/2 \divisioMinima
b2*3/2 a2 gis2*3/2 a4 \divisioMinima
fis2 ~ fis2*3/2 ~ fis2*7/4 ~ fis2*4/2 ~ fis4 \divisioMinima
d2*4/2 b,2*4/2 e2 \divisioMaxima
b,2*4/2 d2*5/2 ~ d2 \divisioMinima
e2*3/2 ~ e4 cis2 ~ cis2 fis2 ~ fis2*3/2 e2*3/2 d2*3/4 cis2 b,2 \divisioMinima
a,2 ~ a,2*3/2 b,2*3/2 ~ b,2*3/2 fis2 fis,2 \divisioMaxima
b,2 cis2 ~ cis2 fis2*4/2 ~ fis2 \divisioMinima
cis2 ~ cis2*4/2 d2*5/2 b,2*3/2 a,2*5/2 b,2*3/2 \divisioMaxima
d2 ~ d2*5/2 cis2*4/2 ~ \divisioMinima
cis2 fis2 ~ fis2 e2 ~ e2 ~ e2 \divisioMinima
cis2 ~ cis2 b,2 ~ b,2 fis2*3/2 ~ fis4 \finalis
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
