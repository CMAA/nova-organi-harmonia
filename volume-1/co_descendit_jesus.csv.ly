\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.111
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Descendit Jesus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Descendit Jesus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Descendit Jesus" }
    \line {}
  }
}

chantText = \lyricmode {
De -- scén -- dit Je -- sus 
\set stanza = " * " cum e -- is, _ 
et ve -- nit Ná -- za -- reth, _ 
et e -- _ _ rat súb -- _ _ di -- tus il -- lis. }

chantMusic = {
\tieDown   g'4 ( a'4) a'4 ( g'4 g'4) e'4 ( fis'4) d'4 ( e'4) e'4 \divisioMinima
 g'4 a'4 ( b'4 a'4 b'4) a'4. g'4 ( a'4 g'4 e'4) \divisioMaior
 e'4 g'4 ( fis'4 a'4 \forceBreak
) a'4 ( b'4) b'4 ( d''4) b'4 ( a'4) a'4. g'4 ( b'4 a'4 e'4) \divisioMaxima
 a'4 ( b'4 a'4) b'4. g'4 ( b'4) d''4 ( d''4 b'4 a'4 e'4 g'4) g'4 \divisioMinima
 g'4 ( e'4) g'4 ( fis'4 d'4 \forceBreak
) g'4 ( b'4 a'4) b'4 a'4 ( b'4 g'4 fis'4 g'4) e'4 ( fis'4 e'4) e'4 \finalis

}

altoMusic = {
b2 ~ b2*3/2 ~ b2 ~ b2 ~ b4 ~ \divisioMinima
b4 d'2*4/2 ~ d'2*3/4 b2*4/2 ~ \divisioMaior
b4 d'2*3/2 ~ d'2 ~ d'2 ~ d'2 ~ d'2*3/4 ~ d'2 ~ d'2 ~ \divisioMaxima
d'2*3/2 ~ d'2*3/4 ~ d'2 ~ d'2*3/2 ~ d'2*3/2 ~ d'4 \divisioMinima
c'2 d'2*3/2 ~ d'2*4/2 ~ d'2 ~ d'2*3/2 b2*3/2 ~ b4 \finalis
}

tenorMusic = {
g2 fis2*3/2 g2 ~ g2 ~ g4 ~ \divisioMinima
g4 ~ g2*4/2 fis2*3/4 g2*4/2 ~ \divisioMaior
g4 a2*3/2 fis2 ~ fis2 g2 e2*3/4 d2 b2 \divisioMaxima
a2*3/2 g2*3/4 ~ g2 ~ g2*3/2 fis2*3/2 e4 \divisioMinima
g2 ~ g2*3/2 b2*4/2 fis2 a2*3/2 ~ a2*3/2 g4 \finalis
}

bassMusic = {
e2 ~ e2*3/2 ~ e2 fis2 e4 ~ \divisioMinima
e4 d2*4/2 ~ d2*3/4 e2*4/2 ~ \divisioMaior
e4 d2*3/2 ~ d2 b,2 ~ b,2 ~ b,2*3/4 ~ b,2 ~ b,2 \divisioMaxima
fis2*3/2 ~ fis2*3/4 e2 b,2*3/2 ~ b,2*3/2 ~ b,4 \divisioMinima
a,2 b,2*3/2 ~ b,2*4/2 d2 ~ d2*3/2 e2*3/2 ~ e4 \finalis
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
