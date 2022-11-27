\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.132
%(volume.page)

global = {
 \key fis \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Cantabo Domino" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Cantabo Domino"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Cantabo Domino" }
    \line {}
  }
}

chantText = \lyricmode {
Can -- tá -- bo 
\set stanza = " * " Dó -- mi -- no, _ _ qui bo -- na trí -- _ bu -- it mi -- hi: 
et psal -- lam nó -- mi -- ni _ Dó -- mi -- ni _ _ al -- _ _ _ tís -- si -- mi. }

chantMusic = {
\tieDown   d'4  e'4 ( g'4 e'4) g'4   fis'4 g'4 ( a'4 g'4) g'4 ( fis'4 e'4) g'4 ( e'4) fis'4 ( g'4 fis'4) \divisioMinima
 e'4 ( fis'4) a'4 ( a'4 b'4) a'4 a'4 ( b'4 a'4) ~ a'4 ( e'4 \forceBreak
) fis'4 fis'4 ( b'4 a'4 gis'4 a'4) fis'4 ( gis'4 fis'4) fis'4 \divisioMaxima
 a'4 a'4 ( \once \tweak #'font-size #-4 b' ) gis'4 ( fis'4) a'4 ( b'4 cis''4 d''4) d''4 cis''4 d''4 ( e''4 d''4) b'4 ( cis''4) b'4 ( a'4 \forceBreak
) a'4 ( b'4 a'4) ~ a'4 ( gis'4 fis'4 e'4) fis'4 ( e'4) \divisioMinima
 gis'4 ( b'4 gis'4.) b'4 ( cis''4 a'4 a'4) ~ a'4 ( fis'4 e'4 d'4.) fis'4 ( a'4 fis'4) fis'4 fis'4 ( gis'4 fis'4) fis'4 \finalis

}

altoMusic = {
b4 ~ b2*3/2 ~ b2 d'2*3/2 ~ d'2*3/2 ~ d'2*5/2 \divisioMinima
cis'2 ~ cis'2*4/2 fis'2 e'2*4/2 d'2*5/2 cis'2*3/2 ~ cis'2 ~ cis'2 ~ cis'2 e'2 ~ e'2 fis'2 ~ fis'2*3/2 e'2 ~ e'2 ~ e'2 ~ e'2*3/2 ~ e'2 r2 \divisioMinima
e'2*7/4 ~ e'2*4/2 d'2*3/2 ~ d'2*3/4 b2*4/2 ~ b2*3/2 a4 \finalis
}

tenorMusic = {
r4 gis2*3/2 ~ gis2 ~ gis2*3/2 b2*3/2 a2*5/2 ~ \divisioMinima
a2 ~ a2*4/2 ~ a2 ~ a2*4/2 fis2*5/2 ~ fis2*3/2 ~ fis2 ~ fis2 ~ fis2 e2 a2 ~ a2 ~ a2*3/2 ~ a2 gis2 a2 cis'2*3/2 ~ cis'2 b2 ~ \divisioMinima
b2*7/4 a2*4/2 fis2*3/2 ~ fis2*3/4 d2*4/2 cis2*3/2 ~ cis4 \finalis
}

bassMusic = {
r2*4/2 e2 b,2*3/2 ~ b,2*3/2 d2*5/2 \divisioMinima
r2 fis2*4/2 d2 cis2*4/2 b,2*5/2 ~ b,2*3/2 a,2 fis,2 a,2 cis2 ~ cis2 ~ cis2 b,2*3/2 e2 ~ e2 fis2 ~ fis2*3/2 a2 gis2 \divisioMinima
e2*7/4 cis2*4/2 ~ cis2*3/2 b,2*3/4 ~ b,2*4/2 fis,2*3/2 ~ fis,4 \finalis
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
        "II"
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
