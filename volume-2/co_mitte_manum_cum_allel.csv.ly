\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.40
%(volume.page)

global = {
 \key g \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Mitte manum (cum allel)" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Mitte manum (cum allel)"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Mitte manum (cum allel)" }
    \line {}
  }
}

chantText = \lyricmode {
Mit -- te 
\set stanza = " * " ma -- num tu -- am, et co -- gnó -- sce lo -- ca cla -- vó -- rum, al -- le -- lú -- ia: 
et no -- li es -- se in -- cré -- du -- lus, sed fi -- dé -- lis, 
al -- le -- lú -- ia, al -- le -- _ lú -- ia. }

chantMusic = {
\tieDown   g'4 ( g'4 a'4) g'4  a'4 ( b'4) a'4 g'4 a'4 ( b'4 a'4) \divisioMinima
 g'4 ( \tiny fis' e' 4) g'4 a'4 g'4 g'4 g'4 g'4 g'4 a'4 \divisioMinima \forceBreak

 g'4 ( \once \tweak #'font-size #-4 e' ) g'4  a'4 ( b'\prall c''4 b'4 a'4) b'4 ( a'4) \divisioMaxima
 g'4 ( \once \tweak #'font-size #-4 e' ) g'4 a'4 b'4 a'4 g'4 a'4 g'4 ( fis'4) e'4 \divisioMinima \forceBreak

 g'4 g'4 e'4 ( fis'4 d'4) d'4 \divisioMaior
 g'4 a'4  c''4 b'4 \divisioMinima
  c''4 b'4. a'4 ( c''4 b'4) g'4 ( a'4 g'4) g'4 \finalis

}

altoMusic = {
d'2*4/2 ~ d'2*3/2 e'4 ~ e'2*3/2 \divisioMinima
b2*4/2 e'2*5/2 ~ e'2 \divisioMinima
d'2*3/2 c'2*5/2 d'2 \divisioMaxima
b2*4/2 d'2*3/2 b2*3/2 ~ b4 ~ \divisioMinima
b2 ~ b2*3/2 a4 \divisioMaior
d'2 e'2 ~ e'4 ~ e'2*3/4 g'2*3/2 d'2*3/2 ~ d'4 \finalis
}

tenorMusic = {
b2*4/2 ~ b2*3/2 ~ b4 fis2*3/2 \divisioMinima
g2*4/2 ~ g2*5/2 ~ g2 ~ \divisioMinima
g2*3/2 ~ g2*5/2 fis2 \divisioMaxima
g2*4/2 fis2*3/2 ~ fis2*3/2 g4 ~ \divisioMinima
g2 ~ g2*3/2 fis4 \divisioMaior
r2 g2 ~ g4 c'2*3/4 ~ c'2*3/2 ~ c'2*3/2 b4 \finalis
}

bassMusic = {
g2*4/2 fis2*3/2 e4 ~ e2*3/2 ~ \divisioMinima
e2*4/2 d2*5/2 c2 \divisioMinima
b,2*3/2 a,2*5/2 d2 \divisioMaxima
e2*4/2 d2*3/2 e2*3/2 ~ e4 ~ \divisioMinima
e2 g2*3/2 r4 \divisioMaior
e2 ~ e2 ~ e4 c2*3/4 e2*3/2 g2*3/2 ~ g4 \finalis
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
