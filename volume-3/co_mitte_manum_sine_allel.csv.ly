\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.28
%(volume.page)

global = {
 \key g \major
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Mitte manum sine allel." \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Mitte manum sine allel."
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Mitte manum sine allel." }
    \line {}
  }
}

chantText = \lyricmode {
Mit -- te 
\set stanza = " * " ma -- num tu -- am, et co -- gnó -- sce lo -- ca cla -- vó -- rum: 
et no -- li es -- se in -- cré -- du -- lus, 
sed fi -- dé -- _ lis. }

chantMusic = {
\tieDown   g'4 ( g'4 a'4) g'4  a'4 ( b'4) a'4 g'4 a'4 ( b'4 a'4) \divisioMinima
 g'4 ( \tiny fis' e' 4) g'4 a'4 g'4 g'4 a'4 fis'4  a'4 ( b'\prall cis''4 b'4) cis''4 ( b'4) \divisioMaxima
 g'4 ( \once \tweak #'font-size #-4 e' ) g'4 a'4 b'4 a'4 g'4 a'4 g'4 ( fis'4) e'4 \divisioMaior
 g'4 ( a'4) g'4 g'4 ( a'4) b'4 ( a'4 g'4 a'4) a'4 ( g'4) \finalis

}

altoMusic = {
b2*4/2 d'2*3/2 ~ d'4 ~ d'2*3/2 \divisioMinima
b2*4/2 e'2 d'2 ~ d'4 e'2*4/2 ~ e'2 \divisioMaxima
a2 d'2 ~ d'2*3/2 c'2*3/2 b4 \divisioMaior
c'2*3/2 d'2 ~ d'2*4/2 c'4 b4 \finalis
}

tenorMusic = {
g2*4/2 fis2*3/2 e4 fis2*3/2 \divisioMinima
g2*4/2 ~ g2 ~ g2 a4 ~ a2*4/2 e2 \divisioMaxima
r2 d2 g2*3/2 ~ g2*3/2 ~ g4 ~ \divisioMaior
g2*3/2 ~ g2 ~ g2*4/2 ~ g2 \finalis
}

bassMusic = {
e2*4/2 d2*3/2 ~ d4 ~ d2*3/2 \divisioMinima
e2*4/2 c2 b,2 ~ b,4 c2*4/2 ~ c2 ~ \divisioMaxima
c2 b,2 ~ b,2*3/2 a,2*3/2 g,4 \divisioMaior
a,2*3/2 b,2 g,2*4/2 ~ g,2 \finalis
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
