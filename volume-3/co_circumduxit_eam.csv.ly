\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.373
%(volume.page)

global = {
 \key d \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Circumduxit eam" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Circumduxit eam"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Circumduxit eam" }
    \line {}
  }
}

chantText = \lyricmode {
Cir -- cum -- dú -- xit e -- am, 
\set stanza = " * " et _ dó -- _ cu -- it et cu -- sto -- dí -- _ _ vit 
qua -- si pu -- píl -- lam ó -- cu -- li su -- i. 
Sic -- ut á -- qui -- la ex -- pán -- dit a -- las su -- _ as, 
et as -- súmp -- _ _ sit e -- am, 
at -- que por -- tá -- vit in hú -- me -- ris _ su -- is: 
Dó -- mi -- nus so -- _ lus dux e -- _ _ jus fu -- it. T.P. 
Al -- le -- _ _ _ lú -- ia. }

chantMusic = {
\tieDown   d'4 ( \once \tweak #'font-size #-4 e' ) d'4 d'4 ( g'4 fis'4) g'4 a'4 g'4 \divisioMinima
 g'4 ( g'4) ~ g'4 ( e'4) e'4 ( a'4 g'4) a'4 ( b'4) a'4 a'4 \divisioMinima
 a'4 b'4 d''4 c''4. b'4 ( d''4 c''4 b'4 a'4) b'4 ( c''4) b'4 ( a'4) \divisioMaior
 a'4 fis'4 a'4 a'4 ( b'4 a'4) g'4 a'4 g'4 fis'4 ( g'4) e'4 ( fis'4 d'4) d'4 \divisioMaxima
 d'4 d'4 ( a'4) a'4 a'4 a'4 a'4 a'4 ( b'4 c''4 \once \tweak #'font-size #-4 a' ) a'4 a'4 b'4 ( c''4) b'4 ( c''4 b'4 a'4 g'4) a'4 ( b'4) a'4 \divisioMaior
 a'4 a'4 ( b'4 c''4 d''4) d''4. b'4 ( d''4 c''4 b'4 a'4) b'4 ( c''4) b'4 ( a'4) a'4 ( b'4 a'4) a'4 \divisioMaior
 a'4 b'4 ( c''4 b'4) g'4 b'4 ( b'4 c''4) b'4 ( a'4) a'4 ( fis'4) g'4 ( a'4) g'4 fis'4 ( e'4) g'4 ( fis'4 e'4 fis'4) d'4 ( e'4 d'4) d'4 \divisioMaxima
 fis'4 ( fis'4 g'4) e'4 ( fis'\prall g'4) g'4 ( d'4) g'4 ( e'4) g'4 ( a'4) fis'4 \divisioMinima
 fis'4 ( g'4) a'4 ( a'4 g'4) a'4 ( g'4 fis'4) g'4 ( e'4 fis'\prall g'4 a'4) fis'4 d'4 ( e'4 d'4) d'4 \finalis
 e'4 ( fis'\prall g'4) g'4 ( a'4 g'4) fis'4 ( a'4 g'4.) e'4 ( g'4 fis'4 g'4.) e'4 ( fis'4 d'4) d'4 ( e'4 d'4) d'4 \finalis

}

altoMusic = {
b2*3/2 d'2*4/2 e'2 \divisioMinima
b2 a2 b2*3/2 d'2*3/2 ~ d'4 ~ \divisioMinima
d'2*3/2 g'2*3/4 fis'2*5/2 e'2 ~ e'2 ~ \divisioMaior
e'2*3/2 d'2*4/2 ~ d'2*4/2 a2*3/2 ~ a4 \divisioMaxima
r4 d'2 ~ d'2*4/2 e'2*5/2 ~ e'2*3/2 d'2*7/2 ~ d'4 ~ \divisioMaior
d'4 fis'2*4/2 e'2*3/4 d'2*5/2 ~ d'2*4/2 ~ d'2*3/2 ~ d'4 ~ \divisioMaior
d'4 ~ d'2*4/2 e'2*5/2 ~ e'2 b2*3/2 ~ b2 a2*4/2 ~ a2*3/2 ~ a4 \divisioMaxima
b2*3/2 c'2*3/2 d'2 b2*4/2 d'4 ~ \divisioMinima
d'2 e'2*3/2 ~ e'2*3/2 b2*4/2 d'2 a2*3/2 ~ a4 \finalis
b2*3/2 c'2*3/2 d'2*7/4 c'2*9/4 b2*3/2 a2*3/2 ~ a4 \finalis
}

tenorMusic = {
g2*3/2 ~ g2*4/2 ~ g2 ~ \divisioMinima
g2 ~ g2 ~ g2*3/2 ~ g2*3/2 fis4 \divisioMinima
a2*3/2 ~ a2*3/4 ~ a2*5/2 ~ a2 g2 \divisioMaior
fis2*3/2 ~ fis2*4/2 g2*4/2 ~ g2*3/2 fis4 \divisioMaxima
a2*3/2 fis2*4/2 e2*5/2 a4 g2 fis2*5/2 e2 fis4 ~ \divisioMaior
fis4 a2*4/2 g2*3/4 fis2*5/2 e2*4/2 g2*3/2 fis4 ~ \divisioMaior
fis4 g2*4/2 ~ g2*5/2 a2 ~ a2*3/2 g2 ~ g2*4/2 ~ g2*3/2 fis4 \divisioMaxima
g2*3/2 ~ g2*3/2 ~ g2 ~ g2*4/2 a4 ~ \divisioMinima
a2 ~ a2*3/2 e2*3/2 ~ e2*4/2 fis2 g2*3/2 fis4 \finalis
g2*3/2 ~ g2*3/2 ~ g2*7/4 ~ g2*9/4 ~ g2*3/2 ~ g2*3/2 fis4 \finalis
}

bassMusic = {
g,2*3/2 b,2*4/2 c2 \divisioMinima
e2 ~ e2 ~ e2*3/2 d2*3/2 ~ d4 \divisioMinima
fis2*3/2 e2*3/4 d2*5/2 c2 ~ c2 ~ \divisioMaior
c2*3/2 b,2*4/2 ~ b,2*4/2 d2*3/2 ~ d4 \divisioMaxima
fis2*3/2 d2*4/2 c2*5/2 ~ c4 ~ c2 d2*5/2 ~ d2 ~ d4 ~ \divisioMaior
d4 ~ d2*4/2 ~ d2*3/4 ~ d2*5/2 ~ d2*4/2 ~ d2*3/2 ~ d4 \divisioMaior
b,4 ~ b,2*4/2 c2*5/2 ~ c2 e2*3/2 ~ e2 c2*4/2 d2*3/2 ~ d4 \divisioMaxima
e2*3/2 c2*3/2 b,2 e2*4/2 d4 \divisioMinima
b,2 c2*3/2 ~ c2*3/2 e2*4/2 d2 ~ d2*3/2 ~ d4 \finalis
g,2*3/2 a,2*3/2 b,2*7/4 c2*9/4 ~ c2*3/2 d2*3/2 ~ d4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Communion"
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
