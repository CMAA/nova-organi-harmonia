\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.268
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Videns Dominus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Videns Dominus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Videns Dominus" }
    \line {}
  }
}

chantText = \lyricmode {
Vi -- dens Dó -- mi -- nus 
\set stanza = " * " flen -- tes so -- ró -- res Lá -- za -- ri ad mo -- nu -- mén -- tum, 
la -- cri -- má -- tus est co -- ram Ju -- dǽ -- is, et cla -- má -- bat: 
Lá -- za -- _ re, ve -- ni fo -- ras: 
et pród -- i -- it li -- gá -- tis má -- ni -- bus et pé -- di -- bus, 
qui fú -- e -- rat qua -- tri -- du -- á -- nus mó -- tu -- us. }

chantMusic = {
\tieDown   g'4 g'4 g'4 g'4 g'4 \divisioMinima
 g'4 fis'4 e'4 fis'4 g'4 a'4 a'4 a'4 a'4 a'4 fis'4 \forceBreak
 g'4 ( fis'4 e'4) e'4 \divisioMaior
 g'4 g'4 b'4 b'4 b'4 b'4 a'4 a'4 a'4 e'4 \divisioMinima
 a'4 g'4 fis'4 fis'4 \divisioMaior \forceBreak

 b'4 a'4 ( g'4) a'4 ( b'4) a'4 b'4 d''4 b'4 b'4 \divisioMaxima
 g'4  a'4 ( b'\prall c''4) c''4 ( b'4) a'4 \divisioMinima
 a'4 a'4 g'4 a'4 ( b'4) g'4 e'4 g'4 \forceBreak
 g'4 ( a'4) g'4 d'4 \divisioMaior
 g'4 a'4 g'4 ( fis'4) g'4 g'4 fis'4 g'4 a'4 ( g'4) g'4 e'4 ( fis'4 e'4) d'4 ( fis'\prall g'4 fis'4 e'4 fis'4) fis'4 ( e'4) \finalis

}

altoMusic = {
b2 ~ b2*3/2 ~ \divisioMinima
b2*3/2 c2 d'2 ~ d'2 ~ d'2 b2*3/2 ~ b4 ~ \divisioMaior
b2 e'2*3/2 ~ e'2*3/2 ~ e'2 \divisioMinima
d'2*3/2 ~ d'4 ~ \divisioMaior
d'4 ~ d'2*5/2 ~ d'2 ~ d'4 ~ d'4 \divisioMaxima
b4 e'2*3/2 ~ e'2*3/2 ~ \divisioMinima
e'4 d'2 ~ d'2*5/2 c'2*3/2 d'4 ~ \divisioMaior
d'4 e'4 ~ e'2*3/2 d'2*3/2 ~ d'2 ~ d'4 c'2*3/2 d'2*6/2 b2 \finalis
}

tenorMusic = {
r2 fis2*3/2 \divisioMinima
g2*3/2 ~ g2 ~ g2 a2 b2 a2*3/2 g4 \divisioMaior
e2 ~ e2*3/2 fis2*3/2 g2 ~ \divisioMinima
g2 a4 b4 \divisioMaior
fis4 g2*5/2 a2 g4 fis4 \divisioMaxima
e4 ~ e2*3/2 a2*3/2 ~ \divisioMinima
a4 ~ a2 g2*5/2 ~ g2*3/2 ~ g4 ~ \divisioMaior
g4 ~ g4 a2*3/2 ~ a2*3/2 fis2 g4 a2*3/2 ~ a2*6/2 ~ a4 g4 \finalis
}

bassMusic = {
e2 ~ e2*3/2 ~ \divisioMinima
e2*3/2 a,2 b,2 ~ b,2 ~ b,2 fis2*3/2 e4 \divisioMaior
d2 c2*3/2 ~ c2*3/2 ~ c2 \divisioMinima
b,2 ~ b,4 ~ b,4 ~ \divisioMaior
b,4 ~ b,2*5/2 ~ b,2 ~ b,4 ~ b,4 \divisioMaxima
d4 c2*3/2 ~ c2*3/2 ~ \divisioMinima
c4 b,2 ~ b,2*5/2 a,2*3/2 b,4 ~ \divisioMaior
b,4 c4 ~ c2*3/2 b,2*3/2 ~ b,2 ~ b,4 a,2*3/2 b,2*6/2 e2 \finalis
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
