\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.64
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Petite cum alleluia" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Petite cum alleluia"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Petite cum alleluia" }
    \line {}
  }
}

chantText = \lyricmode {
Pe -- ti -- te, 
\set stanza = " * " et ac -- ci -- pi -- é -- tis: 
quǽ -- ri -- te, et in -- ve -- ni -- é -- _ tis: 
pul -- sá -- te, et a -- pe -- ri -- é -- tur vo -- bis: 
om -- nis e -- nim qui pe -- tit, ác -- ci -- pit: 
et qui quæ -- rit, ín -- ve -- nit: _ 
pul -- sán -- ti a -- pe -- ri -- é -- tur, T.P. 
Al -- le -- _ _ _ _ _ _ _ lú -- ia. }

chantMusic = {
\tieDown   g'4 ( a'4) b'4 a'4 \divisioMinima
 a'4 a'4 ( fis'4) g'4 ( a'4) g'4 ( fis'4) e'4 ( fis'4 e'4) e'4 \divisioMaior
 g'4 fis'4 ( g'4) e'4 \divisioMinima \forceBreak

 e'4 e'4 ( \once \tweak #'font-size #-4 d' ) e'4 ( g'4 fis'4) g'4 g'4 ( e'4) fis'4 ( e'4 d'4 e'4) e'4 ( d'4) \divisioMaior
 d'4 ( e'4) e'4 ( fis'\prall g'4 a'4 g'4 fis'4 g'\prall a'4 g'4 a'4) a'4 ( g'4) \divisioMinima \forceBreak

 g'4 ( a'4) g'4 g'4 ( g'4 fis'4) e'4 ( d'4) e'4 ( g'4) fis'4 ( \once \tweak #'font-size #-4 g' ) e'4 ( fis'4 e'4) e'4 \divisioMaxima
 g'4 ( a'4 b'4) a'4 a'4 ( b'4) a'4 a'4 a'4 \forceBreak
 a'4 ( fis'4) g'4 ( a'4) fis'4 ( g'4 fis'4 e'4 fis'4) fis'4 ( e'4) \divisioMaior
 a'4 ( b'4) a'4 a'4 a'4 ( fis'4) g'4 ( a'4) fis'4 ( g'4 fis'4 e'4 d'4 e'4) d'4 ( e'4) fis'4 ( e'4) \divisioMaxima \forceBreak

 d'4 ( e'4) g'4 ( fis'4 g'\prall a'4 g'4 a'4) a'4 ( g'4) \divisioMinima
 g'4 ( g'4 fis'4) g'4 ( a'4 b'4) g'4 ( fis'4) e'4 g'4 ( g'4) \divisioMaxima
 e'4 ( g'4 \once \tweak #'font-size #-4 b' ) b'4 ( a'4) b'4 ( g'4) a'4 ( fis'4. \forceBreak
) g'4 ( a'4 g'4) a'4 ( g'4 d'4.) e'4 ( fis'\prall g'4) a'4 ( fis'4) g'4 ( fis'4) e'4 ( fis'4 g'4 fis'4 e'4 fis'4) fis'4 ( e'4) \finalis

}

altoMusic = {
d'2*3/2 ~ d'4 ~ \divisioMinima
d'4 e'2*4/2 ~ e'2 b2*3/2 ~ b4 ~ \divisioMaior
b4 ~ b2 ~ b4 ~ \divisioMinima
b4 a2 d'2*4/2 c'2*6/2 a2 \divisioMaior
d'2 ~ d'2*5/2 ~ d'2*5/2 ~ d'2 ~ \divisioMinima
d'2*3/2 ~ d'2*3/2 b2 c'2*4/2 b2*3/2 ~ b4 \divisioMaxima
e'2*4/2 fis'2*5/2 ~ fis'2 e'2 b2*5/2 ~ b2 \divisioMaior
e'2*3/2 ~ e'4 ~ e'2 ~ e'2 c'2*6/2 b2 ~ b2 \divisioMaxima
d'2 ~ d'2*6/2 e'2 ~ \divisioMinima
e'2*3/2 d'2*5/2 ~ d'4 c'2 ~ \divisioMaxima
c'4 ~ c'2 d'2 ~ d'2*9/4 ~ d'2*5/2 ~ d'2*3/4 c'2*5/2 ~ c'2 b2*6/2 ~ b2 \finalis
}

tenorMusic = {
g2*3/2 fis4 ~ \divisioMinima
fis4 ~ fis2*4/2 a2 ~ a2*3/2 g4 \divisioMaior
e4 ~ e2 g4 ~ \divisioMinima
g4 ~ g2 ~ g2*4/2 ~ g2*6/2 ~ g4 fis4 ~ \divisioMaior
fis2 g2*5/2 a2*5/2 b2 \divisioMinima
g2*3/2 a2*3/2 fis2 g2*4/2 a2*3/2 g4 \divisioMaxima
b2*4/2 c'2*5/2 b2 ~ b2 a2*5/2 g2 \divisioMaior
fis2*3/2 g4 a2 b2 a2*6/2 ~ a2 g2 \divisioMaxima
fis2 g2*6/2 ~ g2 \divisioMinima
a2*3/2 ~ a2*5/2 g4 ~ g2 ~ \divisioMaxima
g4 e2 fis2 ~ fis2*9/4 a2*5/2 g2*3/4 ~ g2*5/2 a2 ~ a2*6/2 g2 \finalis
}

bassMusic = {
b,2*3/2 d4 ~ \divisioMinima
d4 c2*4/2 ~ c2 e2*3/2 ~ e4 ~ \divisioMaior
e4 d2 ~ d4 ~ \divisioMinima
d4 c2 b,2*4/2 a,2*6/2 d2 \divisioMaior
b,2 ~ b,2*5/2 ~ b,2*5/2 ~ b,2 ~ \divisioMinima
b,2*3/2 ~ b,2*3/2 ~ b,2 a,2*4/2 e2*3/2 ~ e4 ~ \divisioMaxima
e2*4/2 ~ e2*5/2 ~ e2 ~ e2 ~ e2*5/2 ~ e2 ~ \divisioMaior
e2*3/2 ~ e4 ~ e2 ~ e2 a,2*6/2 e2 ~ e2 \divisioMaxima
b,2 ~ b,2*6/2 c2 ~ \divisioMinima
c2*3/2 b,2*5/2 ~ b,4 a,2 ~ \divisioMaxima
a,4 ~ a,2 d2 b,2*9/4 ~ b,2*5/2 ~ b,2*3/4 a,2*5/2 ~ a,2 e2*6/2 ~ e2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Communion"
        "I"
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
