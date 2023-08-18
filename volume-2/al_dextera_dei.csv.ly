\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.51
%(volume.page)

global = {
 \key fis \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Dextera Dei" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Dextera Dei"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Dextera Dei" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- _ le -- lú -- ia, _ _ 
\set stanza = " * " al -- _ le -- lú -- ia. _ _ _ _ _ _ _ ℣. 
Déx -- te -- ra De -- i 
fe -- _ cit vir -- tú -- tem 
déx -- te -- ra Dó -- mi -- _ ni 
\set stanza = " * " 
ex -- al -- tá -- vit me. _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   e'4 ( g'4 e'4) ~ e'4 ( \once \tweak #'font-size #-4 d' ) g'4 a'4 ( \once \tweak #'font-size #-4 b' ) b'4 ( cis''\prall d''4 b'4 a'4) b'4 ( a'4 g'4) a'4 ( a'4 fis'4) \divisioMinima
 e'4 ( g'4 e'4) ~ e'4 ( d'4) g'4 a'4 ( \once \tweak #'font-size #-4 b'  \forceBreak
) b'4 ( cis''\prall d''4 b'4 a'4) b'4 ( a'4 g'4) a'4 ( a'4 fis'4) \divisioMinima
 fis'4 ( a'\prall b'4 a'4 b'4.) a'4 ( b'\prall cis''4 b'4 a'4 b'4.) e'4 ( fis'4 g'4 a'4.) g'4 ( b'4 a'4 b'4) g'4 ( g'4 fis'4) \finalis \forceBreak

 b'4 a'4 ( b'4 a'4 fis'4) a'4 g'4 ( a'4 b'4 fis'4 e'4 fis'\prall g'4 fis'4 g'4) fis'4 ( e'4) \divisioMaior
 e'4 ( fis'4 g'4 a'4) b'4 ( a'4 b'4) g'4 ( g'4 fis'4) e'4 ( \once \tweak #'font-size #-4 d'  \forceBreak
) e'4 ( fis'\prall g'4 fis'4 g'4) fis'4 ( e'4) \divisioMaxima
 d'4 e'4 g'4 ( fis'4) g'4 ( a'4) a'4 ( g'4 fis'4) g'4 ( fis'4 e'4 fis'4) fis'4 ( e'4) \divisioMaior
 e'4 ( g'4 e'4 e'4) e'4 ( \once \tweak #'font-size #-4 d' ) g'4 \forceBreak
 a'4 ( \once \tweak #'font-size #-4 b' ) b'4 ( cis''\prall d''4 b'4 a'4) b'4 ( a'4 g'4) a'4 ( a'4 fis'4) \divisioMinima
 fis'4 ( a'\prall b'4 a'4 b'4.) a'4 ( b'\prall cis''4 b'4 a'4 b'4.) e'4 ( fis'4 g'4 a'4.) g'4 ( b'4) a'4 ( b'4 g'4) ~ g'4 ( fis'4) \finalis

}

altoMusic = {
r2 e'4 ~ e'4 \tiny d' \normalsize4 d'4 e'2 d'2*5/2 ~ d'2*3/2 cis'2 d'4 \divisioMinima
b2 a2*3/2 b4 e'2 d'2*5/2 cis'2*3/2 d'2*3/2 \divisioMinima
cis'2 fis'2*7/4 e'2 d'2*9/4 ~ d'2*3/2 ~ d'2*3/4 ~ d'2*4/2 ~ d'2 ~ d'4 \finalis
r4 cis'2*5/2 d'2*4/2 ~ d'2 ~ d'2*3/2 b2 \divisioMaior
e'2*4/2 fis'2*3/2 d'2*3/2 ~ d'2 ~ d'2 c'2*3/2 b2 \divisioMaxima
a2 b2*4/2 ~ b2*7/2 ~ b2 \divisioMaior
r2*5/2 \tiny d' \normalsize4 d'4 e'2 ~ e'2 d'2*3/2 cis'2*3/2 d'2*3/2 \divisioMinima
cis'2 fis'2*7/4 e'2 d'2*9/4 b2*9/4 d'2*4/2 ~ d'2*3/2 \finalis
}

tenorMusic = {
b2 a2*3/2 g4 ~ g2 fis2*5/2 g2*3/2 b2*3/2 \divisioMinima
g2 fis2*3/2 e4 fis2 ~ fis2*5/2 g2*3/2 b2*3/2 \divisioMinima
fis2 ~ fis2*7/4 ~ fis2 ~ fis2*9/4 g2*3/2 e2*3/4 d2 g2 b2 ~ b4 ~ \finalis
b2*6/2 ~ b2 ~ b2 ~ b2 ~ b2*3/2 ~ b2 ~ \divisioMaior
b2*4/2 ~ b2*3/2 a2*3/2 fis2 g2 ~ g2*3/2 ~ g2 \divisioMaxima
a2 ~ a2 g2 fis2*3/2 e2*4/2 g2 \divisioMaior
b2*4/2 a2 g4 ~ g2 fis2 ~ fis2*3/2 g2*3/2 b2*3/2 \divisioMinima
fis2 ~ fis2*7/4 ~ fis2 ~ fis2*9/4 g2*9/4 ~ g2*4/2 b2*3/2 \finalis
}

bassMusic = {
g2 fis2*3/2 ~ fis4 e2 b,2*5/2 ~ b,2*3/2 ~ b,2*3/2 \divisioMinima
e2 ~ e2*3/2 ~ e4 cis2 b,2*5/2 ~ b,2*3/2 ~ b,2*3/2 \divisioMinima
r2 d2*7/4 cis2 b,2*9/4 ~ b,2*3/2 ~ b,2*3/4 ~ b,2*4/2 ~ b,2 ~ b,4 \finalis
r2*8/2 a2 g2 fis2*3/2 g2 \divisioMaior
e2*4/2 d2*3/2 ~ d2*3/2 ~ d2 b,2 a,2*3/2 e2 \divisioMaxima
fis2 e2 ~ e2 d2*3/2 e2*4/2 ~ e2 \divisioMaior
g2*4/2 fis2 ~ fis4 e2 cis2 b,2*3/2 ~ b,2*3/2 ~ b,2*3/2 \divisioMinima
r2 d2*7/4 cis2 b,2*9/4 g,2*9/4 b,2*4/2 ~ b,2*3/2 \finalis
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
