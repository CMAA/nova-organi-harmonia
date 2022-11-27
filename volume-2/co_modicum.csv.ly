\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.49
%(volume.page)

global = {
 \key g \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Modicum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Modicum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Modicum" }
    \line {}
  }
}

chantText = \lyricmode {
Mo -- di -- cum 
\set stanza = " * " et non vi -- dé -- bi -- tis me, al -- le -- lú -- ia: 
í -- te -- rum mó -- di -- cum, et vi -- dé -- bi -- tis me, 
qui -- a va -- do ad Pa -- trem, 
al -- le -- lú -- ia, al -- le -- lú -- ia. }

chantMusic = {
\tieDown   f'4 ( g'4 a'4) g'4 g'4 \divisioMinima
 g'4 f'4 g'4 ( a'4 g'4) a'4 g'4 g'4 ( f'4 g'4) d'4 \divisioMinima
 g'4 ( a'4) f'4 a'4 ( c''4 b'4) g'4 \divisioMaxima \forceBreak

 c''4 ( c''4 d''4) c''4 c''4 c''4 ( a'4 c''4) a'4 ( b'4 a'4 g'4 a'4) a'4 ( g'4) \divisioMinima
 g'4 g'4 ( d'4) g'4 a'4 b'4 ( c''4 a'4 b'4) g'4 \divisioMaxima \forceBreak

 g'4 ( a'4 b'4 a'4 g'4 a'4) a'4 ( g'4) g'4 f'4 e'4 f'4 e'4 ( f'4 d'4) \divisioMaior
 g'4 ( \once \tweak #'font-size #-4 f' ) a'4 c''4 b'4 \divisioMinima
 c''4 a'4 ( c''4 b'4 g'4) g'4 ( a'4 g'4) g'4 \finalis

}

altoMusic = {
f'4 d'2 e'2 \divisioMinima
c'2 ~ c'2*3/2 e'2 ~ e'2*3/2 r4 \divisioMinima
r2*3/2 d'2*3/2 ~ d'4 \divisioMaxima
g'2*5/2 f'2*3/2 e'2*5/2 ~ e'2 ~ \divisioMinima
e'4 d'2 ~ d'2 c'2 e'2 d'4 \divisioMaxima
b2*6/2 c'2 ~ c'2*3/2 ~ c'4 a2*3/2 \divisioMaior
c'2*3/2 d'2 \divisioMinima
g'4 f'2*4/2 d'2*3/2 ~ d'4 \finalis
}

tenorMusic = {
d'4 c'2 ~ c'2 \divisioMinima
a2 ~ a2*3/2 ~ a2 ~ a2*3/2 f4 \divisioMinima
d'2*3/2 c'2*3/2 b4 \divisioMaxima
c'2*5/2 ~ c'2*3/2 ~ c'2*5/2 e2 ~ \divisioMinima
e4 ~ e2 d2 e2 ~ e2 g4 ~ \divisioMaxima
g2*6/2 ~ g2 a2*3/2 g4 f2*3/2 \divisioMaior
a2*3/2 g2 ~ \divisioMinima
g4 c'2*4/2 ~ c'2*3/2 b4 \finalis
}

bassMusic = {
r2*5/2 \divisioMinima
r2 e2*3/2 c2 d2*3/2 ~ d4 ~ \divisioMinima
d2*3/2 g2*3/2 ~ g4 \divisioMaxima
e2*5/2 d2*3/2 c2*5/2 ~ c2 ~ \divisioMinima
c4 b,2 ~ b,2 a,2 c2 b,4 \divisioMaxima
e2*6/2 ~ e2 d2*3/2 ~ d4 ~ d2*3/2 \divisioMaior
r2*3/2 r2 \divisioMinima
e4 d2*4/2 g2*3/2 ~ g4 \finalis
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
