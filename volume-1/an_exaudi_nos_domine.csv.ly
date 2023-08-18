\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.152
%(volume.page)

global = {
 \key d \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Exaudi nos Domine" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Exaudi nos Domine"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Exaudi nos Domine" }
    \line {}
  }
}

chantText = \lyricmode {
Ex -- áu -- di nos 
\set stanza = " * " Dó -- mi -- ne, 
quó -- ni -- am be -- ní -- gna est mi -- se -- ri -- cór -- _ di -- a tu -- a: 
se -- cún -- dum mul -- ti -- tú -- _ di -- nem mi -- se -- ra -- ti -- ó -- num tu -- á -- rum 
ré -- spi -- ce nos, _ Dó -- mi -- ne. Ps. 
Sal -- vum me fac De -- us: quó -- ni -- am in -- tra -- vé -- runt a -- quæ 
\set stanza = " * " 
us -- que ad á -- ni -- mam me -- am. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   d'4 ( g'4) g'4 ( a'4) a'4 ( b'4 a'4 g'4) g'4 ( a'4 e'4)  g'4 g'4 ( b'4 a'4) a'4 \divisioMaior
 a'4 c''4 c''4 c''4 ( c''4 c''4 \forceBreak
) a'4 c''4 c''4 ( c''4 c''4) \divisioMinima
 a'4 fis'4 a'4 a'4 c''4 ( c''4 c''4) a'4 ( g'4) g'4 g'4 ( b'4 a'4) a'4 \divisioMaxima
 a'4 d'4 a'4 \forceBreak
 g'4 a'4 a'4 c''4 ( c''4 c''4) a'4 ( g'4) g'4 \divisioMinima
 g'4 g'4 g'4 g'4 g'4 ( b'4 a'4) g'4 g'4 ( g'4 g'4) e'4 ( g'4 a'4) g'4 ( a'4 g'4 fis'4) \divisioMaior \forceBreak

 fis'4 ( a'4 b'4) a'4 ( g'4) g'4 ( fis'4) g'4 ( g'4) ~ g'4 ( e'4 a'4) g'4 ( a'4 g'4 e'4) e'4 ( d'4) d'4 \finalis
 d'4 ( g'4 fis'4) g'4 ( a'4) a'4 a'4 a'4 a'4 \divisioMinima \forceBreak

 a'4 a'4 a'4 a'4 a'4 a'4 ( c''4) b'4 b'4 ( a'4) a'4 ( b'4) \divisioMaxima
 a'4 ( fis'4) g'4 ( a'4) a'4 a'4 ( b'\prall c''4) a'4 g'4 \forceBreak
 g'4 ( g'4 g'4) e'4 ( d'4) \finalis
  d'4 g'4 fis'4 g'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 c''4 b'4 b'4 \forceBreak
 b'4 \once \tweak #'font-size #-4 a'  a'4 b'4 \divisioMaxima
 a'4 fis'4 g'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 c''4 b'4 b'4 \once \tweak #'font-size #-4 a'  a'4 b'4 \divisioMaxima \forceBreak

 a'4 fis'4 g'4 a'4 a'4 a'4 a'4 a'4 a'4 b'\prall c''4 a'4 g'4 g'4 g'4 g'4 e'4 d'4 \finalis

}

altoMusic = {
d'2 e'2 ~ e'2*4/2 ~ e'2*3/2 ~ e'4 ~ e'2*3/2 fis'4 \divisioMaior
e'2*3/2 ~ e'2*3/2 ~ e'2 ~ e'2*3/2 ~ \divisioMinima
e'2*3/2 ~ e'4 g'2*3/2 e'2*3/2 d'2*3/2 ~ d'4 ~ \divisioMaxima
d'2*3/2 ~ d'2 ~ d'4 c'2*5/2 d'4 ~ \divisioMinima
d'2*4/2 e'2*4/2 ~ e'2*3/2 ~ e'4 ~ e'2 ~ e'2*4/2 ~ \divisioMaior
e'4 d'2 e'2 ~ e'2 ~ e'2 ~ e'2*3/2 c'2*4/2 a2 ~ a4 \finalis
d'2*6/2 e'2*3/2 ~ \divisioMinima
e'2*5/2 ~ e'2*3/2 fis'2 ~ fis'2 \divisioMaxima
d'2*4/2 ~ d'4 c'2*5/2 d'2*3/2 a2 d’2*6/2 e’2*3/2 ~ e’2*5/2 ~ e’2*4/2 fis’2 ~ fis’2 \divisioMaxima
d’2*4/2 ~ d’2 ~ d’2 e’2*3/2 ~ \divisioMinima
e’4 c’2*3/2 e’2 d’2 ~ \divisioMaxima
d’2*4/2 ~ d’2 ~ d’2 c’2*3/2 d’2 ~ d’2*3/2 a2 \finalis
}

tenorMusic = {
r2 c'2 ~ c'2*4/2 b2*3/2 d'4 ~ d'2*3/2 ~ d'4 ~ \divisioMaior
d'2*3/2 c'2*3/2 b2 a2*3/2 ~ \divisioMinima
a2*3/2 ~ a4 ~ a2*3/2 b2*3/2 e2*3/2 fis4 ~ \divisioMaxima
fis2*3/2 ~ fis2 ~ fis4 g2*5/2 ~ g4 ~ \divisioMinima
g2*4/2 ~ g2*4/2 a2*3/2 b4 ~ b2 c'2*4/2 \divisioMaior
b2*3/2 ~ b2 ~ b2 ~ b2 a2*3/2 ~ a2*4/2 g2 fis4 \finalis
b2*6/2 c'2*3/2 ~ \divisioMinima
c'2*5/2 ~ c'2*3/2 d'2 ~ d'2 \divisioMaxima
fis2*4/2 e4 ~ e2*5/2 g2*3/2 ~ g4 fis4 b2*6/2 c’2*3/2 ~ c’2*3/2 ~ \divisioMinima
c’2 ~ c’2*6/2 d’2 \divisioMaxima
fis2*4/2 e2 fis2 e2*4/2 ~ e2*3/2 fis2 ~ fis2 \divisioMaxima
g2*4/2 ~ g2 fis2 e2*3/2 ~ e2 g2*3/2 ~ g4 fis4 \finalis
}

bassMusic = {
b2 ~ b2 a2*4/2 e2*3/2 ~ e4 d2*3/2 ~ d4 \divisioMaior
a2*3/2 ~ a2*3/2 ~ a2 ~ a2*3/2 \divisioMinima
g2*3/2 fis4 e2*3/2 d2*3/2 ~ d2*3/2 ~ d4 \divisioMaxima
r2*3/2 e2 d4 a,2*5/2 b,4 ~ \divisioMinima
b,2*4/2 c2*4/2 ~ c2*3/2 ~ c4 e2 a2*4/2 \divisioMaior
r2*3/2 e2 d2 c2 ~ c2*3/2 a,2*4/2 d2 ~ d4 \finalis
r2*9/2 \divisioMinima
b2*5/2 a2*3/2 d'2 b2 \divisioMaxima
d2*4/2 ~ d4 a,2*5/2 b,2*3/2 d2 r2*9/2 b2*3/2 ~ \divisioMinima
b2 a2*4/2 d’2 b2 \divisioMaxima
d2*4/2 ~ d2 ~ d2 c2*3/2 ~ \divisioMinima
c4 a,2*3/2 c2 b,2 ~ \divisioMaxima
b,2*4/2 d2 ~ d2 a,2*3/2 b,2 ~ b,2*3/2 d2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Antiphon"
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
