\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.7
%(volume.page)

global = {
 \key g \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Pascha nostrum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Pascha nostrum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Pascha nostrum" }
    \line {}
  }
}

chantText = \lyricmode {
Pa -- scha no -- strum 
\set stanza = " * " 
im -- mo -- lá -- tus est Chri -- stus, _ al -- le -- lú -- ia: 
í -- ta -- _ _ _ _ que e -- pu -- lé -- mur 
in á -- zy -- mis sin -- ce -- ri -- tá -- tis et ve -- ri -- tá -- tis, 
al -- le -- _ lú -- ia, al -- le -- _ lú -- ia, al -- le -- lú -- _ ia. }

chantMusic = {
\tieDown   g'4 g'4 ( b'4 a'4 b'4) g'4 fis'4 ( e'4 fis'\prall g'4 e'4) \divisioMaior
 g'4 ( \once \tweak #'font-size #-4 fis' ) g'4 a'4 ( b'4) a'4 ( g'4 fis'4 g'\prall a'4 g'4 a'4) a'4 ( g'4.) g'4 g'4 ( fis'4 \forceBreak
) g'4 ( e'4 g'4) \divisioMinima
 g'4 g'4 g'4 ( b'4 \tiny a' g' 4) g'4 \divisioMaxima
 e'4 g'4 ( g'4) ~ g'4 ( e'4 d'4) e'4 ( g'4 g'4) b'4 ( a'4) b'4 ( g'4) g'4 g'4 g'4 ( fis'4 g'4) g'4 ( e'4 fis'4 d'4) d'4 \divisioMaior \forceBreak

 g'4 a'4 ( b'4 a'4 b'4) b'4 ( a'4 b'4) a'4 ( g'4 a'4) g'4 ( \once \tweak #'font-size #-4 e' ) g'4 ( fis'4) g'4 a'4 g'4 fis'4 a'4 ( b'4) a'4 ( b'4) g'4 ( a'4 g'4) g'4 \divisioMaxima \forceBreak

 g'4 g'4 ( e'4) g'4 ( fis'4 g'4 e'4) e'4 ( fis'\prall g'4) d'4 \divisioMinima
 e'4 ( \once \tweak #'font-size #-4 d' ) g'4 ( a'\prall b'4 a'4) b'4 ( a'4 g'4) a'4 ( \once \tweak #'font-size #-4 b' ) b'4 \divisioMinima
 g'4 ( \once \tweak #'font-size #-4 a' )  a'4 ( c''4 b'4 a'4) b'4 ( a'4) ~ a'4 ( g'4 a'4) a'4 ( g'4) \finalis

}

altoMusic = {
r4 d'2*5/2 b2*5/2 \divisioMaior
d'2*3/2 ~ d'2*4/2 ~ d'2*5/2 e'2*5/4 d'4 c'2 b2*3/2 \divisioMinima
e'2 ~ e'2*4/2 d'4 \divisioMaxima
b2*3/2 ~ b2*3/2 d'2*3/2 ~ d'2*4/2 ~ d'2 ~ d'2*3/2 ~ d'2 ~ d'2 ~ d'4 ~ \divisioMaior
d'4 ~ d'2*4/2 ~ d'2*3/2 ~ d'2*3/2 b2 ~ b2*3/2 ~ b2*3/2 e'2 ~ e'2 d'2*3/2 ~ d'4 \divisioMaxima
b4 c'2 b2*4/2 ~ b2*3/2 ~ b4 ~ \divisioMinima
b2 d'2*4/2 e'2*3/2 ~ e'2 ~ e'4 \divisioMinima
d'2 e'2*3/2 g'2 d'2*4/2 ~ d'2 \finalis
}

tenorMusic = {
g2*6/2 ~ g2*5/2 ~ \divisioMaior
g2*3/2 fis2*4/2 b2*5/2 ~ b2*7/4 a2 g2*3/2 \divisioMinima
b2 ~ b2*4/2 ~ b4 ~ \divisioMaxima
b4 a2 g2*3/2 ~ g2*3/2 fis2*4/2 a2 b2*3/2 a2 g2 fis4 ~ \divisioMaior
fis4 ~ fis2*4/2 g2*3/2 b2*3/2 a2 g2*3/2 fis2*3/2 e2 c'2 ~ c'2*3/2 b4 \divisioMaxima
r2*3/2 e2*4/2 ~ e2*3/2 fis4 \divisioMinima
g2 ~ g2*4/2 ~ g2*3/2 fis2 g4 \divisioMinima
b2 c'2*3/2 ~ c'2 ~ c'2*4/2 b2 \finalis
}

bassMusic = {
r2*11/2 \divisioMaior
b,2*3/2 ~ b,2*4/2 ~ b,2*5/2 e2*7/4 ~ e2 ~ e2*3/2 \divisioMinima
d2 c2*4/2 g4 \divisioMaxima
e2*3/2 ~ e2*3/2 b,2*3/2 ~ b,2*4/2 ~ b,2 ~ b,2*3/2 d2 ~ d2 ~ d4 ~ \divisioMaior
d4 b,2*4/2 ~ b,2*3/2 ~ b,2*3/2 e2 ~ e2*3/2 d2*3/2 c2 ~ c2 g2*3/2 ~ g4 \divisioMaxima
e,4 ~ e,2 ~ e,2*4/2 g,2*3/2 ~ g,4 ~ \divisioMinima
g,2 b,2*4/2 c2*3/2 e2 ~ e4 ~ \divisioMinima
e2 c'2*3/2 e2 g2*4/2 ~ g2 \finalis
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
