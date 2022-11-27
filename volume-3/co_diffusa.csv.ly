\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.283
%(volume.page)

global = {
 \key f \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Diffusa est" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Diffusa est"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Diffusa est" }
    \line {}
  }
}

chantText = \lyricmode {
Dif -- fú -- sa est 
\set stanza = " * " grá -- ti -- a in lá -- _ bi -- is tu -- is: 
pro -- ptér -- e -- _ a be -- ne -- dí -- xit te De -- us 
in æ -- _ tér -- num. }

chantMusic = {
\tieDown   d'4 f'4 ( f'4 g'4) f'4 f'4  g'4 ( a'4 g'4 a'4) g'4 f'4 ( g'4 f'4 d'4) \divisioMinima
 d'4 d'4 ( g'4 f'4) g'4 ( a'4) f'4 f'4 f'4 ( g'4 a'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMaxima
 f'4 ( g'4) g'4 ( c''4 c''4) a'4 ( c''4 g'4) ~ g'4 ( f'4 g'4) g'4 ( f'4) \divisioMinima
 f'4 ( g'4) f'4 f'4 ( g'4) f'4 f'4 d'4 ( e'\prall f'4 e'4 d'4 c'4 d'4) d'4 ( c'4) \divisioMaior
 f'4 ( f'4 e'4)  g'4 ( a'4) c''4 ( a'4 g'4 a'\prall bes'4 a'4 g'4) f'4 ( g'4 a'4 g'4 f'4 g'4) g'4 ( f'4) \finalis

}

altoMusic = {
r4 c'2*5/2 ~ c'2*5/2 d'2*4/2 ~ \divisioMinima
d'4 ~ d'2*3/2 ~ d'2*4/2 ~ d'2*6/2 c'2 ~ \divisioMaxima
c'2 ~ c'2*5/2 ~ c'2*4/2 a2 \divisioMinima
c'2*3/2 ~ c'2*4/2 a2*7/2 g2 \divisioMaior
a2*3/2 c'2*4/2 d'2*5/2 ~ d'2*6/2 c'2 \finalis
}

tenorMusic = {
r4 a2*5/2 g2*5/2 a2*4/2 ~ \divisioMinima
a4 ~ a2*3/2 g2*4/2 bes2*6/2 a2 ~ \divisioMaxima
a2 g2*5/2 e2*4/2 f2 \divisioMinima
a2*3/2 ~ a2*4/2 ~ a2*7/2 g2 \divisioMaior
f2*3/2 e2*4/2 f2*5/2 g2*6/2 a2 \finalis
}

bassMusic = {
r4 f2*5/2 e2*5/2 d2*4/2 ~ \divisioMinima
d4 bes,2*3/2 ~ bes,2*4/2 ~ bes,2*6/2 f2 \divisioMaxima
d2 e2*5/2 c2*4/2 d2 \divisioMinima
a2*3/2 g2*4/2 f2*7/2 e2 \divisioMaior
d2*3/2 c2*4/2 bes,2*5/2 ~ bes,2*6/2 f,2 \finalis
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
        "VI"
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
