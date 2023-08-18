\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.27
%(volume.page)

global = {
 \key fis \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Eduxit eos" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Eduxit eos"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Eduxit eos" }
    \line {}
  }
}

chantText = \lyricmode {
E -- dú -- xit e -- os 
\set stanza = " * " Dó -- _ mi -- nus in spe, _ _ al -- le -- _ lú -- ia: 
et in -- i -- mí -- cos e -- ó -- _ rum o -- pé -- ru -- it ma -- re, 
al -- le -- lú -- ia, _ al -- le -- lú -- _ ia, al -- le -- _ _ lú -- ia. Ps. 
At -- tén -- di -- te pó -- pu -- le me -- us le -- gem me -- am: 
\set stanza = " * " 
in -- cli -- ná -- te au -- rem ve -- stram in ver -- ba o -- ris me -- i. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   g'4 a'4 e'4 g'4 g'4 ( g'4 g'4) \divisioMinima
 a'4 ( g'4) b'4 ( a'4) a'4 a'4 g'4 ( a'4)  a'4 c''4 ( c''4) ~ c''4 ( a'4) \divisioMinima \forceBreak

 a'4 ( b'4) fis'4 g'4 ( b'4 a'4) a'4 ( b'4 a'4) a'4 \divisioMaxima
 a'4 ( fis'4) a'4  c''4 b'4 ( c''4 d''4 c''4) c''4 ( b'4)  c''4 c''4 ( b'4) ~ b'4 ( a'4 b'4) b'4 ( a'4) \divisioMinima \forceBreak

 a'4 a'4 ( b'4) a'4 ( g'4) g'4 e'4 ( a'4 g'4 fis'4) fis'4 \divisioMaxima
 g'4 ( \once \tweak #'font-size #-4 a' ) a'4 g'4 ( \once \tweak #'font-size #-4 a' ) a'4. g'4 ( g'4 e'4) \divisioMinima
 g'4 g'4 fis'4 ( g'4 a'4 b'4 g'4 e'4) a'4 ( g'4) g'4 \divisioMinima \forceBreak

 g'4 ( \once \tweak #'font-size #-4 a' ) a'4. g'4 ( g'4 e'4) a'4 ( g'4 fis'4) fis'4 ( a'4 g'4 g'4) g'4 ( fis'4) \finalis
 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 ( a'4) a'4 ( cis''4) cis''4 \forceBreak
 b'4 ( cis''4) b'4 \divisioMaxima
 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 b'4 b'4 a'4 ( g'4) a'4 ( b'4) a'4 fis'4 \finalis \forceBreak

  b'4 ( a'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 b'4 b'4 ( a'4) a'4 cis''4 cis''4 b'4 ( cis''4) b'4 \divisioMaxima \forceBreak

 b'4 ( a'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 ( a'4) a'4 ( cis''4) cis''4 b'4 ( cis''4) b'4 \divisioMaxima
 b'4 ( a'4) a'4 ( b'4 \forceBreak
) b'4 b'4 b'4 b'4 b'4 a'4 ( g'4) a'4 ( b'4) a'4 fis'4 \finalis

}

altoMusic = {
r4 e'2*3/2 ~ e'2*3/2 ~ \divisioMinima
e'2 ~ e'2*4/2 d'2 ~ d'4 ~ d'2 c'2 \divisioMinima
d'2 ~ d'2*4/2 ~ d'2*3/2 ~ d'4 \divisioMaxima
e'2*4/2 ~ e'2*4/2 fis'2*3/2 g'4 fis'2*4/2 ~ fis'2 ~ \divisioMinima
fis'4 e'2 ~ e'2*3/2 ~ e'2*4/2 d'4 ~ \divisioMaxima
d'2*3/2 b2 d'2*3/4 b2*3/2 ~ \divisioMinima
b2 e'2*5/2 ~ e'4 b2 ~ b4 ~ \divisioMinima
b2 d'2*3/4 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*4/2 ~ d'2 \finalis
fis'2 ~ fis'2*4/2 ~ fis'2*4/2 ~ fis'2 ~ fis'2*3/2 ~ fis'2 ~ fis'4 ~ \divisioMaxima
fis'2 e'2 d'2 cis'2 d'2 ~ \divisioMinima
d'4 ~ d'2 ~ d'2 ~ d'2 cis'4 d'4 fis'2 ~ fis'2*3/2 ~ fis'2*3/2 ~ fis'2 ~ fis'4 ~ \divisioMinima
fis'2 ~ fis'2 ~ fis'2*3/2 ~ fis'2 ~ fis'4 ~ \divisioMaxima
fis'2 e'2 d'2*4/2 cis'2 d'4 \divisioMinima
e'2 ~ e'2*3/2 fis'2*3/2 \divisioMaxima
e'2 ~ e'2 d'2*5/2 ~ d'2 ~ d'2 cis'4 d'4 \finalis
}

tenorMusic = {
r4 b2*3/2 ~ b2*3/2 \divisioMinima
a2 g2*4/2 ~ g2 e4 ~ e2 ~ e2 \divisioMinima
fis2 a2*4/2 e2*3/2 fis4 \divisioMaxima
a2*4/2 g2*4/2 a2*3/2 b4 ~ b2*4/2 d'2 ~ \divisioMinima
d'4 c'2 b2*3/2 a2*4/2 b4 \divisioMaxima
g2*3/2 ~ g2 fis2*3/4 g2*3/2 ~ \divisioMinima
g2 a2*6/2 fis2 g4 ~ \divisioMinima
g2 fis2*3/4 g2*3/2 fis2*3/2 g2*4/2 b2 \finalis
d'2 e'2*4/2 d'2*4/2 cis'2 e'2*3/2 ~ e'2 d'4 \divisioMaxima
fis2 ~ fis2 ~ fis2 e2 fis2 ~ \divisioMinima
fis4 g2 ~ g2 fis2 e4 fis4 d'2 ~ d'2*3/2 ~ d'2*3/2 cis'2*3/2 \divisioMinima
d'2 cis'2 e'2*3/2 ~ e'2 d'4 \divisioMaxima
fis2 ~ fis2 ~ fis2*4/2 e2 fis4 ~ \divisioMinima
fis2 a2*3/2 fis2*3/2 ~ \divisioMaxima
fis2 e2 fis2*5/2 g2 fis2 e4 fis4 \finalis
}

bassMusic = {
g4 e2*3/2 d2*3/2 \divisioMinima
c2 ~ c2*4/2 b,2 ~ b,4 a,2 ~ a,2 \divisioMinima
d2 ~ d2*4/2 ~ d2*3/2 ~ d4 \divisioMaxima
c2*4/2 e2*4/2 ~ e2*3/2 ~ e4 d2*4/2 ~ d2 ~ \divisioMinima
d4 ~ d2 ~ d2*3/2 c2*4/2 b,4 ~ \divisioMaxima
b,2*3/2 e2 d2*3/4 e2*3/2 ~ \divisioMinima
e2 c2*6/2 e2 ~ e4 ~ \divisioMinima
e2 d2*3/4 b,2*3/2 ~ b,2*3/2 ~ b,2*4/2 ~ b,2 \finalis
r2 cis'2*4/2 b2*4/2 fis2 ~ fis2*3/2 b2 ~ b4 \divisioMaxima
d2 cis2 b,,2 b,2 ~ b,2 ~ \divisioMinima
b,4 g,2 b,2 ~ b,2 ~ b,4 ~ b,4 r2 cis'2*3/2 b2*3/2 ~ b2*3/2 ~ \divisioMinima
b2 fis2 ~ fis2*3/2 b2 ~ b4 \divisioMaxima
d2 cis2 b,l2*4/2 b,2 ~ b,4 \divisioMinima
cis2 ~ cis2*3/2 d2*3/2 \divisioMaxima
cis2 ~ cis2 b,2*5/2 ~ b,2 ~ b,2 ~ b,4 ~ b,4 \finalis
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
