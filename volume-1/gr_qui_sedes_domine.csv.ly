\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.15
%(volume.page)

global = {
 \key d \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Qui sedes Domine" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Qui sedes Domine"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Qui sedes Domine" }
    \line {}
  }
}

chantText = \lyricmode {
Qui se -- des, _ _ _ _ Dó -- mi -- ne, 
\set stanza = " * " 
su -- _ per Ché -- ru -- bim, _ _ _ 
éx -- ci -- ta pó -- ten -- ti -- am tu -- am, _ _ 
et _ _ _ _ _ ve -- ni. _ _ _ _ _ ℣. 
Qui re -- _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ gis Is -- ra -- el, in -- tén -- de: 
qui de -- dú -- _ _ _ _ cis 
vel -- ut o -- vem 
\set stanza = " * " Jo -- seph. _ _ _ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   e'4 g'4 ( a'4) a'4 ( a'4 g'4) a'4 ( e'4.) g'4 ( fis'4 e'4) g'4 ( a'4) c''4 ( b'4 a'4) a'4 a'4 ( b'4 a'4) a'4 \divisioMaior
 b'4 ( d''4) ~ d''4 ( b'4) b'4 ( e'4 \forceBreak
) e'4 ( g'4 fis'4) g'4 a'4 ( b'4 a'4 g'4) ~ g'4 ( e'4) g'4 ( fis'4) g'4 ( a'4 g'4 fis'4 d'4) \divisioMaxima
 d'4 ( e'4) e'4 e'4 ( d'4 e'4) c'4 c'4 ( d'4) c'4 a4 ( \once \tweak #'font-size #-4 d' ) d'4 d'4. c'4 ( d'4) e'4 ( a4) \divisioMaior
 d'4 ( c'4) d'4 ( e'4) g'4 ( g'4) ~ g'4 ( e'4 d'4 c'4) ~ c'4 ( a4.) c'4 ( e'4 c'4 d'4) d'4  d'4 e'4 ( f'4 d'4 c'4) ~ c'4 ( a4.) c'4 ( b4) c'4 ( d'4) g'4 ( e'4 d'4) \finalis \forceBreak

 d'4 ( a'4) a'4. g'4 ( a'4) b'4 ( g'4 e'4) a'4 ( g'4 fis'4 d'4 e'4) g'4 ( g'4 e'4) fis'4 ( e'4 d'4) e'4 ( d'4 c'4) d'4 \divisioMinima
 g'4 ( g'4) ~ g'4 ( g'4) ~ g'4 ( d'4) e'4 ( g'4 e'4 c'4) e'4 ( g'4 e'4 c'4) d'4 \divisioMinima \forceBreak

 g'4 ( g'4 a'4) c''4 ( c''4) ~ c''4 ( a'4 g'4 fis'4.) a'4 ( b'4 a'4 g'4 fis'4) g'4 ( a'4) a'4 a'4 b'4 ( c''\prall d''4) d''4 ( c''4 a'4) g'4 b'4 ( c''4) b'4 ( a'4) \divisioMaxima \forceBreak

 a'4 ( b'4) g'4 ( e'4) g'4 ( fis'4 d'4 e'4) g'4 ( g'4 e'4) fis'4 ( e'4 d'4) e'4 ( d'4 c'4) d'4 ( e'4) d'4 \divisioMaior
 d'4 ( e'4) d'4 c'4 ( e'4 g'4) g'4 ( fis'4)  e'4 ( a'4 g'4 a'4) a'4 ( d'4) \divisioMinima \forceBreak

 a'4 ( fis'4 a'4.) b'4 ( c''4 a'4.) b'4 ( c''4 b'4 a'4) b'4 ( g'4) a'4 ( a'4 fis'4.) g'4 ( a'4 fis'4) g'4 ( e'4 d'4) e'4 ( c'4 d'4) \divisioMinima
 g'4 ( g'4 e'4 d'4) e'4 ( c'4 a4.) d'4 ( g'4 e'4) fis'4 ( e'4) ~ e'4 ( d'4) \finalis

}

altoMusic = {
e'4 ~ e'2 ~ e'2*11/4 ~ e'2*3/2 ~ e'2 ~ e'2*3/2 g'4 ~ g'2*3/2 e'4 \divisioMaior
fis'4 g'2*3/2 e'2 ~ e'2*4/2 d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'2 ~ d'2*3/2 \divisioMaxima
b2*3/2 ~ b2*4/2 a2*3/2 ~ a2*3/2 g2*3/4 ~ g2 a2 \divisioMaior
r2 d'2 ~ d'2 c'2*3/2 a2*7/4 ~ a2*4/2 c'2 a2*3/2 g2*7/4 ~ g2*4/2 ~ g2 a4 \finalis
r2 fis'2*7/4 e'2*3/2 d'2*5/2 ~ d'2*3/2 ~ d'2*3/2 c'2*3/2 d'4 ~ \divisioMinima
d'2 e'2 d'2 c'2*4/2 ~ c'2*4/2 d'4 ~ \divisioMinima
d'2*3/2 g'2 e'2*3/2 fis'2*3/4 d'2*5/2 ~ d'2*4/2 ~ d'2*3/2 g'2*3/2 ~ g'4 e'2 fis'2 \divisioMaxima
d'2*4/2 ~ d'2*4/2 b2*6/2 c'2*3/2 d'2*3/2 \divisioMaior
b2*3/2 c'4 ~ c'2 d'2 e'2*4/2 d'2 \divisioMinima
fis'2*7/4 e'2*7/4 ~ e'2*4/2 d'2 ~ d'2*7/4 ~ d'2*3/2 ~ d'2*3/2 c'2 a4 \divisioMinima
b2*4/2 a2*7/4 d'2 c'2 a2 ~ a4 \finalis
}

tenorMusic = {
c'4 ~ c'2 ~ c'2*11/4 b2*3/2 ~ b2 a2*3/2 ~ a4 ~ a2*3/2 d'4 ~ \divisioMaior
d'4 b2*3/2 g2 ~ g2*4/2 fis2*3/2 e2*3/2 d2 e2 b2*3/2 \divisioMaxima
g2*3/2 ~ g2*4/2 ~ g2*3/2 fis2*3/2 e2*3/4 ~ e2 ~ e2 \divisioMaior
g2*4/2 e2 ~ e2*3/2 ~ e2*7/4 ~ e2*4/2 fis2 e2*3/2 ~ e2*7/4 ~ e2*4/2 d2 ~ d4 \finalis
r2 d'2*7/4 ~ d'2*3/2 b2*5/2 ~ b2*3/2 ~ b2*3/2 a2*3/2 ~ a4 \divisioMinima
b2 ~ b2 ~ b2 c'2*4/2 a2*4/2 b4 ~ \divisioMinima
b2*3/2 a2 ~ a2*3/2 ~ a2*3/4 fis2*5/2 e2 fis2 g2*3/2 ~ g2*4/2 a2 ~ a2 \divisioMaxima
b2*4/2 a2*4/2 ~ a2*6/2 g2*3/2 ~ g2*3/2 ~ \divisioMaior
g2*3/2 ~ g2*3/2 ~ g2 ~ g2*4/2 fis2 \divisioMinima
b2*7/4 a2*7/4 g2*4/2 ~ g2 fis2*7/4 e2*3/2 b2*3/2 a2 ~ a4 \divisioMinima
g2*4/2 ~ g2*7/4 ~ g2 ~ g2 ~ g2 fis4 \finalis
}

bassMusic = {
r4 b2 a2*11/4 e2*3/2 d2 c2*3/2 e4 d2*3/2 ~ d4 ~ \divisioMaior
d4 e2*3/2 ~ e2 d2*4/2 ~ d2*3/2 e2*3/2 b,2 ~ b,2 ~ b,2*3/2 \divisioMaxima
r2*3/2 e2*4/2 ~ e2*3/2 ~ e2*3/2 ~ e2*3/4 d2 c2 \divisioMaior
b,2*4/2 ~ b,2 a,2*3/2 g,2*7/4 fis,2*4/2 ~ fis,2 e,2*3/2 ~ e,2*7/4 a,2*4/2 b,2 d4 \finalis
r2*27/4 e2*3/2 g2*3/2 ~ g2*3/2 fis4 ~ \divisioMinima
fis2 e2 ~ e2 ~ e2*4/2 g2*4/2 ~ g4 \divisioMinima
fis2*3/2 e2 c2*3/2 d2*3/4 ~ d2*5/2 ~ d2 ~ d2 g2*3/2 e2*4/2 c2 d2 \divisioMaxima
b,2*4/2 ~ b,2*4/2 e2*6/2 ~ e2*3/2 g2*3/2 \divisioMaior
g,2*3/2 a,2*3/2 b,2 d2*4/2 ~ d2 ~ \divisioMinima
d2*7/4 c2*7/4 ~ c2*4/2 b,2 ~ b,2*7/4 e2*3/2 ~ e2*3/2 g2 fis4 \divisioMinima
e2*4/2 c2*7/4 b,2 c2 d2 ~ d4 \finalis
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
        "VII"
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
