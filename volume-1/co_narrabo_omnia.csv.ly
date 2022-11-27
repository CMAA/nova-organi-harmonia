\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.215
%(volume.page)

global = {
 \key g \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Narrabo omnia" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Narrabo omnia"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Narrabo omnia" }
    \line {}
  }
}

chantText = \lyricmode {
Nar -- rá -- bo 
\set stanza = " * " ó -- mni -- a mi -- ra -- bí -- li -- a tu -- _ a: 
læ -- tá -- bor, et ex -- sul -- tá -- bo in te: _ 
psal -- lam nó -- mi -- ni tu -- o, Al -- tís -- si -- me. }

chantMusic = {
\tieDown   d'4 f'4 ( a'4 g'4) g'4 \divisioMinima
 g'4 ( a'4) f'4 ( e'4) d'4 f'4 g'4 bes'4 ( bes'4) g'4 ( f'4) f'4 f'4 ( a'4 c''4 bes'4 a'4) c''4 ( bes'4) bes'4 \divisioMaxima \forceBreak

 g'4 bes'4 ( c''4 bes'4) bes'4 ( a'4 bes'4) \divisioMinima
 g'4 g'4 bes'4 ( \once \tweak #'font-size #-4 a' ) bes'4 ( c''4 bes'4) bes'4 ( a'4 bes'4) g'4 ( \once \tweak #'font-size #-4 f' ) g'4. f'4 ( g'4 f'4 d'4) \divisioMaxima \forceBreak

 f'4 ( a'4 g'4) g'4 bes'4 ( bes'4) g'4 ( f'4) f'4 g'4 ( a'4 f'4) f'4 \divisioMinima
 f'4 ( a'4 c''4 bes'4 a'4 bes'4) g'4 g'4 ( a'4 g'4) g'4 \finalis

}

altoMusic = {
d'4 ~ d'2*3/2 ~ d'4 ~ \divisioMinima
d'2 ~ d'2*3/2 ~ d'2 f'2 d'2*3/2 f'2*7/2 ~ f'4 \divisioMaxima
d'4 ~ d'2*3/2 ~ d'2*3/2 ~ \divisioMinima
d'2 f'2 ~ f'2*3/2 ~ f'2*3/2 d'2 ~ d'2*3/4 ~ d'2*3/2 ~ d'4 \divisioMaxima
f'2*3/2 d'4 ~ d'2*4/2 ~ d'4 ~ d'2*3/2 ~ d'4 \divisioMinima
f'2*6/2 ~ f'4 d'2*3/2 ~ d'4 \finalis
}

tenorMusic = {
r4 c'2*3/2 bes4 \divisioMinima
a2 ~ a2*3/2 c'2 bes2 a2*3/2 c'2*7/2 d'4 \divisioMaxima
bes4 a2*3/2 bes2*3/2 ~ \divisioMinima
bes2 c'2 bes2*3/2 c'2*3/2 ~ c'2 bes2*3/4 a2*3/2 f4 \divisioMaxima
c'2*3/2 bes4 ~ bes2*4/2 a4 g2*3/2 a4 \divisioMinima
c'2*6/2 bes4 a2*3/2 bes4 \finalis
}

bassMusic = {
d4 ~ d2*3/2 g4 ~ \divisioMinima
g2 d2*3/2 ~ d2 ~ d2 ~ d2*3/2 ~ d2*7/2 ~ d4 \divisioMaxima
g4 ~ g2*3/2 ~ g2*3/2 ~ \divisioMinima
g2 f2 d2*3/2 ~ d2*3/2 g2 ~ g2*3/4 d2*3/2 ~ d4 \divisioMaxima
a2*3/2 ~ a4 g2*4/2 ~ g4 ~ g2*3/2 d4 ~ \divisioMinima
d2*6/2 ~ d4 g2*3/2 ~ g4 \finalis
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
        "II"
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
