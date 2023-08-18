\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.201
%(volume.page)

global = {
 \key d \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Qui vicerit" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Qui vicerit"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Qui vicerit" }
    \line {}
  }
}

chantText = \lyricmode {
Qui ví -- ce -- rit, 
\set stanza = " * " da -- bo e -- _ i se -- dé -- re me -- cum in thro -- no me -- o: 
sic -- ut et e -- go vi -- _ ci, 
et se -- di cum Pa -- tre me -- o in thro -- no e -- jus. T.P. 
Al -- le -- _ lú -- ia. }

chantMusic = {
\tieDown   a'4 a'4 g'4 fis'4 \divisioMinima
 a'4 ( b'4) g'4 e'4 ( d'4) e'4 ( fis'\prall g'4) g'4 \divisioMinima
 g'4 fis'4 g'4 a'4 ( b'4) a'4 a'4 a'4 ( b'4) g'4 ( e'4) g'4 fis'4 \divisioMaxima
 a'4 a'4 g'4 a'4 ( b'4 a'4 g'4) g'4 g'4 ( e'4) g'4 ( a'4) a'4 \divisioMaior
 g'4 a'4 ( b'4 a'4) fis'4 g'4 a'4 fis'4 g'4 e'4 \divisioMinima
 d'4 ( \once \tweak #'font-size #-4 e' ) e'4 e'4 ( d'4) e'4 ( fis'\prall g'4 fis'4 e'4 fis'4) e'4 ( d'4) \finalis
 d'4 ( \once \tweak #'font-size #-4 fis' ) fis'4. e'4 ( g'4 fis'4) d'4 ( e'4 d'4) d'4 \finalis

}

altoMusic = {
r4 d'2*3/2 ~ \divisioMinima
d'2*3/2 b2 ~ b2*3/2 ~ b4 ~ \divisioMinima
b4 d'2 ~ d'2*4/2 b2*4/2 d'2 ~ \divisioMaxima
d'2*3/2 ~ d'2*5/2 ~ d'2*4/2 ~ d'4 ~ \divisioMaior
d'4 ~ d'2*5/2 b2 ~ b2 ~ \divisioMinima
b2*3/2 ~ b2 a2*6/2 ~ a2 ~ \finalis
a2 b2*9/4 a2*3/2 ~ a4 \finalis
}

tenorMusic = {
r4 a2*3/2 \divisioMinima
g2*3/2 ~ g2 ~ g2*3/2 ~ g4 ~ \divisioMinima
g4 a2 fis2*4/2 g2*4/2 b2 \divisioMaxima
a2*3/2 g2*5/2 b2*4/2 a4 ~ \divisioMaior
a4 fis2*5/2 ~ fis2 a4 g4 ~ \divisioMinima
g2 ~ g4 ~ g2 ~ g2*6/2 fis2 ~ \finalis
fis2 g2*9/4 ~ g2*3/2 fis4 \finalis
}

bassMusic = {
r4 fis2*3/2 \divisioMinima
r2*3/2 r2 fis2*3/2 e4 ~ \divisioMinima
e4 d2 ~ d2*4/2 e2*4/2 b,2 \divisioMaxima
fis2*3/2 g2*5/2 e2*4/2 fis4 ~ \divisioMaior
fis4 d2*5/2 e2 ~ e2 ~ \divisioMinima
e2 fis4 g2 d2*6/2 ~ d2 ~ \finalis
d2 g,2*9/4 d2*3/2 ~ d4 \finalis
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
        "VII"
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
