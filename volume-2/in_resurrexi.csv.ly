\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.1
%(volume.page)

global = {
 \key g \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Resurrexi" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Resurrexi"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Resurrexi" }
    \line {}
  }
}

chantText = \lyricmode {
Re -- sur -- re -- xi, _ 
\set stanza = " * " 
et ad -- huc te -- cum sum, _ al -- _ le -- lú -- ia: 
po -- su -- í -- sti su -- _ per _ me ma -- num tu -- am, 
al -- le -- lú -- ia: _ 
mi -- rá -- _ bi -- lis fa -- _ cta est sci -- én -- ti -- a tu -- a, 
al -- le -- lú -- ia, _ al -- _ le -- lú -- ia. Ps. 
Dó -- mi -- ne pro -- bá -- sti me, et co -- gno -- ví -- sti me: 
\set stanza = " * " 
tu co -- gno -- ví -- sti ses -- si -- ó -- nem me -- am, et re -- sur -- re -- cti -- ó -- nem me -- am. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   e'4 e'4 ( g'4 e'4) g'4 g'4 ( g'4 g'4) e'4 ( fis'4 e'4) \divisioMaior
 g'4 ( fis'4) g'4 ( a'4) a'4 a'4 g'4 fis'4 ( g'4) a'4 ( g'4 a'4) \divisioMinima \forceBreak

 a'4. g'4 ( g'4 g'4) e'4 ( g'4 fis'4) fis'4 ( a'4 g'4 g'4) g'4 ( fis'4) \divisioMaxima
 g'4 ( a'4 g'4) g'4 ( g'4) g'4 ( a'\prall b'4) a'4 ( b'4 a'4) a'4. g'4 ( g'4 g'4) e'4 ( fis'\prall g'4 \forceBreak
) a'4 ( g'4) g'4 \divisioMinima
 g'4 ( g'4 g'4) e'4 ( fis'\prall g'4) g'4 ( a'4 g'4 fis'4) g'4 \divisioMaior
 g'4 ( g'4 g'4) e'4 ( g'4 fis'4) g'4 ( a'4 g'4 g'4) e'4 g'4 ( g'4 e'4 g'4) \divisioMaxima \forceBreak

 d'4 d'4 ( e'4) g'4 ( fis'4 g'4) g'4 g'4 g'4 ( g'4) ~ g'4 ( a'4) e'4 ( fis'4 e'4 d'4 e'4) e'4 ( d'4) \divisioMinima
 fis'4 ( g'\prall a'4) a'4 ( b'4 a'4) g'4 g'4 ( g'4 g'4 \forceBreak
) a'4 ( g'4 b'4 a'4) a'4 \divisioMaior
 a'4 ( \once \tweak #'font-size #-4 g' ) fis'4 ( g'4 a'4) a'4 ( \once \tweak #'font-size #-4 g' ) fis'4 g'4 ( a'4 g'4 a'4) \divisioMinima
 a'4. g'4 ( g'4 g'4) e'4 ( g'4 fis'4) fis'4 ( a'4 g'4 g'4) g'4 ( fis'4) \finalis \forceBreak

 b'4 ( a'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 ( a'4) a'4 ( cis''4) cis''4 b'4 ( cis''4) b'4 b'4 \divisioMaxima
 b'4 ( a'4) a'4 ( b'4 \forceBreak
) b'4 b'4 b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 b'4 b'4 b'4 b'4 a'4 ( g'4) a'4 ( b'4 \forceBreak
) a'4 fis'4 \finalis
  b'4 ( a'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 b'4 b'4 ( a'4) a'4 ( cis''4) cis''4 \forceBreak
 b'4 ( cis''4) b'4 \divisioMaxima
 b'4 ( a'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 ( a'4) a'4 ( cis''4) cis''4 \forceBreak
 b'4 ( cis''4) b'4 \divisioMaxima
 b'4 ( a'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 a'4 ( g'4) a'4 ( b'4) a'4 fis'4 ( a'4 g'4 g'4) \finalis

}

altoMusic = {
r4 b2*4/2 ~ b2*3/2 ~ b2*3/2 \divisioMaior
e'2 ~ e'2*3/2 ~ e'2 ~ e'2 d'2*3/2 \divisioMinima
e'2*3/4 d'2*3/2 ~ d'2*3/2 ~ d'2*4/2 ~ d'2 \divisioMaxima
b2*3/2 ~ b2 ~ b2*3/2 ~ b2*3/2 ~ b2*3/4 ~ b2*3/2 a2*3/2 d'2 ~ d'4 \divisioMinima
c'2*3/2 a2*3/2 d'2*4/2 ~ d'4 \divisioMaior
b2*3/2 a2*3/2 d'2*4/2 ~ d'4 b2*3/2 ~ b4 ~ \divisioMaxima
b2*3/2 ~ b2*5/2 ~ b2*4/2 ~ b2*3/2 ~ b2 a2 \divisioMinima
d'2*3/2 ~ d'2*4/2 b2*3/2 d'2*4/2 ~ d'4 ~ \divisioMaior
d'2*3/2 ~ d'2 ~ d'2*3/2 ~ d'2*4/2 \divisioMinima
e'2*3/4 d'2*3/2 ~ d'2*3/2 ~ d'2*4/2 ~ d'2 \finalis
fis'2 ~ fis'2*4/2 ~ fis'2*3/2 ~ fis'2 ~ fis'2*3/2 ~ fis'2*3/2 ~ fis'4 ~ \divisioMaxima
fis'2 e'2*7/2 ~ e'2 d'2 ~ \divisioMinima
d'4 ~ d'2*4/2 ~ d'2 c'2 ~ c'2 fis'2 ~ fis'2*6/2 ~ fis'2*3/2 ~ \divisioMinima
fis'2 ~ fis'2 ~ fis'2*3/2 ~ fis'2 ~ fis'4 ~ \divisioMaxima
fis'2 ~ fis'2*6/2 ~ fis'2*3/2 ~ \divisioMinima
fis'2 ~ fis'2*3/2 ~ fis'2*3/2 \divisioMaxima
e'2 ~ e'2 d'2*5/2 ~ d'2 cis'2 ~ cis'4 d'2 e'2 \finalis
}

tenorMusic = {
r4 b2*4/2 a2*3/2 g2*3/2 \divisioMaior
b2 ~ b2*3/2 ~ b2 ~ b2 ~ b2*3/2 ~ \divisioMinima
b2*9/4 g2*3/2 a2*4/2 b2 ~ \divisioMaxima
b2*3/2 a2 g2*3/2 fis2*3/2 ~ fis2*3/4 e2*3/2 ~ e2*3/2 d2 g4 ~ \divisioMinima
g2*3/2 ~ g2*3/2 ~ g2*4/2 e4 ~ \divisioMaior
e2*3/2 ~ e2*3/2 b2*4/2 a4 ~ a2*3/2 g4 ~ \divisioMaxima
g4 fis2 e2*5/2 ~ e2 ~ e2 ~ e2*3/2 fis2 ~ fis2 ~ \divisioMinima
fis2*3/2 g2*4/2 ~ g2*3/2 e2*4/2 fis4 \divisioMaior
d2*3/2 e2 fis2*3/2 b2*4/2 ~ \divisioMinima
b2*3/4 ~ b2*3/2 g2*3/2 a2 e2 b2 \finalis
r2 c'2*4/2 d'2*3/2 c'2 e'2*3/2 ~ e'2*3/2 d'4 \divisioMaxima
fis2 ~ fis2*7/2 ~ fis2 ~ fis2 ~ \divisioMinima
fis4 g2*4/2 b2 ~ b2 ~ b4 a4 d'2 ~ d'2*6/2 ~ d'2*3/2 ~ \divisioMinima
d'2 cis'2 e'2*3/2 ~ e'2 d'4 ~ \divisioMaxima
d'2 cis'2*6/2 b2*3/2 \divisioMinima
cis'2 ~ cis'2*3/2 d'2*3/2 \divisioMaxima
fis2 ~ fis2 ~ fis2*5/2 g2 ~ g2 fis4 b2 ~ b2 \finalis
}

bassMusic = {
r4 e2*4/2 ~ e2*3/2 ~ e2*3/2 ~ \divisioMaior
e2 fis2*3/2 g2 b2 r2*3/2 \divisioMinima
e2*9/4 ~ e2*3/2 b,2*4/2 ~ b,2 \divisioMaxima
e2*3/2 ~ e2 ~ e2*3/2 ~ e2*3/2 d2*3/4 ~ d2*3/2 c2*3/2 b,2 ~ b,4 \divisioMinima
a,2*3/2 c2*3/2 b,2*4/2 ~ b,4 \divisioMaior
d2*3/2 c2*3/2 b,2*4/2 ~ b,4 e2*3/2 ~ e4 \divisioMaxima
g,2*3/2 ~ g,2*5/2 e,2 fis,2 g,2*3/2 ~ g,2 fis,2 \divisioMinima
b,2*3/2 ~ b,2*4/2 e2*3/2 d2*4/2 ~ d4 \divisioMaior
b,2*3/2 ~ b,2 ~ b,2*3/2 ~ b,2*4/2 \divisioMinima
e2*3/4 ~ e2*3/2 ~ e2*3/2 b,2 ~ b,2 ~ b,2 \finalis
b2 ~ b2*4/2 ~ b2*3/2 fis2 ~ fis2*3/2 b2*3/2 ~ b4 \divisioMaxima
d2 c2*7/2 b,2 ~ b,2 ~ \divisioMinima
b,4 ~ b,2*4/2 e2 ~ e2 fis2 r2 cis'2*6/2 b2*3/2 ~ \divisioMinima
b2 fis2 ~ fis2*3/2 b2 ~ b4 \divisioMaxima
d2 ~ d2*6/2 ~ d2*3/2 \divisioMinima
fis2 e2*3/2 d2*3/2 \divisioMaxima
cis2 b,2 ~ b,2*5/2 ~ b,2 e2 fis4 ~ fis2 e2 \finalis
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
