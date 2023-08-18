\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.258
%(volume.page)

global = {
 \key d \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"De profundis" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "De profundis"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "De profundis" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- _ ia, 
\set stanza = " * " 
al -- le -- lú -- _ ia. 
_ _ _ _ _ _ 
_ _ _ _ _ _ 
_ _ _ _ _ _ _ _ _ _ _ _ ℣. 
De pro -- fún -- _ dis cla -- má -- _ _ vi _ _ 
ad te, _ _ Dó -- mi -- ne: 
Dó -- _ mi -- ne ex -- áu -- di _ _ 
\set stanza = " * " 
vo -- cem me -- am. _ _ _ _ _ _ 
_ _ _ _ _ _ 
_ _ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   d'4 ( e'4) d'4 d'4 ( g'4 fis'4) a'4 ( b'4) a'4 \divisioMaior
 d'4 ( e'4) d'4 d'4 ( g'4 fis'4) a'4 ( b'4) a'4 \divisioMaior
 g'4 ( a'4) c''4 ( b'4) c''4 ( b'4 a'4 \forceBreak
) b'4 ( b'4 a'4.) b'4 ( c''4 b'4) c''4 ( a'4) \divisioMaior
 g'4 ( a'4) c''4 ( b'4) c''4 ( b'4 a'4) b'4 ( b'4 a'4.) b'4 ( c''4 b'4) c''4 ( a'4) \divisioMaior
 g'4 ( a'4) c''4 ( b'4) c''4 ( b'4 a'4) b'4 ( g'4) ~ g'4 ( e'4) g'4. \divisioMinima \forceBreak

 fis'4 ( g'4) b'4 ( a'4 g'4.) fis'4 ( g'4 e'4 d'4) \divisioMinima
 fis'4 ( g'4 a'\prall b'4 a'4 g'4.) fis'4 ( g'4 e'4 d'4) e'4 ( fis'4 e'4) ~ e'4 ( d'4) \finalis
 d'4 ( e'4) d'4 d'4 ( g'4 fis'4) a'4 ( b'4 \forceBreak
) a'4 \divisioMinima
 a'4 a'4 ( b'\prall c''4) d''4 ( c''4) ~ c''4 ( b'4 a'4) a'4 ( b'4 g'4) a'4 ( g'4 fis'4) g'4 ( fis'4) \divisioMaior
 e'4 ( a'4) a'4 ( b'4 a'4 g'4) a'4 ( g'4) ~ g'4 ( fis'4 e'4 fis'\prall g'4 fis'4 e'4 fis'4 \forceBreak
) d'4 d'4 ( e'4 fis'4) e'4 ( d'4) \divisioMaxima
 d'4 ( g'4 fis'4) a'4 ( b'4) a'4 a'4 \divisioMinima
 a'4 ( b'4 c''4 d''4) d''4 ( e''4) a'4 ( c''4 a'4 b'\prall c''4 b'4 \forceBreak
) c''4 ( b'4 a'4) b'4 ( a'4) \divisioMaior
 e'4 ( g'4 fis'4) g'4 ( a'4) a'4 a'4 \divisioMinima
 g'4 ( a'4) c''4 ( b'4) c''4 ( b'4 a'4) b'4 ( b'4 a'4.) b'4 ( c''4 b'4) c''4 ( a'4) \divisioMaior \forceBreak

 g'4 ( a'4) c''4 ( b'4) c''4 ( b'4 a'4) b'4 ( b'4 a'4.) b'4 ( c''4 b'4) c''4 ( a'4) \divisioMaior
 g'4 ( a'4) c''4 ( b'4) c''4 ( b'4 a'4) b'4 ( g'4) ~ g'4 ( e'4) g'4. \divisioMinima
 fis'4 ( g'4 \forceBreak
) b'4 ( a'4 g'4.) fis'4 ( g'4 e'4 d'4) \divisioMinima
 fis'4 ( g'4 a'\prall b'4 a'4 g'4.) fis'4 ( g'4 e'4 d'4) e'4 ( fis'4 e'4) ~ e'4 ( d'4) \finalis

}

altoMusic = {
r2 d'4 ~ d'2*3/2 ~ d'2 ~ d'4 \divisioMaior
a2*3/2 d'2*3/2 ~ d'2 ~ d'4 ~ \divisioMaior
d'2 e'2 g'2*3/2 fis'2*7/4 e'2*3/2 ~ e'2 ~ \divisioMaior
e'2 ~ e'2 ~ e'2*3/2 d'2*7/4 ~ d'2*3/2 c'2 \divisioMaior
d'2 e'2 ~ e'2*4/2 d'2*3/2 c'2*3/4 \divisioMinima
d'2 ~ d'2*7/4 b2*4/2 ~ \divisioMinima
b2*3/2 ~ b2*7/4 ~ b2 ~ b2 c'2 a2 ~ a4 \finalis
r2 d'4 ~ d'2*3/2 ~ d'2 ~ d'4 ~ \divisioMinima
d'4 e'2*4/2 ~ e'2*4/2 ~ e'2*3/2 ~ e'2*5/2 ~ \divisioMaior
e'2 ~ e'2*5/2 d'2*3/2 c'2 ~ c'2*4/2 r2*6/2 \divisioMaxima
d'2*3/2 ~ d'2*3/2 ~ d'4 \divisioMinima
e'2*4/2 ~ e'2 ~ e'2 g'2*4/2 ~ g'2*3/2 e'2 ~ \divisioMaior
e'2*3/2 ~ e'2 ~ e'2 \divisioMinima
d'2 e'2 ~ e'2*3/2 d'2*7/4 ~ d'2*4/2 ~ d'4 ~ \divisioMaior
d'2 e'2 ~ e'2*3/2 fis'2*7/4 e'2*4/2 ~ e'4 \divisioMaior
d'2 e'2 ~ e'2 ~ e'2 d'2*3/2 c'2*3/4 \divisioMinima
d'2 ~ d'2*7/4 b2*4/2 ~ \divisioMinima
b2*3/2 ~ b2*7/4 ~ b2 ~ b2 c'2 a2 ~ a4 \finalis
}

tenorMusic = {
r2*3/2 b2*3/2 a2 ~ a4 \divisioMaior
fis2*3/2 g2*3/2 ~ g2 fis4 \divisioMaior
b2 a2 ~ a2*3/2 d'2*7/4 ~ d'2*3/2 c'2 \divisioMaior
b2 ~ b2 a2*3/2 fis2*7/4 e2*3/2 ~ e2 \divisioMaior
b2 a2 g2*4/2 ~ g2*3/2 e2*3/4 \divisioMinima
a2 g2*7/4 e2 fis2 \divisioMinima
d2*3/2 ~ d2*7/4 e2 g2 ~ g2 ~ g2 fis4 \finalis
r2*3/2 b2*3/2 a2 ~ a4 ~ \divisioMinima
a4 c'2*4/2 d2*4/2 c'2*3/2 ~ c'2*3/2 d'2 ~ \divisioMaior
d'2 c'2*5/2 b2*3/2 ~ b2 a2*4/2 b4 ~ b2*3/2 a2 \divisioMaxima
g2*3/2 ~ g2*3/2 fis4 \divisioMinima
a2*4/2 b2 c'2 ~ c'2*4/2 d'2*3/2 ~ d'4 c'4 \divisioMaior
b2*3/2 ~ b2 a2 ~ \divisioMinima
a2 ~ a2 g2*3/2 fis2*7/4 e2*4/2 fis4 \divisioMaior
b2 ~ b2 a2*3/2 d'2*7/4 ~ d'2*4/2 c'4 \divisioMaior
b2 a2 ~ a2 ~ a2 e2*3/2 ~ e2*3/4 \divisioMinima
a2 g2*7/4 e2 fis2 \divisioMinima
d2*3/2 ~ d2*7/4 e2 g2 ~ g2 ~ g2 fis4 \finalis
}

bassMusic = {
r2*3/2 g2*3/2 ~ g2 fis4 \divisioMaior
d2*3/2 b,2*3/2 d2 ~ d4 \divisioMaior
e2 c2 e2*3/2 d2*7/4 a2*3/2 ~ a2 \divisioMaior
e2 c2 ~ c2*3/2 d2*7/4 a,2*3/2 ~ a,2 ~ \divisioMaior
a,2 ~ a,2 e2*4/2 ~ e2*3/2 a,2*3/4 \divisioMinima
b,2 ~ b,2*7/4 ~ b,2*4/2 ~ \divisioMinima
b,2*3/2 g,2*7/4 ~ g,2 ~ g,2 a,2 d2 ~ d4 \finalis
r2*3/2 g2*3/2 ~ g2 fis4 ~ \divisioMinima
fis4 a2*4/2 ~ a2*4/2 ~ a2*3/2 c'2*5/2 \divisioMaior
r2*16/2 a4 g2*3/2 fis2 \divisioMaxima
e2*3/2 d2*3/2 ~ d4 \divisioMinima
c2*4/2 ~ c2 ~ c2 e2*4/2 ~ e2*3/2 a2 \divisioMaior
e2*3/2 d2 c2 \divisioMinima
b,2 a,2 ~ a,2*3/2 d2*7/4 ~ d2*4/2 ~ d4 \divisioMaior
e2 c2 ~ c2*3/2 d2*7/4 a2*4/2 ~ a4 ~ \divisioMaior
a2 ~ a2 a,2 c2 b,2*3/2 a,2*3/4 \divisioMinima
b,2 ~ b,2*7/4 ~ b,2*4/2 ~ \divisioMinima
b,2*3/2 g,2*7/4 ~ g,2 ~ g,2 a,2 d2 ~ d4 \finalis
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
