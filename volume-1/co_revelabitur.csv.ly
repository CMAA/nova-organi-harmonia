\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.48
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Revelabitur" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Revelabitur"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Revelabitur" }
    \line {}
  }
}

chantText = \lyricmode {
Re -- ve -- lá -- bi -- tur _ 
\set stanza = " * " 
gló -- ri -- a Dó -- mi -- ni: 
et vi -- dé -- bit o -- mnis ca -- _ ro 
sa -- lu -- tá -- _ _ re De -- _ _ i no -- stri. }

chantMusic = {
\tieDown  e'4 ( g'4 fis'4) g'4 g'4 ( b'4 a'4) a'4 ( g'4) g'4. fis'4 ( g'4 e'4) \divisioMaior
 e'4 ( g'4 a'4) a'4 ( g'4) g'4 a'4 ( b'4 a'4 b'4) a'4 \forceBreak
 g'4 ( a'4 g'4 e'4) \divisioMaxima
 e'4 g'4 ( fis'4) g'4 ( fis'4 a'4) g'4 g'4 ( g'4 g'4) e'4 g'4. fis'4 ( a'4 g'4) g'4 \divisioMaior
 g'4 a'4 ( b'4 a'4) b'4. g'4 ( b'4 \forceBreak
) d''4 ( d''4 b'4 a'4 fis'4 g'4) g'4 \divisioMinima
 g'4 ( e'4) g'4 ( fis'4 d'4) g'4 ( b'4 a'4) a'4 ( b'4 g'4 fis'4 g'4) e'4 ( fis'4 e'4) e'4 \finalis

}

altoMusic = {
b2*4/2 d'2*3/2 e'2 b2*3/4 ~ b2 ~ b4 \divisioMaior
e'2*3/2 d'2*3/2 ~ d'2*5/2 e'2*4/2 ~ e'4 ~ e'2 ~ e'2*4/2 d'2*4/2 ~ d'2*9/4 ~ d'4 \divisioMaior
e'4 ~ e'2*3/2 d'2*7/4 ~ d'2*7/2 ~ \divisioMinima
d'2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'2*3/2 ~ d'2*3/2 b4 \finalis
}

tenorMusic = {
g2*4/2 b2*3/2 ~ b2 ~ b2*3/4 a2 g4 \divisioMaior
b2*3/2 ~ b2*3/2 a2*5/2 b2*4/2 g4 b2 a2*4/2 ~ a2*4/2 g2*9/4 b4 ~ \divisioMaior
b4 a2*3/2 ~ a2*7/4 g2*7/2 ~ \divisioMinima
g2 a2*3/2 g2*3/2 fis2 g2*3/2 a2*3/2 g4 \finalis
}

bassMusic = {
e2*4/2 ~ e2*3/2 ~ e2 ~ e2*3/4 ~ e2 ~ e4 \divisioMaior
g2*3/2 ~ g2*3/2 fis2*5/2 e2*4/2 ~ e4 d2 c2*4/2 b,2*4/2 ~ b,2*9/4 ~ b,4 \divisioMaior
c4 ~ c2*3/2 b,2*7/4 ~ b,2*7/2 \divisioMinima
e2 d2*3/2 b,2*3/2 ~ b,2 ~ b,2*3/2 e2*3/2 ~ e4 \finalis
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
