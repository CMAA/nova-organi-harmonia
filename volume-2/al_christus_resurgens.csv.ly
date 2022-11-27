\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.52
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Christus resurgens" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Christus resurgens"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Christus resurgens" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ _ _ lú -- ia. 
\set stanza = " * " _ _ _ _ _ _ _ _ _ _ _ ℣. 
Chri -- stus _ _ _ re -- súr -- _ _ _ _ gens ex mór -- _ _ _ _ _ _ tu -- is, jam _ _ non _ mó -- ri -- tur: 
mors _ _ _ _ _ _ _ _ _ _ _ _ _ il -- li ul -- tra _ 
\set stanza = " * " 
non do -- _ _ mi -- ná -- bi -- tur. _ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   e'4 ( \once \tweak #'font-size #-4 d' ) e'4 g'4 ( a'4 g'4 fis'4 e'4.) g'4 ( fis'4 e'4) ~ e'4 ( d'4)  g'4 ( a'\prall b'4 c''4) b'4 ( g'4 a'4) \divisioMinima
  b'4 ( a'4 g'4) a'4 ( c''4. \forceBreak
) b'4 ( c''4 d''4 c''4 b'4 a'4.) b'4 ( a'4 g'4) a'4 ( b'4) ~ b'4 ( a'4 g'4 a'4.) e'4 ( g'4 e'4) ~ e'4 ( d'4) \divisioMinima
 d'4 ( g'4) a'4 ( b'4 a'4 fis'4 e'4) g'4 ( g'4 e'4) \finalis \forceBreak

 e'4 ( d'4) e'4 g'4 ( a'4 g'4 fis'4 e'4.) g'4 ( fis'4 e'4) ~ e'4 ( d'4) \divisioMinima
 g'4  a'4 ( b'4) ~ b'4 ( a'4 g'4) a'4 ( g'4 a'4) b'4 ( a'4) b'4 ( c''4) b'4 ( a'4 a'4) \divisioMinima
 g'4  a'4 ( g'4 a'4 \forceBreak
) b'4 ( a'4 g'4) a'4 ( c''4.) b'4 ( c''4 d''4 c''4 a'4) ~ a'4 ( g'4 a'4) b'4 ( a'4) b'4 ( c''4) b'4 b'4 \divisioMinima
 b'4 ( a'4 g'4 a'4.) e'4 ( g'4 e'4) ~ e'4 ( d'4) d'4 ( g'4) a'4 ( b'4 a'4 g'4 \forceBreak
) fis'4 ( e'4) d'4 ( e'4) e'4 \divisioMaxima
  d'4 ( g'4) a'4 ( c''4) ~ c''4 ( c''4 b'4 g'4) a'4 ( g'4 a'4) b'4 ( d''4 b'4) \divisioMinima
  d'4 ( g'4) a'4 ( c''4) ~ c''4 ( c''4 b'4 g'4) a'4 ( g'4 a'4) b'4 ( d''4 b'4) \divisioMinima \forceBreak

  d''4 ( c''4 b'4) c''4 ( b'4 a'4) b'4 ( a'4 g'4) a'4 ( b'4) \divisioMinima
 b'4 ( a'4 g'4) a'4 ( b'4) a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4 g'4) ~ g'4 ( fis'4 e'4) \divisioMaior
 e'4 ( \once \tweak #'font-size #-4 d' ) e'4 \forceBreak
 g'4 ( a'4 g'4 fis'4 e'4.) g'4 ( fis'4 e'4) e'4 ( d'4)  g'4 ( a'\prall b'4 c''4) b'4 b'4 ( g'4 a'4) \divisioMinima
  b'4 ( a'4 g'4) a'4 ( c''4.) b'4 ( c''4 \forceBreak
) d''4 ( c''4 b'4 a'4.) b'4 ( a'4 g'4) a'4 ( b'4) ~ b'4 ( a'4 g'4 a'4.) e'4 ( g'4 e'4) e'4 d'4 \divisioMinima
 d'4 ( g'4) a'4 ( b'4 a'4 fis'4 e'4) g'4 ( g'4 e'4) \finalis

}

altoMusic = {
a2*3/2 b2*15/4 ~ b2*3/2 d'2*4/2 fis'2*3/2 d'2*3/2 e'2*9/4 d'2*3/2 ~ d'2*3/4 ~ d'2*4/2 ~ d'2*4/2 e'2*3/4 a2 ~ a2*3/2 \divisioMinima
d'2 ~ d'2*3/2 ~ d'2 b2 ~ b4 ~ \finalis
b2*3/2 ~ b2*11/4 ~ b2 a2*3/2 \divisioMinima
b2 ~ b2*4/2 ~ b2*3/2 e'2 ~ e'2 fis'2*3/2 \divisioMinima
d'4 ~ d'2*3/2 ~ d'2*3/2 e'2*5/4 ~ e'2*4/2 d'2*4/2 ~ d'2 e'2*3/2 ~ e'4 \divisioMinima
fis'2*9/4 e'2 ~ e'4 ~ e'4 d'4 ~ d'2 ~ d'2*4/2 c'2 b2 ~ b4 d'2 e'2 g'2*3/2 ~ g'4 e'2*3/2 fis'2*3/2 d'2 e'2 d'2*4/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 g'2*3/2 e'2*3/2 ~ e'2 \divisioMinima
fis'2*5/2 d'2 c'2 b2*4/2 \divisioMaior
a2*3/2 b2*11/4 a2*3/2 b2 d'2*5/2 ~ d'2*3/2 ~ d'2*3/2 e'2*9/4 d'2*3/2 ~ d'2*3/4 ~ d'2*4/2 e'2*4/2 ~ e'2*3/4 a2 ~ a2 ~ a4 \divisioMinima
d'2 ~ d'2*3/2 ~ d'2 b2 ~ b4 \finalis
}

tenorMusic = {
fis2*3/2 e2*15/4 g2*3/2 b2*4/2 d'2*3/2 g2*3/2 ~ g2*9/4 ~ g2*3/2 fis2*3/4 g2*4/2 fis2*4/2 e2*3/4 g2 fis2*3/2 \divisioMinima
g2 fis2*3/2 a2 ~ a2 g4 ~ \finalis
g2*3/2 ~ g2*11/4 ~ g2 fis2*3/2 \divisioMinima
r2 g2*4/2 fis2*3/2 g2 a2 ~ a2*3/2 \divisioMinima
e4 fis2*3/2 g2*3/2 ~ g2*5/4 a2*4/2 b2*4/2 g2 fis2*3/2 g4 \divisioMinima
fis2*9/4 a2 ~ a2*3/2 g2 fis2*4/2 a2 ~ a2 g4 ~ g2 ~ g2 ~ g2*4/2 fis2*3/2 ~ fis2*3/2 e2 ~ e2 g2*4/2 e2*3/2 fis2*3/2 g2*3/2 ~ g2*3/2 fis2*3/2 g2 \divisioMinima
fis2*5/2 g2 ~ g2 ~ g2*4/2 \divisioMaior
fis2*3/2 e2*11/4 ~ e2*3/2 fis2 g2*5/2 e2 fis4 g2*3/2 ~ g2*9/4 ~ g2*3/2 fis2*3/4 ~ fis2*4/2 e2*4/2 ~ e2*3/4 g2 fis2 ~ fis4 \divisioMinima
g2 fis2*3/2 a2 ~ a2 g4 \finalis
}

bassMusic = {
r2*47/4 c2*9/4 b,2*3/2 ~ b,2*3/4 ~ b,2*4/2 d2*4/2 c2*3/4 ~ c2 d2*3/2 \divisioMinima
b,2 ~ b,2*3/2 ~ b,2 e2 ~ e4 \finalis
r2*3/2 fis2*11/4 e2 fis2*3/2 \divisioMinima
e2 ~ e2*4/2 ~ e2*3/2 ~ e2 c2 d2*3/2 ~ \divisioMinima
d4 ~ d2*3/2 b,2*3/2 c2*5/4 ~ c2*4/2 b,2*4/2 ~ b,2*5/2 e4 \divisioMinima
d2*9/4 c2 b,2*3/2 ~ b,2 ~ b,2*4/2 a,2 e2 ~ e4 b,2 c2 e2*4/2 ~ e2*3/2 d2*3/2 r2 c2 b,2*4/2 ~ b,2*3/2 ~ b,2*3/2 ~ b,2*3/2 e2*3/2 ~ e2*3/2 ~ e2 \divisioMinima
d2*5/2 b,2 a,2 e2*4/2 \divisioMaior
r2*3/2 r2*11/4 c2*3/2 b,2 ~ b,2*5/2 d2 ~ d4 r2*3/2 c2*9/4 b,2*3/2 ~ b,2*3/4 d2*4/2 ~ d2*4/2 c2*3/4 ~ c2 d2 ~ d4 \divisioMinima
b,2 ~ b,2*3/2 ~ b,2 e2 ~ e4 \finalis
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
