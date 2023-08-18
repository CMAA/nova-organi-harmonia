\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.235
%(volume.page)

global = {
 \key g \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Videte" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Videte"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Videte" }
    \line {}
  }
}

chantText = \lyricmode {
Vi -- dé -- te 
\set stanza = " * " quó -- ni -- am non so -- li mi -- hi la -- bo -- rá -- vi, 
sed ó -- mni -- bus _ ex -- qui -- rén -- ti -- bus _ ve -- ri -- tá -- _ _ _ _ tem. }

chantMusic = {
\tieDown   d'4 f'4 ( a'4 g'4) g'4 ( a'4) \divisioMinima
 g'4 ( a'4) g'4 g'4 g'4 g'4 ( a'4) g'4 f'4 ( g'4 f'4 f'4) d'4 ( e'\prall f'4 e'4 c'4) \divisioMinima
 f'4 ( g'4 a'4) f'4 ( g'4) g'4 ( a'\prall b'4 a'4 b'4) a'4 ( g'4) \divisioMaxima
 c''4 ( b'4) c''4 ( d''4) c''4 c''4 ( b'4) c''4 ( d''4 c''4) c''4 c''4 d''4 ( b'4 c''4) a'4 ( g'4) g'4 ( f'4) a'4 ( b'\prall c''4) \divisioMinima
 b'4 ( c''4) a'4 ( g'4) g'4 ( f'4) ~ f'4 ( d'4.) f'4 ( a'4) c''4 ( g'4) ~ g'4 ( f'4 g'\prall a'4 g'4 a'4) a'4 ( g'4) \finalis

}

altoMusic = {
r4 c'2*3/2 ~ c'2 ~ \divisioMinima
c'2*5/2 ~ c'2*3/2 ~ c'2*4/2 ~ c'2*5/2 ~ \divisioMinima
c'2*3/2 d'2 ~ d'2*5/2 ~ d'2 \divisioMaxima
g'2 ~ g'2*3/2 ~ g'2 ~ g'2*5/2 e'2*5/2 d'2 e'2*3/2 \divisioMinima
g'2*5/2 c'2*13/4 ~ c'2 ~ c'2 ~ c'2*3/2 b2 \finalis
}

tenorMusic = {
r4 f2*3/2 e2 ~ \divisioMinima
e2*5/2 g2*3/2 a2*4/2 ~ a2*5/2 \divisioMinima
c'2*3/2 ~ c'2 ~ c'2*5/2 b2 \divisioMaxima
c'2 e'2*3/2 d'2 c'2*5/2 ~ c'2*5/2 ~ c'2 ~ c'2*3/2 ~ \divisioMinima
c'2*5/2 a2*13/4 ~ a2 ~ a2 f2*3/2 d2 \finalis
}

bassMusic = {
r4 a,2*3/2 ~ a,2 \divisioMinima
c2*5/2 e2*3/2 f2*4/2 a2*5/2 ~ \divisioMinima
a2*3/2 ~ a2 g2*5/2 ~ g2 \divisioMaxima
e2 ~ e2*3/2 ~ e2 ~ e2*5/2 a2*5/2 ~ a2 ~ a2*3/2 \divisioMinima
e2*5/2 f2*13/4 e2 d2 ~ d2*3/2 g,2 \finalis
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
