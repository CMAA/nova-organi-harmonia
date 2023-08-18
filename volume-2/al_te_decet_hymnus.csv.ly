\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.180
%(volume.page)

global = {
 \key d \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Te decet hymnus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Te decet hymnus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Te decet hymnus" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ lú -- ia, _ 
\set stanza = " * " al -- le -- _ lú -- ia. _ _ _ _ 
_ _ _ _ _ _ _ _ _ _ ℣. 
Te de -- cet hym -- nus, De -- us, _ _ 
in Si -- _ _ _ _ _ _ _ on: _ 
et ti -- _ bi red -- _ dé -- tur _ 
vo -- _ _ _ _ _ _ tum _ 
\set stanza = " * " 
in Je -- rú -- sa -- lem. _ _ _ _ _ _ _ _ _ _ _ _ 
_ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   d'4 d'4 ( fis'4) a'4 ( g'4) fis'4 ( g'4 a'4 g'4 fis'4) a'4 a'4 ( g'4) a'4 ( fis'4) \divisioMinima
 d'4 d'4 ( fis'4) a'4 ( g'4) fis'4 ( g'4 a'4 g'4 fis'4) a'4 \forceBreak
 a'4 ( g'4) a'4 ( fis'4) \divisioMinima
 a'4 c''4 ( c''4 a'4 g'4) a'4. g'4 ( g'4) ~ g'4 ( d'4) \divisioMaior
 e'4 ( g'4) ~ g'4 ( fis'4) g'4 ( b'4 a'4 g'4 e'4.) a'4 ( g'4) a'4 ( g'4) ~ g'4 ( d'4) \divisioMinima \forceBreak

 g'4 ( g'4) ~ g'4 ( e'4 d'4) e'4 ( fis'4 e'4) ~ e'4 ( d'4) \finalis
 d'4 ( a'4 b'4) a'4 ( b'4) a'4 a'4 ( b'4) a'4 \divisioMinima
 a'4 ( b'\prall c''4 b'4 a'4 \forceBreak
) a'4 ( b'4 g'4.) a'4 ( g'4 fis'4) g'4 ( fis'4) \divisioMaior
 g'4 ( a'4) a'4 ( g'4) ~ g'4 ( fis'4.) g'4 ( a'4) c''4 ( c''4) ~ c''4 ( a'4 g'4.) c''4 ( c''4) d''4 ( c''4) ~ c''4 ( b'4 a'4) a'4 b'4 ( b'4 a'4) \divisioMaxima \forceBreak

 a'4 b'4 c''4 ( d''4 c''4) c''4 ( b'4) c''4 ( c''4) ~ c''4 ( b'4 a'4) a'4 ( g'4) g'4 ( a'4 g'4) ~ g'4 ( fis'4) \divisioMaior
 fis'4 ( g'4 a'4 g'4 fis'4) g'4 ( a'4) c''4 ( c''4) ~ c''4 ( a'4 g'4 \forceBreak
) c''4 ( c''4) d''4 ( c''4) ~ c''4 ( b'4 a'4) a'4 b'4 ( b'4 a'4) \divisioMaior
 a'4 a'4 ( e'4) g'4 ( fis'4) g'4 ( a'4) a'4 ( a'4 e'4) \divisioMinima
 a'4 ( b'4 a'4 g'4) c''4 ( c''4 c''4 \forceBreak
) a'4 ( b'4 a'4 e'4)  a'4 ( b'4 a'4 g'4) c''4 ( c''4 c''4) a'4 ( b'4 a'4) \divisioMinima
 a'4 c''4 ( d''4 c''4 a'4) c''4 ( c''4 a'4 g'4) c''4 ( c''4 a'4) \divisioMinima
 a'4 c''4 ( c''4 g'4 \forceBreak
) b'4 ( a'4 g'4) ~ g'4 ( d'4) \divisioMaior
 e'4 ( g'4) ~ g'4 ( fis'4) g'4 ( b'4 a'4 g'4 e'4.) a'4 ( g'4) a'4 ( g'4) ~ g'4 ( d'4) \divisioMinima
 g'4 ( g'4) ~ g'4 ( e'4 d'4) e'4 ( fis'4 e'4) ~ e'4 ( d'4) \finalis

}

altoMusic = {
d'4 ~ d'2*4/2 b2*4/2 d'2 ~ d'2 ~ d'2 ~ \divisioMinima
d'4 ~ d'2*4/2 b2*4/2 d'2 ~ d'2 ~ d'2 ~ \divisioMinima
d'4 e'2*4/2 ~ e'2*3/4 d'2 ~ d'2*3/2 ~ d'2*3/2 b2*11/4 e'2*3/2 d'2*3/2 ~ \divisioMinima
d'2 c'2*3/2 ~ c'2 a2 ~ a4 \finalis
r2*3/2 fis'2*3/2 g'2 fis'4 \divisioMinima
e'2*5/2 d'2*7/4 ~ d'2*3/2 ~ d'2 ~ \divisioMaior
d'2*3/2 ~ d'2*7/4 ~ d'2 c'2 e'2 d'2*3/4 e'2*3/2 ~ e'2*5/2 d'2*3/2 \divisioMaxima
a'2 g'2*3/2 ~ g'2 e'2 ~ e'2*3/2 d'2 ~ d'2 ~ d'2*3/2 ~ \divisioMaior
d'2*5/2 ~ d'2 c'2 e'2*3/2 ~ e'2*3/2 ~ e'2 ~ e'2*3/2 d'2*3/2 ~ \divisioMaior
d'4 e'2 d'2 ~ d'2 c'2*3/2 \divisioMinima
d'2*4/2 e'2*3/2 ~ e'2*3/2 ~ e'4 d'2*4/2 c'2*3/2 d'2*3/2 ~ \divisioMinima
d'4 e'2*4/2 ~ e'2 d'2 e'2*3/2 ~ \divisioMinima
e'4 ~ e'2*5/2 d'2*3/2 \divisioMaior
r4 d'2*3/2 b2*11/4 e'2*3/2 d'2*3/2 ~ \divisioMinima
d'2 c'2*3/2 ~ c'2 a2 ~ a4 \finalis
}

tenorMusic = {
r4 fis2*4/2 g2*4/2 a2 b2 fis2 \divisioMinima
r4 fis2*4/2 g2*4/2 a2 b2 fis2 ~ \divisioMinima
fis4 a2*4/2 e2*3/4 g2 ~ g2 ~ \divisioMaior
g4 a2*3/2 g2*11/4 e2*3/2 g2*3/2 \divisioMinima
e2 ~ e2*3/2 g2 ~ g2 fis4 \finalis
r2*9/2 \divisioMinima
c'2*5/2 b2*7/4 ~ b2*3/2 a2 \divisioMaior
b2*3/2 a2*7/4 e2 ~ e2 a2 b2*3/4 a2*3/2 g2*5/2 fis2*3/2 \divisioMaxima
d'2 e'2*3/2 d'2 c'2 a2*3/2 ~ a2 ~ a2 ~ a2*3/2 \divisioMaior
b2*5/2 e2 ~ e2 a2*3/2 g2*3/2 a2 g2*3/2 fis2*3/2 ~ \divisioMaior
fis4 a2 b2 e2 ~ e2*3/2 \divisioMinima
b2*4/2 a2*3/2 ~ a2*4/2 e2*4/2 ~ e2*3/2 fis2*3/2 ~ \divisioMinima
fis4 a2*4/2 ~ a2 b2 a2*3/2 ~ \divisioMinima
a4 g2*5/2 ~ g2*3/2 ~ \divisioMaior
g4 a2*3/2 g2*11/4 ~ g2*3/2 ~ g2*3/2 \divisioMinima
e2 ~ e2*3/2 g2 ~ g2 fis4 \finalis
}

bassMusic = {
d4 ~ d2*4/2 e2*4/2 d2 b,2 d2 ~ \divisioMinima
d4 ~ d2*4/2 e2*4/2 d2 b,2 d2 ~ \divisioMinima
d4 c2*4/2 ~ c2*3/4 ~ c2 b,2 ~ \divisioMaior
b,4 d2*3/2 e2*11/4 c2*3/2 b,2*3/2 ~ \divisioMinima
b,2 a,2*3/2 ~ a,2 d2 ~ d4 \finalis
d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'4 \divisioMinima
r2*17/4 g2*3/2 d2 \divisioMaior
b,2*3/2 ~ b,2*7/4 ~ b,2 a,2 ~ a,2 ~ a,2*3/4 ~ a,2*3/2 ~ a,2*5/2 d2*3/2 \divisioMaxima
fis2 e2*3/2 ~ e2 a2 g2*3/2 fis2 e2 d2*3/2 \divisioMaior
b,2*5/2 ~ b,2 a,2 c2*3/2 e2*3/2 a,2 ~ a,2*3/2 d2*3/2 ~ \divisioMaior
d4 c2 b,2 ~ b,2 a,2*3/2 ~ \divisioMinima
a,2*4/2 ~ a,2*3/2 c2*4/2 b,2*4/2 a,2*3/2 d2*3/2 ~ \divisioMinima
d4 c2*4/2 a,2 ~ a,2 ~ a,2*3/2 ~ \divisioMinima
a,4 e2*5/2 b,2*3/2 ~ \divisioMaior
b,4 d2*3/2 e2*11/4 c2*3/2 b,2*3/2 ~ \divisioMinima
b,2 a,2*3/2 ~ a,2 d2 ~ d4 \finalis
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
