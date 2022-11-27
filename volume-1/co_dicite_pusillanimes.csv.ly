\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.17
%(volume.page)

global = {
 \key d \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Dicite Pusilanimes" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Dicite Pusilanimes"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Dicite Pusilanimes" }
    \line {}
  }
}

chantText = \lyricmode {
Dí -- ci -- te: 
\set stanza = " * " 
Pu -- sil -- lá -- ni -- mes con -- for -- tá -- mi -- ni, _ 
et no -- lí -- te ti -- mé -- re: _ 
ec -- ce De -- us no -- ster vé -- ni -- et, 
et sal -- vá -- _ bit _ nos. }

chantMusic = {
\tieDown  d'4 ( e'4) e'4 ( c'4 e'4 d'4) d'4 \divisioMaior
 d'4 d'4 ( e'4 g'4) fis'4 ( g'4 a'4) a'4 a'4 \divisioMinima
 a'4 a'4 c''4 ( a'4 c''4) c''4 ( c''4 c''4 \forceBreak
) c''4 ( d''4 c''4 c''4) a'4 ( b'4 a'4) \divisioMaior
 g'4 g'4 g'4 ( b'4) a'4 ( b'4 a'4) g'4 g'4 ( b'4) a'4 ( b'4 a'4 a'4) fis'4 ( g'4 fis'4) \divisioMaxima
 fis'4 ( g'\prall a'4 b'4) a'4 \forceBreak
 a'4 a'4 a'4 fis'4 ( a'4) g'4 ( a'4) fis'4 ( g'4 fis'4 e'4 d'4 e'4) e'4 ( d'4) \divisioMaior
 c'4 ( e'4 g'4) g'4 g'4 ( fis'4) g'4 ( e'4) g'4 ( e'4) fis'4 ( e'4 d'4) e'4 ( d'4) \finalis

}

altoMusic = {
b2 c'2*4/2 b4 ~ \divisioMaior
b4 d'2*3/2 ~ d'2*3/2 e'2 ~ \divisioMinima
e'2 g2*3/2 e'2*3/2 ~ e'2*4/2 d'2*3/2 \divisioMaior
e'2 ~ e'2 ~ e'2*4/2 d'2 ~ d'2*4/2 ~ d'2*3/2 ~ \divisioMaxima
d'2*5/2 ~ d'2*3/2 ~ d'2 b2 ~ b2*6/2 a2 \divisioMaior
c'2*4/2 b2 ~ b2 ~ b2*5/2 a2 \finalis
}

tenorMusic = {
r2 a2*4/2 b4 \divisioMaior
r4 g2*3/2 d2*3/2 c2 \divisioMinima
a2 ~ a2*3/2 ~ a2*3/2 ~ a2*4/2 ~ a2*3/2 \divisioMaior
b2 a2 e2*4/2 g2 fis2*4/2 a2*3/2 ~ \divisioMaxima
a2*5/2 fis2*3/2 ~ fis2 e2 g2*6/2 a2 ~ \divisioMaior
a2*4/2 ~ a2 g2 ~ g2*5/2 ~ g4 fis4 \finalis
}

bassMusic = {
g2 ~ g2*4/2 ~ g4 ~ \divisioMaior
g4 b,2*3/2 ~ b,2*3/2 c2 ~ \divisioMinima
c2 e2*3/2 a2*3/2 g2*4/2 fis2*3/2 ~ \divisioMaior
fis2 c2 ~ c2*4/2 b,2 d2*4/2 ~ d2*3/2 \divisioMaxima
b,2*5/2 ~ b,2*3/2 d2 e2 ~ e2*6/2 fis2 \divisioMaior
r2*4/2 e2 ~ e2 b,2*5/2 d2 \finalis
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
        "VII."
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
