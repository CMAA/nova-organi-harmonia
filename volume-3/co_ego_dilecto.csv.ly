\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.401
%(volume.page)

global = {
 \key e \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Ego dilecto" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Ego dilecto"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Ego dilecto" }
    \line {}
  }
}

chantText = \lyricmode {
E -- go di -- lé -- cto me -- o, 
\set stanza = " * " 
et di -- lé -- ctus me -- us mi -- hi, 
qui pá -- sci -- tur in -- ter lí -- li -- a. }

chantMusic = {
\tieDown   g'4 f'4 e'4 g'4 ( a'4 g'4 a'4) f'4 ( g'4) g'4 ( e'4 f'4) e'4 ( d'4) \divisioMaior
 g'4 ( a'4) g'4 ( f'4) g'4 ( a'4) g'4 a'4 ( c''4) c''4 ( b'4 c''4) a'4 ( g'4 a'4) a'4 \divisioMaior
 d'4 ( a'4)  a'4 ( bes'4) a'4 g'4 ( a'4 g'4) f'4 ( g'4) d'4 ( e'\prall f'4) e'4 e'4 ( g'4 f'4 f'4) f'4 ( e'4) \finalis

}

altoMusic = {
c'2*3/2 ~ c'2*4/2 ~ c'2 a2*3/2 ~ a2 \divisioMaior
c'2*4/2 d'2*3/2 e'2 ~ e'2*3/2 ~ e'2*3/2 ~ e'4 \divisioMaior
d'2 ~ d'2*3/2 ~ d'2*3/2 c'2 bes2*3/2 c'4 ~ c'2*4/2 ~ c'2 \finalis
}

tenorMusic = {
f2*3/2 e2*4/2 g2 ~ g2*3/2 f2 \divisioMaior
r2*4/2 b2*3/2 c'2 d'2*3/2 b2*3/2 c'4 \divisioMaior
a2 f2*3/2 ~ f2*3/2 ~ f2 ~ f2*3/2 ~ f4 g2*4/2 a2 \finalis
}

bassMusic = {
a,2*3/2 ~ a,2*4/2 ~ a,2 d2*3/2 ~ d2 \divisioMaior
a2*4/2 ~ a2*3/2 ~ a2 ~ a2*3/2 ~ a2*3/2 ~ a4 \divisioMaior
f2 d2*3/2 bes,2*3/2 a,2 g,2*3/2 a,4 ~ a,2*4/2 ~ a,2 \finalis
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
        "4"
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
