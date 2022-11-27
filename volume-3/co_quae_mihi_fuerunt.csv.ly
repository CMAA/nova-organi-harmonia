\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.387
%(volume.page)

global = {
 \key e \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Quae mihi fuerunt" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Quae mihi fuerunt"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Quae mihi fuerunt" }
    \line {}
  }
}

chantText = \lyricmode {
Quæ mi -- hi 
\set stanza = " * " fu -- é -- runt lu -- cra, 
hæc ar -- bi -- trá -- tus sum _ 
pro -- pter Chri -- _ stum de -- _ tri -- mén -- ta. T.P. 
Al -- le -- _ _ _ _ _ lú -- ia. }

chantMusic = {
\tieDown   e'4 ( fis'\prall g'4 fis'4) g'4 ( a'4 g'4) g'4 ( fis'4) \divisioMinima
 a'4 ( b'4) a'4 g'4 ( a'4) g'4 ( fis'4 e'4) e'4 ( fis'\prall g'4) \divisioMaior
 g'4 ( a'4 e'4) g'4. d'4 e'4 g'4 ( fis'4) a'4 g'4 ( a'4 b'4) ~ b'4 ( a'4) \divisioMaior
  b'4 ( cis''4) b'4 ( a'4) a'4 ( b'4 a'4) b'4 ( a'4 g'4) a'4 ( g'4 e'4 d'4 e'4) \divisioMinima
 g'4 ( fis'4) a'4 ( a'4 b'4) g'4 ( fis'4) e'4 ( fis'4 g'4 fis'4 e'4 fis'4) fis'4 ( e'4) \finalis
 g'4 ( \once \tweak #'font-size #-4 a' ) f'4 ( e'4) g'4 ( b'4.) a'4 ( b'4 a'4) f'4 ( g'4 a'4) b'4 ( g'4) a'4 ( g'4 f'4) e'4 ( f'\prall g'4 f'4 g'4) f'4 ( e'4) \finalis

}

altoMusic = {
b2*4/2 d'2*3/2 ~ d'2 ~ \divisioMinima
d'2*3/2 ~ d'2 b2*3/2 ~ b2*3/2 ~ \divisioMaior
b2*3/2 e'2*3/4 d'2 ~ d'2*3/2 ~ d'2 ~ d'2*3/2 e'2 ~ e'2 ~ e'2*3/2 b2*3/2 ~ b2 ~ b2 ~ b4 \divisioMinima
c'2 d'2*3/2 ~ d'2 b2*6/2 ~ b2 ~ \finalis
b2 ~ b2 c'2*5/4 d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'2*3/2 b2*5/2 ~ b2 \finalis
}

tenorMusic = {
g2*4/2 ~ g2*3/2 a2 \divisioMinima
fis2 b4 a2 ~ a2*3/2 g2*3/2 ~ \divisioMaior
g2*3/2 ~ g2*3/4 ~ g2 d2*3/2 e2 fis2*3/2 g2 fis2 e2*3/2 d2*3/2 e2 fis2 g4 ~ \divisioMinima
g2 fis2*3/2 a2 ~ a2*6/2 g2 \finalis
e2 g2 ~ g2*5/4 fis2*3/2 d2*3/2 e2 fis2*3/2 a2*5/2 g2 \finalis
}

bassMusic = {
e2*4/2 b,2*3/2 ~ b,2 ~ \divisioMinima
b,2 ~ b,4 ~ b,2 e2*3/2 ~ e2*3/2 \divisioMaior
d2*3/2 c2*3/4 b,2 ~ b,2*3/2 ~ b,2 d2*3/2 c2 ~ c2 ~ c2*3/2 g,2*3/2 ~ g,2 ~ g,2 ~ g,4 \divisioMinima
a,2 b,2*3/2 ~ b,2 e2*6/2 ~ e2 \finalis
g,2 ~ g,2 a,2*5/4 b,2*3/2 ~ b,2*3/2 ~ b,2 ~ b,2*3/2 e2*5/2 ~ e2 \finalis
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
        "1"
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
