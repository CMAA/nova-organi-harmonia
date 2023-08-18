\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.31
%(volume.page)

global = {
 \key e \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Data est mihi" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Data est mihi"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Data est mihi" }
    \line {}
  }
}

chantText = \lyricmode {
Da -- ta est mi -- hi 
\set stanza = " * " o -- mnis po -- té -- stas 
in cœ -- lo et in ter -- ra, al -- le -- _ lú -- ia: 
e -- ún -- tes, do -- cé -- te o -- mnes gen -- tes, 
ba -- pti -- zán -- tes e -- os in nó -- mi -- ne Pa -- tris, et Fí -- li -- i, et Spí -- ri -- tus San -- cti, 
al -- le -- lú -- ia, al -- le -- _ _ lú -- ia. }

chantMusic = {
\tieDown   g'4 g'4 ( fis'4) e'4 g'4 ( a'4) g'4 \divisioMinima
 a'4 ( b'4) g'4 fis'4 ( g'4) d'4 ( fis'4 e'4) e'4 \divisioMaior
 e'4 ( \once \tweak #'font-size #-4 d' )  g'4 ( b'4 \forceBreak
) a'4 ( b'4 cis''4 b'4) a'4 a'4 ( \once \tweak #'font-size #-4 fis' ) g'4 ( a'4) g'4 \divisioMinima
 g'4 ( a'4) a'4 ( g'4) ~ g'4 ( e'4) e'4 ( fis'\prall g'4 \once \tweak #'font-size #-4 e' ) e'4 \divisioMaxima
 e'4 ( g'4) g'4 ( fis'4 g'4) e'4 g'4 \forceBreak
 a'4 ( b'4) b'4 ( g'4)  b'4 ( cis''4) b'4 a'4 ( b'4 \tiny a' g' 4) a'4 ( g'4) \divisioMaior
 a'4 a'4 a'4 a'4 b'4 ( a'4 g'4) g'4 \divisioMinima
 e'4 ( \once \tweak #'font-size #-4 g'  \forceBreak
) g'4 ( fis'4 g'4) e'4 ( d'4) d'4 g'4 ( b'4 a'4 b'4) a'4 ( g'4) \divisioMinima
 e'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( fis'4 g'4) e'4 ( d'4) d'4 \divisioMinima
 fis'4 a'4 b'4 fis'4 ( g'4 \forceBreak
) d'4 ( fis'4 e'4) e'4 \divisioMaior
  b'4 ( cis''4) b'4 b'4 ( a'4 b'4) g'4 ( e'4) \divisioMinima
 g'4 ( a'4) fis'4 ( g'4 a'4) b'4 ( g'4) a'4 ( g'4 fis'4) e'4 ( fis'\prall g'4 fis'4 g'4) fis'4 ( e'4) \finalis

}

altoMusic = {
r4 b2*3/2 e'2*3/2 \divisioMinima
d'2*3/2 ~ d'2 b2*3/2 ~ b4 ~ \divisioMaior
b2 d'2 e'2*5/2 ~ e'2 ~ e'2*3/2 ~ \divisioMinima
e'2*3/2 ~ e'2*3/2 ~ e'2*4/2 ~ e'4 ~ \divisioMaxima
e'2 ~ e'2*5/2 ~ e'2 ~ e'2 ~ e'2*3/2 ~ e'2*4/2 d'2 ~ \divisioMaior
d'2 e'2 d'2*3/2 ~ d'4 ~ \divisioMinima
d'2 c'2*3/2 b2*3/2 d'2*6/2 \divisioMinima
b2 d'2*3/2 a2 ~ a4 \divisioMinima
d'4 ~ d'2 ~ d'2 ~ d'2*3/2 b4 e'2*3/2 ~ e'2*4/2 ~ e'4 ~ \divisioMinima
e'2 ~ e'2*8/2 b2*5/2 ~ b2 \finalis
}

tenorMusic = {
r4 g2*3/2 ~ g2*3/2 ~ \divisioMinima
g2*3/2 a2 ~ a2*3/2 g4 \divisioMaior
fis2 g2 ~ g2*5/2 a2 b2*3/2 \divisioMinima
c'2*3/2 b2*3/2 a2*4/2 g4 \divisioMaxima
r2 b2*5/2 ~ b2 ~ b2 a2*3/2 g2*4/2 ~ g2 \divisioMaior
fis2 ~ fis2 ~ fis2*3/2 g4 ~ \divisioMinima
g2 ~ g2*3/2 fis2*3/2 g2*6/2 ~ \divisioMinima
g2 a2*3/2 g2 fis4 \divisioMinima
a4 g2 a2 ~ a2*3/2 g4 ~ g2*3/2 ~ g2*3/2 b2 ~ \divisioMinima
b2 a2*8/2 ~ a2*5/2 ~ a4 g4 \finalis
}

bassMusic = {
e4 ~ e2*3/2 c2*3/2 \divisioMinima
b,2*3/2 ~ b,2 e2*3/2 ~ e4 \divisioMaior
b,2 ~ b,2 c2*5/2 ~ c2 ~ c2*3/2 ~ \divisioMinima
c2*3/2 e2*3/2 ~ e2*4/2 ~ e4 ~ \divisioMaxima
e2 ~ e2*5/2 d2 c2 ~ c2*3/2 ~ c2*4/2 b,2 \divisioMaior
d2 c2 b,2*3/2 ~ b,4 ~ \divisioMinima
b,2 a,2*3/2 b,2*3/2 ~ b,2*6/2 \divisioMinima
e2 d2*3/2 ~ d2 ~ d4 \divisioMinima
b,4 ~ b,2 ~ b,2 e2*3/2 ~ e4 c2*3/2 e2*3/2 ~ e2 \divisioMinima
d2 c2*8/2 e2*5/2 ~ e2 \finalis
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
