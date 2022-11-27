\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.111
%(volume.page)

global = {
 \key fis \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Tulerunt Jesum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Tulerunt Jesum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Tulerunt Jesum" }
    \line {}
  }
}

chantText = \lyricmode {
Tu -- lé -- runt 
\set stanza = " * " Je -- _ _ sum 
pa -- rén -- _ _ tes e -- _ _ jus _ 
in _ Je -- rú -- _ _ sa -- lem, _ 
ut sí -- _ ste -- rent _ e -- um Dó -- _ _ mi -- no. _ _ }

chantMusic = {
\tieDown   d'4 ( e'4 g'4) g'4 fis'4 ( g'4 a'4)  e'4 ( a'4 g'4 fis'4) a'4 ( b'4 a'4 g'4) a'4 ( g'4 fis'4) g'4 \divisioMaior
 g'4 g'4 ( a'4 g'4) a'4 ( g'4) ~ g'4 ( g'4 \once \tweak #'font-size #-4 e'  \forceBreak
) e'4 ( a'4 g'4 fis'4) b'4 ( a'4 b'4 g'4) b'4 ( a'4) ~ a'4 ( \once \tweak #'font-size #-4 e' ) e'4 ( a'4 g'4 fis'4) g'4 ( a'4 g'4 e'4) \divisioMaior
 e'4 ( g'4) a'4 ( fis'4 g'4) g'4  g'4 ( g'4) b'4 ( c''4 b'4) c''4 ( b'4) b'4 ( a'4) a'4 ( b'4 \forceBreak
) c''4 ( a'4 b'4) \divisioMaxima
 fis'4 ( g'4) a'4 ( b'4) ~ b'4 ( a'4) a'4 ( g'4) g'4 ( a'4 b'4) ~ b'4 ( a'4) e'4 ( a'4 g'4 fis'4) fis'4 \divisioMinima
 fis'4 ( a'4) b'4 ( a'4 g'4) a'4 ( b'4 a'4) fis'4 fis'4 ( a'4 g'4) a'4 ( g'4) ~ g'4 ( fis'4) \finalis

}

altoMusic = {
d'2*4/2 ~ d'2*3/2 e'2*4/2 d'2*4/2 e'2*4/2 ~ \divisioMaior
e'4 d'2*3/2 e'2 ~ e'2*3/2 ~ e'2*4/2 d'2 ~ d'2*3/2 e'2 \tiny e' \normalsize4 d'2*4/2 b2*4/2 ~ \divisioMaior
b2 ~ b2*4/2 ~ b2 e'2*3/2 ~ e'2 ~ e'2 g'2 e'2*3/2 \divisioMaxima
d'2*6/2 ~ d'2*4/2 ~ d'2*3/2 b2*4/2 ~ b4 \divisioMinima
d'2 ~ d'2*6/2 ~ d'4 ~ d'2*4/2 c'2 d'4 \finalis
}

tenorMusic = {
r2*3/2 b2*4/2 ~ b2*4/2 ~ b2*4/2 ~ b2*4/2 ~ \divisioMaior
b4 ~ b2*3/2 ~ b2 ~ b2*3/2 g2*4/2 fis2 e2*3/2 ~ e2*3/2 fis2*4/2 e2 g2 ~ \divisioMaior
g2 ~ g2*4/2 ~ g2 ~ g2*3/2 a2 c'2 ~ c'2 g2*3/2 \divisioMaxima
fis2*3/2 g2*3/2 e2 ~ e2 fis2*3/2 g2*4/2 b4 ~ \divisioMinima
b2 fis2*6/2 a4 ~ a2*4/2 e2 b4 \finalis
}

bassMusic = {
r2*7/2 g2*4/2 fis2*4/2 e2*4/2 ~ \divisioMaior
e4 b2*3/2 r2 e2*3/2 d2*4/2 ~ d2 ~ d2*3/2 c2*3/2 b,2*4/2 e2 ~ e2 \divisioMaior
r2 fis2*4/2 e2 d2*3/2 c2 ~ c2 e2 ~ e2*3/2 \divisioMaxima
b,2*3/2 ~ b,2*3/2 ~ b,2 d2 ~ d2*3/2 e2*4/2 b4 \divisioMinima
d2 ~ d2*6/2 ~ d4 b,2*4/2 ~ b,2 ~ b,4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Offertory"
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
