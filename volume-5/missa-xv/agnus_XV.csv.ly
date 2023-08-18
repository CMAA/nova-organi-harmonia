\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.88
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

\header {
  title = \markup \center-column {"Agnus Dei XV." \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page ""
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "" }
    \line {}
  }
}

chantText = \lyricmode {
A -- gnus De -- i, 
\set stanza = " * " qui tol -- lis pec -- cá -- ta mun -- di: 
mi -- se -- ré -- re no -- bis. 
A -- gnus De -- i, 
\set stanza = " * " qui tol -- lis pec -- cá -- ta mun -- di: 
mi -- se -- ré -- _ re no -- _ _ bis. 
A -- gnus De -- i, 
\set stanza = " * " qui tol -- lis pec -- cá -- ta mun -- di: 
do -- na nó -- bis pa -- cem. }

chantMusic = {
\tieDown   e'4 g'4 e'4 ( d'4 fis'4) fis'4 \divisioMinima
 fis'4 e'4 ( \once \tweak #'font-size #-4 a' ) a'4 b'4 a'4 g'4 ( fis'4 e'4) fis'4 ( g'4) fis'4 \divisioMaior
 \forceBreak
 a'4 g'4 g'4 ( fis'4) d'4 ( e'4) e'4 ( fis'\prall g'4 e'4) e'4 \finalis
 e'4 ( b'4) b'4 ( a'4) b'4 e'4 \divisioMinima
 g'4 fis'4 ( e'4 d'4) e'4 \forceBreak
 fis'4 ( a'4) a'4 ( b'4) e'4 ( d'4) fis'4 ( g'4 \once \tweak #'font-size #-4 e' ) e'4 \divisioMaior
 b'4 a'4 ( b'4) b'4 ( d''4 cis''4 a'4) cis''4 ( d''4 b'4) b'4 e'4 ( fis'4 g'4) b'4 ( a'4 fis'4) \forceBreak
 g'4 ( e'4) e'4 \finalis
 e'4 g'4 e'4 ( d'4 fis'4) fis'4 \divisioMinima
 fis'4 e'4 ( \once \tweak #'font-size #-4 a' ) a'4 b'4 a'4 g'4 ( fis'4 e'4) fis'4 ( g'4) fis'4 \divisioMaior
 \forceBreak
 a'4 g'4 g'4 ( fis'4) d'4 ( e'4) e'4 ( fis'\prall g'4 e'4) e'4 \finalis

}

altoMusic = {
b2 -\tweak Glissando.Y-offset #-0.8 \glissando e'4 d'4 fis'4 d'4 ~ \divisioMinima
d'4 cis'2*4/2 b4 cis'2*3/2 d'2*3/2 \divisioMaior
e'2 d'2 ~ d'2 b2*4/2 ~ b4 \finalis
\shiftRight fis'2 ~ fis'2 ~ fis'4 -\tweak Glissando.Y-offset #-0.8 \glissando e'4 ~ \divisioMinima
e'4 d'2*4/2 ~ d'2 ~ d'2 ~ d'2 b2*3/2 ~ b4 \divisioMaior
fis'4 e'2 d'2*4/2 e'2*3/2 d'4 cis'2*3/2 d'2*3/2 b2 ~ b4 \finalis
b2 ~ b2*3/2 d'4 \divisioMinima
d'4 cis'2*4/2 b4 cis'2*3/2 d'2*3/2 \divisioMaior
b2 ~ b2 ~ b2 ~ b2*4/2 ~ b4 \finalis
}

tenorMusic = {
g2 a2*3/2 ~ a4 ~ \divisioMinima
a4 g2*4/2 d4 e2*3/2 b2*3/2 ~ \divisioMaior
b2 a2 ~ a2 ~ a2*4/2 g4 \finalis
b2 cis'2 b2 ~ \divisioMinima
b4 ~ b2*4/2 a2 fis2 g2 a2*3/2 g4 \divisioMaior
fis4 ~ fis2 ~ fis2*4/2 g2*3/2 ~ g4 ~ g2*3/2 fis2*3/2 a2 g4 \finalis
g2 fis2*3/2 b4 \divisioMinima
a4 g2*4/2 d4 e2*3/2 b2*3/2 \divisioMaior
r2 a2 ~ a2 ~ a2*4/2 g4 \finalis
}

bassMusic = {
r2 fis2*3/2 d4 \divisioMinima
b,4 ~ b,2*4/2 ~ b,4 ~ b,2*3/2 ~ b,2*3/2 \divisioMaior
cis2 d2 fis2 e2*4/2 ~ e4 \finalis
d2 fis2 g2 ~ \divisioMinima
g4 b,2*4/2 ~ b,2 ~ b,2 ~ b,2 e2*3/2 ~ e4 \divisioMaior
d4 cis2 b,2*4/2 ~ b,2*3/2 ~ b,4 ~ b,2*3/2 ~ b,2*3/2 e2 ~ e4 \finalis
e2 b,2*3/2 ~ b,4 ~ \divisioMinima
b,4 ~ b,2*4/2 ~ b,4 ~ b,2*3/2 ~ b,2*3/2 \divisioMaior
e2 ~ e2 fis2 e2*4/2 ~ e4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
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
