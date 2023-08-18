\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.103
%(volume.page)

global = {
 \key e \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Vidimus stellam" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Vidimus stellam"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Vidimus stellam" }
    \line {}
  }
}

chantText = \lyricmode {
Vi -- di -- mus _ 
\set stanza = " * " stel -- lam e -- jus in O -- ri -- én -- te, 
et vé -- ni -- mus cum mu -- né -- ri -- bus 
ad -- o -- rá -- re _ Dó -- mi -- num. }

chantMusic = {
\tieDown   e'4 ( f'4 g'4) a'4 ( g'4 a'4) g'4 ( f'4 g'4) e'4 ( f'4 d'4) \divisioMinima
 g'4 ( \once \tweak #'font-size #-4 b' ) b'4 c''4 g'4 g'4 f'4 ( g'4 a'4) b'4 \forceBreak
 g'4 ( \once \tweak #'font-size #-4 a' ) e'4 \divisioMaxima
 e'4 ( f'4 a'4) a'4 ( b'\prall c''4) g'4 g'4 g'4 g'4 f'4 ( g'4) e'4 ( f'4 e'4 d'4 e'4) e'4 ( d'4) \divisioMaior
 f'4 \forceBreak
 g'4 ( a'4) g'4 g'4 ( a'4 g'4 f'4) g'4 ( a'4 g'4) e'4 e'4 ( g'4 f'4 f'4) f'4 ( e'4) \finalis

}

altoMusic = {
e'2*3/2 ~ e'2*3/2 ~ e'2*3/2 c'2 d'4 ~ \divisioMinima
d'2*3/2 c'2*4/2 ~ c'2 ~ c'4 b2*3/2 \divisioMaxima
c'2*3/2 e'2*3/2 ~ e'2 ~ e'2 f'2 a2*5/2 ~ a2 ~ \divisioMaior
a4 c'2 ~ c'4 ~ c'2*4/2 ~ c'2*4/2 ~ c'2*4/2 ~ c'2 \finalis
}

tenorMusic = {
c'2*3/2 ~ c'2*3/2 ~ c'2*3/2 ~ c'2 b4 ~ \divisioMinima
b2*3/2 g2*4/2 a2 g4 ~ g2*3/2 \divisioMaxima
a2*3/2 ~ a2*3/2 b2 c'2 a2 g2*5/2 f2 ~ \divisioMaior
f4 ~ f2 e4 f2*4/2 e2*3/2 a4 ~ a2*4/2 ~ a2 \finalis
}

bassMusic = {
r2*3/2 b2*3/2 a2*3/2 ~ a2 ~ a4 \divisioMinima
e2*3/2 ~ e2*4/2 d2 ~ d4 e2*3/2 \divisioMaxima
a2*3/2 c2*3/2 ~ c2 ~ c2 d2 ~ d2*5/2 ~ d2 ~ \divisioMaior
d4 a,2*3/2 ~ a,2*4/2 c2*3/2 ~ c4 d2*4/2 a2 \finalis
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
