\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.23
%(volume.page)

global = {
 \key g \major
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Ecce Dominus veniet" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Ecce Dominus veniet"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Ecce Dominus veniet" }
    \line {}
  }
}

chantText = \lyricmode {
Ec -- ce Dó -- mi -- nus vé -- ni -- et, 
\set stanza = " * " et om -- nes san -- cti e -- jus cum e -- o: 
et e -- rit in di -- e il -- la _ lux _ ma -- _ gna. }

chantMusic = {
\tieDown   g'4 g'4 g'4 g'4 g'4 g'4 e'4 ( d'4) d'4 \divisioMinima
 e'4 ( c'4 d'4) g'4 ( g'4 \once \tweak #'font-size #-4 a' ) g'4 g'4 ( \once \tweak #'font-size #-4 a' ) g'4 g'4 ( a'4) g'4 ( fis'4) a'4 ( c''4 a'4 b'\prall c''4 \forceBreak
) g'4 ( a'4 g'4) g'4 \divisioMaxima
 g'4 g'4 ( a'\prall b'4 c''4) b'4 b'4 b'4 ( d''4 d''4) b'4 ( d''4) a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4 g'4 g'4) e'4 ( fis'4 e'4) \divisioMinima
 g'4 ( fis'4) a'4 ( a'4 b'4) g'4 ( a'4) b'4 ( a'4 g'4 a'4) a'4 ( g'4) \finalis

}

altoMusic = {
b2 c'2*3/2 d2*4/2 \divisioMinima
c'2*3/2 d'2*4/2 c'2*3/2 d'2 ~ d'2 e'2*5/2 d'2*3/2 ~ d'4 \divisioMaxima
e'4 ~ e'2*6/2 d'2*5/2 e'2 ~ e'2*4/2 b2 ~ b4 \divisioMinima
d'2 ~ d'2*3/2 ~ d'2 ~ d'2*4/2 ~ d'2 \finalis
}

tenorMusic = {
r2 e2*3/2 g2*4/2 ~ \divisioMinima
g2*3/2 ~ g2*4/2 ~ g2*3/2 ~ g2 a2 ~ a2 e2*3/2 ~ e2*3/2 d4 \divisioMaxima
g4 a2*6/2 ~ a2*5/2 ~ a2 b2*4/2 a2 g4 ~ \divisioMinima
g2 fis2*3/2 g2 fis2*4/2 b2 \finalis
}

bassMusic = {
e2*5/2 b,2*4/2 \divisioMinima
c2*3/2 b,2*4/2 a,2*3/2 b,2 ~ b,2 c2 ~ c2*3/2 b,2*3/2 ~ b,4 \divisioMaxima
c4 ~ c2*6/2 b,2*5/2 c2 ~ c2*4/2 e2 ~ e4 \divisioMinima
b,2 ~ b,2*3/2 ~ b,2 d2*4/2 g2 \finalis
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
