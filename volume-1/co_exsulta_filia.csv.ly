\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.59
%(volume.page)

global = {
 \key e \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Exsulta filia" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Exsulta filia"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Exsulta filia" }
    \line {}
  }
}

chantText = \lyricmode {
Ex -- súl -- ta 
\set stanza = " * " fí -- li -- a Si -- on, 
lau -- da fí -- li -- a Je -- rú -- sa -- lem: 
ec -- ce Rex tu -- us ve -- nit san -- ctus, et Sal -- vá -- tor mun -- di. }

chantMusic = {
\tieDown  d'4 ( e'\prall f'4) c'4 ( \once \tweak #'font-size #-4 d' ) d'4 \divisioMinima
 d'4 ( f'4 g'4) g'4 ( a'4) a'4 g'4 ( a'4 e'4) e'4 \divisioMaior
 e'4 ( g'4 a'4 b'4) a'4 \divisioMinima \forceBreak

 a'4 ( c''4 c''4) a'4 ( g'4) g'4 f'4 ( g'4 a'4) g'4 ( a'4 f'4) e'4 ( g'4 f'4 f'4) f'4 ( e'4) \divisioMaxima
 e'4 g'4 a'4 \forceBreak
 b'4 ( a'4) b'4 ( c''4) a'4 ( b'4 a'4 g'4 a'4) a'4 ( g'4) \divisioMinima
 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( f'4) g'4 ( a'4) f'4 e'4 ( f'4 g'\prall a'4) a'4 ( \once \tweak #'font-size #-4 g'  \forceBreak
) e'4 ( g'4 f'4 f'4) f'4 ( e'4) \finalis

}

altoMusic = {
a2*3/2 ~ a2 ~ a4 \divisioMinima
d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 c'4 \divisioMaior
e'2 ~ e'2*3/2 ~ \divisioMinima
e'2*3/2 c'2*3/2 ~ c'2*3/2 ~ c'2*3/2 ~ c'2*4/2 ~ c'2 \divisioMaxima
e'2*3/2 ~ e'2 ~ e'2 ~ e'2*5/2 ~ e'2 \divisioMinima
c'2 ~ c'2 ~ c'2*3/2 ~ c'2*4/2 ~ c'2 ~ c'2*4/2 ~ c'2 \finalis
}

tenorMusic = {
f2*3/2 ~ f2 ~ f4 ~ \divisioMinima
f4 ~ f2 e2*3/2 ~ e2*3/2 ~ e4 ~ \divisioMaior
e2 ~ e2*3/2 ~ \divisioMinima
e2*3/2 ~ e2*3/2 f2*3/2 d2*3/2 g2*4/2 a2 \divisioMaxima
g2*3/2 ~ g2 a2 c'2*3/2 b2 ~ b2 \divisioMinima
g2 a2 ~ a2*3/2 ~ a2*4/2 f2 g2 d2 a2 \finalis
}

bassMusic = {
r2*3/2 e2 d4 ~ \divisioMinima
d4 c2 b,2*3/2 a,2*3/2 ~ a,4 \divisioMaior
r2 d2*3/2 \divisioMinima
c2*3/2 ~ c2*3/2 a,2*3/2 ~ a,2*3/2 ~ a,2*4/2 ~ a,2 \divisioMaxima
e2*3/2 d2 c2 ~ c2*3/2 ~ c2 e2 ~ \divisioMinima
e2 ~ e2 d2*3/2 a,2*4/2 ~ a,2 ~ a,2 ~ a,2 ~ a,2 \finalis
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
