\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.199
%(volume.page)

global = {
 \key fis \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Laetamini" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Laetamini"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Laetamini" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ _ lú -- ia, 
\set stanza = " * " al -- le -- _ _ lú -- ia. _ _ _ _ _ _ ℣. 
Læ -- tá -- mi -- ni _ cum Je -- rú -- sa -- lem, _ _ 
et ex -- sul -- tá -- te in e -- a, 
o -- mnes _ _ qui di -- lí -- gi -- tis _ _ 
\set stanza = " * " Dó -- mi -- num. _ _ _ _ _ _ }

chantMusic = {
\tieDown   e'4 e'4 ( g'4) a'4 ( g'4) fis'4 ( g'4 e'4)  g'4 ( a'\prall b'4 c''4 \tiny b' a' 4) a'4 ( b'4) \divisioMinima
  e'4 e'4 ( g'4) a'4 ( g'4) fis'4 ( g'4 e'4)  g'4 ( a'\prall b'4 c''4 \tiny b' a' 4) a'4 ( b'4) \divisioMinima
 e'4 g'4 ( g'4 fis'4) g'4 ( a'4 b'4 a'4 g'4.) a'4 ( b'4 a'4) b'4 ( g'4) a'4 ( g'4) ~ g'4 ( fis'4) \finalis
 b'4 a'4 ( b'4) a'4 a'4 ( fis'4.) a'4 ( g'4 fis'4 e'4) \divisioMinima
 e'4 fis'4 ( g'4) a'4 ( b'4) a'4  a'4. b'4 ( c''4 b'4 g'4) b'4 ( g'4 a'4) \divisioMaior
 a'4 a'4 ( b'4) a'4  a'4 ( b'4 c''4 d''4) a'4 ( c''4 b'4 a'4) a'4 a'4 ( g'4 a'\prall b'4 a'4 b'4) b'4 ( a'4) \divisioMaxima
 b'4 ( \once \tweak #'font-size #-4 a' ) a'4. b'4 ( a'4) b'4 ( g'4) fis'4 ( e'4) g'4 g'4 ( a'4) g'4 fis'4 ( g'4 a'4 g'4 fis'4) g'4 ( fis'4 e'4) fis'4 ( e'4)   g'4 ( a'\prall b'4 c''4 b'4 a'4) b'4 ( a'4) a'4 ( b'4) \divisioMinima
 e'4 g'4 ( g'4 fis'4) g'4 ( a'4 b'4 a'4 g'4.) a'4 ( b'4 a'4) b'4 ( g'4) a'4 ( g'4) ~ g'4 ( fis'4) \finalis

}

altoMusic = {
r4 e'2*4/2 ~ e'2*3/2 ~ e'2*6/2 ~ e'2 r4 b2*4/2 ~ b2*3/2 e'2*6/2 d'2 ~ \divisioMinima
d'4 c'2*3/2 d'2*11/4 ~ d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'4 \finalis
r4 d'2*3/2 ~ d'2*5/4 b2*4/2 ~ \divisioMinima
b4 ~ b2 e'2*9/4 ~ e'2*4/2 d'2 ~ d'4 ~ \divisioMaior
d'4 fis'2*3/2 e'2*4/2 ~ e'2*5/2 d'2*3/2 ~ d'2*3/2 ~ d'2 ~ \divisioMaxima
d'2*7/4 ~ d'2*4/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*5/2 b2*3/2 ~ b2 d'2*3/2 c'2*5/2 b2 ~ \divisioMinima
b4 d'2*3/2 ~ d'2*11/4 ~ d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'4 \finalis
}

tenorMusic = {
r4 e'2*4/2 d'2*3/2 c'2*6/2 g2 r4 g2*4/2 ~ g2*3/2 ~ g2*6/2 ~ g2 ~ \divisioMinima
g4 ~ g2*3/2 ~ g2*11/4 fis2*3/2 g2*3/2 a2 b4 \finalis
r4 fis2*3/2 a2*5/4 ~ a2*4/2 ~ \divisioMinima
a4 g2 ~ g2*9/4 e2*4/2 ~ e2 fis4 ~ \divisioMaior
fis4 a2*3/2 ~ a2*4/2 g2*5/2 ~ g2*3/2 ~ g2*3/2 fis2 ~ \divisioMaxima
fis2*7/4 g2*4/2 a2*3/2 b2*3/2 a2*5/2 ~ a2*3/2 g2 ~ g2*3/2 ~ g2*5/2 ~ g2 ~ \divisioMinima
g4 a2*3/2 g2*11/4 fis2*3/2 g2*3/2 a2 b4 \finalis
}

bassMusic = {
r4 e2*4/2 ~ e2*3/2 ~ e2*6/2 ~ e2 ~ e4 ~ e2*4/2 d2*3/2 c2*6/2 g,2 ~ \divisioMinima
g,4 a,2*3/2 b,2*11/4 ~ b,2*3/2 ~ b,2*3/2 ~ b,2 ~ b,4 \finalis
r4 d2*3/2 ~ d2*5/4 e2*4/2 ~ \divisioMinima
e4 ~ e2 c2*9/4 ~ c2*4/2 d2 ~ d4 ~ \divisioMaior
d4 ~ d2*3/2 c2*4/2 ~ c2*5/2 b,2*3/2 g,2*3/2 d2 \divisioMaxima
b,2*7/4 ~ b,2*4/2 ~ b,2*3/2 ~ b,2*3/2 ~ b,2*5/2 e2*3/2 ~ e2 ~ e2*3/2 ~ e2*5/2 ~ e2 ~ \divisioMinima
e4 d2*3/2 b,2*11/4 ~ b,2*3/2 ~ b,2*3/2 ~ b,2 ~ b,4 \finalis
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
