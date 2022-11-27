\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.229
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Da pacem" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Da pacem"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Da pacem" }
    \line {}
  }
}

chantText = \lyricmode {
Da pa -- cem, 
\set stanza = " * " Dó -- _ mi -- ne, sus -- ti -- nén -- ti -- bus te, 
ut pro -- phe -- tæ tu -- _ i fi -- dé -- les in -- ve -- ni -- án -- tur: 
ex -- áu -- di pre -- ces ser -- vi tu -- i, 
et ple -- bis _ tu -- _ _ æ Is -- ra -- el. Ps. 
Læ -- tá -- tus sum in his quæ di -- cta sunt mi -- hi: 
\set stanza = " * " 
in do -- mum Dó -- mi -- ni í -- bi -- mus. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown    e'4 ( b'4 c''4)  b'4 ( c''4) b'4 \divisioMinima
 b'4 ( d''4) ~ d''4 ( b'4)  c''4 ( b'4 c''4 a'4) b'4 ( a'4) \divisioMinima
  b'4 ( c''4 a'4) g'4 g'4 ( a'4) a'4 \forceBreak
 a'4 ( b'4 g'4 fis'4 g'4) e'4 \divisioMaxima
 e'4 g'4 ( g'4) g'4 ( a'4) a'4  b'4 ( a'4) b'4 ( c''4 a'4) g'4 ( a'4 g'4) \divisioMinima
 g'4  g'4 ( a'\prall b'4 c''4) b'4 d''4 ( d''4) b'4 ( b'4 a'4 \forceBreak
) g'4 ( b'4) a'4 ( \once \tweak #'font-size #-4 b' ) g'4 \divisioMaxima
 g'4  b'4 ( c''4 \tiny b' a' 4) a'4  b'4 ( c''4 a'4) g'4 g'4 ( \once \tweak #'font-size #-4 a' ) a'4 a'4 ( g'4 a'\prall b'4 a'4 b'4) b'4 ( a'4) \divisioMaior
 g'4 ( b'4 a'4 \once \tweak #'font-size #-4 b'  \forceBreak
) b'4 b'4 ( a'4) g'4 ( g'4 e'4)  e'4 g'4 ( g'4) b'4 ( c''4 a'4) a'4 \divisioMinima
 g'4 ( a'4 g'4 e'4) e'4 ( fis'\prall g'4 e'4) e'4 \finalis
 g'4 a'4 ( b'4) b'4 b'4 b'4 \forceBreak
 b'4 b'4 b'4 ( d''4) b'4 b'4 b'4 ( a'4) a'4 ( b'4) \divisioMaxima
 a'4 ( g'4) a'4 ( b'4) b'4 b'4 b'4 ( d''4 b'4) a'4 g'4 g'4 ( g'4 g'4) e'4 \finalis \forceBreak

  g'4 a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 b'4 b'4 ( d''4) b'4 b'4 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) \divisioMaxima \forceBreak

 a'4 ( g'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 b'4 ( d''4) b'4 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) \divisioMaxima \forceBreak

 a'4 ( g'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 ( d''4 b'4) a'4 g'4 g'4 ( g'4 g'4) e'4 \finalis

}

altoMusic = {
e'2*3/2 ~ e'2*3/2 ~ \divisioMinima
e'4 d'2*3/2 e'2*4/2 d'2 e'2*4/2 d'2*3/2 ~ d'2 ~ d'2*3/2 b4 \divisioMaxima
r4 d'2 ~ d'2*3/2 ~ d'2 c'2*3/2 d'2*3/2 ~ \divisioMinima
d'4 g'2*5/2 fis'2 ~ fis'2*3/2 d'2 ~ d'2 ~ d'4 \divisioMaxima
r4 d'2*5/2 e'2*4/2 d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2 ~ \divisioMaior
d'2*4/2 ~ d'4 ~ d'2 b2*4/2 e'2 ~ e'2*4/2 \divisioMinima
c'2*4/2 b2*4/2 ~ b4 \finalis
r2*4/2 g'2 ~ g'2 fis'2 ~ fis'2 e'2 <f' e'>4 d'4 \divisioMaxima
e'2 ~ e'2 ~ e'4 g'4 fis'2*3/2 e'4 c'4 b2*3/2 ~ b4 r2*4/2 g'2*3/2 ~ g'2*3/2 ~ \divisioMinima
g'2 fis'2 ~ fis'2 e'2 <e' f'>4 d'4 \divisioMaxima
e'2 ~ e'2 ~ e'2*4/2 g'2*3/2 ~ \divisioMinima
g'4 fis'2*3/2 e'2 ~ e'4 d'4 \divisioMaxima
e'2 ~ e'2 d'2*3/2 e'4 fis'2*3/2 e'2 c'2*3/2 b4 \finalis
}

tenorMusic = {
r2*3/2 g2*3/2 ~ \divisioMinima
g4 ~ g2*3/2 ~ g2*4/2 fis2 e2*4/2 ~ e2*3/2 fis2 a2*3/2 g4 \divisioMaxima
r4 g2 e2*3/2 ~ e2 ~ e2*3/2 g2*3/2 ~ \divisioMinima
g4 ~ g2*5/2 b2 ~ b2*3/2 ~ b2 c'2 b4 \divisioMaxima
r4 g2*5/2 ~ g2*4/2 ~ g2*3/2 ~ g2*3/2 e2*3/2 fis2 \divisioMaior
g2*4/2 fis4 ~ fis2 g2*4/2 b2 a2*4/2 ~ \divisioMinima
a2*4/2 ~ a2*4/2 g4 \finalis
r2*16/2 \divisioMaxima
b2 ~ b2 ~ b2 ~ b2*3/2 ~ b4 a4 ~ a2*3/2 g4 r4 fis'2*3/2 ~ fis'2*3/2 e'2*5/2 ~ e'2 d'2 c'2 b2 ~ \divisioMaxima
b2 ~ b2 ~ b2*4/2 ~ b2*4/2 ~ b2*3/2 e2 fis2 \divisioMaxima
a2 c'2 b2*4/2 ~ b2*3/2 ~ b2 a2*3/2 g4 \finalis
}

bassMusic = {
e2*3/2 ~ e2*3/2 ~ \divisioMinima
e4 b,2*3/2 a,2*4/2 d2 c2*4/2 d2*3/2 ~ d2 ~ d2*3/2 e4 \divisioMaxima
r4 b,2 ~ b,2*3/2 a,2 ~ a,2*3/2 b,2*3/2 ~ \divisioMinima
b,4 e2*5/2 b,2 d2*3/2 g2 ~ g2 ~ g4 \divisioMaxima
r4 r2*5/2 c2*4/2 b,2*3/2 d2*3/2 ~ d2*3/2 ~ d2 \divisioMaior
b,2*4/2 ~ b,4 d2 e2*4/2 d2 c2*4/2 \divisioMinima
a,2*4/2 e2*4/2 ~ e4 \finalis
r4 fis'2*3/2 ~ fis'2 e'2 ~ e'2 d'2 c'2 b2 \divisioMaxima
e2 fis2 g2 d2*3/2 e2 ~ e2*3/2 ~ e4 r2*10/2 \divisioMinima
r2*10/2 \divisioMaxima
e2 fis2 g2*4/2 e2*3/2 ~ \divisioMinima
e4 d2*3/2 c2 b,2 \divisioMaxima
c2 ~ c2 g2*3/2 ~ g4 d2*3/2 e2 ~ e2*3/2 ~ e4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Introit"
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
