\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.266
%(volume.page)

global = {
 \key b \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Meditatio" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Meditatio"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Meditatio" }
    \line {}
  }
}

chantText = \lyricmode {
Me -- di -- tá -- _ ti -- o 
\set stanza = " * " cor -- dis me -- i _ 
in con -- spé -- _ ctu tu -- o sem -- per: _ _ 
Dó -- mi -- ne ad -- jú -- tor me -- us, et re -- dém -- ptor me -- us. _ Ps. 
Cœ -- li e -- nár -- rant gló -- ri -- am De -- i: 
\set stanza = " * " 
et ó -- pe -- ra má -- nu -- um e -- jus an -- nún -- ti -- at fir -- ma -- mén -- tum. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   b'4 b'4 ( g'4 a'4) b'4 ( a'4) d''4 ( cis''4 b'4) b'4 b'4 \divisioMinima
 b'4 b'4 b'4 ( d''4 b'4)  b'4 ( a'4) b'4 ( c''4 b'4) \divisioMaior \forceBreak

 g'4 g'4  b'4 ( g'4) b'4 ( c''4 a'4) g'4 g'4 g'4 g'4 fis'4 g'4 ( a'4 g'4 g'4) e'4 ( fis'4 e'4) \divisioMaxima
 g'4 b'4 a'4 b'4 \forceBreak
 g'4 a'4 e'4 e'4 ( fis'\prall g'4) \divisioMinima
 e'4 g'4 fis'4 ( a'4 b'4) a'4 ( b'4) g'4 ( a'4 g'4 fis'4) g'4 ( g'4 g'4) e'4 ( fis'4 e'4) \finalis \forceBreak

 g'4 a'4 ( b'4) b'4 b'4 b'4 b'4 ( d''4) b'4 b'4 b'4 ( a'4) a'4 ( b'4) \divisioMaxima
 a'4 ( g'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima \forceBreak

 b'4 b'4 b'4 b'4 ( d''4 b'4) a'4 g'4 g'4 ( a'4) b'4 \finalis
  g'4 a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima \forceBreak

 b'4 b'4 b'4 ( d''4) b'4 b'4 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) \divisioMaxima
 a'4 ( g'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 b'4 ( d''4 \forceBreak
) b'4 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) \divisioMaxima
 a'4 ( g'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 ( d''4 b'4) a'4 g'4 g'4 ( a'4) b'4 \finalis

}

altoMusic = {
r4 g'2*3/2 fis'2 ~ fis'2*4/2 ~ fis'4 ~ \divisioMinima
fis'2 e'2*3/2 ~ e'2 ~ e'2*3/2 \divisioMaior
g'2 e'2 ~ e'2*4/2 ~ e'2 d'2 ~ d'2*4/2 b2*3/2 \divisioMaxima
e'2 ~ e'2 d'2 ~ d'4 c'2*3/2 \divisioMinima
d'2 ~ d'4 ~ d'2 ~ d'2 ~ d'2*4/2 b2*3/2 ~ b2*3/2 \finalis
r4 fis'2*3/2 ~ fis'2 ~ fis'2*4/2 e'2 fis'2 \divisioMaxima
e'2 ~ e'2*4/2 ~ e'2*3/2 fis'2 ~ \divisioMinima
fis'4 e'2 d'2*3/2 ~ d'2 c'2 d'4 g'2*4/2 fis'2*3/2 ~ fis'2*3/2 ~ \divisioMinima
fis'2 ~ fis'2*4/2 e'2 fis'2 \divisioMaxima
e'2*4/2 ~ e'2*4/2 ~ e'2*3/2 ~ \divisioMinima
e'4 fis'2 ~ fis'4 e'2 d'2 ~ \divisioMaxima
d'2*4/2 ~ d'2*4/2 ~ d'2*3/2 ~ d'2 cis'2 d'4 \finalis
}

tenorMusic = {
r4 d'2*3/2 ~ d'2 e'2*4/2 d'4 ~ \divisioMinima
d'2 ~ d'2*3/2 c2 b2*3/2 ~ \divisioMaior
b2 g2 ~ g2*4/2 a2 ~ a2 g2*4/2 ~ g2*3/2 ~ \divisioMaxima
g2 fis2 g2 ~ g4 ~ g2*3/2 ~ \divisioMinima
g2 a4 fis2 g2 a2*4/2 ~ a2*3/2 g2*3/2 \finalis
e'2*4/2 d'2 ~ d'2*4/2 c'2 d'2 \divisioMaxima
b2 a2*4/2 g2*3/2 fis2 ~ \divisioMinima
fis4 ~ fis2 ~ fis2*3/2 g2 e2 fis4 e'2*4/2 ~ e'2*3/2 d'2*3/2 \divisioMinima
e'2 d'2*4/2 cis'2 d'2 \divisioMaxima
b2*4/2 a2*4/2 g2*3/2 ~ \divisioMinima
g4 b2 ~ b4 fis2 ~ fis2 ~ \divisioMaxima
fis2*4/2 g2*4/2 a2*3/2 b2 e2 fis4 \finalis
}

bassMusic = {
b4 ~ b2*3/2 ~ b2 ~ b2*4/2 ~ b4 \divisioMinima
a2 g2*3/2 ~ g2 ~ g2*3/2 \divisioMaior
e2 d2 c2*4/2 ~ c2 b,2 ~ b,2*4/2 e2*3/2 \divisioMaxima
c2 ~ c2 b,2 ~ b,4 a,2*3/2 \divisioMinima
b,2 ~ b,4 ~ b,2 ~ b,2 ~ b,2*4/2 e2*3/2 ~ e2*3/2 \finalis
r2*6/2 b2*4/2 ~ b2 ~ b2 \divisioMaxima
e2 ~ e2*4/2 ~ e2*3/2 d2 ~ \divisioMinima
d4 c2 b,2*3/2 ~ b,2 ~ b,2 ~ b,4 r2*10/2 \divisioMinima
cis'2 b2*4/2 ~ b2 ~ b2 \divisioMaxima
e2*4/2 ~ e2*4/2 ~ e2*3/2 ~ \divisioMinima
e4 d2 ~ d4 cis2 b,2 ~ \divisioMaxima
b,2*4/2 ~ b,2*4/2 ~ b,2*3/2 ~ b,2 ~ b,2 ~ b,4 \finalis
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
