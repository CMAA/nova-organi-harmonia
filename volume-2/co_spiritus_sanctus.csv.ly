\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.88
%(volume.page)

global = {
 \key g \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Spiritus Sanctus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Spiritus Sanctus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Spiritus Sanctus" }
    \line {}
  }
}

chantText = \lyricmode {
Spí -- ri -- tus San -- ctus 
\set stanza = " * " do -- cé -- bit vos, al -- le -- lú -- ia: 
quæ -- cúm -- que dí -- xe -- ro vo -- bis, 
al -- le -- lú -- ia, al -- le -- lú -- ia. }

chantMusic = {
\tieDown   g'4 ( d'4) f'4 g'4 g'4 ( a'4) g'4 \divisioMinima
 a'4 c''4 b'4 c''4 ( d''4 c''4) a'4 g'4 a'4 ( b'4 a'4) g'4 \divisioMaior \forceBreak

 a'4 c''4 b'4 c''4 a'4 b'4 ( c''4) a'4 ( g'4) f'4 \divisioMaior
 g'4 ( \once \tweak #'font-size #-4 f' ) a'4 c''4 b'4 \divisioMinima
 c''4 a'4 ( c''4 b'4 g'4) g'4 ( a'4 g'4) g'4 \finalis

}

altoMusic = {
r4 d'4 ~ d'2 ~ d'2 ~ d'4 ~ \divisioMinima
d'4 e'2 ~ e'2*3/2 f'2 d'2*3/2 ~ d'4 ~ \divisioMaior
d'4 e'2 ~ e'2 ~ e'2 ~ e'2 f'4 \divisioMaior
d'2*3/2 g'2 ~ \divisioMinima
g'4 e'2*3/2 ~ e'4 d'2*3/2 ~ d'4 \finalis
}

tenorMusic = {
r2*8/2 d'2 c'2*3/2 ~ c'2 ~ c'2*3/2 b4 ~ \divisioMaior
b4 ~ b2 a2 g2 e2 a4 ~ \divisioMaior
a2*3/2 g2 ~ \divisioMinima
g4 a2*3/2 c'4 ~ c'2*3/2 b4 \finalis
}

bassMusic = {
r2*4/2 c'2 b4 ~ \divisioMinima
b4 a2 ~ a2*3/2 f2 g2*3/2 ~ g4 ~ \divisioMaior
g4 c2 ~ c2 ~ c2 ~ c2 d4 ~ \divisioMaior
d2*3/2 e2 ~ \divisioMinima
e4 c2*3/2 ~ c4 g2*3/2 ~ g4 \finalis
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
