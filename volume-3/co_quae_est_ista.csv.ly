\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.16
%(volume.page)

global = {
 \key g \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Quae est ista" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Quae est ista"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Quae est ista" }
    \line {}
  }
}

chantText = \lyricmode {
Quæ est i -- sta, 
\set stanza = " * " quæ pro -- gré -- di -- tur qua -- si au -- ró -- ra con -- súr -- gens, 
pul -- chra ut lu -- na, e -- lé -- cta ut sol, 
ter -- rí -- bi -- lis ut ca -- stró -- rum á -- ci -- es or -- _ _ di -- ná -- ta? }

chantMusic = {
\tieDown   g'4 f'4 ( g'4) g'4 g'4 ( d'4) \divisioMinima
 d'4 e'4 ( f'4) g'4 ( a'4) g'4 g'4 \divisioMinima
 g'4 a'4 ( b'4) b'4 ( \once \tweak #'font-size #-4 a' ) c''4 a'4 g'4 f'4 ( a'4 g'4) g'4 \divisioMaxima
 c''4 ( c''4) a'4 c''4 c''4 ( b'4) g'4 \divisioMinima
 g'4 ( f'4) a'4 a'4 g'4 g'4 \divisioMaior
 g'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( g'4 a'4) f'4 d'4 ( e'\prall f'4) \divisioMinima
 d'4 d'4 f'4 ( f'4) d'4 e'4 f'4 g'4 ( a'4 g'4) g'4 ( e'4) ~ e'4 ( d'4) g'4 ( e'4 g'4) g'4 g'4 ( a'4 g'4) g'4 \finalis

}

altoMusic = {
c'4 ~ c'2 ~ c'4 a2 \divisioMinima
d'2*3/2 c'2*3/2 ~ c'4 ~ \divisioMinima
c'2*3/2 d'2 c'2*3/2 ~ c'2*3/2 ~ c'4 \divisioMaxima
f'2*4/2 d'2*3/2 \divisioMinima
c'2 ~ c'2 ~ c'2 \divisioMaior
d'2 c'2*3/2 ~ c'4 a2*3/2 \divisioMinima
d'2 ~ d'2*3/2 ~ d'2 c'2*3/2 ~ c'2*3/2 d'4 ~ d'2*3/2 c'4 d'2*3/2 ~ d'4 \finalis
}

tenorMusic = {
e4 d2 e4 f2 \divisioMinima
a2*3/2 g2*3/2 e4 ~ \divisioMinima
e2*3/2 f2 e2*3/2 f2*3/2 e4 \divisioMaxima
a2*4/2 g2*3/2 ~ \divisioMinima
g2 f2 ~ f4 e4 ~ \divisioMaior
e2 ~ e2*3/2 f4 ~ f2*3/2 \divisioMinima
a2 ~ a2*3/2 c'2 ~ c'2*3/2 g4 a2*3/2 b2*3/2 c'4 ~ c'2*3/2 b4 \finalis
}

bassMusic = {
c4 ~ c2 ~ c4 d2 \divisioMinima
f2*3/2 e2*3/2 c4 \divisioMinima
a,2*3/2 ~ a,2 ~ a,2*3/2 ~ a,2*3/2 c4 \divisioMaxima
d2*4/2 e2*3/2 \divisioMinima
a,2 ~ a,2 c2 \divisioMaior
b,2 a,2*3/2 ~ a,4 d2*3/2 \divisioMinima
f2 d2*3/2 ~ d2 e2*3/2 ~ e4 f2*3/2 e2*3/2 ~ e4 g2*3/2 ~ g4 \finalis
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
        "VIII"
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
