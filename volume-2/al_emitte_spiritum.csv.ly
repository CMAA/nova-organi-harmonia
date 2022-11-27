\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.78
%(volume.page)

global = {
 \key fis \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Emitte Spiritum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Emitte Spiritum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Emitte Spiritum" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- ia, _ 
\set stanza = " * " al -- le -- lú -- ia. _ _ _ _ _ _ ℣. 
E -- mít -- te _ _ _ Spí -- ri -- _ tum tu -- um, 
et cre -- a -- bún -- _ _ _ _ _ _ _ _ _ tur 
et re -- no -- vá -- bis fá -- ci -- _ em 
\set stanza = " * " ter -- _ ræ. _ _ _ _ _ _ }

chantMusic = {
\tieDown   g'4 ( \once \tweak #'font-size #-4 e' ) fis'4 ( g'4 a'4) b'4 ( a'4 b'4)  b'4 ( c''4 b'4 a'4) ~ a'4 ( g'4) \divisioMinima
 g'4 ( \once \tweak #'font-size #-4 e' ) fis'4 ( g'4 a'4) b'4 ( a'4 b'4)  b'4 ( c''4 b'4 a'4) ~ a'4 ( g'4) \divisioMinima \forceBreak

  b'4 ( c''4 b'4 a'4) ~ a'4 ( fis'4.) a'4 ( b'4 a'4 g'4 fis'4) g'4 ( a'4 g'4) ~ g'4 ( fis'4) \finalis
 b'4 b'4  a'4. c''4 ( b'4 a'4) b'4 ( g'4) ~ g'4 ( fis'4) \divisioMinima \forceBreak

 g'4 ( b'4) a'4 ( b'4 a'4) b'4 ( g'4) fis'4 ( \once \tweak #'font-size #-4 e' ) fis'4 ( a'4 g'4 e'4) e'4 \divisioMaxima
 e'4 ( \once \tweak #'font-size #-4 d' ) g'4 a'4 ( b'4 a'4)  b'4 ( c''4 a'4 fis'4 a'4.) b'4 ( c''4 g'4 e'4 \forceBreak
) g'4 ( g'4) ~ g'4 ( e'4) a'4 ( g'4 fis'4) \divisioMinima
 e'4 ( g'4) b'4 ( g'4) a'4 ( fis'4) g'4. e'4 ( g'4 a'4) fis'4 ( \once \tweak #'font-size #-4 g' ) fis'4 \divisioMaxima
 g'4 g'4 g'4 fis'4 ( g'4) g'4 \forceBreak
 fis'4 ( g'4 a'4) a'4 ( e'4) a'4 ( g'4 fis'4) fis'4 \divisioMinima
 g'4 ( e'4) fis'4 ( g'4 a'4 b'4)  b'4 ( c''4 b'4 a'4) ~ a'4 ( g'4) \divisioMinima
  b'4 ( c''4 b'4 a'4) ~ a'4 ( fis'4. \forceBreak
) a'4 ( b'4 a'4 g'4 fis'4) g'4 ( a'4 g'4) ~ g'4 ( fis'4) \finalis

}

altoMusic = {
r2*3/2 g'2 fis'2*3/2 e'2*3/2 d'2*3/2 \divisioMinima
e'2 ~ e'2*3/2 fis'2*3/2 e'2*3/2 d'2*3/2 ~ d'2*3/2 ~ d'2*7/4 b2*5/2 ~ b2 d'2 ~ d'4 \finalis
r4 e'2*5/4 ~ e'2*4/2 d'2*3/2 \divisioMinima
e'2*5/2 ~ e'2*4/2 ~ e'2*3/2 ~ e'4 b4 \divisioMaxima
e'4 \tiny d' \normalsize4 d'4 ~ d'2*3/2 c'2*4/2 e'2*3/4 ~ e'2*3/2 ~ e'4 b2 ~ b2 ~ b2 d'4 \divisioMinima
b2*4/2 ~ b2 ~ b2*3/4 d'2*3/2 ~ d'2*3/2 \divisioMaxima
b2*3/2 ~ b2*3/2 d'2*3/2 e'2 d'2*3/2 ~ d'4 \divisioMinima
b2 ~ b2*4/2 e'2*3/2 d'2*3/2 ~ d'2*3/2 ~ d'2*7/4 ~ d'2*3/2 ~ d'2 b2 cis'2 ~ cis'4 \finalis
}

tenorMusic = {
e'2 ~ e'2*3/2 d'2*3/2 c'2*3/2 b2*3/2 ~ \divisioMinima
b2 g2*3/2 ~ g2*3/2 ~ g2*3/2 ~ g2*3/2 ~ g2*3/2 fis2*7/4 ~ fis2*5/2 e2 b2 ~ b4 \finalis
r4 c'2*5/4 ~ c'2*4/2 b2*3/2 ~ \divisioMinima
b2*5/2 ~ b2*4/2 ~ b2*4/2 g4 \divisioMaxima
fis2*3/2 g2*3/2 ~ g2*4/2 ~ g2*3/4 a2*4/2 ~ a2 g2 b2 ~ b4 \divisioMinima
g2*4/2 ~ g2 ~ g2*3/4 ~ g2*3/2 b2*3/2 \divisioMaxima
r2*3/2 g2*3/2 a2*3/2 ~ a2 b2*3/2 a4 ~ \divisioMinima
a2 g2*4/2 ~ g2*3/2 ~ g2*3/2 ~ g2*3/2 fis2*7/4 ~ fis2*3/2 a2 ~ a2*4/2 ~ a4 \finalis
}

bassMusic = {
r2*14/2 \divisioMinima
e2 ~ e2*3/2 d2*3/2 c2*3/2 b,2*3/2 g,2*3/2 b,2*7/4 d2*5/2 e2 b,2 ~ b,4 \finalis
r2*7/4 a2*4/2 b2*3/2 \divisioMinima
g2*5/2 fis2*4/2 e2*4/2 ~ e4 \divisioMaxima
b,2*3/2 ~ b,2*3/2 a,2*4/2 c2*3/4 ~ c2*4/2 e2 ~ e2 b2 r4 \divisioMinima
r2*4/2 fis2 e2*3/4 b,2*3/2 ~ b,2*3/2 \divisioMaxima
e2*3/2 ~ e2*3/2 d2*3/2 c2 b,2*3/2 ~ b,4 \divisioMinima
e2 ~ e2*4/2 c2*3/2 b,2*3/2 g,2*3/2 d2*7/4 b,2*3/2 ~ b,2 e2*4/2 fis4 \finalis
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
