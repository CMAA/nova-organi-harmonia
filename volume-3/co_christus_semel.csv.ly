\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.254
%(volume.page)

global = {
 \key g \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Christus semel" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Christus semel"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Christus semel" }
    \line {}
  }
}

chantText = \lyricmode {
Chri -- stus 
\set stanza = " * " se -- mel o -- blá -- tus est 
ad mul -- tó -- rum ex -- hau -- ri -- én -- da pec -- cá -- ta: 
se -- cún -- do si -- ne pec -- cá -- to ap -- pa -- ré -- bit 
ex -- spe -- ctán -- ti -- bus se in sa -- lú -- tem. }

chantMusic = {
\tieDown   f'4 ( a'4 g'4) g'4  g'4 g'4 ( a'4 e'4) f'4 ( g'4) g'4 ( b'4) a'4 ( b'4 a'4 g'4) g'4 ( a'4 g'4) \divisioMaior
 g'4 g'4 f'4 ( a'4 g'4) g'4 g'4 a'4 ( \once \tweak #'font-size #-4 b' ) b'4 ( a'4) b'4 a'4 b'4 a'4 ( g'4) g'4 \divisioMaxima
 a'4 ( c''4) c''4 ( b'4 c''4) a'4 ( g'4) \divisioMinima
 a'4 g'4 a'4 g'4 ( f'4) f'4 a'4 c''4 b'4 ( d''4 c''4 c''4) c''4 ( b'4) \divisioMaior
 c''4 ( c''4 c''4) a'4 ( g'4) g'4 ( a'4) g'4 f'4 g'4 ( e'4 d'4 g'4) \divisioMinima
 g'4 g'4 g'4 ( a'4 g'4) g'4 \finalis

}

altoMusic = {
r2*10/2 d'2*6/2 ~ d'2*3/2 ~ \divisioMaior
d'2 f'2*3/2 e'2 ~ e'2 ~ e'2 g'2*3/2 d'2 ~ d'4 \divisioMaxima
f'2 g'2*5/2 \divisioMinima
c'2*3/2 ~ c'2*3/2 g'2 ~ g'2*4/2 ~ g'2 \divisioMaior
c'2*5/2 ~ c'2*4/2 ~ c'2*4/2 ~ \divisioMinima
c'2 ~ c'2*3/2 b4 \finalis
}

tenorMusic = {
c'2*3/2 b2 c'2*5/2 ~ c'2*6/2 b2*3/2 ~ \divisioMaior
b2 c'2*3/2 ~ c'2 ~ c'2 ~ c'2 d'2*3/2 c'2 b4 \divisioMaxima
c'2 ~ c'2*5/2 ~ \divisioMinima
c'2*3/2 a2*3/2 c'2 d'2*4/2 e'2 \divisioMaior
g2*5/2 f2*4/2 e2*4/2 ~ \divisioMinima
e2 d2*3/2 ~ d4 \finalis
}

bassMusic = {
a2*3/2 ~ a2 ~ a2*5/2 g2*6/2 ~ g2*3/2 ~ \divisioMaior
g2 a2*3/2 c'2 b2 a2 g2*3/2 ~ g2 ~ g4 \divisioMaxima
a2 e2*5/2 \divisioMinima
f2*3/2 ~ f2*3/2 e2 ~ e2*4/2 ~ e2 ~ \divisioMaior
e2*5/2 d2*4/2 c2*4/2 ~ \divisioMinima
c2 g,2*3/2 ~ g,4 \finalis
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
        "VIII."
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
