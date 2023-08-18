\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.112
%(volume.page)

global = {
 \key fis \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Qui facit Angelos" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Qui facit Angelos"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Qui facit Angelos" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- _ ia, _ 
\set stanza = " * " 
al -- le -- lú -- _ ia. _ 
_ _ _ _ _ _ _ _ _ _ ℣. 
Qui fa -- _ cit An -- _ _ ge -- los su -- _ os spí -- ri -- tus: _ 
et _ _ mi -- ní -- stros su -- os 
\set stanza = " * " 
flam -- mam i -- _ gnis. _ 
_ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   d'4 e'4  fis'4 ( e'4) b'4 ( c''4) b'4 ( b'4 a'4 fis'4) g'4 ( e'4) \divisioMaior
  d'4 e'4  fis'4 ( e'4) b'4 ( c''4) b'4 ( b'4 a'4 fis'4) g'4 ( e'4) \divisioMaior
  fis'4 ( a'4) ~ a'4 ( g'4 e'4) ~ e'4 ( d'4.) g'4 ( a'4 b'4 c''4 b'4) ~ b'4 ( a'4) fis'4 ( g'4 e'4) \divisioMinima
 g'4 ( g'4 a'4) b'4 ( a'4) b'4 ( a'4) ~ a'4 ( fis'4) \finalis
 d'4 ( e'4)  fis'4 ( e'4) b'4 ( c''4) b'4 \divisioMinima
 b'4 ( a'4 fis'4) g'4 ( e'4 g'4) a'4 ( a'4 b'4) a'4 ( g'4 fis'4) fis'4 d'4 ( e'4) g'4 ( a'4 b'4) a'4 \divisioMinima
 g'4 ( fis'4) e'4 ( fis'4) fis'4 ( e'4) g'4 ( g'4 fis'4) \divisioMaxima
 d'4 ( e'4 g'4.) fis'4 ( g'4 a'4 b'4 a'4.) b'4 ( a'4 g'4 fis'4) d'4 e'4 fis'4 ( g'4) a'4 ( b'4 a'4 fis'4) fis'4 \divisioMaior
 d'4 e'4  fis'4 ( e'4) b'4 ( c''4) b'4 ( b'4 a'4 fis'4) g'4 ( e'4) \divisioMaior
  fis'4 ( a'4) ~ a'4 ( g'4 e'4) ~ e'4 ( d'4.) g'4 ( a'4 b'4 c''4 b'4) ~ b'4 ( a'4) fis'4 ( g'4 e'4) \divisioMinima
 g'4 ( g'4 a'4) b'4 ( a'4) b'4 ( a'4) ~ a'4 ( fis'4) \finalis

}

altoMusic = {
d'2 ~ d'2 e'2 ~ e'2*4/2 ~ e'4 ~ e'4 r2 b2 e'2 ~ e'2*4/2 d'2 ~ d'4 ~ d'2*3/2 b2*7/4 c'2*4/2 d'2*3/2 ~ d'2*3/2 ~ \divisioMinima
d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'4 ~ \finalis
d'2 ~ d'2 e'2 ~ e'4 ~ \divisioMinima
e'2*3/2 d'2*3/2 e'2*3/2 ~ e'2*3/2 d'4 ~ d'2 ~ d'2*3/2 e'4 \divisioMinima
d'2*4/2 c'2 d'2*3/2 ~ \divisioMaxima
d'2*7/4 ~ d'2*4/2 e'2*3/4 d'2 ~ d'2 ~ d'2 ~ d'2 ~ d'2*4/2 ~ d'4 \divisioMaior
b2 ~ b2 e'2 ~ e'2*4/2 d'2 ~ d'4 ~ d'2*3/2 b2*7/4 c'2*4/2 d'2*3/2 ~ d'2*3/2 ~ \divisioMinima
d'2*3/2 ~ d'2*3/2 cis'2 b4 \finalis
}

tenorMusic = {
r2 b2 ~ b2 c'2*4/2 b2 a2 ~ a2 g2 a2*4/2 b2 ~ b4 e2*3/2 fis2*7/4 g2*4/2 a2*3/2 d2*3/2 \divisioMinima
e2*3/2 fis2*3/2 a2 b4 \finalis
r2 b2 ~ b2 ~ b4 \divisioMinima
c'2*3/2 b2*3/2 c'2*3/2 ~ c'2*3/2 b4 ~ b2 ~ b2*3/2 c'4 \divisioMinima
b2*4/2 a2 b2*3/2 ~ \divisioMaxima
b2*7/4 a2*4/2 ~ a2*3/4 fis2 a2 ~ a2 g2 fis2*4/2 b4 \divisioMaior
a2 ~ a2 g2 a2*4/2 b2 ~ b4 e2*3/2 fis2*7/4 g2*4/2 fis2*3/2 d2*3/2 \divisioMinima
e2*3/2 fis2*3/2 e2 fis4 \finalis
}

bassMusic = {
r2*4/2 a2 ~ a2*4/2 e2 fis2 e2 ~ e2 c2*4/2 b,2 ~ b,4 ~ b,2*3/2 ~ b,2*7/4 a,2*4/2 b,2*3/2 ~ b,2*3/2 ~ \divisioMinima
b,2*3/2 ~ b,2*3/2 ~ b,2 ~ b,4 \finalis
r2*4/2 a2 g4 \divisioMinima
a2*3/2 b2*3/2 ~ b2*3/2 c'2*3/2 r2*3/2 a2*3/2 ~ a4 ~ \divisioMinima
a2*4/2 ~ a2 r2*3/2 \divisioMaxima
b,2*7/4 ~ b,2*4/2 c2*3/4 d2 ~ d2 b,2 ~ b,2 ~ b,2*4/2 ~ b,4 ~ \divisioMaior
b,2 e2 ~ e2 c2*4/2 b,2 ~ b,4 ~ b,2*3/2 ~ b,2*7/4 a,2*4/2 b,2*3/2 ~ b,2*3/2 ~ \divisioMinima
b,2*3/2 ~ b,2*3/2 ~ b,2 ~ b,4 \finalis
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
