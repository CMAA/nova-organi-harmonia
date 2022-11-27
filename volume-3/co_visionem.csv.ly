\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.305
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Visionem" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Visionem"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Visionem" }
    \line {}
  }
}

chantText = \lyricmode {
Vi -- si -- ó -- nem 
\set stanza = " * " quam vi -- dí -- stis, _ né -- mi -- ni dí -- xé -- ri -- tis, 
do -- nec a mór -- tu -- is re -- súr -- gat Fí -- li -- us hó -- mi -- nis. }

chantMusic = {
\tieDown   e'4 fis'4 ( g'4) a'4 fis'4  a'4 ( b'4) g'4 ( fis'4) e'4 e'4 ( g'4 e'4) ~ e'4 ( d'4) \divisioMinima
 g'4 b'4 a'4 b'4 a'4 ( g'4) a'4 g'4 \divisioMaior
 g'4 ( e'4) g'4 a'4 b'4 a'4 g'4 fis'4 g'4 ( a'4) a'4 \divisioMinima
 fis'4 ( g'4) a'4 g'4 ( fis'4) e'4 d'4 ( e'4) e'4 \finalis

}

altoMusic = {
e'4 ~ e'2 b2 ~ b2 ~ b2*3/2 ~ b2 a2*3/2 \divisioMinima
d'2*4/2 ~ d'2*3/2 ~ d'4 \divisioMaior
b2*4/2 ~ b2*4/2 d'2 ~ d'4 ~ \divisioMinima
d'2*3/2 b2 ~ b4 ~ b2 ~ b4 \finalis
}

tenorMusic = {
r2*5/2 fis2 a2*3/2 g2 a2*3/2 \divisioMinima
b2*4/2 c'2*3/2 b4 \divisioMaior
g2*4/2 ~ g2*4/2 ~ g2 fis4 \divisioMinima
a2*3/2 ~ a2 ~ a4 fis2 g4 \finalis
}

bassMusic = {
e2*3/2 ~ e2 ~ e2 ~ e2*3/2 ~ e2 fis2*3/2 \divisioMinima
e2*4/2 g2*3/2 ~ g4 \divisioMaior
fis2*4/2 e2*4/2 b,2 d4 ~ \divisioMinima
d2*3/2 ~ d2 e4 ~ e2 ~ e4 \finalis
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
