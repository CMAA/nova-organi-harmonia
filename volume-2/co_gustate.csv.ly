\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.171
%(volume.page)

global = {
 \key e \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Gustate" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Gustate"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Gustate" }
    \line {}
  }
}

chantText = \lyricmode {
Gu -- stá -- te 
\set stanza = " * " et vi -- dé -- te, quó -- _ ni -- am su -- á -- vis est _ _ Dó -- mi -- nus: 
be -- á -- tus vir, qui _ spe -- rat in _ _ e -- o. }

chantMusic = {
\tieDown   g'4 a'4 ( c''4) c''4 \divisioMinima
 c''4 c''4 c''4 ( c''4 c''4) a'4 \divisioMinima
 a'4 c''4 ( c''4 c''4) g'4 ( a'4 g'4 f'4 e'4 f'4 \forceBreak
) f'4 ( e'4) f'4 e'4 ( f'4 a'4) a'4 a'4 ( g'4) ~ g'4 ( f'4) g'4 ( a'4 g'4) e'4 e'4 ( g'4 f'4 f'4) f'4 ( e'4) \divisioMaxima
 e'4 ( f'4 g'4) g'4 g'4 ( a'4 g'4 f'4 a'4) a'4 \divisioMinima \forceBreak

 a'4. g'4 ( a'4 f'4 d'4) f'4 ( a'4) g'4 a'4 ( g'4) ~ g'4 ( f'4) g'4 ( a'4 g'4) e'4 ( g'4 f'4 f'4) f'4 ( e'4) \finalis

}

altoMusic = {
e'4 ~ e'2 ~ e'4 \divisioMinima
a'2 g'2*3/2 f'4 \divisioMinima
c'4 ~ c'2*3/2 d'2*6/2 c'2*3/2 ~ c'2*3/2 ~ c'2 ~ c'2*3/2 ~ c'2*3/2 ~ c'4 ~ c'2*4/2 ~ c'2 ~ \divisioMaxima
c'2*3/2 ~ c'4 ~ c'2*5/2 ~ c'4 \divisioMinima
a2*3/4 ~ a2*4/2 c'2*4/2 ~ c'2*3/2 ~ c'2*3/2 a2*4/2 c'2 \finalis
}

tenorMusic = {
r4 c'2 ~ c'4 ~ \divisioMinima
c'2 ~ c'2*3/2 ~ c'4 \divisioMinima
r4 g2*3/2 a2*6/2 ~ a2*3/2 ~ a2*3/2 ~ a2 c'2*3/2 g2*3/2 ~ g4 a2*4/2 g2 ~ \divisioMaxima
g2*3/2 e4 a2*5/2 f4 \divisioMinima
e2*3/4 f2*4/2 ~ f2*4/2 ~ f2*3/2 e2*3/2 f2*4/2 a2 \finalis
}

bassMusic = {
r2*3/2 a4 \divisioMinima
f2 e2*3/2 f4 ~ \divisioMinima
f4 e2*3/2 d2*6/2 a2*3/2 g2*3/2 f2 e2*3/2 ~ e2*3/2 a,4 ~ a,2*4/2 c2 \divisioMaxima
b,2*3/2 ~ b,4 a,2*5/2 ~ a,4 \divisioMinima
c2*3/4 d2*4/2 a,2*4/2 c2*3/2 ~ c2*3/2 d2*4/2 a,2 \finalis
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
        "III"
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
