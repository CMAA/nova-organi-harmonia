\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.122
%(volume.page)

global = {
 \key fis \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Laudate Deum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Laudate Deum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Laudate Deum" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- ia, _ 
\set stanza = " * " al -- le -- lú -- ia. _ _ _ _ _ _ ℣. 
Lau -- dá -- te De -- um 
o -- mnes An -- ge -- _ li e -- jus: 
lau -- dá -- te e -- _ _ _ _ _ _ _ _ _ um 
o -- mnes vir -- tú -- _ _ tes 
\set stanza = " * " 
e -- _ jus. _ _ _ _ _ _ }

chantMusic = {
\tieDown   g'4 ( \once \tweak #'font-size #-4 e' ) fis'4 ( g'4 a'4) b'4 ( a'4 b'4)  b'4 ( c''4 b'4 a'4) ~ a'4 ( g'4) \divisioMinima
 g'4 ( \once \tweak #'font-size #-4 e' ) fis'4 ( g'4 a'4) b'4 ( a'4 b'4)  b'4 ( c''4 b'4 \forceBreak
 a'4) ~ a'4 ( g'4) \divisioMinima
  b'4 ( c''4 b'4 a'4) ~ a'4 ( fis'4.) a'4 ( b'4 a'4 g'4 fis'4) g'4 ( a'4 g'4) ~ g'4 ( fis'4) \finalis
 b'4 b'4 a'4 a'4 ( b'4 a'4 fis'4 \forceBreak
) g'4 ( a'4 g'4 a'4) \divisioMaior
 a'4 a'4 ( b'4) b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4 a'4) b'4 ( g'4) fis'4 ( e'4) fis'4 ( a'4 \tiny g' e' 4) e'4 \divisioMaxima
 e'4 ( \once \tweak #'font-size #-4 d' ) g'4 \forceBreak
 a'4 ( b'4 a'4)  b'4 ( c''4 a'4 fis'4 a'4.) b'4 ( c''4 g'4 e'4) g'4 ( g'4) ~ g'4 ( e'4) a'4 ( g'4 fis'4) \divisioMinima
 e'4 ( g'4) b'4 ( g'4) a'4 ( fis'4) g'4. e'4 ( g'4 \forceBreak
) a'4 ( g'4 fis'4) g'4 ( fis'4) \divisioMaior
 g'4 ( \once \tweak #'font-size #-4 e' ) g'4 g'4 fis'4 ( g'4) a'4 ( fis'4) g'4. e'4 ( g'4 a'4 g'4 fis'4 g'4) g'4 ( fis'4) \divisioMaior
 g'4 ( e'4 \forceBreak
) fis'4 ( g'4 a'4 b'4)  b'4 ( c''4 b'4 a'4) ~ a'4 ( g'4) \divisioMinima
  b'4 ( c''4 b'4 a'4) ~ a'4 ( fis'4) a'4 ( b'4 a'4 g'4 fis'4) g'4 ( a'4 g'4) ~ g'4 ( fis'4) \finalis

}

altoMusic = {
r2 fis'2*3/2 ~ fis'2*3/2 e'2*3/2 d'2*3/2 \divisioMinima
r2 e'2*3/2 fis'2*3/2 e'2*3/2 d'2*3/2 ~ d'2*3/2 ~ d'2*7/4 b2*5/2 ~ b2 c'2 ~ c'4 \finalis
fis'4 ~ fis'2 ~ fis'2*4/2 g'2*4/2 ~ \divisioMaior
g'4 fis'2 e'2 d'2*3/2 ~ d'2 b2 ~ b2*4/2 ~ b4 \divisioMaxima
r4 \tiny d' \normalsize4 d'4 e'2*3/2 ~ e'2*4/2 ~ e'2*3/4 c'2*4/2 d'2 cis'2 d'2*3/2 ~ \divisioMinima
d'2*4/2 ~ d'2 ~ d'2*7/4 ~ d'2*3/2 ~ d'2 \divisioMaior
b2*4/2 d'2 ~ d'2 b2*3/4 ~ b2 d'2*4/2 ~ d'2 \divisioMaior
b2 ~ b2*4/2 e'2*3/2 d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 b2*5/2 ~ b2 cis'2 ~ cis'4 \finalis
}

tenorMusic = {
e'2*5/2 d'2*3/2 c'2*3/2 b2*3/2 ~ \divisioMinima
b2 g2*3/2 fis2*3/2 g2*3/2 ~ g2*3/2 ~ g2*3/2 fis2*7/4 ~ fis2*5/2 e2 a2 ~ a4 \finalis
b4 c'2 d'2*4/2 e'2*4/2 \divisioMaior
d'4 ~ d'2 c'2 b2*3/2 ~ b2 ~ b2 a2*4/2 g4 \divisioMaxima
a2 b4 g2*3/2 a2*4/2 e2*3/4 g2*4/2 ~ g2 b2 ~ b2*3/2 ~ \divisioMinima
b2*4/2 ~ b2 ~ b2*3/4 g2 ~ g2*3/2 a2 \divisioMaior
g2*4/2 a2 fis2 e2*3/4 g2 ~ g2*4/2 b2 \divisioMaior
r2 g2*4/2 a2*3/2 b2*3/2 g2*3/2 fis2*3/2 ~ fis2*5/2 e2 a2 ~ a4 \finalis
}

bassMusic = {
r2*14/2 \divisioMinima
e2 ~ e2*3/2 d2*3/2 c2*3/2 b,2*3/2 r2*3/2 d2*7/4 ~ d2*5/2 e2 ~ e2 fis4 \finalis
r2*7/2 d'2*4/2 ~ \divisioMaior
d'4 r2*7/2 a2 g2 e2*4/2 ~ e4 \divisioMaxima
fis2 e4 ~ e2*3/2 c2*4/2 ~ c2*3/4 a,2*4/2 b,2 ~ b,2 ~ b,2*3/2 \divisioMinima
g2*4/2 fis2 e2*3/4 ~ e2 b,2*3/2 d2 \divisioMaior
e2*4/2 d2 ~ d2 e2*3/4 ~ e2 b,2*4/2 ~ b,2 \divisioMaior
e2 ~ e2*4/2 c2*3/2 b,2*3/2 ~ b,2*3/2 d2*3/2 ~ d2*5/2 e2 ~ e2 fis4 \finalis
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
