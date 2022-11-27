\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.145
%(volume.page)

global = {
 \key g \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Esto mihi" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Esto mihi"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Esto mihi" }
    \line {}
  }
}

chantText = \lyricmode {
E -- sto mi -- hi 
\set stanza = " * " in De -- um pro -- te -- ctó -- rem, 
et in lo -- cum re -- fú -- gi -- i, ut sal -- vum me fá -- ci -- as: 
quó -- ni -- am fir -- ma -- mén -- tum me -- um, et re -- fú -- gi -- um me -- um es tu: 
et pro -- pter no -- men tu -- um dux mi -- hi e -- ris, 
et e -- nú -- _ tri -- es me. Ps. 
In te Dó -- mi -- ne spe -- rá -- vi, non con -- fún -- dar in æ -- tér -- num: 
\set stanza = " * " 
in ju -- stí -- ti -- a tu -- a lí -- be -- ra me. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   g'4 e'4 ( g'4) g'4 e'4 \divisioMinima
 e'4 ( fis'\prall g'4) g'4 ( g'4 fis'4 d'4) g'4 ( g'4) a'4 ( g'4 a'4) b'4 ( a'4 b'4) g'4 ( a'4 g'4) g'4 \divisioMaior \forceBreak

 g'4 g'4 g'4 ( a'4) g'4 ( fis'4) e'4 ( fis'\prall g'4) g'4 g'4 ( fis'4 d'4) d'4 \divisioMinima
 g'4 ( g'4 fis'4) a'4 a'4 a'4 ( b'4 g'4) g'4 g'4 ( a'4 g'4) g'4 \divisioMaxima \forceBreak

 g'4 a'4 ( b'4) b'4 b'4 b'4 b'4 a'4 a'4 ( b'4 a'4 g'4) g'4 \divisioMinima
 g'4 g'4 g'4 ( a'4) a'4 a'4 ( b'4) g'4 ( g'4) g'4 \forceBreak
 g'4 ( e'4 fis'4 d'4) d'4 \divisioMaxima
 d'4 g'4 ( g'4) a'4 ( \once \tweak #'font-size #-4 b' ) b'4 a'4 ( \once \tweak #'font-size #-4 g' ) a'4 ( b'4 a'4) a'4 \divisioMinima
 b'4 ( d''4) d''4 ( d''4 d''4) b'4 ( d''4 a'4) a'4 ( b'4 g'4) g'4 \divisioMaior \forceBreak

 g'4 ( g'4 fis'4) e'4 a'4 ( fis'4) a'4 ( b'4) g'4 ( g'4) g'4 ( a'4 g'4) g'4 \finalis
 g'4 ( a'4) a'4 ( g'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \forceBreak
 b'4 a'4  c''4 b'4 a'4 g'4 \divisioMaxima
 g'4 a'4 ( b'4) b'4 ( d''4) a'4 g'4 g'4 a'4 g'4 ( e'4) g'4 a'4 g'4 \finalis \forceBreak

  g'4 a'4 a'4 g'4 a'4 b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 a'4  c''4 b'4 b'4 a'4 g'4 \divisioMaxima
 g'4 a'4 b'4 \forceBreak
 b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 a'4  c''4 b'4 a'4 g'4 \divisioMaxima
 g'4 a'4 b'4 b'4 d''4 a'4 g'4 g'4 a'4 g'4 e'4 g'4 a'4 g'4 \finalis

}

altoMusic = {
b4 c'2 b2 ~ \divisioMinima
b2*3/2 c'2*4/2 d'2 e'2*3/2 fis'2*3/2 b2*3/2 ~ b4 ~ \divisioMaior
b2 d'2 ~ d'2 b2*3/2 c'4 d'2*3/2 ~ d'4 ~ \divisioMinima
d'2*3/2 e'2 ~ e'2*3/2 d'4 c'2*3/2 d'4 \divisioMaxima
e'2*4/2 ~ e'2 ~ e'2 d'2*4/2 ~ d'4 \divisioMinima
c'2 d'2 ~ d'4 b2 ~ b2*3/2 a2 ~ a2 ~ a4 \divisioMaxima
b4 ~ b2 e'2 fis'4 b2 e'2*3/2 d'4 \divisioMinima
<f' d'>2 <g' d'>2*3/2 <f' d'>2*3/2 fis'2*3/2 e'4 ~ \divisioMaior
e'2*4/2 ~ e'2 ~ e'2 d'2 c'2*3/2 b4 \finalis
g'2 fis'2 ~ fis'2*5/2 g'2*4/2 e'2 ~ e'2 d'2 \divisioMaxima
e'4 ~ e'2 d'2*4/2 ~ d'2 a2*3/2 b2 g'2 fis'2*4/2 ~ fis'2*3/2 g'2*3/2 \divisioMinima
e'2 ~ e'2*3/2 d'2 \divisioMaxima
b2*3/2 ~ b2*4/2 d'2*3/2 ~ \divisioMinima
d'4 e'2 d'2 \divisioMaxima
e'4 ~ e'2 fis'2 e'2 b2 a2*3/2 b2 \finalis
}

tenorMusic = {
g2*3/2 ~ g2 ~ \divisioMinima
g2*3/2 ~ g2*4/2 ~ g2 ~ g2*3/2 fis2*3/2 e2*3/2 g4 \divisioMaior
b2 ~ b2 a2 ~ a2*4/2 ~ a2*3/2 fis4 \divisioMinima
e2*3/2 ~ e2 c'2*3/2 ~ c'4 a2*3/2 b4 ~ \divisioMaxima
b4 g2*3/2 ~ g2 ~ g2 ~ g2*4/2 e4 ~ \divisioMinima
e2 d2 fis4 ~ fis2 e2*3/2 ~ e2 d2 fis4 \divisioMaxima
g4 ~ g2 ~ g2 fis4 e2 g2*3/2 fis4 \divisioMinima
r2*8/2 b2*3/2 ~ b4 ~ \divisioMaior
b2*4/2 a2 e2 g2 ~ g2*3/2 ~ g4 \finalis
r2 d'2 ~ d'2*5/2 ~ d'2*4/2 c'2 a2 b2 ~ \divisioMaxima
b4 g2 ~ g2*4/2 e2 ~ e2*3/2 d2 r2 d'2*4/2 ~ d'2*3/2 ~ d'2*3/2 \divisioMinima
c'2 ~ c'2*3/2 b2 \divisioMaxima
r4 fis2 g2*4/2 ~ g2*3/2 \divisioMinima
r4 g2 ~ g2 \divisioMaxima
b4 g2 fis2 e2 ~ e2 ~ e2*3/2 d2 \finalis
}

bassMusic = {
e2*3/2 ~ e2 \divisioMinima
g,2*3/2 a,2*4/2 b,2 c2*3/2 d2*3/2 e2*3/2 ~ e4 ~ \divisioMaior
e2 b,2 ~ b,2 e2*4/2 d2*3/2 ~ d4 \divisioMinima
r2*3/2 c2 ~ c2*3/2 g4 ~ g2*3/2 ~ g4 \divisioMaxima
e4 ~ e2*3/2 d2 c2 b,2*4/2 ~ b,4 \divisioMinima
a,2 b,2 ~ b,4 d2 e2*3/2 c2 d2 ~ d4 \divisioMaxima
r4 fis2 e2 d4 ~ d2 ~ d2*3/2 ~ d4 \divisioMinima
b,2*5/2 d2*3/2 e2*3/2 ~ e4 \divisioMaior
d2*4/2 c2 ~ c2 b,2 a,2*3/2 g,4 \finalis
r2*4/2 b2*5/2 ~ b2*4/2 c'2 r2*4/2 \divisioMaxima
e4 ~ e2 b,2*4/2 ~ b,2 c2*3/2 g,2 r2*6/2 b2*3/2 ~ b2*3/2 \divisioMinima
r2 a2*3/2 b2 \divisioMaxima
e4 ~ e2 ~ e2*4/2 b,2*3/2 ~ \divisioMinima
b,4 a,2 b,2 \divisioMaxima
e4 ~ e2 d2 e2 r2 c2*3/2 g,2 \finalis
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
        "VI"
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
