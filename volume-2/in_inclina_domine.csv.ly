\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.206
%(volume.page)

global = {
 \key g \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Inclina Domine" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Inclina Domine"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Inclina Domine" }
    \line {}
  }
}

chantText = \lyricmode {
In -- clí -- na, 
\set stanza = " * " Dó -- _ mi -- ne, au -- rem tu -- am ad me, 
et ex -- _ áu -- di me: 
sal -- vum fac ser -- vum tu -- um, 
De -- us me -- us, spe -- rán -- tem in _ te: 
mi -- se -- ré -- re mi -- hi, Dó -- mi -- ne, 
quó -- ni -- _ am ad te cla -- má -- _ vi to -- _ ta _ di -- e. Ps. 
Læ -- tí -- fi -- ca á -- ni -- mam ser -- vi tu -- i: 
\set stanza = " * " 
quó -- ni -- am ad te, Dó -- mi -- ne, á -- ni -- mam me -- am le -- vá -- vi. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. _ }

chantMusic = {
\tieDown   d'4 ( e'4)  e'4 ( b'4 c''4) b'4 \divisioMinima
 b'4 ( d''4) ~ d''4 ( b'4) b'4 ( a'4) a'4 ( g'4) \divisioMinima
 a'4 ( \once \tweak #'font-size #-4 b' ) b'4  b'4 ( a'4 c''4 b'4) b'4 \forceBreak
  b'4 ( c''4 b'4) b'4 \divisioMaior
 b'4 g'4 ( a'4) b'4 ( g'4 a'4) e'4 e'4 ( fis'\prall g'4 e'4) e'4 \divisioMaxima
 e'4 ( g'4 a'4 b'4) a'4 a'4 \forceBreak
 a'4 ( \once \tweak #'font-size #-4 g' ) a'4 ( g'4) a'4 ( g'4 g'4) e'4 ( fis'4 e'4) \divisioMaior
 g'4 ( g'4 a'4) g'4  g'4 ( a'\prall b'4 c''4) b'4 \divisioMinima
 b'4 ( a'4) b'4 ( cis''\prall d''4) b'4 ( a'4) b'4 ( a'4) ~ a'4 ( g'4 a'4 \forceBreak
) a'4 ( g'4) \divisioMaxima
 g'4 a'4 ( b'4 a'4) b'4 g'4 ( a'4 g'4) a'4 fis'4 ( a'4) g'4 e'4 ( fis'4 e'4 d'4 e'4) e'4 ( d'4) \divisioMaior
 e'4 e'4 ( d'4) e'4 ( d'4 b4 \forceBreak
) b4 d'4 ( e'4 \once \tweak #'font-size #-4 g' ) g'4 g'4 ( fis'4) g'4 ( a'4) ~ a'4 ( g'4 e'4) e'4 \divisioMinima
 e'4 g'4 ( g'4 g'4) e'4. d'4 ( fis'4 d'4 e'4) e'4 ( fis'4 e'4) e'4 \finalis \forceBreak

 g'4 a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 ( d''4) b'4 b'4 ( a'4) a'4 ( b'4) \divisioMaxima
 a'4 ( g'4) a'4 ( b'4) b'4 b'4 b'4 \forceBreak
 b'4 b'4 b'4 \divisioMinima
 b'4 b'4 b'4 b'4 ( d''4 b'4) a'4 g'4 g'4 ( g'4 g'4) e'4 \finalis
  g'4 a'4 ( b'4) b'4 b'4 b'4 b'4 \forceBreak
 b'4 b'4 b'4 \divisioMinima
 b'4 b'4 b'4 ( d''4) b'4 b'4 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) \divisioMaxima
 a'4 ( g'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima \forceBreak

 b'4 b'4 ( d''4) b'4 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) \divisioMaxima
 a'4 ( g'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 ( d''4 b'4) a'4 g'4 g'4 ( g'4 g'4) e'4 ( d'4) e'4 ( g'4) \finalis

}

altoMusic = {
d'4 e'4 ~ e'2*3/2 ~ e'4 ~ \divisioMinima
e'4 d'2*3/2 fis'2 e'2 \divisioMinima
d'2*3/2 ~ d'2*5/2 e'2*3/2 d'4 ~ \divisioMaior
d'4 ~ d'2 e'2*3/2 ~ e'4 b2*4/2 ~ b4 \divisioMaxima
e'2 ~ e'2 ~ e'2 d'2*4/2 c'2*3/2 b2*3/2 \divisioMaior
d'2*4/2 e'2*4/2 d'4 ~ \divisioMinima
d'2 g'2*3/2 fis'2*3/2 ~ fis'2*4/2 d'2 \divisioMaxima
r4 d'2*3/2 ~ d'4 ~ d'2*3/2 ~ d'4 ~ d'2 ~ d'4 c'2*5/2 a2 \divisioMaior
b4 r2 b2 ~ b4 ~ b4 ~ b2*3/2 ~ b4 ~ b2*3/2 a2*4/2 b2 ~ b2*3/2 c'2*3/4 d'2 ~ d'2 b2*3/2 ~ b4 \finalis
r2*3/2 g'2 ~ g'2*3/2 fis'2*3/2 e'2 <fis' e'>4 d'4 \divisioMaxima
e'2 ~ e'2 ~ e'2*3/2 fis'2*3/2 \divisioMinima
e'2*3/2 d'2*4/2 ~ d'4 b2*3/2 ~ b4 r2*4/2 g'2*3/2 ~ g'2*3/2 ~ \divisioMinima
g'2 fis'2 ~ fis'2 e'2 <f' e'>4 d'4 \divisioMaxima
e'2 ~ e'2 ~ e'2*4/2 g'2*3/2 ~ \divisioMinima
g'4 fis'2*3/2 <e' e'>2 <f' e'>4 d'4 \divisioMaxima
e'2 ~ e'2 ~ e'2*4/2 d'2*3/2 ~ d'2 c'2*3/2 b2 ~ b2 \finalis
}

tenorMusic = {
b2 g2*3/2 ~ g4 ~ \divisioMinima
g4 fis2*3/2 ~ fis2 b2 \divisioMinima
a2*3/2 g2*5/2 ~ g2*3/2 ~ g4 ~ \divisioMaior
g4 ~ g2 ~ g2*3/2 a4 ~ a2*4/2 g4 \divisioMaxima
e2 ~ e2 ~ e2 ~ e2*4/2 ~ e2*3/2 ~ e2*3/2 \divisioMaior
d2*4/2 g2*4/2 ~ g4 ~ \divisioMinima
g2 ~ g2*3/2 b2*3/2 d'2*4/2 b2 \divisioMaxima
e4 fis2*3/2 g4 e2*3/2 fis4 d2 e4 g2*5/2 fis2 \divisioMaior
g4 a2 ~ a2*3/2 g4 fis2*3/2 e4 ~ e2*3/2 ~ e2*4/2 ~ e4 ~ \divisioMinima
e4 ~ e2*3/2 g2*3/4 fis2 a2 ~ a2*3/2 g4 \finalis
r2*15/2 \divisioMaxima
b2 ~ b2 ~ b2*3/2 ~ b2*3/2 \divisioMinima
g2*3/2 fis2*4/2 a4 ~ a2*3/2 g4 r4 fis'2*3/2 ~ fis'2*3/2 e'2*3/2 ~ \divisioMinima
e'2 ~ e'2 d'2 c'2 b2 ~ \divisioMaxima
b2 ~ b2 ~ b2*4/2 ~ b2*3/2 ~ \divisioMinima
b4 ~ b2*3/2 r2*4/2 \divisioMaxima
b2 fis2 g2*4/2 fis2*3/2 g2 a2*3/2 fis2 g2 \finalis
}

bassMusic = {
g2 e2*3/2 ~ e4 ~ \divisioMinima
e4 b,2*3/2 d2 e2 \divisioMinima
fis2*3/2 g2*5/2 c2*3/2 g,4 ~ \divisioMaior
g,4 b,2 c2*3/2 ~ c4 e2*4/2 ~ e4 \divisioMaxima
r2 d2 c2 b,2*4/2 a,2*3/2 g,2*3/2 \divisioMaior
b,2*4/2 c2*4/2 g4 \divisioMinima
fis2 e2*3/2 d2*3/2 ~ d2*4/2 g2 \divisioMaxima
r4 d2*3/2 b,4 ~ b,2*3/2 ~ b,4 ~ b,2 ~ b,4 a,2*5/2 d2 \divisioMaior
r4 fis2 e2*3/2 ~ e4 ~ e2*3/2 ~ e4 d2*3/2 c2*4/2 g,4 ~ \divisioMinima
g,4 e,2*3/2 a,2*3/4 b,2 ~ b,2 e2*3/2 ~ e4 \finalis
r4 fis'2 ~ fis'2 e'2*3/2 d'2*3/2 c'2 b2 \divisioMaxima
e2 fis2 g2*3/2 d2*3/2 \divisioMinima
e2*3/2 b,2*4/2 ~ b,4 e2*3/2 ~ e4 r2*20/2 \divisioMaxima
e2 fis2 g2*4/2 e2*3/2 ~ \divisioMinima
e4 d2*3/2 c2 b2 \divisioMaxima
e2 ~ e2 ~ e2*4/2 b,2*3/2 ~ b,2 e2*3/2 ~ e2 ~ e2 \finalis
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
        "I."
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
