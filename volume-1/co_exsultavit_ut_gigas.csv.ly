\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.37
%(volume.page)

global = {
 \key g \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Exsultavit ut gigas" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Exsultavit ut gigas"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Exsultavit ut gigas" }
    \line {}
  }
}

chantText = \lyricmode {
Ex -- sul -- tá -- vit 
\set stanza = " * " ut gi -- gas 
ad cur -- rén -- dam vi -- am: 
a sum -- _ mo cœ -- _ lo 
e -- grés -- si -- o e -- jus, 
et oc -- cúr -- sus e -- jus 
us -- que ad sum -- _ mum e -- _ jus. }

chantMusic = {
\tieDown   d'4 e'4 g'4 ( g'4) e'4 \divisioMinima
 e'4 ( \once \tweak #'font-size #-4 d' ) g'4 ( a'4) g'4 ( fis'4 g'4) \divisioMaior
 g'4 b'4 ( a'4) b'4 ( d''4 cis''4 d''4) b'4 ( d''4 g'4) g'4 ( a'4 g'4) g'4 \divisioMaxima \forceBreak

 g'4 g'4 ( b'4) d''4 ( d''4) g'4 ( a'4) b'4 ( a'4) d''4 ( cis''4 d''4) b'4 ( d''4 a'4) \divisioMaior
 g'4 b'4 ( a'4 b'4) a'4 ( fis'4) a'4 fis'4 ( g'4 fis'4 e'4) fis'4 ( e'4) \divisioMaxima \forceBreak

 g'4 g'4 g'4 ( b'4 cis''\prall d''4 d''4) cis''4 ( b'4) g'4 ( b'4) a'4 ( b'4 a'4 g'4) \divisioMaior
 g'4 ( g'4 a'4) g'4 g'4 g'4 ( b'4) d''4 ( d''4) b'4 ( d''4 a'4) g'4 ( fis'4 e'4) a'4. fis'4 ( \once \tweak #'font-size #-4 g' ) g'4 \finalis

}

altoMusic = {
a2 b2*3/2 ~ \divisioMinima
b2 d'2*5/2 ~ \divisioMaior
d'2*3/2 ~ d'2*4/2 ~ d'2*3/2 b2*4/2 \divisioMaxima
g'4 ~ g'2 fis'2 e'2 fis'2 e'2*3/2 fis'2*3/2 ~ \divisioMaior
fis'4 e'2*3/2 ~ e'2*3/2 ~ e'2*4/2 b2 \divisioMaxima
d'2 ~ d'2*7/2 ~ d'2*6/2 \divisioMaior
e'2*5/2 d'2*4/2 ~ d'2*3/2 e'2*3/2 ~ e'2*3/4 d'2 ~ d'4 \finalis
}

tenorMusic = {
a2 g2*3/2 ~ \divisioMinima
g2 ~ g2*5/2 ~ \divisioMaior
g2*3/2 fis2*4/2 g2*3/2 ~ g2*4/2 \divisioMaxima
r4 b2 a2 b2 a2 g2*3/2 b2*3/2 ~ \divisioMaior
b2*4/2 fis2*3/2 a2*4/2 g2 ~ \divisioMaxima
g2 fis2*7/2 g2*6/2 ~ \divisioMaior
g2*5/2 ~ g2*4/2 a2*3/2 b2*3/2 c2*3/4 a2 b4 \finalis
}

bassMusic = {
fis2 e2*3/2 ~ \divisioMinima
e2 b,2*5/2 ~ \divisioMaior
b,2*3/2 ~ b,2*4/2 ~ b,2*3/2 e2*4/2 ~ \divisioMaxima
e2*3/2 ~ e2 ~ e2 ~ e2 ~ e2*3/2 d2*3/2 \divisioMaior
e2*4/2 ~ e2*7/2 ~ e2 \divisioMaxima
b,2 ~ b,2*7/2 ~ b,2*6/2 \divisioMaior
c2*5/2 b,2*4/2 ~ b,2*3/2 e2*3/2 g2*3/4 ~ g2 ~ g4 \finalis
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
        "VI"
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
