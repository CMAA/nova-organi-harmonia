\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.16
%(volume.page)

global = {
 \key fis \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Excita Domine" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Excita Domine"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Excita Domine" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- ia, _ &zwj;* -- al -- le -- lú -- ia. _ _ _ _ _ _ ℣. 
Éx -- ci -- ta _ _ _ Dó -- _ _ mi -- ne, 
po -- tén -- ti -- _ am tu -- am, 
et ve -- _ _ _ _ _ _ _ _ _ ni, 
ut sal -- vos 
\set stanza = " * " fá -- ci -- _ as _ nos. _ _ _ _ _ _ }

chantMusic = {
\tieDown   g'4 ( \once \tweak #'font-size #-4 e' ) fis'4 ( g'4 a'4) b'4 ( a'4 b'4)  b'4 ( c''4 b'4 a'4) ~ a'4 ( g'4) \divisioMinima
 g'4 ( \once \tweak #'font-size #-4 e' ) fis'4 ( g'4 a'4) b'4 ( a'4 b'4)  b'4 ( c''4 b'4 a'4) ~ a'4 ( g'4) \divisioMinima \forceBreak

  b'4 ( c''4 b'4 a'4) ~ a'4 ( fis'4.) a'4 ( b'4 a'4 g'4 fis'4) g'4 ( a'4 g'4) ~ g'4 ( fis'4) \finalis
 b'4 b'4  a'4 c''4 ( b'4 a'4) b'4 ( g'4) ~ g'4 ( fis'4) g'4 ( e'4) fis'4 ( g'4 a'4 b'4) ~ b'4 ( a'4 \forceBreak
) g'4 ( a'4) a'4 \divisioMaior
 a'4 a'4 ( b'4) a'4 ( b'4 a'4) b'4 ( g'4) fis'4 ( \once \tweak #'font-size #-4 e' ) fis'4 ( a'4 g'4 e'4) e'4 \divisioMaxima
 g'4 ( a'\prall b'4 a'4)  b'4 ( c''4 a'4 fis'4 a'4.) b'4 ( c''4 g'4 e'4) g'4 ( g'4 \forceBreak
) ~ g'4 ( e'4) a'4 ( g'4 fis'4) \divisioMinima
 e'4 ( g'4) b'4 ( g'4) a'4 ( fis'4) g'4. e'4 ( g'4) a'4 ( g'4 fis'4 g'4) g'4 ( fis'4) \divisioMaxima
 e'4 g'4 ( \once \tweak #'font-size #-4 e' ) g'4  fis'4 ( g'4 a'4) a'4 ( e'4 \forceBreak
) a'4 ( g'4 fis'4) g'4 ( e'4) fis'4 ( g'4 a'4 b'4)  b'4 ( c''4 b'4 a'4) ~ a'4 ( g'4) \divisioMinima
  b'4 ( c''4 b'4 a'4) ~ a'4 ( fis'4.) a'4 ( b'4 a'4 g'4 fis'4) g'4 ( a'4 g'4) ~ g'4 ( fis'4) \finalis

}

altoMusic = {
r2*5/2 fis'2*3/2 e'2*4/2 d'2 \divisioMinima
e'2 ~ e'2*3/2 fis'2*3/2 e'2*3/2 d'2*3/2 ~ d'2*3/2 ~ d'2*7/4 b2*5/2 ~ b2 d'2 ~ d'4 \finalis
e'2*3/2 ~ e'2*4/2 d'2*3/2 e'2 ~ e'2*3/2 fis'2*3/2 d'2 ~ d'4 ~ \divisioMaior
d'4 ~ d'2*5/2 ~ d'2 ~ d'2 b2*4/2 ~ b4 \divisioMaxima
d'2*4/2 e'2*4/2 ~ e'2*3/4 ~ e'2*4/2 ~ e'2 ~ e'2 d'2*3/2 \divisioMinima
e'2*4/2 ~ e'2 ~ e'2*7/4 ~ e'2*4/2 d'2 r2*0/2 \divisioMaxima
c'2*4/2 d'2*3/2 e'2 ~ e'2*3/2 ~ e'2 ~ e'2*4/2 ~ e'2*3/2 d'2*3/2 ~ d'2*3/2 ~ d'2*7/4 ~ d'2*5/2 ~ d'2 ~ d'2*3/2 \finalis
}

tenorMusic = {
e'2*3/2 g'2 d'2*3/2 c'2*4/2 b2 ~ \divisioMinima
b2 g2*3/2 ~ g2*3/2 a2*3/2 b2*3/2 g2*3/2 fis2*7/4 ~ fis2*5/2 e2 b2 ~ b4 \finalis
c'2*3/2 ~ c'2*4/2 b2*3/2 ~ b2 g2*3/2 fis2*3/2 e2 fis4 ~ \divisioMaior
fis4 ~ fis2*5/2 g2 a2 ~ a2*4/2 g4 ~ \divisioMaxima
g2*4/2 ~ g2*4/2 fis2*3/4 g2*4/2 c'2 b2 ~ b2*3/2 ~ \divisioMinima
b2*4/2 ~ b2 ~ b2*7/4 ~ b2*4/2 a2 e2*0/2 ~ \divisioMaxima
e2*4/2 d2*3/2 c2 ~ c2*3/2 b2 g2*4/2 ~ g2*3/2 ~ g2*3/2 ~ g2*3/2 fis2*7/4 d2*5/2 e2 b2*3/2 \finalis
}

bassMusic = {
r2*14/2 \divisioMinima
e2 ~ e2*3/2 d2*3/2 c2*3/2 b,2*3/2 ~ b,2*3/2 d2*7/4 ~ d2*5/2 e2 b,2 ~ b,4 \finalis
r2*3/2 a2*4/2 b2*3/2 e2 ~ e2*3/2 d2*3/2 ~ d2 ~ d4 ~ \divisioMaior
d4 b,2*5/2 ~ b,2 ~ b,2 e2*4/2 ~ e4 \divisioMaxima
r2*4/2 e2*4/2 ~ e2*3/4 ~ e2*4/2 ~ e2 ~ e2 b2*3/2 \divisioMinima
g2*4/2 fis2 e2*7/4 d2*4/2 ~ d2 r2*0/2 \divisioMaxima
a,2*4/2 b,2*3/2 c2 ~ c2*3/2 e2 d2*4/2 c2*3/2 b,2*3/2 g,2*3/2 b,2*7/4 ~ b,2*5/2 ~ b,2 ~ b,2*3/2 \finalis
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
        "IV"
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
