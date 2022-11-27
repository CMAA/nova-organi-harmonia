\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.104
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Spiritus ubi" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Spiritus ubi"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Spiritus ubi" }
    \line {}
  }
}

chantText = \lyricmode {
Spí -- ri -- tus 
\set stanza = " * " u -- bi vult spi -- rat: 
et vo -- cem e -- jus au -- dis, al -- le -- lú -- ia: 
et ne -- scis un -- de vé -- ni -- at, 
aut quo va -- dat. 
al -- le -- lú -- ia, al -- le -- lú -- ia, al -- le -- lú -- ia. }

chantMusic = {
\tieDown   ees'4 ( f'4) g'4 f'4 ( g'4 f'4 ees'4) \divisioMinima
 ees'4 f'4 f'4 ( g'4 \tiny f' ees' 4) f'4 ( g'4 f'4 ees'4) f'4 ( ees'4) \divisioMaior
 g'4 bes'4 bes'4 \forceBreak
 c''4 a'4 bes'4 g'4 \divisioMinima
 g'4 f'4 g'4 ( bes'4 a'4) g'4 \divisioMaxima
 g'4 c''4 bes'4 a'4 c''4 bes'4 a'4 ( g'4) g'4 \divisioMaior \forceBreak

 bes'4 bes'4 ( g'4 a'\prall bes'4 a'4 g'4) f'4 ( g'4 a'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMaxima
 a'4 ( c''4) c''4 d''4 c''4 \divisioMinima
 c''4 bes'4 ( a'4) bes'4 g'4 \divisioMinima \forceBreak

 bes'4 a'4 ( bes'4 g'4 a'\prall bes'4 a'4 g'4) f'4 ( g'4 a'4 g'4 f'4 g'4) g'4 ( f'4) \finalis

}

altoMusic = {
ees'2*3/2 bes2*4/2 ~ \divisioMinima
bes2 ~ bes2*4/2 ~ bes2*4/2 c'2 ~ \divisioMaior
c'4 d'2 ~ d'2 ~ d'2 \divisioMinima
c'2 ~ c'2*3/2 bes4 \divisioMaxima
g'4 ~ g'2 f'2 ~ f'4 d'2 ~ d'4 ~ \divisioMaior
d'4 ees'2*3/2 d'2*3/2 ~ d'2*6/2 ~ d'2 \divisioMaxima
a'2*3/2 g'2 ~ \divisioMinima
g'4 f'2 d'2 ~ \divisioMinima
d'4 f'2 ees'2 ~ ees'2*3/2 d'2 ~ d'2 ~ d'2 c'2 \finalis
}

tenorMusic = {
c'2*3/2 g2*4/2 ~ \divisioMinima
g2 f2*4/2 ~ f2*4/2 g2*3/2 ~ g2 a2 g2 \divisioMinima
ees2 d2*3/2 ~ d4 \divisioMaxima
g4 ~ g2 c'2*3/2 ~ c'2 bes4 \divisioMaior
g4 ~ g2*3/2 ~ g2*3/2 a2*4/2 bes2 a2 \divisioMaxima
c'2*3/2 ~ c'2*3/2 ~ c'2 ~ c'4 bes4 \divisioMinima
g4 ~ g2 ~ g2 ~ g2*3/2 a2 ~ a2 bes2 ~ bes4 a4 \finalis
}

bassMusic = {
r2*7/2 \divisioMinima
ees2 ~ ees2*4/2 d2*4/2 c2 ~ \divisioMaior
c4 g,2 ~ g,2 ~ g,2 ~ \divisioMinima
g,2 ~ g,2*3/2 ~ g,4 \divisioMaxima
r4 ees2 f2 d4 g2 ~ g4 ~ \divisioMaior
g4 c2*3/2 bes,2*3/2 d2*6/2 ~ d2 \divisioMaxima
f2*3/2 ees2 ~ \divisioMinima
ees4 d2 g2 ~ \divisioMinima
g4 d2 ~ d2 c2*3/2 ~ c2 bes,2 ~ bes,2 f2 \finalis
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
