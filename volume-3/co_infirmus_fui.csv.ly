\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.274
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Infirmus fui" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Infirmus fui"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Infirmus fui" }
    \line {}
  }
}

chantText = \lyricmode {
In -- fír -- mus fu -- i, 
\set stanza = " * " et vi -- si -- tá -- stis me. _ 
A -- men, a -- men di -- co vo -- _ bis: 
Quám -- di -- u fe -- cí -- stis u -- ni ex his frá -- tri -- bus me -- is mí -- ni -- mis, mi -- hi fe -- cí -- _ stis. }

chantMusic = {
\tieDown   e'4 d'4 ( e'4) e'4 e'4 ( fis'\prall g'4 fis'4 e'4) e'4 ( fis'\prall g'4) \divisioMinima
 e'4 e'4 ( d'4) g'4 g'4 ( b'4) a'4  a'4 ( b'4) c''4 ( b'4) \divisioMaxima
 b'4 b'4 d''4 b'4 ( a'4) b'4 a'4 ( g'4) g'4 ( g'4) a'4 ( g'4) g'4 \divisioMaxima
 e'4 ( \once \tweak #'font-size #-4 a' ) a'4 a'4 b'4 a'4 ( g'4) g'4 \divisioMinima
  g'4 ( a'\prall b'4 c''4) b'4 b'4 b'4 ( a'4) b'4 a'4 g'4 a'4 g'4 ( fis'4) e'4 d'4 e'4 ( g'4 g'4) \divisioMinima
 a'4 ( b'4) g'4 ( fis'4) e'4 ( fis'4 e'4) d'4 ( e'4) g'4 ( fis'4 e'4 fis'4) fis'4 ( e'4) \finalis

}

altoMusic = {
b4 ~ b2*3/2 ~ b2*5/2 ~ b2*3/2 ~ \divisioMinima
b4 ~ b2*3/2 d'2*3/2 e'2 d'2 \divisioMaxima
g'2 fis'2*3/2 e'2*3/2 d'2*4/2 ~ d'4 \divisioMaxima
c'2*5/2 d'2*3/2 e'2*6/2 ~ e'2 ~ e'2*4/2 d'2 c'2 b2*3/2 ~ \divisioMinima
b2 ~ b2 ~ b2*3/2 ~ b2 ~ b2*4/2 ~ b2 \finalis
}

tenorMusic = {
g4 ~ g2*3/2 ~ g2*5/2 a2*3/2 ~ \divisioMinima
a4 g2*3/2 ~ g2*3/2 ~ g2 ~ g2 ~ \divisioMaxima
g2 ~ g2*3/2 ~ g2*3/2 ~ g2*4/2 ~ g4 ~ \divisioMaxima
g2*5/2 ~ g2*3/2 ~ g2*6/2 a2 g2*4/2 ~ g2 ~ g2 ~ g2*3/2 \divisioMinima
b2 a2 g2*3/2 fis2 a2*4/2 ~ a4 g4 \finalis
}

bassMusic = {
r4 fis2*3/2 e2*5/2 ~ e2*3/2 ~ \divisioMinima
e4 ~ e2*3/2 b,2*3/2 c2 g,2 \divisioMaxima
e2 d2*3/2 c2*3/2 ~ c2*4/2 b,4 \divisioMaxima
a,2*5/2 b,2*3/2 c2*6/2 ~ c2 e2*4/2 ~ e2 ~ e2 ~ e2*3/2 ~ \divisioMinima
e2 ~ e2 ~ e2*3/2 b,2 ~ b,2*4/2 e2 \finalis
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
