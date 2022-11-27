\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.54
%(volume.page)

global = {
 \key fis \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Pauper" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Pauper"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Pauper" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- _ ia, 
\set stanza = " * " al -- le -- lú -- _ ia. _ _ _ _ _ _ _ _ ℣. 
Pau -- per _ _ _ et _ _ in -- ops 
lau -- dá -- _ _ _ _ bunt no -- men 
\set stanza = " * " tu -- _ um. _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   e'4 ( g'4 g'4) fis'4 ( g'4) a'4 ( b'4 a'4 g'4) a'4 ( b'4) b'4 ( d''4 b'4 a'4) \divisioMinima
  e'4 ( g'4 g'4) fis'4 ( g'4) a'4 ( b'4 a'4 g'4) a'4 ( b'4) b'4 ( d''4 b'4 a'4) \divisioMinima
 b'4 ( e'4) fis'4. g'4 ( a'4) b'4 ( a'4.) b'4 ( e'4) fis'4. g'4 ( a'4) b'4 ( a'4 g'4) b'4 ( a'4) ~ a'4 ( fis'4) \finalis
 b'4  a'4. c''4 ( b'4 a'4) b'4 ( g'4) ~ g'4 ( fis'4) \divisioMinima
 g'4 ( e'4) fis'4 ( g'4 a'4 b'4) ~ b'4 ( a'4) g'4 ( a'4) a'4 \divisioMaior
 a'4 ( b'4 a'4 b'4 g'4 fis'4 e'4) fis'4 a'4 ( fis'4 g'4) b'4 ( a'4 g'4) b'4 ( a'4 g'4) a'4 ( g'4) fis'4 \divisioMinima
 fis'4 ( g'4 a'4) a'4 ( e'4 g'4)  fis'4 ( g'4 a'4.) g'4 ( b'4 a'4 b'4) b'4 ( d''4 b'4 a'4) \divisioMinima
 b'4 ( e'4) fis'4. g'4 ( a'4) b'4 ( a'4.) b'4 ( e'4) fis'4. g'4 ( a'4) b'4 ( a'4 g'4) b'4 ( a'4) ~ a'4 ( fis'4) \finalis

}

altoMusic = {
r2*3/2 d'2 e'2*4/2 fis'2 e'2 d'2 b2*3/2 d'2 ~ d'2*4/2 ~ d'2 ~ d'2*4/2 ~ \divisioMinima
d'2 ~ d'2*3/4 ~ d'2*3/2 e'2*3/4 b2 ~ b2*3/4 d'2 ~ d'2*4/2 cis'2 b4 \finalis
fis'4 e'2*3/4 ~ e'2*4/2 d'2*3/2 \divisioMinima
c'2 d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'4 ~ \divisioMaior
d'2*4/2 c'2*3/2 ~ c'4 d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'4 ~ \divisioMinima
d'2*3/2 b2*3/2 d'2 ~ d'2*3/4 ~ d'2*4/2 ~ d'2*4/2 ~ \divisioMinima
d'2 ~ d'2*3/4 ~ d'2*3/2 e'2*3/4 b2 ~ b2*3/4 d'2 ~ d'2*4/2 cis'2 b4 \finalis
}

tenorMusic = {
e'2*3/2 d'2 ~ d'2*4/2 ~ d'2 ~ d'2 ~ d'2 g2*3/2 a2 e2*4/2 fis2 ~ fis2*4/2 \divisioMinima
g2 fis2*3/4 e2*3/2 ~ e2*3/4 ~ e2 d2*3/4 ~ d2 e2*4/2 ~ e2 fis4 \finalis
d'4 ~ d'2*3/4 c'2*4/2 b2*3/2 \divisioMinima
r2 b2*3/2 ~ b2*3/2 ~ b2 a4 \divisioMaior
g2*4/2 ~ g2*3/2 a4 ~ a2*3/2 g2*3/2 fis2*3/2 e2 d4 \divisioMinima
a2*3/2 g2*3/2 ~ g2 fis2*3/4 e2*4/2 fis2*4/2 \divisioMinima
g2 fis2*3/4 e2*3/2 ~ e2*3/4 ~ e2 d2*3/4 ~ d2 e2*4/2 ~ e2 fis4 \finalis
}

bassMusic = {
r2*15/2 e2*3/2 d2 ~ d2*4/2 ~ d2 b,2*4/2 ~ \divisioMinima
b,2 ~ b,2*3/4 ~ b,2*3/2 c2*3/4 d2 ~ d2*3/4 b,2 ~ b,2*4/2 ~ b,2 ~ b,4 \finalis
r2*19/4 \divisioMinima
a2 ~ a2*3/2 g2*3/2 fis2 ~ fis4 \divisioMaior
g2*4/2 a,2*3/2 ~ a,4 b,2*3/2 ~ b,2*3/2 ~ b,2*3/2 ~ b,2 ~ b,4 ~ \divisioMinima
b,2*3/2 e2*3/2 d2 ~ d2*3/4 ~ d2*4/2 ~ d2*4/2 \divisioMinima
b,2 ~ b,2*3/4 ~ b,2*3/2 c2*3/4 d2 ~ d2*3/4 b,2 ~ b,2*4/2 ~ b,2 ~ b,4 \finalis
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
        "4"
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
