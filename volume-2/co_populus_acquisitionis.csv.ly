\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.26
%(volume.page)

global = {
 \key d \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Populus acquisitionis" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Populus acquisitionis"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Populus acquisitionis" }
    \line {}
  }
}

chantText = \lyricmode {
Po -- pu -- lus 
\set stanza = " * " ac -- qui -- si -- ti -- ó -- _ nis, 
an -- nun -- ti -- á -- _ _ te vir -- tú -- tes e -- jus, al -- le -- _ lú -- ia: 
qui vos de té -- ne -- _ bris vo -- cá -- _ _ vit 
in ad -- mi -- rá -- bi -- le lu -- men su -- um, 
al -- le -- _ _ _ lú -- ia. }

chantMusic = {
\tieDown   d'4 d'4 ( e'4 fis'\prall g'4 fis'4 g'4) fis'4 \divisioMinima
 g'4 g'4 g'4 ( g'4 g'4) g'4 ( e'4) e'4 ( a'4 g'4) a'4 ( b'4) a'4 \divisioMaior
 a'4 b'4 \forceBreak
 d''4 ( c''4) c''4. b'4 ( d''4 c''4 b'4 a'4) b'4 ( c''4) b'4 ( a'4) \divisioMinima
 fis'4 a'4 ( b'4) a'4 g'4 ( a'4 g'4) g'4 ( fis'4 g'4) \divisioMinima
 e'4 e'4. c'4 ( e'4 d'4 \forceBreak
) d'4 ( e'4 d'4) d'4 \divisioMaxima
 d'4 ( a'4) a'4 ( b'4 c''4 a'4) a'4 b'4 ( c''4) b'4 ( c''4 b'4 a'4 g'4) a'4 ( b'4) a'4 \divisioMinima
 a'4 ( b'4 c''4 d''4 \forceBreak
) d''4. b'4 ( d''4 c''4 b'4 a'4) b'4 ( c''4) b'4 ( a'4) \divisioMaior
 a'4 b'4 ( c''4 b'4) g'4 b'4 ( b'4 c''4) b'4 ( a'4) a'4 ( fis'4) fis'4 ( a'4) g'4 \forceBreak
 g'4 ( fis'4 e'4) e'4 \divisioMaior
 g'4 g'4 ( a'4 g'4) fis'4 ( a'4 g'4.) e'4 ( g'4 fis'4 g'4) e'4 ( fis'4 d'4) d'4 ( e'4 d'4) d'4 \finalis

}

altoMusic = {
b4 ~ b2*6/2 d'4 ~ \divisioMinima
d'2 ~ d'2*3/2 c'2 d'2*3/2 ~ d'2*3/2 ~ \divisioMaior
d'2 e'2 ~ e'2*3/4 ~ e'2*5/2 ~ e'2 d'2 ~ \divisioMinima
d'4 e'2*3/2 ~ e'2*3/2 d'2*3/2 ~ \divisioMinima
d'4 c'2*9/4 a2*3/2 ~ a4 \divisioMaxima
d'2 e'2*5/2 d'2*7/2 ~ d'2 ~ d'4 \divisioMinima
e'2*4/2 d'2*13/4 c'2 d'2 ~ \divisioMaior
d'4 e'2*4/2 ~ e'2*3/2 d'2 ~ d'2 ~ d'2*3/2 b2*3/2 ~ b4 ~ \divisioMaior
b4 d'2*3/2 ~ d'2*7/4 ~ d'2*4/2 c'2*3/2 a2*3/2 ~ a4 \finalis
}

tenorMusic = {
g4 ~ g2*6/2 b4 \divisioMinima
a2 g2*3/2 ~ g2 ~ g2*3/2 fis2*3/2 ~ \divisioMaior
fis2 g2 a2*3/4 g2*5/2 ~ g2 fis2 ~ \divisioMinima
fis4 ~ fis2*3/2 g2*3/2 ~ g2*3/2 ~ \divisioMinima
g4 ~ g2*9/4 ~ g2*3/2 fis4 ~ \divisioMaxima
fis2 g2*5/2 ~ g2*7/2 e2 fis4 \divisioMinima
g2*4/2 ~ g2*13/4 ~ g2 fis2 ~ \divisioMaior
fis4 g2*4/2 a2*3/2 fis2 g2 a2*3/2 ~ a2*3/2 g2 ~ g2*3/2 a2*7/4 g2*4/2 ~ g2*3/2 ~ g2*3/2 fis4 \finalis
}

bassMusic = {
r4 e2*6/2 b,4 ~ \divisioMinima
b,2 ~ b,2*3/2 a,2 b,2*3/2 d2*3/2 ~ \divisioMaior
d2 c2 ~ c2*3/4 ~ c2*5/2 a,2 d2 ~ \divisioMinima
d4 c2*3/2 ~ c2*3/2 b,2*3/2 ~ \divisioMinima
b,4 a,2*9/4 d2*3/2 ~ d4 ~ \divisioMaxima
d2 c2*5/2 b,2*7/2 d2 ~ d4 \divisioMinima
c2*4/2 b,2*13/4 a,2 d2 ~ \divisioMaior
d4 c2*4/2 ~ c2*3/2 d2 ~ d2 ~ d2*3/2 e2*3/2 ~ e4 ~ \divisioMaior
e4 b,2*3/2 ~ b,2*7/4 ~ b,2*4/2 a,2*3/2 d2*3/2 ~ d4 \finalis
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
        "VII"
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
