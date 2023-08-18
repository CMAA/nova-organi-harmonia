\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.54
%(volume.page)

global = {
 \key g \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"In splendoribus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "In splendoribus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "In splendoribus" }
    \line {}
  }
}

chantText = \lyricmode {
In splen -- dó -- ri -- bus 
\set stanza = " * " san -- ctó -- rum, 
ex ú -- te -- ro _ 
an -- te lu -- cí -- _ fe -- rum gé -- _ nu -- i te. }

chantMusic = {
\tieDown   g'4 e'4 g'4 ( g'4) e'4 g'4 ( g'4)  a'4 ( g'4) g'4 ( a'4 g'4) g'4 \divisioMaior
 g'4 g'4 ( a'4 b'4) b'4 ( a'4) a'4. g'4 ( a'4 g'4 e'4) \divisioMaior \forceBreak

 g'4 ( g'4 \once \tweak #'font-size #-4 a' ) g'4 b'4 ( a'4) b'4. g'4 ( b'4 d''4) a'4 g'4 ( a'4 g'4 e'4) \divisioMinima
 e'4 ( g'4) a'4 ( b'4) g'4 ( g'4) g'4 ( a'4 g'4) g'4 \finalis

}

altoMusic = {
b2 ~ b2*3/2 ~ b2 e'2 ~ e'2*3/2 d'4 ~ \divisioMaior
d'4 ~ d'2*3/2 ~ d'2 b2*3/4 ~ b2*3/2 ~ b4 ~ \divisioMaior
b2*4/2 e'2 d'2*5/4 ~ d'2*3/2 b2*4/2 ~ \divisioMinima
b2*4/2 ~ b2 a2*3/2 b4 \finalis
}

tenorMusic = {
b2 a2*3/2 g2 ~ g2 ~ g2*3/2 ~ g4 ~ \divisioMaior
g4 b2*3/2 fis2 e2*3/4 fis2*3/2 g4 \divisioMaior
e2*4/2 ~ e2 fis2*5/4 g2*3/2 ~ g2*4/2 ~ \divisioMinima
g2*4/2 e2 ~ e2*3/2 d4 \finalis
}

bassMusic = {
e2 ~ e2*3/2 ~ e2 d2 c2*3/2 b,4 ~ \divisioMaior
b,4 ~ b,2*3/2 d2 e2*3/4 ~ e2*3/2 ~ e4 \divisioMaior
d2*4/2 c2 b,2*5/4 ~ b,2*3/2 e2*4/2 \divisioMinima
d2*4/2 ~ d2 c2*3/2 g,4 \finalis
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
