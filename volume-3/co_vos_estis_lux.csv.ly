\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.183
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Vos estis lux" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Vos estis lux"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Vos estis lux" }
    \line {}
  }
}

chantText = \lyricmode {
Vos e -- stis lux mun -- di 
\set stanza = " * " sic lú -- ce -- at lux ve -- stra co -- ram ho -- mí -- ni -- bus, 
ut ví -- de -- ant ó -- pe -- ra ve -- stra bo -- na 
et glo -- rí -- fi -- cent Pa -- trem ve -- strum qui in cæ -- lis est. T.P. 
Al -- le -- _ _ lú -- ia. }

chantMusic = {
\tieDown   e'4 fis'4 g'4 a'4 ( b'4) g'4 ( \tiny fis' e' 4) e'4 \divisioMinima
 e'4 d'4 e'4 g'4 g'4 ( e'4) g'4 ( b'4) a'4 b'4 a'4 ( b'4) b'4 a'4 ( g'4) a'4 g'4 \divisioMaxima
 g'4  b'4 ( c''4) a'4 g'4 b'4 a'4 ( g'4) a'4 b'4 g'4 ( fis'4) e'4 ( fis'\prall g'4) d'4 \divisioMaior
 d'4 e'4 g'4 ( a'4) g'4 g'4 b'4 a'4 ( \once \tweak #'font-size #-4 g' ) a'4 ( a'4) e'4 \divisioMinima
 fis'4 g'4 a'4 ( b'4) g'4 ( fis'4 e'4) e'4 \finalis
 g'4 ( a'4) fis'4 ( g'4 a'4) b'4 ( g'4) a'4 ( g'4 fis'4) e'4 ( fis'\prall g'4 fis'4 g'4) fis'4 ( e'4) \finalis

}

altoMusic = {
e'4 ~ e'2 d'2 c'2*3/2 b4 ~ \divisioMinima
b4 ~ b2*3/2 ~ b2 e'2*3/2 ~ e'2*3/2 d'4 ~ d'2*3/2 ~ d'4 ~ \divisioMaxima
d'4 c'2 d'2 e'2*4/2 ~ e'4 d'2 b2*3/2 a4 \divisioMaior
b2 ~ b2 ~ b2 d'2*3/2 e'2*3/2 ~ \divisioMinima
e'2 d'2 b2*3/2 ~ b4 \finalis
d'2 ~ d'2*3/2 ~ d'2 b2*3/2 ~ b2*5/2 ~ b2 \finalis
}

tenorMusic = {
r4 c'2 b2 a2*3/2 g4 ~ \divisioMinima
g4 ~ g2*3/2 ~ g2 e2*3/2 ~ e2*3/2 fis4 e2*3/2 d4 \divisioMaxima
g4 ~ g2 ~ g2 ~ g2*4/2 e4 a2 g2*3/2 fis4 \divisioMaior
g2 ~ g2 ~ g2 ~ g2*3/2 ~ g2*3/2 \divisioMinima
a2 ~ a2 ~ a2*3/2 g4 \finalis
b2 a2*3/2 g2 ~ g2*3/2 a2*5/2 g2 \finalis
}

bassMusic = {
r2*10/2 fis2*3/2 e2 d2*3/2 c2*3/2 b,4 ~ b,2*3/2 ~ b,4 ~ \divisioMaxima
b,4 a,2 b,2 c2*4/2 d4 ~ d2 e2*3/2 fis4 \divisioMaior
r2 fis2 e2 b,2*3/2 c2*3/2 ~ \divisioMinima
c2 b,2 e2*3/2 ~ e4 \finalis
b,2 ~ b,2*3/2 ~ b,2 e2*3/2 ~ e2*5/2 ~ e2 \finalis
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
