\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.325
%(volume.page)

global = {
 \key e \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Potens in terra" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Potens in terra"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Potens in terra" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- ia, _ _ 
\set stanza = " * " al -- le -- lú -- ia. _ _ _ _ _ _ _ _ ℣. 
Po -- _ _ _ tens _ _ in ter -- _ _ _ _ _ _ ra 
e -- _ _ _ _ _ rit se -- men e -- jus: 
ge -- ne -- rá -- ti -- _ o _ _ re -- ctó -- _ _ _ _ _ _ rum 
\set stanza = " * " 
be -- ne -- di -- cé -- _ tur. _ }

chantMusic = {
\tieDown   d'4 e'4 g'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( g'4) a'4 ( fis'4) ~ fis'4 ( e'4) \divisioMinima
  d'4 e'4 g'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( g'4) a'4 ( fis'4) ~ fis'4 ( e'4) \divisioMinima
 g'4. a'4 ( b'4 a'4) d'4 ( e'4) g'4 ( e'4) g'4. fis'4 ( g'4 d'4) g'4 ( g'4) ~ g'4 ( e'4 fis'\prall g'4 e'4) \finalis
 e'4 ( d'4) e'4 ( fis'\prall g'4 a'4.) b'4 ( a'4) ~ a'4 ( g'4 a'4) a'4. g'4 ( g'4) e'4 ( fis'4 e'4) \divisioMinima
 e'4 e'4 g'4 ( g'4) a'4 ( b'4 g'4 e'4) a'4 ( g'4 fis'4 d'4 e'4.) g'4 ( e'4 g'4) ~ g'4 ( e'4) fis'4 ( d'4) d'4 \divisioMaior
 e'4 ( e'4 d'4) e'4 ( e'4 d'4) e'4 ( b4) \divisioMinima
 d'4 ( e'4) g'4 ( g'4 e'4 d'4) g'4 ( g'4 g'4) g'4 g'4 a'4 ( g'4 fis'4 g'4) e'4 ( fis'4 e'4) e'4 \divisioMaxima
 e'4 e'4 e'4 ( g'4 a'4) b'4 ( a'4) ~ a'4 ( g'4 a'4) a'4. g'4 ( g'4) e'4 ( fis'4 e'4) \divisioMinima
 e'4 e'4 g'4 ( g'4) a'4 ( b'4 g'4 e'4) a'4 ( g'4 fis'4 d'4 e'4.) g'4 ( e'4 g'4) ~ g'4 ( e'4) fis'4 ( d'4) d'4 \divisioMaior
 g'4 ( g'4) g'4 g'4 ( a'4) a'4 ( g'4) b'4 ( a'4 b'4) b'4 ( b'4 a'4 g'4 fis'4 d'4.) e'4 ( fis'\prall g'4 e'4) \finalis

}

altoMusic = {
a2 b2 ~ b2*3/2 ~ b2 ~ b4 ~ b2 d'2 ~ d'2*3/2 b2 ~ b4 \divisioMinima
d'2*3/4 ~ d'2*3/2 ~ d'2 ~ d'2 c'2*3/4 d'2*3/2 ~ d'2 ~ d'2*3/2 b2 ~ \finalis
b2 ~ b2*9/4 e'2 d'2*3/2 c'2*3/4 b2 ~ b2 ~ b4 ~ \divisioMinima
b2 d'2 ~ d'2*4/2 ~ d'2 ~ d'2*7/4 ~ d'2 ~ d'2*3/2 ~ d'2 b4 ~ \divisioMaior
b2*3/2 ~ b2*3/2 ~ b2 ~ \divisioMinima
b2 c'2*4/2 d'2*4/2 ~ d'4 ~ d'2*4/2 b2*3/2 ~ b4 \divisioMaxima
e'2*3/2 d'2 c'2 b2*3/2 ~ b2*3/4 ~ b2 ~ b2*3/2 ~ \divisioMinima
b4 e'4 ~ e'2 d'2*4/2 ~ d'2 ~ d'2*7/4 ~ d'2 ~ d'2*3/2 ~ d'2 b4 \divisioMaior
d'2*3/2 ~ d'2 ~ d'2 ~ d'2*3/2 ~ d'2*13/4 ~ d'2 b2 \finalis
}

tenorMusic = {
r2*4/2 fis2*3/2 a2 g4 ~ g2 ~ g2 fis2*3/2 a2 g4 ~ \divisioMinima
g2*3/4 fis2*3/2 a2 g2 ~ g2*3/4 ~ g2*3/2 b2 a2*3/2 ~ a4 g4 \finalis
fis2 g2*9/4 ~ g2 ~ g2*3/2 ~ g2*3/4 ~ g2 a2 g4 ~ \divisioMinima
g2 ~ g2 e2*4/2 fis2 a2*7/4 g2 e2*3/2 b2 fis4 \divisioMaior
e2*3/2 fis2*3/2 g2 ~ \divisioMinima
g2 ~ g2*4/2 ~ g2*4/2 e4 fis2*4/2 a2*3/2 g4 ~ \divisioMaxima
g2*3/2 ~ g2 ~ g2 ~ g2*3/2 fis2*3/4 a2 g2*3/2 ~ \divisioMinima
g4 ~ g4 ~ g2 ~ g2*4/2 fis2 a2*7/4 g2 e2*3/2 b2 fis4 \divisioMaior
g2*3/2 e2 fis2 g2*3/2 fis2*13/4 a2 ~ a4 g4 \finalis
}

bassMusic = {
fis2 e2 ~ e2*3/2 ~ e2 ~ e4 g,2 b,2 ~ b,2*3/2 e2 ~ e4 \divisioMinima
b,2*3/4 ~ b,2*3/2 ~ b,2 ~ b,2 a,2*3/4 b,2*3/2 ~ b,2 ~ b,2*3/2 e2 ~ \finalis
e2 ~ e2*9/4 ~ e2 ~ e2*3/2 ~ e2*3/4 ~ e2 ~ e2 ~ e4 ~ \divisioMinima
e2 b,2 ~ b,2*4/2 ~ b,2 ~ b,2*7/4 ~ b,2 ~ b,2*3/2 ~ b,2 ~ b,4 \divisioMaior
g,2*3/2 ~ g,2*3/2 ~ g,2 ~ \divisioMinima
g,2 a,2*4/2 b,2*4/2 ~ b,4 ~ b,2*4/2 e2*3/2 ~ e4 ~ \divisioMaxima
e2*3/2 ~ e2 ~ e2 ~ e2*3/2 ~ e2*3/4 ~ e2 ~ e2*3/2 ~ \divisioMinima
e4 d4 c2 b,2*4/2 ~ b,2 ~ b,2*7/4 ~ b,2 ~ b,2*3/2 ~ b,2 ~ b,4 ~ \divisioMaior
b,2*3/2 ~ b,2 ~ b,2 ~ b,2*3/2 ~ b,2*13/4 ~ b,2 e2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Alleluia"
        "2"
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
