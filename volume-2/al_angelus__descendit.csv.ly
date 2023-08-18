\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.10
%(volume.page)

global = {
 \key a \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Angelus Domini descendit" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Angelus Domini descendit"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Angelus Domini descendit" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ lú -- ia, 
\set stanza = " * " 
al -- le -- _ lú -- ia. 
_ _ _ _ _ _ _ ℣. 
An -- ge -- lus Dó -- mi -- ni des -- cén -- _ _ dit de cœ -- _ lo: 
et ac -- cé -- _ _ dens re -- vól -- _ _ _ vit lá -- _ pi -- dem, 
et se -- dé -- bat 
\set stanza = " * " su -- per e -- um. _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   a'4 ( \once \tweak #'font-size #-4 g' ) e'4 ( fis'4 g'4) a'4 ( b'4 a'4) g'4 ( \once \tweak #'font-size #-4 a' ) a'4 \divisioMaior
 a'4 ( \once \tweak #'font-size #-4 g' ) e'4 ( fis'4 g'4) a'4 ( b'4 a'4) g'4 ( \once \tweak #'font-size #-4 a' ) a'4 \divisioMaior
 a'4 ( b'4 a'4) g'4 ( a'4 g'4) e'4 ( fis'4 e'4) ~ e'4 ( d'4) \divisioMinima \forceBreak

 d'4 ( e'4 fis'4 g'4 a'4.) b'4 ( cis''4 b'4) ~ b'4 ( a'4) \finalis
 d'4 ( e'4) fis'4 ( g'\prall a'4) a'4 g'4 ( fis'4) g'4 ( a'4) a'4 \divisioMinima
 a'4 a'4 ( b'4 a'4) d''4 ( cis''4 b'4 a'4 fis'4 \forceBreak
) g'4 ( \once \tweak #'font-size #-4 a' ) a'4 a'4 ( g'4 e'4) fis'4 ( e'4) ~ e'4 ( d'4) d'4 \divisioMaxima
 d'4 e'4 fis'4 ( g'4) a'4 ( b'4 a'4) g'4 ( a'4) a'4 \divisioMinima
 a'4 a'4 ( b'4 a'4) g'4 ( a'4 g'4) e'4 ( fis'4 \forceBreak
 e'4) ~ e'4 ( \once \tweak #'font-size #-4 d' ) d'4 d'4 ( e'4 fis'4 g'4) a'4 ( b'4 a'4) g'4 ( a'4) a'4 \divisioMaior
 a'4 ( \once \tweak #'font-size #-4 g' ) e'4 fis'4 ( g'\prall a'4) a'4  b'4 ( a'4) g'4 ( a'4) a'4 a'4 \divisioMinima \forceBreak

 a'4 ( b'4 a'4) g'4 ( a'4 g'4) e'4 ( fis'4 e'4) ~ e'4 ( d'4) \divisioMinima
 d'4 ( e'4 fis'4 g'4 a'4.) b'4 ( cis''4 b'4) ~ b'4 ( a'4) \finalis

}

altoMusic = {
d'2 ~ d'2*3/2 e'2*3/2 d'2 e'4 ~ \divisioMaior
e'2 d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'4 ~ \divisioMaior
d'2*3/2 ~ d'2*5/2 a2 cis'4 \divisioMinima
d'2*4/2 ~ d'2*3/4 ~ d'2 ~ d'2 cis'4 \finalis
r2 d'2*4/2 ~ d'2 e'2 ~ e'4 ~ \divisioMinima
e'4 fis'2*3/2 ~ fis'2*5/2 e'2 ~ e'4 ~ e'2*4/2 r2*4/2 \divisioMaxima
d'2 ~ d'2 ~ d'2*3/2 ~ d'2 ~ d'4 ~ \divisioMinima
d'4 b2*12/2 d'2*4/2 e'2*3/2 ~ e'2 ~ e'4 \divisioMaior
b2 cis'4 d'2*3/2 ~ d'4 ~ d'2 ~ d'2 ~ d'2 ~ \divisioMinima
d'2*3/2 ~ d'2*5/2 a2 ~ a4 \divisioMinima
d'2*11/4 ~ d'2 ~ d'2 cis'4 \finalis
}

tenorMusic = {
b2 ~ b2*3/2 d'2*3/2 b2 cis'4 \divisioMaior
e2 g2*3/2 ~ g2*3/2 e2 fis4 ~ \divisioMaior
fis2*3/2 g2*5/2 ~ g2 fis4 ~ \divisioMinima
fis2*4/2 ~ fis2*3/4 g2 e2 ~ e4 \finalis
d'2 b2*4/2 ~ b2 d'2 cis'4 ~ \divisioMinima
cis'4 ~ cis'2*3/2 b2*5/2 d'2 cis'4 b2*4/2 a2*4/2 \divisioMaxima
fis2 a2 g2*3/2 e2 fis4 ~ \divisioMinima
fis4 g2*8/2 a2*4/2 b2*4/2 d'2*3/2 b2 cis'4 \divisioMaior
r2 g4 a2*3/2 g4 fis2 e2 fis2 ~ \divisioMinima
fis2*3/2 g2*5/2 ~ g2 fis4 ~ \divisioMinima
fis2*11/4 g2 e2*3/2 \finalis
}

bassMusic = {
r2 a2*3/2 ~ a2*3/2 ~ a2 ~ a4 \divisioMaior
b,2 ~ b,2*3/2 d2*3/2 ~ d2 ~ d4 \divisioMaior
b,2*3/2 ~ b,2*5/2 d2 ~ d4 \divisioMinima
cis2*4/2 b,2*3/4 e2 a,2 ~ a,4 \finalis
r2*8/2 a2 ~ a4 ~ \divisioMinima
a4 ~ a2*3/2 ~ a2*5/2 ~ a2 ~ a4 e2*4/2 fis2*4/2 \divisioMaxima
b,2 ~ b,2 ~ b,2*3/2 d2 ~ d4 ~ \divisioMinima
d4 e2*8/2 fis2*4/2 a2*4/2 ~ a2*3/2 ~ a2 ~ a4 \divisioMaior
e2 ~ e4 d2*3/2 ~ d4 ~ d2 ~ d2 ~ d2 \divisioMinima
b,2*3/2 ~ b,2*5/2 d2 ~ d4 \divisioMinima
b,2*11/4 e2 a,2*3/2 \finalis
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
        "VIII"
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
