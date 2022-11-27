\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.234
%(volume.page)

global = {
 \key fis \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Salus populi" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Salus populi"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Salus populi" }
    \line {}
  }
}

chantText = \lyricmode {
Sa -- _ lus pó -- pu -- li 
\set stanza = " * " e -- go sum, 
di -- cit _ Dó -- mi -- nus: 
de qua -- cúm -- _ que tri -- bu -- la -- _ ti -- _ ó -- ne cla -- má -- ve -- rint ad me, 
ex -- áu -- di -- am e -- os: 
et e -- ro il -- ló -- rum Dó -- mi -- nus _ _ 
in per -- _ _ pé -- tu -- um. Ps. 
At -- tén -- di -- te pó -- pu -- le me -- us le -- gem me -- am: 
\set stanza = " * " 
in -- cli -- ná -- te au -- rem ve -- stram in ver -- ba o -- ris me -- i. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   g'4 ( g'4) ~ g'4 ( e'4) fis'4 ( g'4) a'4 a'4  a'4 ( c''4 b'4) \divisioMinima
 b'4 a'4 ( b'4 a'4 g'4 fis'4 g'4) g'4 ( fis'4) \divisioMaior
 fis'4 ( g'4 a'4 \forceBreak
) a'4 ( b'4 a'4 g'4) a'4 ( b'4 a'4) fis'4 fis'4 ( a'4 g'4 g'4) fis'4 ( fis'4 g'4) \divisioMaxima
 e'4 a'4 b'4 ( a'4) b'4 ( cis''4) b'4 b'4 ( cis''4 b'4) a'4 \forceBreak
 a'4 ( b'4) d''4 ( cis''4) d''4 ( d''4) ~ d''4 ( b'4) b'4 ( cis''4 b'4 a'4 b'4) b'4 ( a'4) \divisioMinima
 a'4 a'4 ( b'4) a'4 a'4 ( g'4 b'4) b'4 ( cis''\prall d''4 cis''4 b'4 a'4 b'4) a'4 \divisioMaior \forceBreak

 g'4 fis'4 ( g'4 a'\prall b'4) a'4 a'4 ( g'4 b'4) b'4 ( cis''\prall d''4 cis''4 b'4 a'4 b'4) b'4 ( a'4) \divisioMaxima
 a'4 b'4 a'4 a'4 g'4 ( a'4 b'4 \forceBreak
) a'4 a'4 a'4 ( fis'4 g'\prall a'4) a'4 ( b'4 g'4 fis'4) g'4 ( fis'4 e'4) fis'4 ( e'4) \divisioMaior
 e'4 ( fis'4 g'4 a'4) a'4 d''4 ( d''4 b'4) cis''4 ( a'4 b'\prall cis''4 b'4 a'4 \forceBreak
) fis'4 fis'4 ( a'4 g'4 g'4) g'4 ( fis'4) \finalis
 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 ( a'4) a'4 ( cis''4) cis''4 b'4 ( cis''4) b'4 \divisioMaxima \forceBreak

 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 b'4 b'4 a'4 ( g'4) a'4 ( b'4) a'4 fis'4 \finalis \forceBreak

  b'4 ( a'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 b'4 b'4 ( a'4) a'4 ( cis''4) cis''4 b'4 ( cis''4) b'4 \divisioMaxima \forceBreak

 b'4 ( a'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 ( a'4) a'4 ( cis''4) cis''4 b'4 ( cis''4) b'4 \divisioMaxima \forceBreak

 b'4 ( a'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 a'4 ( g'4) a'4 ( b'4) a'4 fis'4 \finalis

}

altoMusic = {
b2 ~ b2 ~ b2 d'2 ~ d'2*4/2 ~ d'2*6/2 ~ d'2 ~ \divisioMaior
d'2*3/2 ~ d'2*4/2 ~ d'2*3/2 ~ d'4 ~ d'2*4/2 b2 ~ b4 \divisioMaxima
e'2 d'2*5/2 e'2*4/2 fis'2*4/2 ~ fis'2 a'2 g'2*5/2 e'2 ~ \divisioMinima
e'4 d'2*3/2 e'2*3/2 fis'2*5/2 ~ fis'2 ~ fis'4 \divisioMaior
r4 d'2*5/2 ~ d'2*3/2 ~ d'2*7/2 ~ d'4 cis'4 \divisioMaxima
r4 d'2*3/2 ~ d'2*3/2 ~ d'4 e'4 d'2*4/2 ~ d'2*4/2 b2*3/2 ~ b2 \divisioMaior
e'2*5/2 d'2*3/2 e'2*3/2 ~ e'2*3/2 d'4 ~ d'2*4/2 ~ d'2 \finalis
fis'2 e'2 <f' e'>2 <f' d'>2*4/2 fis'2 ~ fis'2*3/2 ~ fis'2 ~ fis'4 ~ \divisioMaxima
fis'2 e'2 ~ e'2 d'2 ~ d'2 ~ \divisioMinima
d'4 fis'2 e'2 d'2 cis'2 fis'2 e'2*3/2 <f' e'>2*3/2 <f' d'>2*3/2 ~ \divisioMinima
<f' d'>2 fis'2 ~ fis'2*3/2 ~ fis'2 ~ fis'4 ~ \divisioMaxima
fis'2 e'2 ~ e'2*4/2 d'2*3/2 \divisioMinima
cis'2 e'2*3/2 ~ e'2 d'4 ~ \divisioMaxima
d'2 e'2 fis'2*3/2 d'2 ~ d'2 cis'2 ~ cis'4 d'4 \finalis
}

tenorMusic = {
r2 a2 g2 fis2 g2*4/2 ~ g2*6/2 a2 ~ \divisioMaior
a2*3/2 g2*4/2 fis2*3/2 a4 ~ a2*4/2 ~ a2 g4 \divisioMaxima
a2 ~ a2*5/2 ~ a2*4/2 ~ a2*4/2 b2 ~ b2 d'2*5/2 cis'2 ~ \divisioMinima
cis'4 b2*3/2 ~ b2*3/2 ~ b2*5/2 d'2 cis'4 \divisioMaior
b4 ~ b2*5/2 ~ b2*3/2 g2*7/2 e2 \divisioMaxima
r4 fis2*3/2 e2*3/2 fis2 ~ fis2*4/2 b2*4/2 a2*3/2 g2 \divisioMaior
b2*5/2 a2*3/2 ~ a2*3/2 ~ a2*3/2 ~ a4 b2*4/2 ~ b2 \finalis
r2*10/2 cis'2 e'2*3/2 ~ e'2 d'4 \divisioMaxima
fis2 ~ fis2 ~ fis2 g2 fis2 ~ \divisioMinima
fis4 ~ fis2 b2 ~ b2 ~ b4 a4 d'2 cis'2*3/2 r2*3/2 b2*3/2 ~ \divisioMinima
b2 cis'2 e'2*3/2 ~ e'2 d'4 \divisioMaxima
fis2 ~ fis2 ~ fis2*4/2 ~ fis2*3/2 ~ \divisioMinima
fis2 ~ fis2*3/2 ~ fis2 ~ fis4 ~ \divisioMaxima
fis2 ~ fis2 ~ fis2*3/2 g2 ~ g2 ~ g2 fis2 \finalis
}

bassMusic = {
e2 ~ e2 ~ e2 d2 g2*3/2 ~ \divisioMinima
g4 b,2*6/2 d2 \divisioMaior
b,2*3/2 ~ b,2*4/2 d2*3/2 ~ d4 b,2*4/2 e2 ~ e4 \divisioMaxima
cis2 b,2*5/2 cis2*4/2 d2*4/2 ~ d2 fis2 e2*5/2 a2 ~ \divisioMinima
a4 fis2*3/2 e2*3/2 d2*5/2 ~ d2 fis4 \divisioMaior
r2*6/2 b,2*3/2 e2*7/2 a,2 \divisioMaxima
r4 d2*3/2 ~ d2*3/2 cis2 b,2*4/2 ~ b,2*4/2 e2*3/2 ~ e2 \divisioMaior
g2*5/2 fis2*3/2 a2*3/2 fis2*3/2 ~ fis4 e2*4/2 b,2 \finalis
d'2 cis'2 b2 ~ b2*4/2 fis2 ~ fis2*3/2 b2 ~ b4 \divisioMaxima
d2 cis2 b,2 ~ b,2 ~ b,2 ~ \divisioMinima
b,4 d2 e2 ~ e2 fis2 r2*5/2 b2*3/2 ~ b2*3/2 \divisioMinima
r2 fis2 ~ fis2*3/2 b2 ~ b4 \divisioMaxima
d2 cis2 b,2*4/2 ~ b,2*3/2 \divisioMinima
fis,2 ~ fis,2*3/2 b,2 ~ b,4 ~ \divisioMaxima
b,2 cis2 d2*3/2 g2 e2 ~ e2 b,2 \finalis
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
        "IV"
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
