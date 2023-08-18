\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.36
%(volume.page)

global = {
 \key g \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Tu es Petrus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Tu es Petrus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Tu es Petrus" }
    \line {}
  }
}

chantText = \lyricmode {
Tu es Pe -- trus, 
\set stanza = " * " 
et su -- per hanc pe -- tram 
æ -- di -- fi -- cá -- bo Ec -- clé -- si -- am _ _ me -- am. }

chantMusic = {
\tieDown   g'4 e'4 ( g'4) g'4 ( a'4 g'4 g'4) d'4 ( e'4 d'4) \divisioMaior
 e'4 g'4 ( g'4 a'4) g'4 g'4 g'4 ( a'4 g'4) g'4 \divisioMaior
 g'4 g'4 ( a'4 b'4) b'4 ( a'4) a'4 g'4 ( a'4 g'4 e'4) \divisioMinima
 e'4 g'4 ( g'4 a'4) g'4 g'4 ( a'4) b'4 ( a'4) b'4 ( a'4) g'4 ( a'4 b'4 a'4 g'4 a'4) a'4 ( g'4) \finalis

}

altoMusic = {
d'4 ~ d'2 ~ d'2*4/2 ~ d'4 e'4 d'4 ~ \divisioMaior
d'4 ~ d'2*5/2 e'2*3/2 ~ e'4 ~ \divisioMaior
e'4 ~ e'2*3/2 ~ e'2 b4 ~ b2*3/2 ~ b4 ~ \divisioMinima
b4 ~ b2*4/2 e'2*6/2 ~ e'2*6/2 d'2 \finalis
}

tenorMusic = {
g4 a2 g2*4/2 fis2*3/2 ~ \divisioMaior
fis4 g2*5/2 ~ g2*3/2 a4 ~ \divisioMaior
a4 b2*3/2 g2 fis4 a2*3/2 g4 ~ \divisioMinima
g4 ~ g2*4/2 ~ g2*6/2 a2*6/2 b2 \finalis
}

bassMusic = {
b,4 ~ b,2 ~ b,2*4/2 ~ b,2*3/2 ~ \divisioMaior
b,4 ~ b,2*5/2 c2*3/2 ~ c4 ~ \divisioMaior
c4 e2*3/2 ~ e2 ~ e4 ~ e2*3/2 ~ e4 ~ \divisioMinima
e4 d2*4/2 c2*6/2 ~ c2*6/2 g,2 \finalis
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
