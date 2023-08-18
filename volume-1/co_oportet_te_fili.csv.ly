\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.222
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Oportet te fili" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Oportet te fili"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Oportet te fili" }
    \line {}
  }
}

chantText = \lyricmode {
O -- pór -- tet te 
\set stanza = " * " fi -- li gau -- dé -- re, 
qui -- a fra -- ter tu -- us mór -- tu -- us fú -- e -- rat, et re -- ví -- xit; 
per -- í -- e -- rat, et in -- vén -- tus est. }

chantMusic = {
\tieDown   f'4 bes'4 g'4 f'4  g'4 ees'4 g'4 f'4 f'4 \divisioMaior
 f'4 f'4 g'4 ( bes'4) bes'4 bes'4 bes'4 \forceBreak
 bes'4 a'4 g'4 bes'4 a'4 f'4 \divisioMinima
 g'4 ees'4 f'4 f'4 \divisioMaior
 g'4 bes'4 a'4 f'4 \divisioMinima
 g'4 f'4 ( \once \tweak #'font-size #-4 ees' ) f'4 ( g'4) g'4 f'4 \finalis

}

altoMusic = {
f'4 ~ f'2 ~ f'4 ees'2*3/2 c'2 \divisioMaior
d'2 ~ d'2*3/2 ~ d'2 f'2*3/2 ~ f'2 ~ f'4 \divisioMinima
ees'2 c'2 ~ \divisioMaior
c'4 f'2 ~ f'4 \divisioMinima
r2*3/2 ees'2 c'2 \finalis
}

tenorMusic = {
r4 bes2*3/2 ~ bes2*3/2 ~ bes4 a4 \divisioMaior
bes2 ~ bes2*3/2 ~ bes2 ~ bes2*3/2 c'2 a4 \divisioMinima
bes2 ~ bes4 a4 ~ \divisioMaior
a4 c'2 a4 ~ \divisioMinima
a4 bes2 ~ bes2 ~ bes4 a4 \finalis
}

bassMusic = {
d4 ~ d2*3/2 c2*3/2 f2 \divisioMaior
r2 a2*3/2 g2 d2*3/2 f2 ~ f4 \divisioMinima
c2 f2*3/2 ~ f2 ~ f4 ~ \divisioMinima
f4 g2 c2 f2 \finalis
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
