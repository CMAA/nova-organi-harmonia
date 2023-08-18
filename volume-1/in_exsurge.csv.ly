\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.138
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Exsurge" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Exsurge"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Exsurge" }
    \line {}
  }
}

chantText = \lyricmode {
Ex -- súr -- ge, 
\set stanza = " * " qua -- re ob -- dór -- mis Dó -- mi -- ne? 
ex -- súr -- _ ge, et ne re -- pél -- las in fi -- nem: 
qua -- re fá -- ci -- em tu -- am a -- vér -- tis, 
o -- bli -- ví -- sce -- ris tri -- bu -- la -- ti -- ó -- nem no -- stram? 
Ad -- hǽ -- sit in ter -- ra ven -- ter no -- ster: 
ex -- súr -- ge, Dó -- mi -- ne, ád -- ju -- va nos, et lí -- be -- ra _ nos. Ps. 
De -- us, áu -- ri -- bus no -- stris au -- dí -- vi -- mus: 
\set stanza = " * " 
pa -- tres no -- stri an -- nun -- ti -- a -- vé -- runt no -- bis. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   e'4 e'4 ( g'4 fis'4) e'4 ( d'4 e'4) \divisioMinima
 g'4 ( g'4 a'4) g'4 g'4 g'4 ( \once \tweak #'font-size #-4 a' ) g'4 ( fis'4) a'4 ( b'4) b'4 b'4 \divisioMaior
 b'4 b'4 ( b'4 a'4) ~ a'4 ( \once \tweak #'font-size #-4 b' ) g'4 \divisioMinima \forceBreak

 g'4 ( \once \tweak #'font-size #-4 a' ) g'4 g'4 g'4 ( \once \tweak #'font-size #-4 a' ) g'4 a'4 ( g'4 fis'4 g'4) e'4 ( fis'4 e'4) e'4 \divisioMaxima
 e'4 ( g'4 a'4 b'4) a'4 a'4 ( b'4) g'4 e'4 ( \once \tweak #'font-size #-4 g' ) g'4 g'4 ( fis'4 g'4) e'4 \forceBreak
 d'4 ( \once \tweak #'font-size #-4 g' ) g'4 \divisioMaior
 g'4 a'4 b'4 ( d''4 b'4) a'4 ( b'4) b'4 \divisioMinima
 b'4 a'4 ( g'4) a'4 ( b'4) a'4 ( b'4) g'4 ( a'4 b'4) a'4 ( b'4) g'4 ( a'4 g'4) g'4 \divisioMaior \forceBreak

 a'4 a'4 ( b'4 a'4) fis'4 g'4 g'4 ( a'4 g'4) d'4 e'4 ( g'4) fis'4 ( \once \tweak #'font-size #-4 g' ) e'4 ( fis'4 e'4) e'4 \divisioMaxima
 g'4 a'4 ( \once \tweak #'font-size #-4 b' ) b'4 b'4 a'4 g'4 \divisioMinima \forceBreak

 b'4 a'4 a'4 ( b'4) g'4 \divisioMinima
 e'4 ( g'4) fis'4 ( a'4 b'4) g'4 ( fis'4) e'4 ( fis'4) g'4 ( fis'4 e'4 fis'4) fis'4 ( e'4) \finalis
 g'4 a'4 ( b'4) b'4 b'4 b'4 \forceBreak
 b'4 ( d''4) b'4 b'4 b'4 b'4 ( a'4) a'4 ( b'4) \divisioMaxima
 a'4 ( g'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 ( d''4 b'4) a'4 g'4 \forceBreak
 g'4 ( g'4 g'4) e'4 \finalis
  g'4 a'4 b'4 b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 b'4 b'4 d''4 b'4 b'4 b'4 \once \tweak #'font-size #-4 a'  a'4 b'4 \divisioMaxima
 a'4 g'4 a'4 b'4 b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 b'4 d''4 b'4 b'4 \once \tweak #'font-size #-4 a'  a'4 b'4 \divisioMaxima \forceBreak

 a'4 g'4 a'4 b'4 b'4 b'4 b'4 b'4 b'4 d''4 b'4 a'4 g'4 g'4 g'4 g'4 e'4 \finalis

}

altoMusic = {
r4 b2*3/2 a2 b4 \divisioMinima
e'2*5/2 ~ e'2 d'2 e'2 d'2 ~ \divisioMaior
d'4 ~ d'2 b2*3/2 ~ b4 \divisioMinima
c'2*4/2 d'2*3/2 b2 ~ b2 ~ b2*3/2 ~ b4 \divisioMaxima
d'2*5/2 b2*3/2 ~ b2*3/2 c'2*4/2 d'2 b4 \divisioMaior
e'2 fis'2*3/2 ~ fis'2*3/2 \divisioMinima
g'2*3/2 ~ g'2*4/2 ~ g'2*3/2 e'2 b2*3/2 ~ b4 ~ \divisioMaior
b4 ~ b2*5/2 ~ b2*4/2 a2*4/2 ~ a2*3/2 g4 \divisioMaxima
e'2*4/2 ~ e'2*3/2 ~ \divisioMinima
e'2 ~ e'2*3/2 ~ \divisioMinima
e'2 ~ e'4 d'2*4/2 ~ d'2 ~ d'2*4/2 b2 \finalis
g'4 ~ g'2*5/2 fis'2*5/2 e'2 fis'2 \divisioMaxima
e'2 ~ e'2*7/2 d'2*3/2 ~ d'2 b2*3/2 ~ b4 r2*4/2 a'2*3/2 g'2*3/2 ~ \divisioMinima
g'2 fis'2*4/2 e'2 fis'2 \divisioMaxima
e'2*4/2 ~ e'2*4/2 ~ e'2*3/2 ~ \divisioMinima
e'4 fis'2*3/2 e'2 d'2 \divisioMaxima
e'2 ~ e'2*3/2 d'2*3/2 ~ d'2*3/2 b2 ~ b2*3/2 ~ b4 \finalis
}

tenorMusic = {
r4 e2*3/2 fis2 g4 \divisioMinima
b2*5/2 ~ b2 a2 fis2 ~ fis2 ~ \divisioMaior
fis4 ~ fis2 ~ fis2*3/2 g4 ~ \divisioMinima
g2*4/2 ~ g2*3/2 fis2 a2 ~ a2*3/2 g4 ~ \divisioMaxima
g2*5/2 fis2*3/2 g2*3/2 ~ g2*4/2 fis2 e4 \divisioMaior
b2 ~ b2*3/2 cis'2 d'4 ~ \divisioMinima
d'2*3/2 c'2*4/2 b2*3/2 fis2 e2*3/2 g4 \divisioMaior
fis4 ~ fis2*5/2 e2*4/2 ~ e2*4/2 ~ e2*3/2 ~ e4 \divisioMaxima
r4 e2*3/2 g2*3/2 \divisioMinima
c'2 b2*3/2 ~ \divisioMinima
b2 ~ b2*5/2 ~ b2 a2*4/2 g2 \finalis
r4 e'2*5/2 d'2*5/2 c'2 d'2 \divisioMaxima
b2 g2*7/2 ~ g2*3/2 b2 a2*3/2 g4 r4 g'2*3/2 fis'2*3/2 e'2*3/2 ~ \divisioMinima
e'2 d'2*4/2 c'2 d'2 \divisioMaxima
b2*4/2 a2*4/2 g2*3/2 ~ \divisioMinima
g4 ~ g2*3/2 ~ g2 ~ g2 \divisioMaxima
b2 g2*3/2 fis2*3/2 g2*3/2 a2 ~ a2*3/2 g4 \finalis
}

bassMusic = {
r4 r2*6/2 \divisioMinima
e2*5/2 d2 ~ d2 c2 b,2 ~ \divisioMaior
b,4 d2 e2*3/2 ~ e4 \divisioMinima
a,2*4/2 b,2*3/2 d2 ~ d2 e2*3/2 ~ e4 \divisioMaxima
b,2*5/2 d2*3/2 e2*3/2 a,2*4/2 b,2 e4 ~ \divisioMaior
e2 d2*3/2 ~ d2 ~ d4 \divisioMinima
e2*3/2 ~ e2*4/2 ~ e2*3/2 ~ e2 ~ e2*3/2 ~ e4 ~ \divisioMaior
e4 d2*5/2 ~ d2*4/2 c2*4/2 e2*3/2 e,4 \divisioMaxima
e4 fis2*3/2 e2*3/2 \divisioMinima
c2 e2*3/2 \divisioMinima
g2 b2*5/2 b,2 ~ b,2*4/2 e2 \finalis
r2*13/2 b2 \divisioMaxima
e2 ~ e2*7/2 b,2*3/2 ~ b,2 e2*3/2 ~ e4 r4 e'2*3/2 ~ e'2*3/2 ~ e'2*8/2 x2*3/2 b2 \divisioMaxima
e2*4/2 ~ e2*4/2 ~ e2*3/2 ~ \divisioMinima
e4 d2*3/2 c2 b,2 \divisioMaxima
e2 ~ e2*3/2 b,2*3/2 ~ b,2*3/2 e2 ~ e2*3/2 ~ e4 \finalis
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
