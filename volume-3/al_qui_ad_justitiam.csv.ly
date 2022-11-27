\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.179
%(volume.page)

global = {
 \key d \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Qui ad justitiam" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Qui ad justitiam"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Qui ad justitiam" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ lú -- ia. _ 
\set stanza = " * " _ _ _ 
_ _ _ _ _ _ _ _ _ _ ℣. 
Qui ad ju -- stí -- _ ti -- am e -- rú -- di -- unt _ mul -- _ _ _ _ _ tos, _ 
ful -- gé -- _ _ _ bunt qua -- si stel -- læ in per -- pé -- _ tu -- as 
\set stanza = " * " æ -- ter -- ni -- tá -- _ _ _ _ _ tes. _ _ _ 
_ _ _ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   d'4 d'4 ( fis'4) a'4 ( g'4) fis'4 ( g'4 a'4 g'4 fis'4) a'4 a'4 ( g'4) a'4 ( fis'4) \divisioMinima
 a'4 c''4 ( c''4 a'4 g'4) a'4. g'4 ( g'4) ~ g'4 ( d'4) \divisioMaior
 e'4 ( g'4) ~ g'4 ( fis'4) g'4 ( b'4 a'4 g'4 e'4.) a'4 ( g'4) a'4 ( g'4) ~ g'4 ( d'4) \divisioMinima
 g'4 ( g'4) ~ g'4 ( e'4 d'4) e'4 ( fis'4 e'4) ~ e'4 ( d'4) \finalis
 d'4 ( a'4) a'4 ( b'4) a'4 ( g'4 a'4) a'4 ( g'4 e'4) fis'4 ( g'4 a'4) g'4 ( fis'4) fis'4  fis'4 ( g'4) e'4 ( a'4) a'4 ( b'4) b'4 ( a'4) ~ a'4 ( g'4) g'4 ( a'4) c''4 ( c''4) ~ c''4 ( a'4 g'4) c''4 ( c''4) d''4 ( c''4) ~ c''4 ( b'4 a'4) a'4 ( b'4) ~ b'4 ( a'4) \divisioMaior
 g'4 ( a'4) a'4 ( c''4) b'4 ( c''4 d''4 c''4 b'4 a'4) g'4 ( b'4 a'4) ~ a'4 ( g'4 a'4) a'4 \divisioMinima
 g'4 a'4 ( b'4) b'4 ( a'4 b'4) a'4 ( g'4) g'4 ( e'4) fis'4 ( g'4) a'4 ( b'\prall c''4) d''4 ( c''4) b'4 ( a'4) a'4  a'4 a'4 g'4 ( a'4) a'4 ( b'4 a'4) b'4 ( g'4) e'4 g'4 ( g'4) ~ g'4 ( e'4) \divisioMinima
 a'4 ( b'4 g'4 fis'4) a'4 ( a'4 g'4 a'4) a'4. d''4 ( d''4 b'4 a'4) e'4 g'4 ( g'4 e'4) fis'4 ( d'4) \divisioMaior
 g'4 ( b'4 a'4) b'4 ( c''4 a'4 g'4) e'4 ( fis'4) a'4 ( a'4 g'4 fis'4 e'4 fis'4) \divisioMinima
 e'4 ( g'4 fis'4) g'4 ( fis'4.) e'4 ( g'4 fis'4) g'4 ( fis'4.) e'4 ( g'4 fis'4) a'4 ( fis'4) g'4 ( e'4 d'4) e'4 ( fis'4 e'4) ~ e'4 ( d'4) \finalis

}

altoMusic = {
d'4 ~ d'2*4/2 ~ d'2*5/2 e'4 d'2*4/2 \divisioMinima
e'4 ~ e'2*4/2 d'2*3/4 ~ d'2 ~ d'4 ~ d'4 \divisioMaior
r4 c'2*3/2 d'2*4/2 c'2*3/4 d'2*3/2 ~ d'2 ~ d'4 \divisioMinima
c'2 b2*3/2 a2 ~ a2*3/2 \finalis
d'2 ~ d'2 ~ d'2*3/2 e'2*3/2 d'2*3/2 ~ d'2 ~ d'4 ~ d'2 e'2 fis'2*3/2 e'2*3/2 d'2 e'2 ~ e'2*3/2 ~ e'2*3/2 ~ e'2*5/2 d'2*3/2 ~ \divisioMaior
d'2 e'2 ~ e'2*6/2 ~ e'2 d'2*4/2 c'4 \divisioMinima
d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'2 ~ d'2 e'2*3/2 ~ e'2 ~ e'2 ~ e'4 d'2 ~ d'2 e'2*3/2 ~ e'2 ~ e'4 d'2 b2 \divisioMinima
d'2 ~ d'2 e'2*4/2 ~ e'2*3/4 d'2*4/2 ~ d'4 ~ d'2*3/2 ~ d'4 ~ d'4 ~ \divisioMaior
d'2*3/2 c'2*4/2 b2 c'2*4/2 ~ c'2 \divisioMinima
d'2*3/2 ~ d'2*5/4 e'2*3/2 d'2*5/4 b2*3/2 d'2 b2*3/2 a2 ~ a2*3/2 \finalis
}

tenorMusic = {
r4 b2*4/2 ~ b2*5/2 c'4 b2*4/2 \divisioMinima
c'4 a2*4/2 ~ a2*3/4 ~ a2 b2 ~ \divisioMaior
b4 a2*3/2 b2*4/2 a2*3/4 ~ a2*3/2 b2*3/2 \divisioMinima
a2 g2*3/2 ~ g2 fis2*3/2 \finalis
r2*4/2 a2*3/2 b2*3/2 ~ b2*3/2 ~ b2 ~ b4 a2 ~ a2 ~ a2*3/2 ~ a2*3/2 ~ a2 ~ a2 ~ a2*3/2 ~ a2*3/2 g2*5/2 fis2*3/2 \divisioMaior
g2 ~ g2 a2*6/2 e2 ~ e2*4/2 ~ e4 ~ \divisioMinima
e2*3/2 fis2*3/2 g2 b2 a2 ~ a2*3/2 g2 fis2 e4 fis2 e2 ~ e2*3/2 g2*3/2 ~ g2 ~ g2 \divisioMinima
fis2 a2 ~ a2*4/2 e2*3/4 fis2*4/2 g4 b2*3/2 a2 \divisioMaior
g2*3/2 ~ g2*4/2 ~ g2 ~ g2*4/2 a2 \divisioMinima
g2*3/2 a2*5/4 ~ a2*3/2 ~ a2*5/4 g2*3/2 fis2 e2*3/2 g2 fis2*3/2 \finalis
}

bassMusic = {
r2*5/2 a2*5/2 ~ a4 b2*4/2 \divisioMinima
a4 g2*4/2 fis2*3/4 g2 ~ g2 ~ \divisioMaior
g4 ~ g2*3/2 ~ g2*4/2 ~ g2*3/4 fis2*3/2 g2*3/2 ~ \divisioMinima
g2 ~ g2*3/2 d2 ~ d2*3/2 \finalis
r2 g2 ~ g2*3/2 ~ g2*3/2 a2*3/2 b2 b,4 ~ b,2 c2 d2*3/2 e2*3/2 fis2 g2 a2*3/2 a,2*3/2 ~ a,2*5/2 d2*3/2 \divisioMaior
b,2 c2 ~ c2*6/2 ~ c2 b,2*4/2 a,4 \divisioMinima
b,2*3/2 ~ b,2*3/2 ~ b,2 ~ b,2 ~ b,2 c2*3/2 ~ c2 ~ c2 ~ c4 d2 ~ d2 c2*3/2 ~ c2*3/2 b,2 e2 \divisioMinima
d2 ~ d2 c2*4/2 ~ c2*3/4 b,2*4/2 ~ b,4 ~ b,2*3/2 ~ b,2 ~ \divisioMaior
b,2*3/2 a,2*4/2 g,2 a,2*4/2 ~ a,2 \divisioMinima
b,2*3/2 ~ b,2*5/4 c2*3/2 d2*5/4 e2*3/2 d2 ~ d2*3/2 ~ d2 ~ d2*3/2 \finalis
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
        "7"
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
