\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.53
%(volume.page)

global = {
 \key fis \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Laetentur caeli" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Laetentur caeli"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Laetentur caeli" }
    \line {}
  }
}

chantText = \lyricmode {
Læ -- tén -- tur cœ -- _ _ li, 
et ex -- súl -- _ _ tet ter -- _ _ ra _ 
an -- _ te fá -- _ _ ci -- em _ Dó -- _ mi -- ni: _ 
quó -- ni -- am ve -- _ _ nit. _ _ }

chantMusic = {
\tieDown  d'4 ( e'4 g'4) g'4 fis'4 ( g'4 a'4) e'4 ( a'4 g'4 fis'4.) a'4 ( b'4 a'4 g'4) a'4 ( g'4 fis'4) g'4 \divisioMaior
 g'4 g'4 g'4 ( a'4 g'4 \forceBreak
) a'4 ( g'4.) ~ g'4 ( g'4 \once \tweak #'font-size #-4 e' ) e'4 ( a'4 g'4 fis'4) \divisioMinima
 b'4 ( a'4 b'4 g'4) b'4 ( a'4) ~ a'4 ( \once \tweak #'font-size #-4 e' ) e'4 ( a'4 g'4 fis'4) g'4 ( a'4 g'4 e'4) \divisioMaxima
 e'4 ( g'4) a'4 ( fis'4 g'4) g'4 \forceBreak
  g'4 ( g'4) b'4 ( c''4 b'4) c''4 ( b'4) b'4 ( a'4) a'4 ( b'4) c''4 ( a'4 b'4) fis'4 ( g'4 a'\prall b'4) ~ b'4 ( a'4) a'4 ( g'4) g'4 ( a'4 b'4) ~ b'4 ( a'4) \divisioMaior \forceBreak

 a'4 ( e'4) e'4 ( a'4 g'4 fis'4) fis'4 fis'4 ( a'4) b'4 ( a'4 g'4) a'4 ( b'4 a'4) fis'4 ( a'4 g'4) a'4 ( g'4) ~ g'4 ( fis'4) \finalis

}

altoMusic = {
d'2*4/2 ~ d'2*3/2 ~ d'2*9/4 ~ d'2*4/2 e'2*3/2 ~ e'4 \divisioMaior
d'2 e'2*3/2 ~ e'2*5/4 ~ e'2*3/2 ~ e'2*4/2 \divisioMinima
d'2*5/2 e'2*3/2 ~ e'2*4/2 ~ e'2*3/2 ~ e'4 \divisioMaxima
b2 ~ b2*3/2 ~ b4 c'2*5/2 ~ c'2 e'2 ~ e'2 ~ e'2*3/2 ~ e'2*3/2 d'2*3/2 b2 d'2 ~ d'2*3/2 \divisioMaior
b2 d'2*5/2 ~ d'2 ~ d'2*6/2 ~ d'2 ~ d'2 c'2 d'4 \finalis
}

tenorMusic = {
r2*3/2 b4 ~ b2*3/2 ~ b2*9/4 ~ b2*4/2 ~ b2*3/2 ~ b4 ~ \divisioMaior
b2 ~ b2*3/2 ~ b2*5/4 ~ b2*3/2 ~ b2*4/2 ~ \divisioMinima
b2*5/2 c2*3/2 c'2*4/2 b2*3/2 g4 \divisioMaxima
e2 fis2*3/2 e4 ~ e2 g2*3/2 a2 ~ a2 b2 a2*3/2 ~ a2*3/2 fis2*3/2 e2 ~ e2 fis2*3/2 \divisioMaior
g2 b2*5/2 a2 g2*3/2 fis2*3/2 d2 e2 b2 ~ b4 \finalis
}

bassMusic = {
r2*7/2 g2*9/4 fis2*4/2 e2*3/2 ~ e4 \divisioMaior
b,2 e2*3/2 fis2*5/4 g2*3/2 b2*4/2 \divisioMinima
r2*5/2 b2*3/2 a2*4/2 e2*3/2 ~ e4 \divisioMaxima
e,2 ~ e,2*3/2 ~ e,4 a,2*5/2 ~ a,2 c2 ~ c2 ~ c2*3/2 d2*3/2 ~ d2*3/2 e2 d2 ~ d2*3/2 \divisioMaior
e2 b,2*5/2 ~ b,2 ~ b,2*3/2 ~ b,2*3/2 ~ b,2 ~ b,2 ~ b,2 ~ b,4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Offertory"
        "IV"
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
