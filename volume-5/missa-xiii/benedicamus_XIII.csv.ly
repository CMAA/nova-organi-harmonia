\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.77
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

\header {
  title = \markup \center-column {"Benedicamus Domino XIII." \vspace #1 }
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
Be -- ne -- di -- cá -- mus Dó -- _ mi -- no. }

chantMusic = {
\tieDown   d'4 d'4 d'4 d'4 ( c'4) d'4 ( f'4 e'4 c'4) e'4 ( d'4) f'4 ( f'4 d'4) c'4 ( d'4) d'4 \finalis

}

altoMusic = {
a2*3/2 ~ a2 ~ a2*4/2 ~ a2 ~ a2*3/2 ~ a2 ~ a4 \finalis
}

tenorMusic = {
f2*3/2 e2 d2*4/2 c2 d2*3/2 e2 f4 \finalis
}

bassMusic = {
d2*3/2 a,2 ~ a,2*4/2 ~ a,2 ~ a,2*3/2 ~ a,2 d4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
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
