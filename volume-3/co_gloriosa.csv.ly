\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.25
%(volume.page)

global = {
 \key g \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Gloriosa" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Gloriosa"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Gloriosa" }
    \line {}
  }
}

chantText = \lyricmode {
Glo -- ri -- ó -- _ sa 
\set stanza = " * " di -- _ cta sunt de te, Ma -- rí -- a: 
qui -- a _ fe -- cit ti -- bi ma -- _ gna qui po -- _ tens est. }

chantMusic = {
\tieDown   g'4 ( g'4) g'4 ( a'4) a'4 ( g'4 f'4.) g'4 ( a'4 b'\prall c''4 g'4) g'4 \divisioMinima
 g'4 c''4 ( c''4) c''4 d''4 ( b'4 c''4) a'4 a'4 ( g'4 f'4) a'4 a'4 ( c''4 b'4 g'4) g'4 \divisioMaxima
 g'4 a'4 b'4 ( a'4 g'4) e'4 f'4 ( f'4 g'4) g'4 ( f'4 e'4 d'4) f'4 ( g'4 a'4) c''4 ( g'4) g'4 \divisioMinima
 f'4 g'4 ( a'4 g'4) a'4 c''4 ( c''4 a'4) a'4 ( b'4 g'4) g'4 \finalis

}

altoMusic = {
e'2 ~ e'2 f'2*7/4 ~ f'2*5/2 e'4 \divisioMinima
g'4 ~ g'2*3/2 f'2*4/2 ~ f'2*4/2 e'2*4/2 d'4 ~ \divisioMaxima
d'4 ~ d'2*3/2 c'2 ~ c'2*3/2 ~ c'2 a2 c'2*3/2 ~ c'2 ~ c'4 \divisioMinima
f'4 ~ f'2*4/2 ~ f'2*3/2 d'2*3/2 ~ d'4 \finalis
}

tenorMusic = {
c'2 ~ c'2 ~ c'2*7/4 ~ c'2*5/2 ~ c'4 ~ \divisioMinima
c'4 g2*3/2 a2*4/2 c'2*4/2 ~ c'2*4/2 d'4 \divisioMaxima
r4 g2*3/2 e2 d2*3/2 e2 f2 ~ f2*3/2 e2 g4 \divisioMinima
a4 ~ a2*4/2 d'2*3/2 c'2*3/2 b4 \finalis
}

bassMusic = {
r2 b2 a2*7/4 c'2*5/2 r4 \divisioMinima
e4 ~ e2*3/2 d2*4/2 ~ d2*4/2 c2*4/2 b,4 ~ \divisioMaxima
b,4 ~ b,2*3/2 c2 ~ c2*3/2 ~ c2 d2 ~ d2*3/2 e2 ~ e4 ~ \divisioMinima
e4 d2*4/2 ~ d2*3/2 g2*3/2 ~ g4 \finalis
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
