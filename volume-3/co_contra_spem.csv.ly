\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.58
%(volume.page)

global = {
 \key fis \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Contra spem" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Contra spem"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Contra spem" }
    \line {}
  }
}

chantText = \lyricmode {
Con -- tra spem 
\set stanza = " * " in _ spem cré -- di -- dit, 
ut fí -- e -- ret pa -- ter mul -- tá -- _ rum gén -- _ ti -- um 
se -- cún -- dum quod di -- _ _ ctum est e -- _ i. }

chantMusic = {
\tieDown   fis'4 e'4 ( gis'\prall a'4 gis'4 fis'4 gis'4) gis'4 ( fis'4) \divisioMinima
 a'4 ( b'4 a'4) ~ a'4 ( gis'4) fis'4 ( e'4) fis'4 fis'4 ( gis'\prall a'4 gis'4 a'4) gis'4 ( fis'4) \divisioMaxima
 a'4  a'4 ( b'4 cis''4 d''4) cis''4 cis''4 cis''4 ( b'4) b'4 ( cis''4) \divisioMinima
 a'4 a'4 ( gis'4 e'4) fis'4 ( gis'4) fis'4 fis'4 ( b'4 a'4) ~ a'4 ( gis'4 e'4) fis'4 ( gis'\prall a'4 gis'4 fis'4 gis'4) gis'4 ( fis'4) \divisioMaxima
 cis'4 e'4 ( fis'4) fis'4 ( e'4) fis'4 fis'4 a'4 ( a'4) ~ a'4 ( fis'4 e'4 dis'4) e'4 ( gis'4 e'4 fis'4) fis'4 fis'4 ( gis'4) a'4 ( gis'4 fis'4 gis'4) gis'4 ( fis'4) \finalis

}

altoMusic = {
cis'4 ~ cis'2 d'2*4/2 cis'2 \divisioMinima
fis'2 e'2*3/2 cis'2*3/2 ~ cis'2*5/2 ~ cis'2 \divisioMaxima
e'4 d'2*4/2 e'2 fis'2 e'2 ~ \divisioMinima
e'4 ~ e'2 ~ e'4 cis'2 ~ cis'4 d'2 e'2*3/2 ~ e'4 d'2 cis'2*4/2 ~ cis'2 ~ \divisioMaxima
cis'4 ~ cis'2 b2 cis'4 ~ cis'4 ~ cis'2 ~ cis'2 r2 cis'2*4/2 ~ cis'4 ~ cis'2 ~ cis'2*4/2 ~ cis'2 \finalis
}

tenorMusic = {
a4 b2 ~ b2*4/2 a2 ~ \divisioMinima
a2 ~ a2*3/2 b2*3/2 ~ b2*5/2 a2 ~ \divisioMaxima
a4 ~ a2*4/2 ~ a2 ~ a2 gis2 \divisioMinima
a4 b2*3/2 ~ b2 a4 b2 cis'2*4/2 b2 ~ b2*4/2 a2 ~ \divisioMaxima
a4 ~ a2 b2 ~ b4 a4 gis2 a2 b2 ~ b2*4/2 ~ b4 a2 gis2*4/2 a2 \finalis
}

bassMusic = {
r2*9/2 \divisioMinima
d2 cis2*3/2 ~ cis2*3/2 fis2*5/2 ~ fis2 \divisioMaxima
cis4 b,2*4/2 cis2 d2 cis2 ~ \divisioMinima
cis4 ~ cis2*3/2 fis2 ~ fis4 a2 b2*4/2 ~ b2 fis2*4/2 ~ fis2 \divisioMaxima
r4 gis2 ~ gis2 fis4 ~ fis4 ~ fis2 ~ fis2 gis2 ~ gis2*4/2 fis4 ~ fis2 ~ fis2*4/2 ~ fis2 \finalis
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
        "2"
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
