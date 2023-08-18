\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.326
%(volume.page)

global = {
 \key g \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Judica Domine" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Judica Domine"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Judica Domine" }
    \line {}
  }
}

chantText = \lyricmode {
Ju -- di -- ca 
\set stanza = " * " Dó -- mi -- ne no -- cén -- tes me, 
ex -- pú -- gna im -- pu -- gnán -- tes me: 
ap -- pre -- hén -- de ar -- ma et scu -- tum, 
et ex -- súr -- ge in ad -- ju -- tó -- ri -- um me -- um, 
Dó -- mi -- ne, _ _ vir -- tus sa -- lú -- _ tis me -- _ _ æ. Ps. 
Ef -- fún -- de frá -- me -- am, et con -- clú -- de ad -- vér -- sus e -- os qui per -- se -- quún -- tur me: 
\set stanza = " * " 
dic á -- ni -- mæ me -- æ: Sa -- lus tu -- a e -- go sum. 
Jú -- di -- ca. }

chantMusic = {
\tieDown   e'4 ( g'4 fis'4) g'4 g'4  g'4 g'4 g'4 ( g'4 g'4) \divisioMinima
 g'4 ( e'4) g'4 ( a'4) a'4 ( b'4 a'4 fis'4 g'4) fis'4 ( fis'4 g'4) \divisioMaior \forceBreak

 e'4 e'4 ( a'4) a'4 a'4 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( b'4 a'4 b'4) fis'4 ( a'4 g'4 a'4) fis'4 ( fis'4 g'4) \divisioMaxima
 e'4 e'4 ( a'4) a'4 a'4 \forceBreak
 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 g'4 g'4 ( b'4 a'4 b'4) fis'4 \divisioMaior
 g'4 g'4 g'4 ( b'4 a'4) g'4 \divisioMinima
 g'4 g'4 g'4 g'4 ( b'4 a'4 \forceBreak
) g'4 g'4 ( g'4 g'4) d'4 ( fis'\prall g'4 fis'4 e'4 fis'4) fis'4 ( e'4) \divisioMaior
 fis'4 ( g'4 a'4) a'4 ( fis'4 g'\prall a'4) a'4 ( b'4 g'4 fis'4) g'4 ( fis'4 e'4 d'4) e'4 ( d'4) \divisioMinima \forceBreak

 fis'4 ( fis'4 g'4) e'4 ( fis'\prall g'4) d'4 g'4 ( g'4) ~ g'4 ( e'4) fis'4 ( g'4 a'4) a'4 ( g'4) b'4 ( a'4 g'4) a'4 ( g'4 fis'4) fis'4 \finalis
 b'4 ( a'4) a'4 ( b'4) b'4 b'4 b'4 b'4 \divisioMinima \forceBreak

 b'4 b'4 b'4 b'4 b'4 b'4 b'4 b'4 b'4 b'4 ( a'4) a'4 ( cis''4) cis''4 b'4 ( cis''4) b'4 b'4 \divisioMaxima \forceBreak

 b'4 ( a'4) a'4 ( b'4) b'4 b'4 b'4 b'4 \divisioMinima
 b'4 b'4 b'4 a'4 ( g'4) a'4 ( b'4) a'4 fis'4 ( a'4 g'4 g'4) \finalis
 e'4 ( g'4 fis'4) g'4 g'4 \finalis

}

altoMusic = {
b2*5/2 e'2 d'2*3/2 \divisioMinima
c'2 d'2 ~ d'2*5/2 b2*3/2 ~ \divisioMaior
b4 e'2*4/2 ~ e'2 d'2*4/2 ~ d'2*4/2 ~ d'2*3/2 \divisioMaxima
e'4 ~ e'2 ~ e'2 d'2*4/2 ~ d'2*4/2 ~ d'4 ~ \divisioMaior
d'2 e'2*4/2 ~ \divisioMinima
e'2*3/2 ~ e'2*4/2 ~ e'2*3/2 a2*6/2 b2 \divisioMaior
d'2*3/2 e'2*4/2 d'2*4/2 ~ d'2*6/2 ~ \divisioMinima
d'2*3/2 ~ d'2*4/2 c'2 d'2 ~ d'2*3/2 ~ d'2 ~ d'2*3/2 cis'2*3/2 d'4 \finalis
fis'2 ~ fis'2*3/2 ~ fis'2*8/2 ~ fis'2*4/2 ~ fis'2 ~ fis'2*3/2 ~ fis'2*3/2 ~ fis'4 ~ \divisioMaxima
fis'2 e'2*4/2 d'2 ~ \divisioMinima
d'2*3/2 ~ d'2 b2*3/2 ~ b2*4/2 ~ \finalis
b2*5/2 \finalis
}

tenorMusic = {
g2*5/2 ~ g2 ~ g2*3/2 ~ \divisioMinima
g2 ~ g2 fis2*5/2 e2*3/2 ~ \divisioMaior
e4 ~ e2*4/2 fis2 g2*4/2 a2*4/2 b2*3/2 ~ \divisioMaxima
b4 a2 g2 ~ g2*4/2 a2*4/2 b4 ~ \divisioMaior
b2 a2*4/2 \divisioMinima
b2*3/2 c'2*4/2 b2*3/2 fis2*6/2 g2 \divisioMaior
a2*3/2 ~ a2*4/2 ~ a2*4/2 e2*4/2 fis2 \divisioMinima
a2*3/2 g2*4/2 ~ g2 ~ g2 a2*3/2 b2 g2*3/2 e2*3/2 b4 \finalis
d'2 e'2*3/2 cis'2*8/2 d'2*4/2 cis'2 e'2*3/2 ~ e'2*3/2 d'4 \divisioMaxima
fis2 ~ fis2*4/2 ~ fis2 \divisioMinima
g2*3/2 a2 ~ a2*3/2 g2*4/2 ~ \finalis
g2*5/2 \finalis
}

bassMusic = {
e2*5/2 c2 b,2*3/2 \divisioMinima
a,2 b,2 ~ b,2*5/2 e2*3/2 \divisioMaior
d4 c2*4/2 ~ c2 b,2*4/2 ~ b,2*4/2 ~ b,2*3/2 \divisioMaxima
c4 ~ c2 ~ c2 b,2*4/2 ~ b,2*4/2 ~ b,4 ~ \divisioMaior
b,2 c2*4/2 ~ \divisioMinima
c2*3/2 ~ c2*4/2 e2*3/2 ~ e2*6/2 ~ e2 \divisioMaior
d2*3/2 c2*4/2 b,2*4/2 ~ b,2*4/2 ~ b,2 ~ \divisioMinima
b,2*3/2 ~ b,2*4/2 a,2 b,2 ~ b,2*3/2 ~ b,2 ~ b,2*3/2 ~ b,2*3/2 ~ b,4 \finalis
r2 cis'2*3/2 b2*8/2 ~ b2*4/2 fis2 ~ fis2*3/2 b2*3/2 ~ b4 \divisioMaxima
d2 cis2*4/2 b,2 ~ \divisioMinima
b,2*3/2 ~ b,2 e2*3/2 ~ e2*4/2 ~ \finalis
e2*5/2 \finalis
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
