\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.384
%(volume.page)

global = {
 \key d \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Sicut oliva" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Sicut oliva"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Sicut oliva" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ _ lú -- ia, _ 
\set stanza = " * " 
al -- le -- _ _ lú -- ia. _ 
_ _ _ _ _ _ _ _ _ _ ℣. 
Sic -- ut o -- lí -- va fru -- ctí -- fe -- ra 
in do -- mo De -- i, 
spe -- rá -- vi in mi -- se -- ri -- cór -- di -- a De -- i in æ -- tér -- _ _ _ num, 
et in sǽ -- cu -- lum 
\set stanza = " * " sǽ -- _ _ cu -- li. _ 
_ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   d'4 ( g'4) g'4 ( a'4 g'4 fis'4) a'4 ( g'4 e'4) ~ e'4 ( d'4) e'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4 b'4) ~ b'4 ( a'4) \divisioMaior
  d'4 ( g'4) g'4 ( a'4 g'4 fis'4) a'4 ( g'4 e'4) ~ e'4 ( d'4) e'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4 b'4) ~ b'4 ( a'4) \divisioMaior
 g'4 ( a'4) b'4 ( g'4 a'4.) g'4 ( c''4 b'4 g'4) a'4 ( b'4 a'4) \divisioMinima
 fis'4 ( a'4 g'4 e'4) g'4 ( fis'4) ~ fis'4 ( d'4.) e'4 ( d'4 c'4) e'4. d'4 ( e'\prall fis'4 g'4) ~ g'4 ( d'4) \finalis
 d'4 ( g'4) g'4 ( a'4) a'4 ( g'4) g'4 ( b'4 a'4) a'4 ( g'4 e'4) g'4 ( e'4 g'4) g'4 ( b'4 a'4) g'4 ( a'4) a'4 \divisioMaior
 a'4 ( b'4 \once \tweak #'font-size #-4 g' ) g'4 ( a'\prall b'4 c''4) b'4 ( a'4) a'4 ( b'4 a'4) a'4 \divisioMaxima
 a'4 g'4 ( b'4 a'4) a'4 ( e'4) e'4 e'4 g'4 ( fis'4) g'4 a'4 g'4 a'4 ( b'4) a'4 ( g'4) g'4 \divisioMinima
 a'4 c''4 b'4 ( d''4 c''4 a'4) c''4 ( b'4) ~ b'4 ( g'4) b'4 ( c''4 a'4) a'4 \divisioMaxima
 d'4 d'4 ( e'4) e'4 ( fis'4) e'4 ( d'4) d'4 ( g'4)  g'4 ( a'4 g'4 fis'4) a'4 ( g'4 e'4) ~ e'4 ( d'4) e'4 ( g'4) g'4 ( a'4 b'4) ~ b'4 ( a'4) \divisioMaior
 g'4 ( a'4) b'4 ( g'4 a'4.) g'4 ( c''4 b'4 g'4) a'4 ( b'4 a'4) \divisioMinima
 fis'4 ( a'4 g'4 e'4) g'4 ( fis'4) ~ fis'4 ( d'4.) e'4 ( d'4 c'4) e'4. d'4 ( e'\prall fis'4 g'4) ~ g'4 ( d'4) \finalis

}

altoMusic = {
d'2 ~ d'2*4/2 b2 ~ b2*3/2 ~ b2 d'2 ~ d'2*3/2 b2 d'2*4/2 ~ d'2 b2*3/2 d'2 ~ d'2 ~ d'2*3/2 ~ \divisioMaior
d'2 ~ d'2 ~ d'2*3/4 e'2 d'2 c'2*3/2 \divisioMinima
b2 ~ b2*3/2 ~ b2 ~ b2*3/4 ~ b2*3/2 a2*3/4 c'2*3/2 ~ c'2 b4 \finalis
d'2 ~ d'2 e'2 ~ e'2*3/2 ~ e'2*3/2 ~ e'2*3/2 d'2*3/2 ~ d'2 ~ d'4 \divisioMaior
e'2*3/2 ~ e'2*4/2 ~ e'2 ~ e'2*3/2 d'4 \divisioMaxima
e'2*4/2 ~ e'2*4/2 d'2*3/2 ~ d'2 ~ d'2 b2 ~ b4 \divisioMinima
e'2 ~ e'2*5/2 ~ e'2*3/2 d'2*3/2 ~ d'4 \divisioMaxima
b2*3/2 ~ b2 ~ b2 c'2 d'2*4/2 ~ d'2 b2*3/2 d'2 ~ d'2 ~ d'2*3/2 \divisioMaior
b2 e'2 ~ e'2*3/4 ~ e'2 d'2 ~ d'2 c'4 \divisioMinima
d'2*5/2 ~ d'2 b2*3/4 ~ b2*3/2 a2*3/4 c'2*3/2 ~ c'2 b4 \finalis
}

tenorMusic = {
b2 a2*4/2 ~ a2 fis2*3/2 g2 ~ g2 fis2*3/2 g2 ~ g2*4/2 e2 fis2*3/2 g2 e2 fis2*3/2 \divisioMaior
g2 e2 fis2*3/4 e2*4/2 ~ e2*3/2 \divisioMinima
fis2 e2*3/2 d2 fis2*3/4 g2*3/2 c2*3/4 e2*3/2 d2 g4 \finalis
b2 ~ b2 ~ b2 d'2*3/2 c'2*3/2 b2*3/2 g2*3/2 e2 fis4 \divisioMaior
g2*3/2 b2 a2 g2 ~ g2*3/2 fis4 \divisioMaxima
r4 a2*3/2 b2*4/2 a2*3/2 e2 fis2 ~ fis2 g4 ~ \divisioMinima
g2 a2*5/2 g2*3/2 e2*3/2 fis4 ~ \divisioMaxima
fis4 e2 d2 g2 ~ g2 ~ g2*4/2 e2 fis2*3/2 g2 e2 fis2*3/2 \divisioMaior
g2 ~ g2 fis2*3/4 e2*4/2 ~ e2*3/2 \divisioMinima
d2 e2*3/2 fis2 a2*3/4 g2*3/2 ~ g2*3/4 e2*3/2 d2 g4 \finalis
}

bassMusic = {
g2 d2*4/2 e2 ~ e2*3/2 ~ e2 b,2 d2*3/2 g,2 b,2*4/2 ~ b,2 ~ b,2*3/2 ~ b,2 d2 ~ d2*3/2 \divisioMaior
b,2 ~ b,2 ~ b,2*3/4 c2*4/2 ~ c2*3/2 \divisioMinima
d2 e2*3/2 b,2 ~ b,2*3/4 g,2*3/2 ~ g,2*3/4 ~ g,2*3/2 ~ g,2 ~ g,4 \finalis
g2 fis2 e2 ~ e2*3/2 ~ e2*3/2 ~ e2*3/2 b,2*3/2 d2 ~ d4 \divisioMaior
c2*3/2 ~ c2*4/2 ~ c2 d2*3/2 ~ d4 \divisioMaxima
c2*4/2 ~ c2*4/2 d2*3/2 ~ d2 ~ d2 e2 ~ e4 \divisioMinima
c2 ~ c2*5/2 ~ c2*3/2 d2*3/2 ~ d4 \divisioMaxima
g,2*3/2 ~ g,2 ~ g,2 a,2 b,2*4/2 ~ b,2 ~ b,2*3/2 ~ b,2 d2 ~ d2*3/2 \divisioMaior
e2 ~ e2 ~ e2*3/4 ~ e2*4/2 a,2*3/2 \divisioMinima
b,2*5/2 ~ b,2 ~ b,2*3/4 c2*3/2 ~ c2*3/4 g,2*3/2 ~ g,2 ~ g,4 \finalis
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
        "1"
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
