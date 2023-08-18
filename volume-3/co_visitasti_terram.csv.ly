\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.88
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Visitasti terram" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Visitasti terram"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Visitasti terram" }
    \line {}
  }
}

chantText = \lyricmode {
Vi -- si -- tá -- sti ter -- ram, 
\set stanza = " * " et in -- e -- bri -- á -- sti e -- _ am, 
mul -- ti -- pli -- cá -- sti lo -- cu -- ple -- tá -- re e -- _ am. T.P. 
Al -- le -- _ _ lú -- ia. }

chantMusic = {
\tieDown   e'4 fis'4 ( g'4) a'4 a'4 g'4 ( fis'4) e'4 \divisioMinima
 e'4 ( d'4) g'4 a'4 ( b'4) a'4 b'4 g'4  g'4 ( b'4) c''4 ( b'4 a'4 b'4) b'4 ( a'4) \divisioMaxima
 a'4 ( b'4) g'4 ( fis'4) e'4 fis'4 e'4 ( d'4) \divisioMinima
 d'4 e'4 g'4 g'4 ( g'4 fis'4 a'4 b'4) g'4 ( fis'4) e'4 ( fis'4) g'4 ( fis'4 e'4 fis'4) fis'4 ( e'4) \finalis
 g'4 g'4 ( a'4 fis'4) ~ fis'4 ( e'4) g'4 ( fis'4) e'4 ( d'4 e'4 fis'\prall g'4) fis'4 ( e'4) \finalis

}

altoMusic = {
e'4 ~ e'2 ~ e'2 d'2 e'4 \divisioMinima
r2 b4 d'2 ~ d'4 e'2 d'2 c'2*4/2 d'2 ~ \divisioMaxima
d'2 ~ d'2*3/2 b2*3/2 \divisioMinima
d'2*3/2 ~ d'2*7/2 b2*6/2 ~ b2 \finalis
e'4 d'2 c'2*3/2 b2 a2 b2*3/2 ~ b2 \finalis
}

tenorMusic = {
e'4 ~ e'2 d'4 c'4 b2 ~ b4 \divisioMinima
a2 g4 ~ g2 fis4 g2 ~ g2 ~ g2*4/2 fis2 ~ \divisioMaxima
fis2 g2*3/2 a2*3/2 \divisioMinima
b2*3/2 a2*7/2 ~ a2*6/2 g2 \finalis
b4 ~ b2 a2*3/2 g2 a2 ~ a2*3/2 g2 \finalis
}

bassMusic = {
r2*7/2 g4 \divisioMinima
fis2 e4 d2 ~ d4 c2 b,2 a,2*4/2 d2 \divisioMaxima
b,2 ~ b,2*3/2 ~ b,2*3/2 ~ \divisioMinima
b,2*3/2 ~ b,2*7/2 e2*6/2 ~ e2 ~ \finalis
e4 ~ e2 ~ e2*3/2 ~ e2 fis2 e2*3/2 ~ e2 \finalis
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
