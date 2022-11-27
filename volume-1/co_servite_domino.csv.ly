\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.167
%(volume.page)

global = {
 \key ees \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Servite Domino" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Servite Domino"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Servite Domino" }
    \line {}
  }
}

chantText = \lyricmode {
Ser -- ví -- te 
\set stanza = " * " Dó -- mi -- no in ti -- mó -- _ re, et ex -- sul -- tá -- te e -- _ i 
cum tre -- _ mó -- _ re: 
ap -- pre -- hén -- di -- te di -- sci -- plí -- nam, 
ne per -- e -- á -- tis de vi -- a ju -- sta. }

chantMusic = {
\tieDown   g'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 bes'4 ( a'4)  bes'4 g'4 g'4 ( ees'4) g'4 g'4 g'4 ( f'4) ~ f'4 ( ees'4 f'4) ees'4 ( f'4) \divisioMinima
 ees'4 f'4 g'4 g'4 ( a'\prall bes'4) f'4 \forceBreak
 g'4 ( bes'4 g'4) ~ g'4 ( ees'4 f'4) f'4 ( ees'4) \divisioMaior
 ees'4 ( g'4 a'\prall bes'4 bes'4) c''4 ( bes'4) ~ bes'4 ( a'4 f'4) g'4 ( f'4) g'4 ( a'4) g'4 \divisioMaxima
 g'4 bes'4 c''4 c''4 c''4 bes'4 bes'4 bes'4 \forceBreak
 g'4 ( a'4 f'4) \divisioMaior
 g'4 bes'4 ( a'4) bes'4 ( a'4) g'4 f'4 ( f'4) \divisioMinima
 ees'4 f'4 ( g'4 f'4 g'4) f'4 ( g'4 f'4) ees'4 ( f'4 g'4 f'4 ees'4 f'4) f'4 ( ees'4) \finalis

}

altoMusic = {
d'2 ees'4 f'2 d'2 ees'2*5/2 d'2*4/2 c'4 d'4 \divisioMinima
ees'2*3/2 d'2*4/2 ees'2 ~ ees'2*4/2 bes2 \divisioMaior
ees'2*6/2 f'2*4/2 d'2 ~ d'2 ~ d'4 \divisioMaxima
g'2 ~ g'2*3/2 ~ g'2 f'4 d'2*3/2 ~ \divisioMaior
d'4 ~ d'2*4/2 c'2*3/2 \divisioMinima
r2*5/2 d'2*3/2 ees'2*6/2 bes2 \finalis
}

tenorMusic = {
bes2 ~ bes4 c'2 ~ c'2 bes2*5/2 ~ bes2*4/2 ~ bes2 ~ \divisioMinima
bes2*3/2 ~ bes2*4/2 ~ bes2 ~ bes2*4/2 g2 \divisioMaior
bes2*6/2 ~ bes2*4/2 c'2 ~ c'2 bes4 ~ \divisioMaxima
bes2 a2*3/2 bes2 ~ bes4 a2*3/2 ~ \divisioMaior
a4 g2*4/2 a2*3/2 \divisioMinima
bes4 ~ bes2*4/2 ~ bes2*3/2 ~ bes2*6/2 g2 \finalis
}

bassMusic = {
g2 ~ g4 f2 g2 ~ g2*5/2 bes2*4/2 r2 \divisioMinima
g2*3/2 ~ g2*4/2 ~ g2 ees2*4/2 ~ ees2 \divisioMaior
c2*6/2 d2*4/2 ~ d2 g2 ~ g4 \divisioMaxima
ees2 ~ ees2*3/2 ~ ees2 d4 ~ d2*3/2 ~ \divisioMaior
d4 g2*4/2 ~ g2*3/2 ~ \divisioMinima
g4 d2*4/2 bes,2*3/2 c2*6/2 ees2 \finalis
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
        "V"
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
