\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.20
%(volume.page)

global = {
 \key e \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Surrexit Dominus vere" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Surrexit Dominus vere"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Surrexit Dominus vere" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ _ lú -- _ ia, 
\set stanza = " * " al -- le -- _ _ lú -- _ ia. _ _ _ ℣. 
Sur -- ré -- _ _ xit Dó -- _ mi -- nus ve -- _ _ _ re, 
et ap -- _ _ pá -- ru -- it 
\set stanza = " * " Pe -- _ tro. _ _ _ }

chantMusic = {
\tieDown   d'4 ( \once \tweak #'font-size #-4 e' ) e'4 fis'4 ( a'4 e'4) fis'4 ( e'4 d'4) d'4 ( fis'4) a'4 ( a'4 b'4) a'4 ( a'4 gis'4 e'4 fis'4) \divisioMinima
 d'4 ( \once \tweak #'font-size #-4 e' ) e'4 fis'4 ( a'4 e'4) fis'4 ( e'4 d'4 \forceBreak
) d'4 ( fis'4) a'4 ( a'4 b'4) a'4 ( a'4 gis'4 e'4 fis'4) \divisioMinima
 gis'4 ( a'4 fis'4 e'4.)  d'4 ( g'4 fis'4) ~ fis'4 ( e'4) \finalis
 d'4 ( e'4) e'4 fis'4 ( a'4 e'4) fis'4 ( e'4 d'4 e'4) d'4 \divisioMinima
 d'4 ( fis'4 \forceBreak
) a'4 ( a'4 b'4) a'4 a'4 a'4 ( gis'4 e'4 fis'4) \divisioMinima
 gis'4 ( a'4 fis'4 e'4.)  d'4 ( g'4 fis'4) ~ fis'4 ( e'4) e'4 \divisioMaxima
 d'4 ( e'4) e'4 fis'4 ( a'4 e'4) fis'4 ( e'4 d'4 e'4) d'4 ( e'4) d'4 d'4 \divisioMinima \forceBreak

 d'4 ( fis'4) a'4 ( a'4 b'4) a'4 ( a'4 gis'4 e'4 fis'4) \divisioMinima
 gis'4 ( a'4 fis'4 e'4.)  d'4 ( g'4 fis'4) ~ fis'4 ( e'4) \finalis

}

altoMusic = {
d'2 cis'2*4/2 ~ cis'2*3/2 d'2 e'2*3/2 cis'2*4/2 ~ cis'4 \divisioMinima
d'2 e'2*3/2 ~ e'4 d'2*3/2 ~ d'2 e'2*3/2 cis'2*4/2 ~ cis'4 ~ \divisioMinima
cis'2*9/4 d'2 cis'2 ~ cis'4 \finalis
d'2 cis'2*4/2 ~ cis'2*4/2 d'4 ~ \divisioMinima
d'2 e'2*5/2 ~ e'2 ~ e'4 cis'4 ~ \divisioMinima
cis'2 ~ cis'2*5/4 b2 cis'2*4/2 \divisioMaxima
d'4 e'4 ~ e'2*3/2 ~ e'4 d'2*4/2 a2*3/2 ~ a4 \divisioMinima
d'2 e'2*3/2 cis'2*4/2 ~ cis'4 \divisioMinima
e'2*3/2 ~ e'2*3/4 d'2 cis'2*3/2 \finalis
}

tenorMusic = {
b2 ~ b2*4/2 a2*3/2 ~ a2 ~ a2*3/2 b2*4/2 a4 ~ \divisioMinima
a2 ~ a2*4/2 ~ a2*3/2 ~ a2 ~ a2*3/2 b2*4/2 a4 ~ \divisioMinima
a2*9/4 b2 a2 ~ a4 \finalis
b2 ~ b2*4/2 a2*4/2 b4 ~ \divisioMinima
b2 cis'2*5/2 b2*3/2 a4 \divisioMinima
r2*21/4 \divisioMaxima
a2 ~ a2*4/2 ~ a2*4/2 g2*3/2 fis4 \divisioMinima
a2 ~ a2*3/2 b2*4/2 a4 ~ \divisioMinima
a2*9/4 ~ a2 ~ a2*3/2 \finalis
}

bassMusic = {
r2*9/2 fis2 cis2*3/2 fis2*4/2 ~ fis4 ~ \divisioMinima
fis2 cis2*4/2 d2*3/2 b,2 cis2*3/2 fis2*4/2 ~ fis4 \divisioMinima
a2*9/4 r2*4/2 a,4 \finalis
r2*11/2 \divisioMinima
a2 ~ a2*5/2 fis2*3/2 ~ fis4 \divisioMinima
b2 a2*5/4 ~ a2 ~ a2*4/2 \divisioMaxima
fis2 cis2*4/2 d2*4/2 ~ d2*3/2 ~ d4 \divisioMinima
b,2 cis2*3/2 fis2*4/2 ~ fis4 \divisioMinima
cis2*9/4 b,2 a,2*3/2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Alleluia"
        "8"
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
