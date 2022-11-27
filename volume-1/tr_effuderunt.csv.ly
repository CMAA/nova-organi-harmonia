\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.75
%(volume.page)

global = {
 \key e \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Effuderunt" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Effuderunt"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Effuderunt" }
    \line {}
  }
}

chantText = \lyricmode {
Ef -- fu -- dé -- _ runt _ _ _ 
\set stanza = " * " sán -- _ gui -- nem _ _ san -- ctó -- rum, 
vel -- ut a -- _ quam, in cir -- cú -- i -- tu _ Je -- rú -- sa -- lem. _ _ _ _ _ _ _ _ _ _ _ _ _ ℣. 
Et non e -- rat qui se -- _ _ _ _ _ _ _ _ pe -- lí -- _ _ _ _ ret. _ ℣. 
Vín -- di -- ca, Dó -- _ mi -- _ ne, sán -- gui -- nem _ san -- ctó -- rum _ _ _ _ _ _ _ _ tu -- _ ó -- rum, _ _ _ 
qui ef -- fú -- _ sus est 
\set stanza = " * " su -- per ter -- _ _ _ _ _ _ ram. _ _ _ _ }

chantMusic = {
\tieDown  d'4 d'4 d'4 ( e'4 fis'4) ~ fis'4 ( e'4) fis'4 ( e'4) ~ e'4 ( d'4 e'\prall fis'4 e'4) fis'4 ( e'4 d'4) e'4 ( d'4) \divisioMinima
 e'4 ( a'4) ~ a'4 ( b'4) fis'4 fis'4 ( e'4) fis'4 ( d'4.) fis'4 ( a'4 fis'4 a'4 \forceBreak
) a'4 ( gis'4 fis'4 gis'\prall a'4 gis'4 fis'4 e'4 fis'4) e'4 ( fis'4 e'4) e'4 \divisioMaior
 e'4 ( fis'4) e'4 fis'4 ( e'4) fis'4 ( gis'\prall a'4) e'4 ( fis'4 d'4) \divisioMinima
 e'4 ( fis'4) e'4 ( fis'4) e'4 e'4 \forceBreak
 fis'4 ( e'4) fis'4 ( gis'\prall a'4) e'4 ( d'4) e'4 fis'4 a'4 ( b'4 a'4) ~ a'4 ( e'4.) a'4 ( b'4 a'4) ~ a'4 ( a'4 a'4) b'4 ( a'4) ~ a'4 ( fis'4) \divisioMinima
 a'4 ( gis'4) a'4 ( a'4 gis'4 e'4.) fis'4 ( a'4 fis'4) a'4 ( fis'4 d'4) \divisioMinima \forceBreak

 e'4 ( fis'4) a'4 ( a'4 gis'4 e'4.) fis'4 ( a'4 fis'4 d'4 e'4) fis'4 ( fis'4 e'4) \finalis
 e'4 e'4 e'4 ( fis'\prall gis'4 a'4) a'4 \divisioMinima
 a'4 a'4 ( b'4 a'4) ~ a'4 ( a'4) b'4 ( a'4) ~ a'4 ( fis'4) \divisioMinima
 a'4 ( gis'4 \forceBreak
) a'4 ( a'4 gis'4 e'4.) fis'4 ( a'4 fis'4) a'4 ( fis'4 d'4.) e'4 ( fis'4 gis'\prall a'4) b'4 a'4. gis'4 ( b'4 a'4) ~ a'4 ( a'4 gis'4 e'4 fis'4) a'4 ( a'4 fis'4) a'4 ( fis'4 d'4 e'4) e'4 ( fis'4) ~ fis'4 ( e'4) \finalis \forceBreak

 e'4 ( \once \tweak #'font-size #-4 b ) e'4 e'4 ( fis'4 a'4) a'4 ( a'4) ~ a'4 ( gis'4 fis'4) a'4 ( fis'4) ~ fis'4 ( e'4) e'4 ( fis'4) \divisioMinima
 fis'4 fis'4 fis'4 a'4 ( a'4 fis'4) e'4 ( d'4) e'4 ( fis'4 e'4) fis'4 ( e'4) \divisioMinima
  g'4 ( fis'4) g'4 ( e'4 d'4) e'4 fis'4 ( e'4 \forceBreak
) fis'4 ( e'4) fis'4 ( e'4) a'4 ( a'4 fis'4) a'4 ( e'4) ~ e'4 ( d'4) \divisioMinima
 e'4 ( fis'4) a'4 ( gis'4 a'4) a'4 ( fis'4 gis'\prall a'4) a'4 ( a'4) ~ a'4 ( gis'4 fis'4) gis'4 ( fis'4 e'4) fis'4 ( e'4) \divisioMaxima
 e'4 e'4 fis'4 ( e'4) fis'4 ( gis'\prall a'4 \forceBreak
) e'4 ( fis'4) e'4 ( d'4) \divisioMinima
 d'4 ( fis'4 a'4) a'4 gis'4 ( a'4 fis'4) ~ fis'4 ( e'4) fis'4 ( e'4) ~ e'4 ( d'4 e'4) \divisioMinima
 a'4 ( a'4 a'4) b'4 ( a'4 gis'4 fis'4) ~ fis'4 ( e'4) e'4 ( fis'4 e'4 d'4) \divisioMinima
 fis'4 ( gis'\prall a'4 gis'4 a'4) ~ a'4 ( fis'4) gis'4 ( fis'4) ~ fis'4 ( e'4) \finalis

}

altoMusic = {
b2 ~ b2 cis'2*4/2 b2*4/2 cis'2 d'2*5/2 \divisioMinima
e'4 ~ e'2*4/2 d'2*9/4 e'2*4/2 cis'2*4/2 ~ cis'2*5/2 b2*3/2 ~ b4 \divisioMaior
cis'2*3/2 ~ cis'2 ~ cis'2*3/2 d'2*3/2 \divisioMinima
cis'2*4/2 b2 cis'2*5/2 b2 e'2*4/2 d'2*7/4 e'2*3/2 fis'2*4/2 cis'2*3/2 \divisioMinima
e'2 ~ e'2*9/4 d'2*3/2 ~ d'2*3/2 ~ \divisioMinima
d'2 e'2*9/4 d'2*5/2 b2 ~ b4 \finalis
cis'2 ~ cis'2*4/2 ~ cis'4 ~ \divisioMinima
cis'4 ~ cis'2*3/2 b2*3/2 cis'2*3/2 \divisioMinima
e'2 ~ e'2*9/4 d'2*3/2 ~ d'2*7/4 e'2*5/2 ~ e'2*9/4 ~ e'2*5/2 cis'2*3/2 d'2*5/2 b2 ~ b4 ~ \finalis
b2*3/2 cis'2*3/2 ~ cis'2 ~ cis'2*7/2 ~ cis'2 \divisioMinima
b2 cis'2*6/2 d'2*3/2 cis'2 b2*4/2 a2*4/2 b2 ~ b2 e'2*7/2 \divisioMinima
d'2*5/2 ~ d'2*4/2 e'2 ~ e'2*3/2 b2*3/2 ~ b2 \divisioMaxima
cis'2 b2 cis'2*3/2 ~ cis'2*4/2 \divisioMinima
r4 cis'2*3/2 e'2 b2*4/2 a2*3/2 b4 \divisioMinima
e'2*3/2 d'2*3/2 ~ d'2*3/2 b2*4/2 \divisioMinima
d'2*4/2 e'2*4/2 b2 ~ b4 \finalis
}

tenorMusic = {
b2 a2 ~ a2*4/2 ~ a2*4/2 ~ a2 ~ a2*5/2 \divisioMinima
e4 a2*4/2 ~ a2*9/4 ~ a2*4/2 b2*4/2 a2*5/2 ~ a2*3/2 gis4 \divisioMaior
a2*3/2 ~ a2 ~ a2*3/2 ~ a2*3/2 ~ \divisioMinima
a2*4/2 gis2 a2*5/2 ~ a2 ~ a2*4/2 ~ a2*7/4 ~ a2*3/2 ~ a2*4/2 ~ a2*3/2 ~ \divisioMinima
a2 b2*9/4 a2*3/2 fis2*3/2 \divisioMinima
a2 ~ a2*9/4 ~ a2*5/2 ~ a2 gis4 \finalis
a2 ~ a2*4/2 ~ a4 ~ \divisioMinima
a4 fis2*3/2 ~ fis2*3/2 ~ fis2 a4 ~ \divisioMinima
a2 b2*9/4 a2*3/2 ~ a2*7/4 ~ a2*5/2 ~ a2*9/4 b2*5/2 a2*3/2 ~ a2*5/2 ~ a2 gis4 ~ \finalis
gis2*3/2 a2*3/2 ~ a2 ~ a2*4/2 b2*3/2 a2 \divisioMinima
gis2 a2*6/2 ~ a2*3/2 ~ a2 ~ a2*4/2 fis2*4/2 gis2 a2 ~ a2*4/2 b2*3/2 \divisioMinima
a2*5/2 fis2*4/2 a2 b2*3/2 a2*3/2 gis2 \divisioMaxima
a2 gis2 a2*3/2 ~ a2*4/2 ~ \divisioMinima
a2*4/2 ~ a2 ~ a2*4/2 fis2*3/2 gis4 \divisioMinima
e2*3/2 fis2*3/2 a2*3/2 fis2*4/2 \divisioMinima
a2*4/2 ~ a2*4/2 ~ a2 gis4 \finalis
}

bassMusic = {
r2*14/2 fis2*5/2 \divisioMinima
e4 cis2*4/2 b,2*9/4 cis2*4/2 fis2*4/2 ~ fis2*5/2 a2*3/2 gis4 \divisioMaior
r2*3/2 gis2 fis2*3/2 ~ fis2*3/2 ~ \divisioMinima
fis2*4/2 ~ fis2 ~ fis2*5/2 ~ fis2 cis2*4/2 b,2*7/4 cis2*3/2 d2*4/2 fis2*3/2 \divisioMinima
cis2 ~ cis2*9/4 b,2*3/2 ~ b,2*3/2 ~ \divisioMinima
b,2 cis2*9/4 d2*5/2 e2 ~ e4 \finalis
r2 gis2*4/2 fis4 ~ \divisioMinima
fis4 e2*3/2 d2*3/2 fis2 ~ fis4 \divisioMinima
cis2 ~ cis2*9/4 b,2*3/2 ~ b,2*7/4 ~ b,2*5/2 cis2*9/4 e2*5/2 fis2*3/2 ~ fis2*5/2 e2 ~ e4 \finalis
r2*6/2 gis2 fis2*4/2 gis2*3/2 a2 \divisioMinima
r2 fis2*6/2 ~ fis2*3/2 a2 e2*4/2 ~ e2*4/2 ~ e2 d2 cis2*4/2 b,2*3/2 ~ \divisioMinima
b,2*5/2 ~ b,2*4/2 cis2 e2*3/2 ~ e2*3/2 ~ e2 \divisioMaxima
r2*4/2 fis2*3/2 ~ fis2*4/2 ~ \divisioMinima
fis2*4/2 cis2 e2*4/2 ~ e2*3/2 ~ e4 \divisioMinima
cis2*3/2 b,2*3/2 ~ b,2*3/2 ~ b,2*4/2 ~ \divisioMinima
b,2*4/2 cis2*4/2 e2 ~ e4 \finalis
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
