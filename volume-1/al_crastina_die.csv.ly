\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.46
%(volume.page)

global = {
 \key e \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Crastina die" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Crastina die"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Crastina die" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- ia, al -- le -- lú -- ia. _ _ _ _ _ _ 
_ _ _ _ ℣. 
Crá -- sti -- na di -- e _ _ 
de -- lé -- bi -- tur in -- í -- qui -- tas ter -- ræ: _ _ _ 
et re -- gná -- bit su -- per nos _ _ 
\set stanza = " * " 
Sal -- vá -- tor mun -- di. _ _ _ _ _ _ 
_ _ _ _ }

chantMusic = {
\tieDown  e'4 e'4 ( fis'4) fis'4 ( gis'4) e'4 \divisioMinima
 e'4 e'4 ( fis'4) fis'4 ( gis'4) e'4 \divisioMinima
 fis'4 ( e'4) fis'4 ( a'4 gis'4 e'4.) ~ e'4 ( e'4) fis'4 ( e'4) fis'4 ( e'4) fis'4 ( a'4 gis'4 e'4) \divisioMaior \forceBreak

 gis'4 ( b'4 a'4 gis'4 fis'4 e'4) fis'4 ( e'4.) fis'4 ( a'4 gis'4 fis'4 e'4 fis'4) ~ fis'4 ( e'4) \finalis
 e'4 ( e'4 e'4) e'4 ( a'4) a'4  a'4 ( gis'4) fis'4 ( e'4) fis'4 ( gis'4 fis'4) ~ fis'4 ( e'4) \divisioMaior \forceBreak

 e'4 e'4 ( b'4) b'4 ( a'4 gis'4 a'4) a'4 ( gis'4) \divisioMinima
 e'4 gis'4 fis'4 a'4 ( gis'4) fis'4 ( e'4) e'4. fis'4 ( a'4 gis'4) a'4 ( b'4 a'4) ~ a'4 ( gis'4) \divisioMaxima \forceBreak

 e'4 e'4 ( a'4) a'4 a'4 ( gis'4) fis'4 fis'4 ( \once \tweak #'font-size #-4 e' ) e'4. fis'4 ( gis'4 fis'4) ~ fis'4 ( e'4) \divisioMaior
 e'4 ( e'4 e'4) e'4 fis'4 ( gis'4) gis'4 gis'4 ( e'4) \divisioMinima \forceBreak

 fis'4 ( e'4) fis'4 ( a'4 gis'4 e'4.) ~ e'4 ( e'4) fis'4 ( e'4) fis'4 ( e'4) fis'4 ( a'4 gis'4 e'4) \divisioMaior
 gis'4 ( b'4 a'4 gis'4 fis'4 e'4) fis'4 ( e'4.) fis'4 ( a'4 gis'4 fis'4 e'4 fis'4) ~ fis'4 ( e'4) \finalis

}

altoMusic = {
c'4 b2 ~ b2 ~ b4 \divisioMinima
e'2*3/2 b2 ~ b4 ~ \divisioMinima
b2 c'2*9/4 ~ c'2 b2 c'2 e'2*4/2 ~ \divisioMaior
e'2*6/2 c'2*5/4 d'2*5/2 b2 ~ b4 \finalis
e'2*6/2 ~ e'2*4/2 ~ e'2 b2*3/2 ~ \divisioMaior
b4 e'2 ~ e'2*4/2 ~ e'2*3/2 ~ e'2*4/2 b2 ~ b2*3/4 c'2*3/2 ~ c'2 e'2*3/2 \divisioMaxima
c'4 ~ c'2 ~ c'4 ~ c'2 ~ c'4 b2 ~ b2*7/4 ~ b2 ~ b4 \divisioMaior
a2*3/2 b2*3/2 e'4 ~ e'2*4/2 c'2*9/4 b2 c'2*4/2 d'2 e'2 ~ \divisioMaior
e'2*6/2 c'2*5/4 d'2*5/2 b2 ~ b4 \finalis
}

tenorMusic = {
a2*3/2 ~ a2 g4 ~ \divisioMinima
g4 a2 ~ a2 g4 ~ \divisioMinima
g2 a2*9/4 ~ a2 g2 a2 b2*3/2 g4 \divisioMaior
b2*6/2 g2*5/4 a2*5/2 ~ a2 g4 \finalis
a2*3/2 b2*3/2 ~ b2*6/2 a2 g4 ~ \divisioMaior
g4 ~ g2 a2*4/2 b2 ~ \divisioMinima
b4 a2*4/2 ~ a2 g2*3/4 a2*3/2 f2 b2*3/2 \divisioMaxima
a4 ~ a2 ~ a4 f2 ~ f2*3/2 g2*7/4 a2 g4 \divisioMaior
f2*3/2 g2*3/2 a4 b2 ~ \divisioMinima
b2 a2*9/4 g2 a2*4/2 ~ a2 b2 ~ \divisioMaior
b2*6/2 g2*5/4 a2*5/2 ~ a2 g4 \finalis
}

bassMusic = {
r2*3/2 e2 ~ e4 \divisioMinima
c4 ~ c2 e2 ~ e4 \divisioMinima
r2 f2*9/4 ~ f2 ~ f2 ~ f2 e2*3/2 ~ e4 \divisioMaior
c2*6/2 ~ c2*5/4 b,2*5/2 e2 ~ e4 \finalis
c2*3/2 ~ c2*3/2 e2*6/2 ~ e2*3/2 ~ \divisioMaior
e4 c2 ~ c2*4/2 ~ c2 ~ \divisioMinima
c4 ~ c2*4/2 e2 ~ e2*3/4 ~ e2*3/2 ~ e2 ~ e2*4/2 g2 f4 e2 d2*3/2 c2*7/4 e2 ~ e4 ~ \divisioMaior
e2*3/2 ~ e2*3/2 ~ e4 ~ e2 \divisioMinima
g2 f2*9/4 ~ f2 ~ f2*4/2 ~ f2 e2 \divisioMaior
c2*6/2 ~ c2*5/4 b,2*5/2 e2 ~ e4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Alleluia"
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
