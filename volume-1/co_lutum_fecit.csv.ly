\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.264
%(volume.page)

global = {
 \key g \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Lutum fecit" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Lutum fecit"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Lutum fecit" }
    \line {}
  }
}

chantText = \lyricmode {
Lu -- tum fe -- cit 
\set stanza = " * " ex spu -- to Dó -- mi -- nus, 
et li -- ní -- vit ó -- cu -- los me -- os 
et áb -- i -- i, et la -- vi, et vi -- di, 
et cré -- di -- di De -- o. }

chantMusic = {
\tieDown   g'4 fis'4 ( g'4) e'4 e'4 ( d'4)  g'4 g'4 ( a'4) a'4 b'4 a'4 ( g'4) g'4 \divisioMaior
 g'4 a'4 b'4 a'4 ( g'4) a'4 ( b'4) a'4 g'4 \forceBreak
 g'4 ( fis'4 e'4) e'4 \divisioMaxima
 g'4 g'4 ( a'4) g'4 g'4 \divisioMinima
 a'4 ( b'4) b'4 ( a'4 g'4) g'4 \divisioMinima
 a'4 g'4 ( fis'4) e'4 \divisioMaior
 g'4 a'4 ( b'4) a'4 a'4 g'4 g'4 \finalis

}

altoMusic = {
b4 ~ b2 ~ b4 ~ b2*3/2 d'2 ~ d'4 ~ d'4 ~ d'2 b4 ~ \divisioMaior
b2 ~ b4 ~ b2 d'2*4/2 b2*3/2 ~ b4 ~ \divisioMaxima
b4 ~ b2*3/2 ~ b4 \divisioMinima
d'2 ~ d'2*3/2 ~ d'4 ~ \divisioMinima
d'4 ~ d'2 ~ d'4 ~ \divisioMaior
d'4 ~ d'2*3/2 ~ d'4 ~ d'2 \finalis
}

tenorMusic = {
r4 a2 g4 fis2*3/2 g2 fis4 e4 fis2 g4 ~ \divisioMaior
g2 fis4 g2 fis2*4/2 a2*3/2 g4 \divisioMaxima
r4 fis2*3/2 g4 \divisioMinima
fis2 ~ fis2*3/2 g4 ~ \divisioMinima
g4 a2 g4 ~ \divisioMaior
g4 e2*3/2 fis4 b2 \finalis
}

bassMusic = {
e4 ~ e2 ~ e4 b,2*3/2 ~ b,2 ~ b,4 d4 ~ d2 e4 ~ \divisioMaior
e2 ~ e4 ~ e2 d2*4/2 e2*3/2 ~ e4 ~ \divisioMaxima
e4 ~ e2*3/2 ~ e4 \divisioMinima
d2 b,2*3/2 ~ b,4 ~ \divisioMinima
b,4 ~ b,2 ~ b,4 ~ \divisioMaior
b,4 d2*3/2 ~ d4 g2 \finalis
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
        "VI"
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
