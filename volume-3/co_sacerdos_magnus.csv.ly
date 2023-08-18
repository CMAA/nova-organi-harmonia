\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.300
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Sacerdos magnus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Sacerdos magnus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Sacerdos magnus" }
    \line {}
  }
}

chantText = \lyricmode {
Sa -- cér -- dos ma -- gnus, 
\set stanza = " * " qui in vi -- ta su -- a suf -- fúl -- sit do -- mum, 
et in di -- é -- bus su -- is _ cor -- ro -- bo -- rá -- vit tem -- _ plum, 
qua -- si i -- gnis ef -- fúl -- gens, 
et thus _ _ ar -- dens in i -- gne. }

chantMusic = {
\tieDown   e'4 e'4 ( g'4 \once \tweak #'font-size #-4 fis' ) g'4 g'4 ( \once \tweak #'font-size #-4 a' ) e'4 \divisioMinima
 e'4 e'4 d'4 fis'4 a'4 a'4 fis'4 g'4 ( fis'4) e'4 d'4 ( e'4) e'4 \divisioMaxima
 g'4 a'4 g'4 a'4 ( b'4) b'4 b'4  b'4 ( a'4) b'4 ( c''4 b'4) \divisioMinima
 b'4 g'4 b'4 d''4 b'4 ( a'4) b'4 ( a'4) ~ a'4 ( g'4 a'4) a'4 ( g'4) \divisioMaxima
  b'4 ( c''4) b'4 a'4 a'4 ( fis'4) g'4 ( a'4) a'4 ( g'4 a'4) e'4 \divisioMaior
 e'4 ( g'4) fis'4 ( g'4) a'4 ( g'4) a'4 ( b'4) a'4 ( b'4 a'4) fis'4 ( e'4) fis'4 ( g'4 fis'4) e'4 e'4 \finalis

}

altoMusic = {
r4 b2*4/2 ~ b2 ~ b4 ~ \divisioMinima
b2 d'2 b2*3/2 ~ b2*3/2 ~ b2 ~ b4 ~ \divisioMaxima
b2*3/2 d'2*4/2 e'2*5/2 ~ \divisioMinima
e'2*3/2 d'2*4/2 ~ d'2*4/2 b2 d'2*4/2 ~ d'2*4/2 ~ d'2*3/2 e'4 ~ \divisioMaior
e'2 d'2*4/2 ~ d'2 ~ d'2*5/2 ~ d'2*3/2 b2 \finalis
}

tenorMusic = {
r4 b2*4/2 a2 g4 ~ \divisioMinima
g2 a2 ~ a2*3/2 ~ a2*3/2 fis2 g4 ~ \divisioMaxima
g2*3/2 fis2*4/2 g2*5/2 ~ \divisioMinima
g2*3/2 ~ g2*4/2 fis2*4/2 e2 g2*4/2 ~ g2*4/2 ~ g2*3/2 ~ g4 \divisioMaior
a2 ~ a2*4/2 fis2 ~ fis2*5/2 a2*3/2 ~ a4 g4 \finalis
}

bassMusic = {
r4 e2*4/2 ~ e2 ~ e4 ~ \divisioMinima
e2 fis2 d2*3/2 e2*3/2 ~ e2 ~ e4 ~ \divisioMaxima
e2*3/2 d2*4/2 c2*5/2 ~ \divisioMinima
c2*3/2 b,2*4/2 ~ b,2*4/2 e2 g,2*4/2 a,2*4/2 b,2*3/2 c4 ~ \divisioMaior
c2 d2*4/2 ~ d2 b,2*5/2 ~ b,2*3/2 e2 \finalis
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
        "I."
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
