\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.65
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Viderunt omnes" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Viderunt omnes"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Viderunt omnes" }
    \line {}
  }
}

chantText = \lyricmode {
Vi -- dé -- runt o -- mnes 
\set stanza = " * " fi -- nes ter -- _ ræ _ 
sa -- lu -- tá -- _ _ re De -- _ _ i no -- stri. }

chantMusic = {
\tieDown  g'4 ( a'4) a'4 ( g'4 g'4) e'4 ( \once \tweak #'font-size #-4 fis' ) d'4 ( \once \tweak #'font-size #-4 e' ) e'4 \divisioMinima
 e'4 ( g'4 a'4) a'4 ( b'4) b'4 ( d''4) ~ d''4 ( a'4) a'4 ( g'4) b'4 ( a'4 fis'4) \divisioMaior \forceBreak

 g'4 a'4 ( b'4 a'4) b'4. g'4 ( b'4) d'4 ( d'4 b'4 a'4 fis'4 g'4) g'4 \divisioMinima
 g'4 ( e'4) g'4 ( fis'4 d'4.) g'4 ( b'4 a'4) a'4 ( b'4 g'4 fis'4 g'4) e'4 ( fis'4 e'4) e'4 \finalis

}

altoMusic = {
r2 d'2*5/2 b2 ~ b4 ~ \divisioMinima
b2*3/2 e'2*3/2 fis'2*3/2 e'2 d'2*3/2 \divisioMaior
e'4 ~ e'2*3/2 ~ e'2*3/4 ~ e'2 fis'2*6/2 e'4 \divisioMinima
d'2 ~ d'2*7/4 ~ d'2*3/2 ~ d'2 ~ d'2*3/2 b2*3/2 ~ b4 \finalis
}

tenorMusic = {
r2 b2*5/2 a2 g4 ~ \divisioMinima
g4 ~ g2 ~ g2*3/2 b2*3/2 ~ b2 a2*3/2 \divisioMaior
b4 fis2*3/2 g2*3/4 b2 ~ b2*6/2 ~ b4 ~ \divisioMinima
b2 a2*7/4 g2*3/2 fis2 a2*3/2 ~ a2*3/2 g4 \finalis
}

bassMusic = {
r2*11/2 fis2 e2*3/2 d2*3/2 e2 fis2*3/2 \divisioMaior
e4 ~ e2*3/2 ~ e2*3/4 ~ e2 d2*6/2 e4 \divisioMinima
b,2 ~ b,2*7/4 ~ b,2*3/2 d2 ~ d2*3/2 e2*3/2 ~ e4 \finalis
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
