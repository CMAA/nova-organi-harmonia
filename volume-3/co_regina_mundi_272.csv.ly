\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.456
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Regina mundi" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Regina mundi"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Regina mundi" }
    \line {}
  }
}

chantText = \lyricmode {
Re -- gí -- na mun -- di 
\set stanza = " * " di -- _ _ gnís -- si -- ma, 
Ma -- rí -- a Vir -- go per -- pé -- tu -- a, 
in -- ter -- cé -- _ _ de pro no -- stra pa -- ce et sa -- lú -- te, 
quæ ge -- nu -- í -- sti Chri -- stum Dó -- mi -- num Sal -- va -- tó -- rem ó -- mni -- um. }

chantMusic = {
\tieDown   e'4 ( d'4) e'4 g'4 ( fis'4) g'4 ( a'4 g'4 g'4) e'4 ( d'4) \divisioMinima
 e'4 ( fis'\prall g'4) a'4 ( fis'4) g'4 ( fis'4) e'4 e'4 ( fis'4 g'4 fis'4 e'4 fis'4) fis'4 ( e'4) \divisioMaior
 e'4 ( d'4) g'4 ( b'4) a'4 ( b'4 a'4) b'4 a'4 ( g'4) a'4 ( b'4) g'4 g'4 ( a'4 g'4) g'4 \divisioMaxima
 g'4 b'4 ( \once \tweak #'font-size #-4 a' ) b'4 ( d''4 cis''4) d''4 ( b'4) ~ b'4 ( a'4) a'4 \divisioMinima
 g'4 a'4 ( b'4) a'4 g'4 ( fis'4) e'4 g'4 ( \once \tweak #'font-size #-4 fis' ) g'4 ( a'4) e'4 ( fis'4 e'4 d'4) d'4 \divisioMaxima
 e'4 ( a'4) g'4 ( fis'4) e'4 ( d'4) e'4 d'4 e'4 e'4 ( d'4) g'4 a'4 ( g'4) g'4 \divisioMinima
 a'4 ( b'4) a'4 g'4 ( fis'4) g'4 ( a'4 g'4 g'4) e'4 d'4 ( e'4) e'4 \finalis

}

altoMusic = {
b2 ~ b4 ~ b2 ~ b2*4/2 ~ b2 \divisioMinima
d'2*3/2 ~ d'2 ~ d'2 b4 ~ b2*6/2 ~ b2 ~ \divisioMaior
b2 ~ b2 ~ b2*4/2 ~ b2 e'2 ~ e'4 d'2*3/2 ~ d'4 \divisioMaxima
r4 e'2 fis'2*4/2 ~ fis'2*3/2 e'4 ~ \divisioMinima
e'4 d'2*3/2 ~ d'2*3/2 ~ d'2*4/2 ~ d'2*4/2 r4 \divisioMaxima
b2 ~ b2*4/2 ~ b2*3/2 ~ b2*3/2 ~ b2*3/2 \divisioMinima
e'2*3/2 d'2 ~ d'2*4/2 b4 ~ b2 ~ b4 \finalis
}

tenorMusic = {
g2 ~ g4 a2 g2*4/2 fis2 \divisioMinima
g2*3/2 b2 a2 ~ a4 ~ a2*6/2 g2 \divisioMaior
fis2 e2 fis2*4/2 g2 ~ g2 c'4 ~ c'2*3/2 b4 \divisioMaxima
d'4 ~ d'2 ~ d'2*4/2 c'2*3/2 ~ c'4 ~ \divisioMinima
c'4 b2*3/2 ~ b2*3/2 ~ b2*4/2 a2*4/2 ~ a4 \divisioMaxima
r2 a2*4/2 g2*3/2 fis2*3/2 e2*3/2 \divisioMinima
g2*3/2 ~ g2 e2*4/2 fis4 ~ fis2 g4 \finalis
}

bassMusic = {
r2 e4 ~ e2 ~ e2*4/2 b,2 ~ \divisioMinima
b,2*3/2 ~ b,2 ~ b,2 ~ b,4 e2*6/2 ~ e2 ~ \divisioMaior
e2 ~ e2 ~ e2*4/2 ~ e2 c2 ~ c4 g2*3/2 ~ g4 \divisioMaxima
b4 ~ b2 ~ b2*4/2 ~ b2*3/2 ~ b4 ~ \divisioMinima
b4 ~ b2*3/2 a2*3/2 g2*4/2 ~ g2*4/2 fis4 \divisioMaxima
e2 ~ e2*4/2 ~ e2*3/2 ~ e2*3/2 ~ e2*3/2 \divisioMinima
c2*3/2 b,2 ~ b,2*4/2 ~ b,4 e2 ~ e4 \finalis
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
        "I"
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
