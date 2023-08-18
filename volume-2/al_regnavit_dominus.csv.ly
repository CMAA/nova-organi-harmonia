\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.72
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Regnavit Dominus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Regnavit Dominus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Regnavit Dominus" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- ia, 
\set stanza = " * " al -- le -- lú -- ia. _ _ _ _ _ _ ℣. 
Re -- _ _ gná -- vit Dó -- mi -- nus su -- per o -- mnes gen -- tes: 
De -- _ us se -- det su -- per se -- _ dem 
\set stanza = " * " san -- ctam su -- am. _ _ _ _ _ _ }

chantMusic = {
\tieDown   e'4 ( fis'4) e'4 ( d'4) fis'4 ( a'4 \once \tweak #'font-size #-4 b' ) b'4 ( a'4 g'4 e'4) \divisioMinima
 e'4 ( fis'4) e'4 ( d'4) fis'4 ( a'4 \once \tweak #'font-size #-4 b' ) b'4 ( a'4 g'4 e'4) \divisioMinima
 g'4 ( fis'4 d'4) fis'4 ( a'4.) b'4 ( a'4 g'4 \forceBreak
) a'4 ( fis'4.) g'4 ( fis'4 d'4) fis'4 ( fis'4 e'4) \finalis
 e'4 ( d'4) fis'4 ( e'4) g'4 ( \once \tweak #'font-size #-4 a' ) fis'4 ( e'4) g'4 ( fis'4) e'4 ( d'4) fis'4 ( g'4 e'4) e'4 \divisioMinima
 b'4 ( b'4 a'4) fis'4 ( e'4 d'4 \forceBreak
) e'4 ( \once \tweak #'font-size #-4 fis' ) fis'4 d'4 ( fis'4 \once \tweak #'font-size #-4 g' ) e'4 \divisioMaxima
 b'4 ( a'4) b'4 ( cis''\prall d''4 cis''4 b'4) a'4 ( fis'4) g'4 ( a'4) fis'4 ( e'4) \divisioMinima
 g'4 a'4 ( b'4 \once \tweak #'font-size #-4 a' ) b'4 ( fis'4 e'4) g'4. d'4 ( fis'4 e'4) e'4 \divisioMinima \forceBreak

 e'4 ( fis'4) e'4 ( \once \tweak #'font-size #-4 d' ) fis'4 ( a'4 b'4) b'4 ( a'4 g'4 e'4) \divisioMinima
 g'4 ( fis'4 d'4) fis'4 ( a'4.) b'4 ( a'4 g'4) a'4 ( fis'4.) g'4 ( fis'4 d'4) fis'4 ( fis'4 e'4) \finalis

}

altoMusic = {
r2*3/2 d'4 ~ d'2*3/2 e'2*3/2 ~ e'4 \divisioMinima
r2*3/2 d'4 ~ d'2*3/2 ~ d'2 b2 \divisioMinima
d'2*3/2 ~ d'2*5/4 ~ d'2*3/2 ~ d'2*5/4 ~ d'2 ~ d'4 b2 ~ b4 \finalis
e'4 d'4 ~ d'2 ~ d'2 ~ d'2*4/2 e'4 d'4 ~ d'2*3/2 ~ d'4 ~ \divisioMinima
d'2*3/2 b2*3/2 d'2*3/2 ~ d'4 b2 ~ b4 \divisioMaxima
e'2 ~ e'2 d'2*3/2 ~ d'2 b2 ~ b2 ~ \divisioMinima
b4 d'2*3/2 ~ d'2*3/2 ~ d'2*3/4 ~ d'2*3/2 b4 \divisioMinima
r2*3/2 \tiny d' \normalsize4 d'2*3/2 b2 ~ b2 \divisioMinima
d'2*3/2 ~ d'2*5/4 ~ d'2*3/2 cis'2*5/4 d'2 ~ d'4 b2 ~ b4 \finalis
}

tenorMusic = {
b2*4/2 ~ b4 a2 g2 b2 ~ \divisioMinima
b2*5/2 a2 g2 ~ g2 \divisioMinima
a2*3/2 ~ a2*5/4 g2*3/2 b2*5/4 a2*3/2 ~ a2 g4 \finalis
a2*4/2 b2 ~ b2*4/2 ~ b2 ~ b2*3/2 ~ b4 \divisioMinima
a2*3/2 g2*3/2 a2*3/2 b4 a2 g4 \divisioMaxima
fis2 ~ fis2 ~ fis2*3/2 ~ fis2 e2 g2 ~ \divisioMinima
g4 ~ g2*3/2 a2*3/2 b2*3/4 a2*3/2 g4 \divisioMinima
b2*4/2 ~ b4 a2 g2 ~ g2 \divisioMinima
a2*3/2 ~ a2*5/4 g2*3/2 b2*5/4 a2*3/2 ~ a2 g4 \finalis
}

bassMusic = {
r2*5/2 fis2 g2 ~ g2 \divisioMinima
b,2*5/2 ~ b,2 ~ b,2 e2 \divisioMinima
d2*3/2 cis2*5/4 b,2*3/2 ~ b,2*5/4 ~ b,2*3/2 e2 ~ e4 \finalis
fis2*4/2 ~ fis2 g2*4/2 b2 a2*3/2 g4 \divisioMinima
fis2*3/2 ~ fis2*3/2 ~ fis2*3/2 ~ fis4 e2 ~ e4 \divisioMaxima
cis2 b,2 ~ b,2*3/2 d2 e2 ~ e2 ~ \divisioMinima
e4 b,2*3/2 ~ b,2*3/2 ~ b,2*3/4 e2*3/2 ~ e4 \divisioMinima
r2*5/2 fis2 ~ fis2 e2 \divisioMinima
d2*3/2 cis2*5/4 b,2*3/2 ~ b,2*5/4 ~ b,2*3/2 e2 ~ e4 \finalis
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
