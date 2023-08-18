\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.86
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Loquebantur" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Loquebantur"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Loquebantur" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ _ lú -- ia, _ 
\set stanza = " * " al -- le -- _ _ lú -- ia. _ 
\set stanza = " * " _ _ _ _ 
_ _ _ _ _ _ ℣. 
Lo -- que -- bán -- _ _ _ tur vá -- ri -- is _ _ _ _ lin -- guis 
A -- pó -- _ _ sto -- _ li 
ma -- gná -- _ _ li -- a 
\set stanza = " * " De -- i _ _ _ _ _ 
_ _ _ _ _ _ }

chantMusic = {
\tieDown   e'4 ( \once \tweak #'font-size #-4 d' ) e'4 ( g'4) fis'4 ( g'4 e'4) fis'4 ( e'4 d'4)  g'4 ( a'\prall b'4 c''4) a'4 ( g'4 d''4) b'4 ( c''4 b'4) \divisioMinima
 e'4 ( \once \tweak #'font-size #-4 d' ) e'4 ( g'4) fis'4 ( g'4 e'4) fis'4 ( e'4 d'4 \forceBreak
)  g'4 ( a'\prall b'4 c''4) a'4 ( g'4 d''4) b'4 ( c''4 b'4) \divisioMinima
  g'4 ( a'4 b'\prall c''4 b'4 a'4.) fis'4 ( g'4 a'\prall b'4 a'4 g'4) e'4 ( fis'4 e'4) ~ e'4 ( d'4) \divisioMaior \forceBreak

 d'4 ( e'4 fis'\prall g'4 a'4 b'4 b'4) g'4 ( b'4 a'4) b'4 ( g'4 fis'4 e'4.) g'4 ( a'4 g'4) a'4 ( g'4 fis'4 e'4) g'4 ( g'4 e'4) \finalis \forceBreak

 d'4 ( e'4 fis'\prall g'4 a'4 g'4 fis'4) e'4 e'4 ( g'4) ~ g'4 ( g'4) ~ g'4 ( fis'4 e'4) fis'4 ( \tiny e' d' 4) e'4 ( d'4) \divisioMinima
  g'4 ( a'\prall b'4 c''4) b'4 ( a'4 d''4) b'4 ( c''4 b'4) \divisioMinima \forceBreak

  g'4 ( a'4 b'\prall c''4 b'4 a'4.) fis'4 ( g'4 a'\prall b'4 a'4 g'4) e'4 ( fis'4 e'4) ~ e'4 ( d'4) \divisioMinima
 d'4 ( e'4 fis'\prall g'4 a'4 b'4 \tiny a' g' 4) a'4 ( g'4) \divisioMaior \forceBreak

 g'4 a'4 ( b'4 a'4 b'4) d''4 ( d''4) ~ d''4 ( cis''4 b'4) b'4 ( cis''4) ~ cis''4 ( b'4) b'4 \divisioMaxima
 e'4 ( \once \tweak #'font-size #-4 d' ) e'4 ( g'4) fis'4 ( g'4 e'4) fis'4 ( e'4) d'4 ( e'4) e'4  \forceBreak
  g'4 ( a'\prall b'4 c''4) b'4 ( a'4 d''4.) b'4 ( c''4 b'4) \divisioMinima
  g'4 ( a'4 b'\prall c''4 b'4 a'4.) fis'4 ( g'4 a'\prall b'4 a'4 g'4) e'4 ( fis'4 e'4) ~ e'4 ( d'4) \divisioMaior \forceBreak

 d'4 ( e'4 fis'\prall g'4 a'4 b'4 b'4) g'4 ( b'4 a'4) b'4 ( g'4 fis'4 e'4.) g'4 ( a'4 g'4) a'4 ( g'4 fis'4 e'4) g'4 ( g'4 e'4) \finalis

}

altoMusic = {
r2 b2 ~ b2*3/2 ~ b2*3/2 ~ b2 e'2 fis'2*3/2 g'2*3/2 \divisioMinima
b2 ~ b2*5/2 ~ b2*3/2 ~ b2 e'2 fis'2*3/2 g'2*3/2 e'2*3/2 ~ e'2*7/4 d'2*3/2 ~ d'2*3/2 b2 a2*3/2 \divisioMaior
b2*4/2 e'2*3/2 ~ e'2*3/2 ~ e'2*3/2 ~ e'2*3/4 d'2*3/2 ~ d'2*4/2 b2 ~ b4 \finalis
r2*8/2 e'2 d'2 b2*3/2 ~ b2*3/2 a2 b2 g'2 fis'2*3/2 g'2*3/2 e'2*3/2 ~ e'2*7/4 d'2*3/2 ~ d'2*3/2 b2 a2*3/2 \divisioMinima
d'2*4/2 ~ d'2*4/2 e'2 \divisioMaior
g'4 ~ g'2*4/2 fis'2 g'2*4/2 fis'2*3/2 ~ fis'4 \divisioMaxima
r2 e'2 b2*3/2 ~ b2 ~ b2 ~ b4 d'2*4/2 ~ d'2*7/4 ~ d'2*3/2 ~ d'2*3/2 c'2*7/4 b2*3/2 ~ b2*3/2 ~ b2 ~ b2*3/2 \divisioMaior
d'2*4/2 ~ d'2*3/2 e'2*3/2 ~ e'2*9/4 ~ e'2*3/2 d'2*4/2 b2 ~ b4 \finalis
}

tenorMusic = {
g2 ~ g2 ~ g2*3/2 a2*3/2 g2 ~ g2 d'2*3/2 ~ d'2*3/2 \divisioMinima
g2 ~ g2*5/2 a2*3/2 g2 ~ g2 d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 c'2*7/4 b2*3/2 ~ b2*3/2 g2 r2*3/2 \divisioMaior
g2*4/2 ~ g2*3/2 ~ g2*3/2 ~ g2*3/2 a2*3/4 b2*3/2 a2*4/2 ~ a2 g4 \finalis
d'2*8/2 c'2 b2 a2*3/2 g2*3/2 r2 g2 ~ g2 d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 c'2*7/4 b2*3/2 ~ b2*3/2 g2 fis2*3/2 \divisioMinima
b2*4/2 ~ b2*4/2 ~ b2 ~ \divisioMaior
b4 e'2*4/2 d'2 e'2*4/2 ~ e'2*3/2 d'4 \divisioMaxima
b2 ~ b2 ~ b2*3/2 a2 fis2 g4 ~ g2*4/2 fis2*7/4 g2*3/2 e2*3/2 ~ e2*7/4 d2*3/2 ~ d2*3/2 g2 fis2*3/2 \divisioMaior
a2*4/2 g2*3/2 ~ g2*3/2 ~ g2*3/2 a2*3/4 b2*3/2 a2*4/2 ~ a2 g4 \finalis
}

bassMusic = {
r2 r2 e2*3/2 ~ e2*3/2 ~ e2 ~ e2 d2*3/2 g2*3/2 \divisioMinima
r2 e2*5/2 ~ e2*3/2 ~ e2 ~ e2 d2*3/2 g2*3/2 a2*3/2 ~ a2*7/4 ~ a2*3/2 g2*3/2 ~ g2 fis2*3/2 ~ \divisioMaior
fis2*4/2 e2*3/2 d2*3/2 c2*3/2 ~ c2*3/4 b,2*3/2 ~ b,2*4/2 e2 ~ e4 \finalis
r2*18/2 fis2 ~ fis2 e2 d2*3/2 g2*3/2 a2*3/2 ~ a2*7/4 ~ a2*3/2 g2*3/2 ~ g2 r2*3/2 \divisioMinima
g2*4/2 fis2*4/2 e2 ~ \divisioMaior
e4 ~ e2*4/2 b2 ~ b2*4/2 ~ b2*3/2 ~ b4 \divisioMaxima
g2 e2 ~ e2*3/2 ~ e2 ~ e2 ~ e4 b,2*4/2 d2*7/4 g,2*3/2 a,2*3/2 ~ a,2*7/4 ~ a,2*3/2 g,2*3/2 ~ g,2 b,2*3/2 ~ \divisioMaior
b,2*4/2 ~ b,2*3/2 d2*3/2 c2*9/4 ~ c2*3/2 b,2*4/2 e2 ~ e4 \finalis
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
        "1"
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
