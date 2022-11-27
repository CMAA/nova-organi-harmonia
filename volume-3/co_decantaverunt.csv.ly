\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.128
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Decantaverunt" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Decantaverunt"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Decantaverunt" }
    \line {}
  }
}

chantText = \lyricmode {
De -- can -- ta -- vé -- runt, _ _ 
\set stanza = " * " Dó -- mi -- ne, no -- men san -- ctum tu -- um, 
et vi -- ctrí -- cem ma -- num tu -- am lau -- dá -- _ ve -- runt. }

chantMusic = {
\tieDown   e'4 ( fis'4) d'4 e'4 g'4 ( a'4) b'4 ( g'4) a'4 ( b'4) ~ b'4 ( a'4) \divisioMinima
 g'4 ( b'4) a'4 g'4 ( fis'4) g'4 ( b'4) b'4 ( a'4) b'4 g'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( a'4) e'4 \divisioMaxima
 e'4 g'4 ( fis'4) g'4 ( a'4 b'4) a'4 a'4 a'4 a'4 ( g'4 a'4) e'4 ( fis'4 d'4) \divisioMinima
 g'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4 g'4) a'4 ( g'4 fis'4) e'4 ( fis'\prall g'4 fis'4 g'4) fis'4 ( e'4) \finalis

}

altoMusic = {
c'2 b2 ~ b2 ~ b2*3/2 d'2*3/2 ~ \divisioMinima
d'2*3/2 ~ d'2 ~ d'2 ~ d'2 ~ d'2*3/2 e'2*3/2 \divisioMaxima
r4 d'2 ~ d'2*4/2 ~ d'2 b2*3/2 ~ b2*3/2 ~ \divisioMinima
b2 ~ b2*3/2 ~ b2*3/2 ~ b2*5/2 ~ b2 \finalis
}

tenorMusic = {
r2*4/2 g2 ~ g2*3/2 fes2*3/2 \divisioMinima
g2*3/2 d2 e2 fes2 g2*3/2 ~ g2*3/2 \divisioMaxima
a4 ~ a2 e2*4/2 fes2 g2*3/2 a2*3/2 \divisioMinima
g2 e2*3/2 fes2*3/2 a2*5/2 g2 \finalis
}

bassMusic = {
a2 ~ a2 r2 e2*3/2 d2*3/2 \divisioMinima
b,2*3/2 ~ b,2 ~ b,2 ~ b,2 ~ b,2*3/2 c2*3/2 ~ \divisioMaxima
c4 d2 ~ d2*4/2 ~ d2 e2*3/2 ~ e2*3/2 ~ \divisioMinima
e2 d2*3/2 e2*3/2 ~ e2*5/2 ~ e2 \finalis
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
