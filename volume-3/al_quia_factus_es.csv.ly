\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.126
%(volume.page)

global = {
 \key e \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Quia factus es" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Quia factus es"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Quia factus es" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- _ ia. _ 
\set stanza = " * " 
_ _ _ _ _ ℣. 
Qui -- a fa -- ctus _ es su -- scé -- ptor me -- us, 
et re -- fú -- gi -- um me -- _ um 
in di -- e tri -- bu -- la -- _ ti -- ó -- nis 
\set stanza = " * " me -- _ æ. _ 
_ _ _ _ _ _ }

chantMusic = {
\tieDown   e'4 ( \once \tweak #'font-size #-4 fis' ) e'4 e'4 ( fis'4 g'4 a'4) ~ a'4 ( g'4 fis'4 g'\prall a'4) a'4 ( g'4 a'\prall b'4 a'4 g'4) a'4 ( e'4) \divisioMaior
 e'4 ( fis'4) g'4 ( b'4 g'4) a'4 ( fis'4.) d'4 ( e'4) g'4 ( g'4 fis'4) a'4 ( g'4 fis'4 e'4) \finalis
 e'4 ( g'4 fis'4) g'4 ( a'4) a'4  a'4 ( a'4) b'4 ( cis''4 a'4 g'4 f'4 g'\prall a'4 g'4 a'4) g'4 ( fis'4) \divisioMinima
 fis'4 ( e'4) g'4 ( b'4 a'4) g'4 fis'4 ( e'4 fis'4 g'4) fis'4 \divisioMaior
 e'4 e'4 g'4 ( fis'4) g'4 ( a'4) a'4 a'4 ( d'4.) fis'4 ( a'4 g'4 fis'4 e'4 fis'\prall g'4 e'4) e'4 \divisioMaxima
 e'4 e'4 ( fis'4) e'4 e'4 e'4 e'4 ( fis'\prall g'4 a'4.) fis'4 ( g'4 fis'4) d'4 ( e'4) e'4 ( fis'4 d'4) e'4 \divisioMinima
 e'4 ( fis'4 g'4 a'4) ~ a'4 ( g'4 fis'4 g'\prall a'4) a'4 ( g'4 a'\prall b'4 a'4 g'4) a'4 ( e'4) \divisioMaior
 e'4 ( fis'4) g'4 ( b'4 g'4) a'4 ( fis'4.) d'4 ( e'4) g'4 ( g'4 fis'4) a'4 ( g'4 fis'4 e'4) \finalis

}

altoMusic = {
b2*3/2 c'2*3/2 d'2*3/2 ~ d'2*3/2 e'4 d'2*5/2 c'2 ~ \divisioMaior
c'2 d'2*3/2 ~ d'2*5/4 ~ d'2 ~ d'2*3/2 b2 ~ b2 \finalis
e'2*3/2 d'2*3/2 c'2 ~ c'2*4/2 d'2*5/2 ~ d'2 \divisioMinima
b2 ~ b2*4/2 c'2*4/2 d'4 \divisioMaior
e'2 d'2*5/2 ~ d'4 ~ d'2*3/4 ~ d'2*4/2 b2*4/2 ~ b4 \divisioMaxima
c'4 ~ c'2*3/2 b2 ~ b2*3/2 d'2*3/4 ~ d'2*3/2 r2 b2*3/2 ~ b4 \divisioMinima
e'2*3/2 d'2*3/2 ~ d'2*3/2 c'4 d'2*5/2 c'2 ~ \divisioMaior
c'2 d'2*3/2 ~ d'2*5/4 ~ d'2 ~ d'2*3/2 b2 ~ b2 \finalis
}

tenorMusic = {
g2*3/2 a2*3/2 b2*3/2 ~ b2*3/2 c'4 b2*5/2 a2 ~ \divisioMaior
a2 g2*3/2 fis2*5/4 g2 b2*3/2 ~ b2 a4 g4 ~ \finalis
g2*3/2 e2*3/2 ~ e2 g2*4/2 a2*5/2 b2 \divisioMinima
a2 g2*4/2 a2*4/2 b4 \divisioMaior
g2 ~ g2*5/2 fis2*5/4 a2*4/2 ~ a2*4/2 g4 \divisioMaxima
a4 ~ a2*3/2 g2 ~ g2*3/2 fis2*3/4 a2*3/2 ~ a2 ~ a2*3/2 g4 ~ \divisioMinima
g2*3/2 ~ g2*3/2 d2*3/2 e2*6/2 ~ e2 \divisioMaior
a2 g2*3/2 fis2*5/4 g2 b2*3/2 ~ b2 a4 g4 \finalis
}

bassMusic = {
r2*9/2 a2*3/2 ~ a4 ~ a2*5/2 ~ a2 \divisioMaior
a,2 b,2*3/2 ~ b,2*5/4 ~ b,2 ~ b,2*3/2 e2 ~ e2 \finalis
c2*3/2 b,2*3/2 a,2 ~ a,2*4/2 b,2*5/2 ~ b,2 \divisioMinima
e2 ~ e2*4/2 ~ e2*4/2 b,4 \divisioMaior
c2 b,2*5/2 d2*5/4 ~ d2*4/2 e2*4/2 ~ e4 \divisioMaxima
r4 g2*3/2 ~ g2 e2*3/2 d2*3/4 ~ d2*3/2 fis2 e2*3/2 ~ e4 \divisioMinima
c2*3/2 b,2*3/2 ~ b,2*3/2 a,2*6/2 ~ a,2 ~ \divisioMaior
a,2 b,2*3/2 ~ b,2*5/4 ~ b,2 ~ b,2*3/2 e2 ~ e2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Alleluia"
        "II"
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
