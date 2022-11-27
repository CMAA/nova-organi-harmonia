\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.101
%(volume.page)

global = {
 \key g \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Spiritus ejus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Spiritus ejus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Spiritus ejus" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ _ lú -- _ ia. 
\set stanza = " * " _ _ ℣. 
Spí -- ri -- _ _ tus e -- _ jus _ _ _ 
or -- ná -- _ _ vit 
\set stanza = " * " cœ -- _ los. _ _ _ }

chantMusic = {
\tieDown   f'4 ( \once \tweak #'font-size #-4 g' ) g'4 a'4 ( c''4 g'4) a'4 ( g'4 f'4) f'4 ( a'4) c''4 ( c''4 d''4) c''4 ( c''4 b'4 g'4 a'4) \divisioMinima
 b'4 ( c''4 a'4 g'4.)  f'4 ( bes'4 a'4) ~ a'4 ( g'4) \finalis \forceBreak

 f'4 ( g'4) g'4 a'4 ( c''4 g'4) a'4 ( g'4 f'4 g'4) f'4 f'4 ( a'4) c''4 ( c''4 d''4) c''4 ( c''4 b'4 g'4 a'4) \divisioMinima
 b'4 ( c''4 a'4 g'4.)  f'4 ( bes'4 a'4) ~ a'4 ( g'4) \divisioMaior \forceBreak

 f'4 ( g'4) g'4 a'4 ( c''4 g'4) a'4 ( g'4 f'4 g'4) f'4 \divisioMinima
 f'4 ( a'4) c''4 ( c''4 d''4) c''4 ( c''4 b'4 g'4 a'4) \divisioMinima
 b'4 ( c''4 a'4 g'4.)  f'4 ( bes'4 a'4) ~ a'4 ( g'4) \finalis

}

altoMusic = {
r2*3/2 e'2*3/2 f'2*3/2 ~ f'2 e'2*3/2 ~ e'2*4/2 ~ e'4 \divisioMinima
g'2*3/2 ~ g'2*3/4 f'2 d'2 e'4 \finalis
r2*3/2 e'2*3/2 ~ e'2*4/2 c'4 f'2 g'2*3/2 f'2*4/2 e'4 ~ \divisioMinima
e'2*3/2 ~ e'2*3/4 f'2 e'2*3/2 \divisioMaior
r2*3/2 c'2*3/2 ~ c'2*4/2 d'4 ~ \divisioMinima
d'2 e'2*3/2 d'2*4/2 c'4 ~ \divisioMinima
c'2*3/2 ~ c'2*3/4 ~ c'2 ~ c'2*3/2 \finalis
}

tenorMusic = {
d'2*3/2 c'2*3/2 ~ c'2*3/2 ~ c'2 ~ c'2*3/2 d'2*4/2 c'4 ~ \divisioMinima
c'2*9/4 ~ c'2 ~ c'2 ~ c'4 \finalis
d'2*3/2 c'2*3/2 ~ c'2*4/2 a4 ~ a2 ~ a2*3/2 ~ a2*4/2 ~ a4 \divisioMinima
g2*3/2 c'2*3/4 d'2 c'2*3/2 ~ \divisioMaior
c'2 ~ c'4 f2*3/2 g2*4/2 a4 ~ \divisioMinima
a2 ~ a2*3/2 e2*4/2 ~ e4 ~ \divisioMinima
e2*3/2 ~ e2*3/4 d2 e2*3/2 \finalis
}

bassMusic = {
r2*6/2 f2*3/2 a2 ~ a2*3/2 ~ a2*4/2 ~ a4 \divisioMinima
e2*9/4 f2 ~ f2 c'4 \finalis
r2*6/2 c2*4/2 f4 ~ f2 e2*3/2 d2*4/2 c4 ~ \divisioMinima
c2*3/2 ~ c2*3/4 ~ c2 ~ c2*3/2 \divisioMaior
d2 e4 f2*3/2 e2*4/2 d4 ~ \divisioMinima
d2 a,2*3/2 ~ a,2*4/2 ~ a,4 ~ \divisioMinima
a,2*3/2 c2*3/4 ~ c2 ~ c2*3/2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Alleluia"
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
