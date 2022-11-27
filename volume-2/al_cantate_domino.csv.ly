\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.214
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Cantate Domino" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Cantate Domino"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Cantate Domino" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- _ ia, 
\set stanza = " * " 
al -- le -- lú -- _ ia. 
_ _ _ _ _ _ ℣. 
Can -- tá -- _ _ _ _ _ _ _ _ _ _ te Dó -- _ _ mi -- no 
cán -- _ ti -- _ _ cum no -- _ _ vum: 
qui -- _ _ _ a mi -- ra -- bí -- _ _ _ _ _ _ _ li -- a 
fe -- cit 
\set stanza = " * " Dó -- mi -- nus. 
_ _ _ _ _ _ }

chantMusic = {
\tieDown   e'4 g'4 ( g'4) a'4. g'4 ( b'4 a'4 b'4) b'4 ( d''4 b'4 a'4 g'4) \divisioMaior
  e'4 g'4 ( g'4) a'4. g'4 ( b'4 a'4 b'4) b'4 ( d''4 b'4 a'4 g'4) \divisioMaior
 fis'4 ( a'\prall b'4 a'4 b'4.) g'4 ( b'4 a'4) b'4 ( g'4) ~ g'4 ( fis'4 d'4) \divisioMinima \forceBreak

 e'4 ( fis'\prall g'4 a'4.) fis'4 ( a'4 g'4 fis'4 e'4 fis'\prall g'4 e'4) \finalis
 d'4 ( e'4)  e'4 ( b'4) a'4 ( c''4 b'4 \forceBreak
) c''4 ( a'4 g'4.) a'4 ( a'4 g'4) a'4 ( a'4) g'4 ( a'4 b'4) d''4 ( d''4 a'4) \divisioMinima
  b'4 ( b'4 a'4) b'4 ( a'4 g'4.) b'4 ( c''4 b'4 a'4 b'\prall c''4 b'4 a'4) b'4 ( c''4) b'4 \divisioMinima \forceBreak

  b'4 ( a'4) d''4 ( d''4 b'4 a'4.) b'4 ( c''4 b'4 c''4) a'4 a'4 ( g'4) \divisioMaior
 g'4 ( fis'4) g'4 ( a'\prall b'4 a'4 b'4) b'4 ( a'4) b'4 ( g'4) a'4 ( b'4 a'4) a'4 ( \once \tweak #'font-size #-4 e' ) g'4 ( fis'4) a'4 ( g'4 \forceBreak
) a'4 ( g'4 e'4 fis'\prall g'4 e'4) e'4 \divisioMaxima
 e'4 g'4 ( g'4 e'4) g'4 ( g'4 e'4) ~ e'4 ( fis'4 g'4 a'4 b'4) a'4 ( b'4 a'4) \divisioMinima
 g'4 a'4 ( b'4 a'4) b'4 d''4 ( d''4 b'4) ~ b'4 ( a'4 b'4) \divisioMinima \forceBreak

  g'4 ( b'4 c''4 a'4 g'4) ~ g'4 ( e'4) g'4 ( g'4) b'4 ( a'4 g'4) ~ g'4 ( fis'4 e'4) fis'4 ( e'4) e'4 \divisioMaior
 g'4 ( g'4) g'4 ( a'4)  a'4 ( g'4) g'4 ( a'\prall b'4 a'4 b'4 \forceBreak
) b'4 ( d''4 b'4 a'4 g'4) \divisioMaior
 fis'4 ( a'\prall b'4 a'4 b'4.) g'4 ( b'4 a'4) b'4 ( g'4) ~ g'4 ( fis'4 d'4) \divisioMinima
 e'4 ( fis'\prall g'4 a'4.) fis'4 ( a'4 g'4 fis'4 e'4 fis'\prall g'4 e'4) \finalis

}

altoMusic = {
e'4 ~ e'2 fis'2*3/4 g'2*4/2 ~ g'2*5/2 e'4 ~ e'2 <f' d'>2*3/4 <g' d'>2*4/2 ~ <g' d'>2*5/2 \divisioMaior
fis'2*11/4 e'2*4/2 d'2*3/2 ~ d'4 \divisioMinima
e'2*3/2 ~ e'2*3/4 d'2*4/2 b2*3/2 ~ b4 \finalis
r2 e'2 ~ e'2*3/2 ~ e'2*7/4 ~ e'2*3/2 d'2 ~ d'2*3/2 ~ d'2*3/2 fis'2*3/2 ~ fis'2*7/4 e'2*3/2 ~ e'2 a'2*3/2 ~ a'2 g'4 fis'2 ~ fis'2 ~ fis'2*5/4 e'2*5/2 d'2 ~ \divisioMaior
d'2 ~ d'2 ~ d'2*3/2 g'2 ~ g'2 e'2*3/2 ~ e'2 ~ e'2*4/2 ~ e'2 b2*4/2 ~ b4 \divisioMaxima
r4 cis'2*3/2 b2*3/2 e'2 ~ e'2*3/2 ~ e'2*4/2 ~ e'2*4/2 d'2 ~ d'2*4/2 g'2*4/2 e'2*3/2 ~ e'2 d'2 ~ d'2*4/2 b2 ~ b4 \divisioMaior
d'2 e'2 ~ e'2 d'2 ~ d'2*3/2 ~ d'2*5/2 ~ \divisioMaior
d'2 ~ d'2*7/4 b2*4/2 d'2*4/2 \divisioMinima
e'2*3/2 ~ e'2*3/4 d'2*4/2 b2*3/2 ~ b4 \finalis
}

tenorMusic = {
r2*3/2 d'2*3/4 ~ d'2*4/2 ~ d'2*5/2 b4 ~ b2 r2*3/4 g2*4/2 ~ g2*5/2 \divisioMaior
d'2*11/4 b2*4/2 ~ b2*4/2 ~ \divisioMinima
b2*3/2 a2*3/4 ~ a2*4/2 ~ a2*3/2 g4 \finalis
r2 d'2 cis'2*3/2 ~ cis'2*7/4 ~ cis'2*3/2 a2 b2*3/2 a2*3/2 d'2*3/2 ~ d'2*7/4 ~ d'2*3/2 cis'2 e'2*3/2 ~ e'2 ~ e'4 d'2 ~ d'2 ~ d'2*5/4 cis'2*5/2 b2 ~ \divisioMaior
b2 ~ b2 a2*3/2 g2 d'2 ~ d'2*3/2 cis'2 ~ cis'2*4/2 b2 a2*4/2 g4 \divisioMaxima
r4 a2*3/2 g2*3/2 ~ g2 e2*3/2 ~ e2*3/2 ~ \divisioMinima
e4 a2*4/2 ~ a2 g2*4/2 ~ g2*4/2 ~ g2*3/2 ~ g2 ~ g2 a2*4/2 ~ a2 g4 ~ \divisioMaior
g2 ~ g2 cis'2 b2 g2*3/2 ~ g2*5/2 \divisioMaior
a2 fis2*7/4 g2*4/2 b2*4/2 ~ \divisioMinima
b2*3/2 a2*3/4 ~ a2*4/2 ~ a2*3/2 g4 \finalis
}

bassMusic = {
r2*9/4 b2*4/2 g2*5/2 ~ g4 e2 b,2*3/4 ~ b,2*4/2 g,2*5/2 \divisioMaior
d2*11/4 e2*4/2 b,2*4/2 \divisioMinima
cis2*3/2 ~ cis2*3/4 d2*4/2 e2*3/2 ~ e4 \finalis
r2*7/2 a2*7/4 g2*3/2 fis2 e2*3/2 fis2*3/2 d2*3/2 g2*7/4 a2*3/2 ~ a2 ~ a2*3/2 e'2 ~ e'4 r2 b2 g2*5/4 cis'2*5/2 r2 \divisioMaior
a2 g2 fis2*3/2 e2 ~ e2 a2*3/2 ~ a2 e2*4/2 ~ e2 ~ e2*4/2 ~ e4 \divisioMaxima
r4 e2*3/2 ~ e2*3/2 d2 ~ d2*3/2 cis2*3/2 ~ \divisioMinima
cis4 ~ cis2*4/2 b,2 ~ b,2*4/2 e2*4/2 d2*3/2 cis2 b,2 ~ b,2*4/2 e2 ~ e4 \divisioMaior
b,2 cis2 ~ cis2 g2 ~ g2*3/2 g,2*5/2 \divisioMaior
d2 ~ d2*7/4 e2*4/2 b,2*4/2 \divisioMinima
cis2*3/2 ~ cis2*3/4 d2*4/2 e2*3/2 ~ e4 \finalis
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
        "I."
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
