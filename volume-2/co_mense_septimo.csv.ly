\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.228
%(volume.page)

global = {
 \key g \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Mense septimo" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Mense septimo"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Mense septimo" }
    \line {}
  }
}

chantText = \lyricmode {
Men -- se sé -- pti -- mo 
\set stanza = " * " fe -- sta ce -- le -- brá -- bi -- tis, 
cum in ta -- ber -- ná -- cu -- lis ha -- bi -- tá -- re fé -- ce -- rim fí -- li -- _ os Is -- ra -- el, 
cum e -- dú -- ce -- rem e -- os de ter -- ra Æ -- gý -- pti, 
e -- go Dó -- mi -- nus De -- us ve -- ster. }

chantMusic = {
\tieDown   c''4 a'4 ( c''4) c''4 a'4 ( b'\prall c''4) c''4 \divisioMinima
 c''4 ( b'4) a'4 ( g'4) a'4 c''4 ( b'4) a'4 a'4 ( b'\prall c''4 b'4 a'4) a'4 ( b'\prall c''4) \divisioMaior \forceBreak

 g'4 a'4 a'4 ( c''4 b'4) c''4 d''4 c''4 ( b'4) c''4 ( c''4) b'4 c''4 d''4 d''4 ( b'4) c''4 b'4 a'4 \divisioMinima
 c''4 c''4 ( b'4) ~ b'4 ( a'4 \forceBreak
) a'4 ( c''4) g'4 a'4 a'4 ( b'\prall c''4 b'4 a'4) \divisioMaxima
 b'4 c''4 d''4 d''4 b'4 c''4 b'4 ( a'4) g'4 b'4 ( c''4) b'4 a'4 \forceBreak
 g'4 ( a'4) g'4 \divisioMaior
 c''4 c''4 ( b'4 g'4) a'4 b'4 a'4 \divisioMinima
 b'4 b'4 ( d''4 b'4 a'4 b'\prall c''4 b'4 a'4) g'4 ( a'4 b'4 a'4 g'4 a'4) a'4 ( g'4) \finalis

}

altoMusic = {
r4 f'2 ~ f'4 e'2*3/2 ~ e'4 ~ \divisioMinima
e'2 f'2*3/2 g'2 f'4 ~ f'2 ~ f'2*3/2 e'2*3/2 ~ \divisioMaior
e'2 ~ e'2*3/2 ~ e'4 d'4 ~ d'2 g'2 ~ g'2 ~ g'4 ~ g'2 ~ g'2 e'4 \divisioMinima
g'2 e'2*3/2 ~ e'2 d'2 ~ d'2*4/2 c'4 \divisioMaxima
d'2 ~ d'2*4/2 e'2*3/2 ~ e'2 ~ e'2 d'2 ~ d'4 \divisioMaior
c'4 d'2*3/2 e'2*3/2 ~ \divisioMinima
e'4 d'2*3/2 ~ d'2 c'2*3/2 ~ c'2*6/2 ~ c'4 b4 \finalis
}

tenorMusic = {
r2*3/2 d'4 ~ d'2*3/2 c'4 \divisioMinima
r2 c'2*3/2 ~ c'2*3/2 ~ c'2 a2*3/2 ~ a2*3/2 \divisioMaior
b2 c'2*3/2 a2 g2 ~ g2 c'2 ~ c'4 b2 d'2 c'4 \divisioMinima
g2 ~ g2*3/2 e2 ~ e2 ~ e2*4/2 ~ e4 \divisioMaxima
g2 ~ g2*4/2 ~ g2*3/2 ~ g2 ~ g2 ~ g2 ~ g4 ~ \divisioMaior
g4 ~ g2*3/2 e2*3/2 \divisioMinima
g4 ~ g2*3/2 e2 ~ e2*3/2 ~ e2*6/2 d2 \finalis
}

bassMusic = {
r2*4/2 a2*3/2 ~ a4 ~ \divisioMinima
a2 ~ a2*3/2 e2 ~ e4 d2 ~ d2*3/2 c2*3/2 ~ \divisioMaior
c2 ~ c2*3/2 f2 g2 e2 ~ e2 g4 ~ g2 ~ g2 a4 \divisioMinima
e2 d2*3/2 c2 b,2 a,2*4/2 ~ a,4 \divisioMaxima
g,2 b,2*4/2 e2*3/2 d2 c2 ~ c2 b,4 \divisioMaior
e4 ~ e2*3/2 c2*3/2 ~ \divisioMinima
c4 g,2*3/2 a,2 ~ a,2*3/2 c2*6/2 g,2 \finalis
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
