\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.363
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Benedicite Dominum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Benedicite Dominum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Benedicite Dominum" }
    \line {}
  }
}

chantText = \lyricmode {
Be -- ne -- dí -- ci -- te 
\set stanza = " * " Dó -- _ _ mi -- num 
o -- mnes An -- ge -- li _ e -- jus: 
mi -- ní -- stri e -- jus, _ 
qui fá -- ci -- tis ver -- bum e -- jus, 
ad au -- di -- én -- _ dam vo -- cem _ _ ser -- _ mó -- num _ e -- jus. }

chantMusic = {
\tieDown   d'4 e'4  e'4 ( b'4 c''4) b'4 b'4  b'4 d''4 ( d''4) ~ d''4 ( b'4) b'4 ( a'4) b'4 \divisioMaior
 g'4 ( a'\prall b'4 \once \tweak #'font-size #-4 a' ) b'4 b'4 ( d''4 b'4 cis''\prall d''4) a'4 g'4 ( a'4 g'4) ~ g'4 ( fis'4) e'4 ( fis'4 g'4 \tiny fis' e' 4) fis'4 ( e'4) \divisioMaxima
 e'4 e'4 ( g'4 a'4) a'4 b'4 ( a'4 b'4)  b'4 ( c''4 a'4) b'4 ( g'4 e'4 g'4) \divisioMaior
 e'4 ( g'4) a'4 ( b'4 a'4) b'4 a'4 ( g'4) b'4 ( d''4 \tiny cis'' b' 4) b'4 ( a'4 b'4) g'4 ( a'4 b'4 \tiny a' g' 4) a'4 ( g'4) \divisioMaxima
 a'4 g'4 ( a'4 g'4) e'4 e'4 ( fis'\prall g'4 fis'4 e'4) fis'4 ( \tiny e' d' 4) e'4 ( d'4) g'4 ( b'4 a'4 b'4) b'4 ( d''4 b'4) a'4 ( b'4 a'4) g'4 ( a'4 g'4 e'4 g'4) \divisioMinima
 e'4 g'4 ( g'4 g'4) g'4 g'4 ( a'4 g'4) ~ g'4 ( fis'4) e'4 ( fis'4 g'4 fis'4 e'4 fis'4) fis'4 ( e'4) \finalis

}

altoMusic = {
r2 e'2*6/2 fis'2 e'2 ~ e'2 d'4 ~ \divisioMaior
d'2*5/2 ~ d'2 ~ d'2*4/2 ~ d'2 ~ d'2*3/2 b2*5/2 ~ b2 \divisioMaxima
r2 d'2*3/2 ~ d'2*3/2 c'2*3/2 e'2*4/2 ~ \divisioMaior
e'2 ~ e'2*4/2 ~ e'2 d'2*4/2 ~ d'2*3/2 e'2*5/2 d'2 \divisioMaxima
r4 c'2*4/2 ~ c'2*5/2 ~ c'2*3/2 b2 d'2*4/2 ~ d'2*3/2 ~ d'2*3/2 b2*5/2 ~ \divisioMinima
b4 d'2*3/2 c'4 b2 ~ b2*3/2 ~ b2*6/2 ~ b2 \finalis
}

tenorMusic = {
a2 g2*6/2 b2 ~ b2 fis2 ~ fis4 \divisioMaior
g2*5/2 e2 fis2*4/2 b2 a2*3/2 ~ a2*5/2 g2 \divisioMaxima
r4 e2*4/2 fis2*3/2 g2*3/2 ~ g2*4/2 ~ \divisioMaior
g2 fis2*4/2 e2 fis2*4/2 g2*3/2 ~ g2*5/2 b2 \divisioMaxima
r4 e2*4/2 a2*5/2 g2*3/2 fis2 e2*4/2 fis2*3/2 ~ fis2*3/2 g2*6/2 ~ g2*3/2 ~ g4 e2 fis2*3/2 a2*6/2 g2 \finalis
}

bassMusic = {
fis2 e2*6/2 b,2 ~ b,2 ~ b,2 ~ b,4 ~ \divisioMaior
b,2*5/2 ~ b,2 ~ b,2*4/2 ~ b,2 ~ b,2*3/2 e2*5/2 ~ e2 \divisioMaxima
r4 e2*4/2 ~ e2*3/2 ~ e2*3/2 d2*4/2 \divisioMaior
c2 ~ c2*4/2 ~ c2 b,2*4/2 ~ b,2*3/2 c2*5/2 g,2 \divisioMaxima
r4 a,2*4/2 ~ a,2*5/2 ~ a,2*3/2 b,2 ~ b,2*4/2 ~ b,2*3/2 d2*3/2 e2*6/2 ~ e2*3/2 ~ e4 ~ e2 ~ e2*3/2 ~ e2*6/2 ~ e2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Offertory"
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
