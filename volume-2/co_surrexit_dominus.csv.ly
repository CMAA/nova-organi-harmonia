\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.12
%(volume.page)

global = {
 \key a \major
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Surrexit Dominus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Surrexit Dominus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Surrexit Dominus" }
    \line {}
  }
}

chantText = \lyricmode {
Sur -- ré -- xit 
\set stanza = " * " Dó -- _ mi -- nus, 
et ap -- pá -- _ ru -- it Pe -- tro, 
al -- _ _ le -- _ _ _ _ lú -- ia. }

chantMusic = {
\tieDown   fis'4 a'4 ( fis'4 a'4) a'4 ( b'4 cis''4)  cis''4 ( e''4 cis''4) d''4 ( e''4) b'4 a'4 ( b'4 a'4 fis'4) \divisioMaior
 fis'4 fis'4 fis'4 ( b'4 gis'4) b'4 ( cis''4) a'4 ( a'4) a'4 \forceBreak
 a'4 ( b'4 a'4) a'4 \divisioMaior
 cis''4 ( d''4 cis''4 b'4) d''4 ( cis''4) d''4 ( cis''4 b'4 a'4) b'4 ( a'4) fis'4 ( gis'4 a'4) \divisioMinima
 fis'4 ( gis'4 fis'4 e'4) a'4. fis'4 ( gis'4 fis'4 e'4) a'4 ( fis'4 a'4) a'4 ( b'4 a'4) a'4 \finalis

}

altoMusic = {
r4 cis'2*3/2 fis'2*3/2 e'2*6/2 cis'2*5/2 ~ cis'4 fis'2*3/2 ~ fis'2 ~ fis'2 ~ fis'4 e'2*3/2 ~ e'4 \divisioMaior
fis'2*4/2 ~ fis'2 ~ fis'2*4/2 e'2 ~ e'2*3/2 \divisioMinima
d'2*4/2 e'2*3/4 cis'2*4/2 ~ cis'2*3/2 d'2*3/2 cis'4 \finalis
}

tenorMusic = {
fis4 ~ fis2*3/2 a2*3/2 ~ a2*6/2 ~ a2*5/2 ~ a4 b2*3/2 gis2 a2 b4 d'2*3/2 cis'4 \divisioMaior
a2*4/2 ~ a2 b2*4/2 ~ b2 a2*3/2 ~ \divisioMinima
a2*4/2 ~ a2*3/4 ~ a2*4/2 fis2*3/2 e2*3/2 ~ e4 \finalis
}

bassMusic = {
r2*4/2 d2*3/2 cis2*6/2 fis2*5/2 ~ fis4 d2*3/2 ~ d2 ~ d2 ~ d4 a2*3/2 ~ a4 \divisioMaior
fis2*4/2 e2 d2*4/2 cis2 ~ cis2*3/2 \divisioMinima
b,2*4/2 cis2*3/4 a,2*4/2 ~ a,2*3/2 ~ a,2*3/2 ~ a,4 \finalis
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
