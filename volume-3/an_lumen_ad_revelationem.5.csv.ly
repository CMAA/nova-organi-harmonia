\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.61
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page ""
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "" }
    \line {}
  }
}

chantText = \lyricmode {
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
\set stanza = " * " 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown    f'4 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 c''4 bes'4 \divisioMaxima
 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 a'4 bes'4 g'4 f'4 \finalis

}

altoMusic = {
d'2 ~ d'2*4/2 ~ d'2*4/2 ~ d'2 ~ d'2 ~ \divisioMaxima
d'2 ~ d'2*5/2 ~ d'2 ~ d'2 \finalis
}

tenorMusic = {
bes2 ~ bes2*4/2 ~ bes2*4/2 a2 g2 ~ \divisioMaxima
g2 a2*5/2 bes2 a2 \finalis
}

bassMusic = {
r2 a2*4/2 g2*4/2 ~ g2 ~ g2 ~ \divisioMaxima
g2 ~ g2*5/2 ~ g2 d2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        ""
        ""
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
