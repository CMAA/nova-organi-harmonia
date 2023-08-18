\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.113
%(volume.page)

global = {
 \key d \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Benedictus Dominus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Benedictus Dominus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Benedictus Dominus" }
    \line {}
  }
}

chantText = \lyricmode {
Be -- ne -- dí -- _ ctus _ 
\set stanza = " * " Dó -- _ mi -- nus _ _ 
De -- us Is -- ra -- el, _ _ _ _ _ _ _ _ 
qui fa -- cit _ _ _ _ mi -- ra -- bí -- li -- a mag -- na so -- _ _ lus _ _ _ _ _ _ _ _ _ 
a sǽ -- _ cu -- _ lo. _ _ _ _ _ _ _ _ _ _ ℣. 
Su -- scí -- pi -- ant _ mon -- _ tes _ _ 
pa -- _ _ _ _ _ _ _ _ _ _ _ _ 
_ _ _ _ _ _ _ _ _ cem _ _ 
pó -- _ _ pu -- lo _ tu -- _ _ _ o, 
et col -- _ _ _ _ _ _ les _ _ _ _ 
\set stanza = " * " 
ju -- stí -- _ _ _ ti -- am. 
_ _ _ _ _ }

chantMusic = {
\tieDown   d'4 d'4 d'4 e'4 ( fis'4 e'4) d'4 e'4 ( e'4 d'4) \divisioMinima
 d'4 ( g'4) ~ g'4 ( a'4) e'4 d'4 ( c'4) d'4 ( e'4) ~ e'4 ( d'4) \divisioMaior
 fis'4 ( fis'4 g'4 e'4 \forceBreak
) g'4 ( a'4) a'4 ( fis'4 g'4) e'4 ( g'4 fis'4 d'4) d'4. c'4 ( e'4) g'4 ( fis'4) g'4 ( a'4 e'4) ~ e'4 ( d'4) e'4 ( d'4) g'4 ( g'4 e'4) g'4 ( d'4) ~ d'4 ( c'4) \divisioMaxima
 d'4 ( e'4 \forceBreak
) c'4 ( d'4) d'4 ( e'4) ~ e'4 ( d'4) e'4 ( e'4 d'4) e'4 ( g'4) ~ g'4 ( e'4 g'4) \divisioMinima
 d'4 ( e'4) d'4 c'4 ( e'4 g'4) g'4 ( a'4) a'4 ( fis'4 g'4) e'4 ( \once \tweak #'font-size #-4 fis' ) d'4 \divisioMinima \forceBreak

 c'4 ( d'4) e'4 ( d'4) e'4 ( g'4 fis'4) g'4 ( a'4 fis'4) g'4 ( e'4 d'4) \divisioMinima
 e'4 ( e'4 d'4) e'4 ( e'4) d'4 ( e'4) g'4 ( g'4) ~ g'4 ( e'4) g'4 ( g'4 fis'4 e'4) g'4 ( d'4) ~ d'4 ( c'4) \divisioMaxima \forceBreak

 c'4 ( e'4) e'4 ( g'4 a'4) c''4 ( c''4 a'4) a'4 ( g'4) ~ g'4 ( fis'4 d'4) e'4 g'4 ( g'4 g'4) a'4 ( b'4 g'4) ~ g'4 ( d'4) \divisioMinima
 g'4 ( g'4) b'4 ( a'4 g'4 fis'4 d'4 \forceBreak
) e'4 ( fis'\prall g'4 fis'4) a'4 ( g'4) ~ g'4 ( g'4 e'4 d'4) e'4 ( fis'4 e'4) ~ e'4 ( d'4) \finalis
 d'4 ( g'4) g'4 ( a'4) a'4 ( b'4 a'4 g'4) a'4 ( g'4) ~ g'4 ( \once \tweak #'font-size #-4 fis' ) g'4 ( a'4) g'4 ( a'4 g'4 a'4 \forceBreak
) a'4 ( c''4 a'4 b'\prall c''4 b'4) c''4 ( b'4 a'4) b'4 ( a'4) \divisioMaior
 a'4 b'4 ( fis'4) g'4 ( a'4) b'4 ( a'4) b'4 ( fis'4) g'4 ( a'4) \divisioMinima
 c''4 ( c''4 g'4) b'4 ( a'4) b'4 ( g'4 e'4 fis'\prall g'4 a'4. \forceBreak
) fis'4 ( a'4 g'4 fis'4 d'4) \divisioMinima
 e'4 ( g'4 fis'4 g'4.) e'4 ( g'4) fis'4 ( g'4 e'4 c'4 d'4) \divisioMaior
 a'4 ( b'4 a'4 c'4) e'4 ( d'4) e'4 ( fis'\prall g'4 a'4.) g'4 c''4 ( c''4 a'4) \divisioMinima \forceBreak

 c''4 ( b'4) d''4 ( c''4) d''4 ( c''4 a'4.) c''4 ( b'4) c''4 ( a'4 g'4 a'\prall b'4) a'4 ( b'4 g'4) a'4 ( g'4 fis'4) g'4 ( fis'4) \divisioMaxima
 a'4 ( b'4 a'4) c''4 ( c''4 a'4) b'4 ( a'4 d''4 \forceBreak
) c''4 ( b'4) b'4 ( d''4 c''4 c''4) a'4 ( b'4 a'4) \divisioMinima
 a'4 ( b'4.) g'4 ( c''4) b'4 ( c''4 a'4) b'4 ( b'4 a'4) a'4 \divisioMaxima
 fis'4 ( g'4 \once \tweak #'font-size #-4 a' ) a'4 b'4 ( fis'4) g'4 ( a'4.) b'4 ( a'4) b'4 ( fis'4) g'4 ( a'4) \divisioMinima \forceBreak

 c''4 ( c''4 a'4 g'4) a'4 ( fis'4) g'4 ( e'4 d'4) \divisioMinima
 e'4 ( d'4) fis'4 ( e'4 d'4 c'4) ~ c'4 ( a4) \divisioMaior
 d'4 d'4 ( e'4 fis'\prall g'4) a'4 ( g'4 d'4.) e'4 ( g'4 d'4) e'4 ( d'4 \forceBreak
) c'4 ( d'4) d'4 \divisioMaior
 d'4 ( a'4) c''4 ( a'4 b'\prall c''4 a'4) c''4 ( c''4 a'4) g'4 ( g'4 e'4.) d'4 ( fis'4 e'4 d'4) \finalis

}

altoMusic = {
r2*10/2 \divisioMinima
b4 ~ b2*4/2 r2*3/2 a2*3/2 \divisioMaior
d'2*4/2 ~ d'2 ~ d'2*3/2 ~ d'2*4/2 ~ d'2*3/4 c'2 b2*4/2 a2*5/2 b2*4/2 a2*3/2 \divisioMaxima
b2 c'2 b4 a2*3/2 b2*4/2 d'2*4/2 ~ \divisioMinima
d'2*4/2 b2 d'2 ~ d'2*3/2 ~ d'2 ~ d'4 \divisioMinima
c'2 b2 e'2*3/2 d'2*3/2 ~ d'2*3/2 ~ \divisioMinima
d'2 ~ d'4 b2*4/2 ~ b2*4/2 ~ b2*5/2 a2*3/2 \divisioMaxima
c'2 ~ c'4 d'2 c'2*3/2 ~ c'4 d'2*5/2 ~ d'2*3/2 ~ d'2 ~ d'2*3/2 \divisioMinima
b2 ~ b2*5/2 ~ b2*4/2 d'2 c'2*4/2 a2 ~ a2 ~ a4 \finalis
r2 g'2 fis'2*5/2 d'2*3/2 ~ d'2 e'2*4/2 g'2 e'2*4/2 ~ e'2*3/2 ~ e'2 \divisioMaior
r4 fis'2 ~ fis'2 e'2 fis'2*4/2 \divisioMinima
e'2*5/2 ~ e'2 ~ e'2*9/4 fis'2*3/2 d'2 \divisioMinima
b2*9/4 ~ b2 ~ b2 c'2*3/2 \divisioMaior
d'2*4/2 ~ d'2 b2 ~ b2*7/4 e'2*3/2 ~ \divisioMinima
e'2*4/2 ~ e'2*7/4 g'2*4/2 ~ g'2*3/2 e'2*3/2 ~ e'2*3/2 d'2 \divisioMaxima
fis'2*3/2 g'2*3/2 d'2*3/2 ~ d'2 g'2 ~ g'2 ~ g'2*3/2 \divisioMinima
fis'2*5/4 g'2 e'2*3/2 fis'2*3/2 ~ fis'4 \divisioMaxima
d'2*3/2 ~ d'2*3/2 ~ d'2*5/4 fis'2*3/2 ~ fis'4 d'2 \divisioMinima
g'2*3/2 ~ g'4 e'2 d'2*3/2 ~ \divisioMinima
d'2 ~ d'2*6/2 \divisioMaior
r4 a2*4/2 b2 a2*3/4 b2*3/2 ~ b2 a2 ~ a4 \divisioMaior
d'2 c'2*3/2 ~ c'2 e'2*3/2 d'2*7/4 a2*3/2 ~ a4 \finalis
}

tenorMusic = {
b2 ~ b4 ~ b2*4/2 a2*3/2 \divisioMinima
g4 ~ g2*4/2 ~ g2*3/2 fis2*3/2 \divisioMaior
r2*4/2 e2 fis2*3/2 g2*4/2 ~ g2*3/4 ~ g2 ~ g2*4/2 a2*5/2 g2*4/2 a2*3/2 \divisioMaxima
g2 ~ g2*3/2 fis2*3/2 e2*4/2 r2*4/2 \divisioMinima
g2*3/2 ~ g2*3/2 e2 fis2*3/2 g2 fis4 \divisioMinima
g2*4/2 ~ g2*3/2 ~ g2*3/2 b2*3/2 \divisioMinima
a2*3/2 ~ a2*4/2 g2 fis2 e2*3/2 ~ e2 ~ e2*3/2 ~ \divisioMaxima
e2 ~ e4 ~ e2 ~ e2*3/2 g4 ~ g2*5/2 e2*3/2 fis2 g2*3/2 \divisioMinima
r2 fis2*5/2 g2*4/2 ~ g2 ~ g2*4/2 ~ g2 ~ g2 fis4 \finalis
r2 d'2 ~ d'2*5/2 b2*3/2 ~ b2 ~ b2*4/2 c'2 d2*4/2 b2*3/2 c'2 \divisioMaior
d'2*3/2 ~ d'2 c'2 d'2*4/2 \divisioMinima
b2*3/2 c'2 b2 ~ b2*9/4 ~ b2*3/2 a2 ~ \divisioMinima
a2*3/2 g2*3/4 fis2 r2 a2 ~ a4 \divisioMaior
b2*4/2 a2 g2 ~ g2*7/4 ~ g2*3/2 \divisioMinima
a2*4/2 ~ a2*7/4 ~ a2*4/2 b2*3/2 ~ b2*3/2 ~ b2*3/2 ~ b2 ~ \divisioMaxima
b2*3/2 g2*3/2 a2*3/2 g2 e'2 ~ e'2 d'2*3/2 ~ \divisioMinima
d'2*5/4 e'2 c'2*3/2 d'2*3/2 ~ d'4 \divisioMaxima
r2*3/2 fis4 g2 e2*5/4 fis2*4/2 ~ fis2 \divisioMinima
e'2*4/2 e2 g'2*3/2 \divisioMinima
fis2 g2*3/2 ~ g2*3/2 \divisioMaior
r2*27/4 e2 d4 \divisioMaior
fis2 e2*3/2 a2 g2*3/2 ~ g2*7/4 ~ g2*3/2 fis4 \finalis
}

bassMusic = {
r2 a4 g2*4/2 fis2*3/2 ~ \divisioMinima
fis4 e2*4/2 ~ e2*3/2 fis2*3/2 \divisioMaior
b,2*4/2 ~ b,2 ~ b,2*3/2 ~ b,2*4/2 e2*3/4 ~ e2 ~ e2*4/2 fis2*5/2 e2*4/2 a2*3/2 \divisioMaxima
r2 r2*10/2 b,2*4/2 ~ \divisioMinima
b,2*3/2 e2*3/2 d2 ~ d2*3/2 ~ d2 ~ d4 \divisioMinima
e2*4/2 c2*3/2 b,2*3/2 ~ b,2*3/2 ~ \divisioMinima
b,2*3/2 e2*4/2 ~ e2 ~ e2 ~ e2*3/2 g,2 a2*3/2 \divisioMaxima
r2 c4 b,2 a,2*3/2 ~ a,4 b,2*5/2 ~ b,2*3/2 ~ b,2 ~ b,2*3/2 \divisioMinima
e2 ~ e2*5/2 ~ e2*4/2 b,2 a,2*4/2 c2 d2 ~ d4 \finalis
r2*12/2 fis2 e2*4/2 ~ e2 a2*4/2 ~ a2*3/2 ~ a2 \divisioMaior
r2*3/2 b2 ~ b2 ~ b2*4/2 \divisioMinima
a2*3/2 ~ a2 g2 fis2*9/4 e2*3/2 ~ e2 ~ \divisioMinima
e2*3/2 ~ e2*3/4 fis2 g2 ~ g2 fis4 ~ \divisioMaior
fis2*4/2 ~ fis2 ~ fis2 e2*7/4 a,2*3/2 ~ \divisioMinima
a,2*4/2 c2*7/4 e2*4/2 ~ e2*3/2 fis2*3/2 g2*3/2 b2 \divisioMaxima
d2*3/2 e2*3/2 fis2*3/2 g2 ~ g2 a2 d'2*3/2 \divisioMinima
r2*5/4 a2 ~ a2*3/2 d'2*3/2 d4 \divisioMaxima
b,2*3/2 ~ b,4 ~ b,2 d2*5/4 ~ d2*4/2 ~ d2 \divisioMinima
r2*4/2 c2 b,2*3/2 ~ \divisioMinima
b,2 ~ b,2*3/2 a,2*3/2 \divisioMaior
b,4 ~ b,2*4/2 e,2 fis,2*3/4 g,2*3/2 ~ g,2 ~ g,2 fis,4 ~ \divisioMaior
fis,2 a,2*3/2 ~ a,2 ~ a,2*3/2 b,2*7/4 d2*3/2 ~ d4 \finalis
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
