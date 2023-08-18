\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.35
%(volume.page)

global = {
 \key e \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Qui regis Israel" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Qui regis Israel"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Qui regis Israel" }
    \line {}
  }
}

chantText = \lyricmode {
Qui re -- _ gis _ 
\set stanza = " * " Is -- ra -- el, _ _ 
in -- _ tén -- de: _ _ _ _ _ _ _ _ 
qui de -- dú -- cis _ _ _ _ vel -- ut o -- vem Jo -- seph. _ _ _ _ _ _ _ _ ℣. 
Qui se -- des su -- per Ché -- ru -- bim, _ _ _ _ 
ap -- _ pá -- re co -- ram Eph -- ra -- im, _ _ _ _ _ 
Bén -- ja -- min, _ _ _ _ _ 
et _ Ma -- nás -- se. _ _ _ _ _ ℣. 
Ex -- ci -- ta, Dó -- _ _ _ _ _ _ _ _ mi -- ne, po -- tén -- ti -- am tu -- am, 
et ve -- ni, _ _ _ _ _ _ _ _ 
ut _ sal -- vos _ 
\set stanza = " * " fá -- _ ci -- as nos. _ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   e'4 e'4 fis'4 ( gis'4 fis'4) e'4 ( fis'4) ~ fis'4 ( e'4) \divisioMinima
 fis'4 ( e'4 e'4) d'4 ( e'4) e'4 ( fis'4) a'4 ( a'4) b'4 ( fis'4 e'4) \divisioMaior
 fis'4 ( e'4) ~ e'4 ( \once \tweak #'font-size #-4 d' ) d'4 ( fis'4 a'4 \forceBreak
) a'4 ( a'4) ~ a'4 ( fis'4 e'4) ~ e'4 ( gis'4 fis'4 e'4) fis'4 ( e'4) fis'4 ( e'4) fis'4 ( e'4) a'4 ( a'4 fis'4) a'4 ( e'4) ~ e'4 ( d'4) \divisioMaxima
 e'4 ( fis'4) d'4 ( e'4) e'4 e'4 ( fis'4) ~ fis'4 ( e'4 \forceBreak
) fis'4 ( fis'4 e'4) fis'4 ( a'4) ~ a'4 ( fis'4 a'4) \divisioMinima
 e'4 ( fis'4) e'4 d'4 ( fis'4 a'4) a'4 ( b'4) b'4 ( gis'4 a'4) fis'4 ( a'4 gis'4 e'4.) d'4 ( fis'4) a'4 ( gis'4) a'4 ( b'4 fis'4) ~ fis'4 ( e'4) fis'4 ( e'4 \forceBreak
) a'4 ( a'4 fis'4) a'4 ( e'4) ~ e'4 ( d'4) \finalis
 e'4 e'4 ( fis'\prall gis'4 a'4) a'4 gis'4 ( a'4) a'4 a'4 a'4 a'4 ( b'4 a'4 e'4) fis'4 ( e'4) fis'4 ( gis'\prall a'4 gis'4 fis'4) gis'4 ( a'4 fis'4) ~ fis'4 ( e'4) \divisioMaxima \forceBreak

 fis'4 ( e'4) fis'4 ( gis'\prall a'4) e'4 ( fis'4) e'4 ( d'4) d'4 ( fis'4 a'4) a'4 a'4 a'4 a'4 ( gis'4 a'4 fis'4 e'4.)  a'4 ( a'4 fis'4 e'4) fis'4 ( g'4 e'4 d'4) \divisioMinima \forceBreak

  fis'4 ( a'4 fis'4) gis'4 ( e'4) fis'4 ( fis'4 e'4) \divisioMaxima
 e'4 fis'4 ( a'4 fis'4) a'4 ( a'4 a'4) b'4 ( a'4 gis'4 e'4) fis'4 ( e'4) fis'4 ( gis'\prall a'4 gis'4 fis'4) gis'4 ( a'4 fis'4) ~ fis'4 ( e'4) \divisioMaior \forceBreak

 fis'4 ( e'4) ~ e'4 ( \once \tweak #'font-size #-4 d' ) d'4 ( fis'4 a'4) a'4 a'4 ( gis'4 a'4 fis'4 e'4.)  a'4 ( a'4 fis'4 e'4) fis'4 ( g'4 e'4 d'4) \divisioMinima
  fis'4 ( a'4 fis'4) gis'4 ( e'4 fis'4) ~ fis'4 ( e'4) \finalis \forceBreak

 a'4 ( a'4) a'4 a'4 b'4 ( a'4) ~ a'4 ( e'4) \divisioMinima
 a'4. b'4 ( cis''4 gis'4) a'4 ( b'4 gis'4) a'4 ( fis'4) ~ fis'4 ( e'4.)  fis'4 ( g'4 e'4 d'4.)  fis'4 ( gis'\prall a'4) ~ a'4 ( b'4) a'4 a'4 \divisioMinima \forceBreak

 a'4 a'4 ( \once \tweak #'font-size #-4 b' ) a'4 a'4 a'4 a'4 \divisioMaior
 b'4 ( gis'4 a'4) fis'4 ( a'4 gis'4 e'4 fis'4) e'4. d'4 ( fis'4) a'4 ( gis'4) a'4 ( b'4 fis'4) ~ fis'4 ( e'4) fis'4 ( e'4 \forceBreak
) a'4 ( a'4 fis'4) a'4 ( e'4) ~ e'4 ( d'4) \divisioMaxima
 d'4 fis'4 ( a'4 gis'4) a'4 ( fis'4 a'4) a'4 ( a'4) ~ a'4 ( fis'4 e'4) \divisioMinima
 fis'4 ( e'4) fis'4 ( gis'\prall a'4) e'4 ( fis'4 e'4 d'4) d'4 ( fis'4 a'4) a'4 ( gis'4 a'4 fis'4 e'4 \forceBreak
) ~ e'4 ( e'4) fis'4 ( e'4) ~ e'4 ( d'4 e'4) \divisioMinima
 a'4 ( a'4 a'4) b'4 ( a'4 gis'4 fis'4) ~ fis'4 ( e'4) fis'4 ( a'4 gis'4 fis'4 e'4) ~ e'4 ( fis'4 d'4) \divisioMinima
 fis'4 ( gis'\prall a'4 gis'4 fis'4) gis'4 ( fis'4) ~ fis'4 ( e'4) \finalis

}

altoMusic = {
b2 ~ b2*4/2 ~ b2*3/2 \divisioMinima
d'2*3/2 ~ d'2 ~ d'2 e'2*5/2 ~ \divisioMaior
e'4 r2*3/2 d'2*3/2 cis'2 b2 ~ b2*5/2 cis'2*4/2 ~ cis'2 ~ cis'2*4/2 a2*3/2 \divisioMaxima
r2 d'2*4/2 cis'2*3/2 ~ cis'2*4/2 ~ cis'2*4/2 ~ \divisioMinima
cis'2*3/2 d'4 cis'2 e'2 ~ e'2*3/2 b2*3/2 ~ b2*3/4 d'2*4/2 cis'2 b2*3/2 cis'2 e'2*4/2 a2*3/2 \finalis
r4 e'2*5/2 ~ e'2*3/2 ~ e'2 d'2*6/2 cis'2*7/2 ~ cis'2*3/2 ~ \divisioMaxima
cis'2 ~ cis'2*3/2 ~ cis'2*4/2 d'4 ~ d'2*3/2 e'2 ~ e'2*11/4 cis'2*4/2 d'2*3/2 ~ d'4 \divisioMinima
e'2 ~ e'2 b2 ~ b2 \divisioMaxima
e'4 ~ e'2*3/2 ~ e'2*3/2 ~ e'2*3/2 ~ e'4 cis'2 ~ cis'2*7/2 b2*3/2 ~ \divisioMaior
b4 cis'2*3/2 d'4 cis'2*3/2 d'2*11/4 e'2*4/2 d'2 ~ d'2 ~ d'2*3/2 b2*4/2 ~ b4 \finalis
cis'2*5/2 e'2*3/2 \divisioMinima
fis'2*9/4 e'2*4/2 cis'2*7/4 d'2*9/4 ~ d'2 e'2*5/2 ~ \divisioMinima
e'4 ~ e'2*4/2 ~ e'2 \divisioMaior
d'2*3/2 cis'2*5/2 b2*3/4 d'2*4/2 e'2 d'2*5/2 ~ d'2*4/2 b2*3/2 \divisioMaxima
a2*4/2 cis'2*3/2 ~ cis'2 a2*3/2 \divisioMinima
b2 a2*3/2 ~ a2*4/2 ~ a4 ~ a2 ~ a2*5/2 ~ a2*3/2 ~ a2*3/2 b4 \divisioMinima
e'2*3/2 d'2*3/2 cis'2*3/2 d'2*4/2 b2*4/2 \divisioMinima
d'2*6/2 b2 ~ b4 \finalis
}

tenorMusic = {
gis2 a2*4/2 gis2*3/2 \divisioMinima
a2*3/2 fis2 a2 ~ a2*5/2 ~ \divisioMaior
a4 ~ a2*6/2 ~ a2 ~ a2 gis2*5/2 a2*4/2 gis2 fis2*4/2 r2*3/2 \divisioMaxima
a2 ~ a2*4/2 ~ a2*3/2 b2*4/2 a2*4/2 ~ \divisioMinima
a2*3/2 ~ a4 ~ a2 ~ a2 ~ a2*3/2 ~ a2*3/2 gis2*3/4 a2*4/2 ~ a2 gis2*3/2 a2 ~ a2*4/2 fis2*3/2 \finalis
e4 a2*5/2 b2*3/2 a2 ~ a2*6/2 ~ a2*7/2 gis2*3/2 \divisioMaxima
a2 ~ a2*3/2 ~ a2*4/2 ~ a4 ~ a2*3/2 ~ a2 b2*11/4 a2*4/2 ~ a2 fis2 \divisioMinima
a2 b2 a2 gis2 \divisioMaxima
a2*4/2 cis'2*3/2 b2*4/2 ~ b2 a2*7/2 b2*3/2 \divisioMaior
a2*4/2 ~ a4 ~ a2*3/2 ~ a2*11/4 ~ a2*4/2 ~ a2 fis2 a2*3/2 b2 a2 gis4 \finalis
fis2*5/2 a2*3/2 ~ \divisioMinima
a2*9/4 ~ a2*4/2 ~ a2*7/4 ~ a2*9/4 b2 ~ b2*5/2 ~ \divisioMinima
b4 a2*4/2 e2 \divisioMaior
fis2*3/2 ~ fis2*5/2 ~ fis2*3/4 ~ fis2*4/2 ~ fis2 a2*5/2 ~ a2*4/2 fis2*3/2 \divisioMaxima
d2*4/2 e2*3/2 fis2 cis2*3/2 ~ \divisioMinima
cis2 ~ cis2*3/2 d2*4/2 ~ d4 ~ d2 e2*5/2 a2*3/2 fis2*3/2 gis4 \divisioMinima
e2*3/2 fis2*3/2 gis2*3/2 a2*4/2 fis2*4/2 \divisioMinima
a2*6/2 ~ a2 gis4 \finalis
}

bassMusic = {
e2 ~ e2*4/2 ~ e2*3/2 \divisioMinima
b,2*3/2 ~ b,2 ~ b,2 cis2*5/2 ~ \divisioMaior
cis4 fis2*6/2 ~ fis2 ~ fis2 ~ fis2*5/2 ~ fis2*4/2 ~ fis2 ~ fis2*4/2 ~ fis2*3/2 ~ \divisioMaxima
fis2 ~ fis2*4/2 ~ fis2*3/2 ~ fis2*4/2 ~ fis2*4/2 \divisioMinima
r2*3/2 fis4 ~ fis2 ~ fis2 cis2*3/2 e2*3/2 ~ e2*3/4 fis2*4/2 ~ fis2 ~ fis2*3/2 ~ fis2 cis2*4/2 d2*3/2 \finalis
r4 cis2*5/2 ~ cis2*3/2 ~ cis2 b,2*6/2 a,2*7/2 cis2*3/2 \divisioMaxima
r2 gis2*3/2 fis2*4/2 ~ fis4 b,2*3/2 cis2 e2*11/4 fis2*4/2 d2 ~ d2 \divisioMinima
cis2 ~ cis2 e2 ~ e2 \divisioMaxima
cis2*4/2 ~ cis2*3/2 ~ cis2*4/2 fis2 ~ fis2*7/2 gis2*3/2 \divisioMaior
r2*4/2 fis4 ~ fis2*3/2 b,2*11/4 cis2*4/2 d2 ~ d2 b,2*3/2 e2*4/2 ~ e4 \finalis
r2*5/2 cis2*3/2 \divisioMinima
d2*9/4 cis2*4/2 a,2*7/4 b,2*9/4 ~ b,2 cis2*5/2 ~ \divisioMinima
cis4 ~ cis2*4/2 ~ cis2 \divisioMaior
b,2*3/2 a,2*5/2 b,2*3/4 ~ b,2*4/2 cis2 ~ cis2*5/2 b,2*4/2 ~ b,2*3/2 \divisioMaxima
fis,2*4/2 ~ fis,2*3/2 ~ fis,2 ~ fis,2*3/2 \divisioMinima
gis,2 fis,2*3/2 ~ fis,2*4/2 ~ fis,4 b,2 cis2*5/2 ~ cis2*3/2 e2*3/2 ~ e4 \divisioMinima
cis2*3/2 ~ cis2*3/2 ~ cis2*3/2 b,2*4/2 ~ b,2*4/2 ~ \divisioMinima
b,2*6/2 e2 ~ e4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Tract"
        "VIII"
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
