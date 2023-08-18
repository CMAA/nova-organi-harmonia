\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.11
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Laetatus sum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Laetatus sum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Laetatus sum" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- ia, 
\set stanza = " * " al -- le -- lú -- ia. _ _ _ _ _ _ _ _ _ ℣. 
Læ -- tá -- _ _ tus _ sum in his quæ di -- _ _ cta sunt mi -- _ hi: 
in do -- _ _ _ _ _ _ mum 
Dó -- _ _ _ mi -- ni 
\set stanza = " * " 
i -- _ _ bi -- mus _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   e'4 ( \once \tweak #'font-size #-4 d' ) g'4  a'4 ( g'4 c''4) b'4 \divisioMinima
  e'4 ( \once \tweak #'font-size #-4 d' ) g'4  a'4 ( g'4 c''4) b'4 \divisioMinima
  c''4 ( d''4 c''4) b'4 ( c''4 a'4.) g'4 ( a'4) b'4 ( d''4 b'4) ~ b'4 ( a'4) \divisioMinima \forceBreak

 g'4 ( b'4 a'4) fis'4. e'4 ( fis'4 d'4.) fis'4 ( g'4 a'4) ~ a'4 ( g'4 e'4 fis'\prall g'4 e'4) \finalis
 e'4 g'4 ( e'4) ~ e'4 ( d'4) g'4 ( a'4)  g'4 ( b'4 a'4) b'4 ( c''4) b'4 \divisioMinima \forceBreak

 b'4 b'4 b'4 b'4 ( d''4 b'4 a'4 g'4.) fis'4 ( a'4) b'4 ( a'4 b'4) g'4 ( a'4) fis'4 ( \once \tweak #'font-size #-4 g' ) e'4 ( fis'4) g'4 ( fis'4 e'4 fis'4) fis'4 ( e'4) \divisioMaxima \forceBreak

 d'4 ( \once \tweak #'font-size #-4 e' ) e'4 ( g'4) fis'4 ( g'4 e'4.) d'4 ( e'4) g'4 ( e'4) b'4 ( b'4 a'4) ~ a'4 ( g'4) b'4 ( d''4 b'4) b'4 \divisioMaior
 g'4 ( a'4 e'4) g'4. fis'4 ( g'4 e'4 \forceBreak
) g'4 ( a'4 b'4) ~ b'4 ( a'4) fis'4 ( a'4 g'4 g'4) g'4 ( fis'4) \divisioMaior
 e'4 g'4 ( g'4 g'4) a'4 ( b'4 g'4)  a'4 ( c''4) b'4 c''4 ( d''4 c''4) b'4 ( c''4 a'4. \forceBreak
) g'4 ( a'4) b'4 ( d''4 b'4) ~ b'4 ( a'4) \divisioMinima
 g'4 ( b'4 a'4) fis'4. e'4 ( fis'4 d'4.) fis'4 ( g'4 a'4) ~ a'4 ( g'4 e'4 fis'\prall g'4 e'4) \finalis

}

altoMusic = {
r2*3/2 e'2 g'4 ~ g'4 e'4 d'2 e'2 ~ e'2 ~ e'2*3/2 ~ e'2*7/4 d'2*4/2 ~ d'2*3/2 ~ \divisioMinima
d'2*3/2 ~ d'2*3/4 ~ d'2*7/4 ~ d'2 b2*3/2 cis2 b2 \finalis
r2*4/2 d'4 ~ d'2 g'2*6/2 ~ \divisioMinima
g'4 e'2 d'2*11/4 ~ d'2*7/2 ~ d'2 b2*6/2 ~ b2 ~ \divisioMaxima
b2 ~ b2 ~ b2*7/4 a2 b2 d'2 ~ d'2*3/2 fis'2*3/2 g'4 ~ \divisioMaior
g'4 r4 e'4 ~ e'2*3/4 ~ e'2*3/2 ~ e'2 d'2*3/2 ~ d'2*4/2 ~ d'2 ~ \divisioMaior
d'4 b2*3/2 e'2*3/2 ~ e'2*3/2 ~ e'2*13/4 d'2*4/2 ~ d'2*3/2 ~ \divisioMinima
d'2*3/2 ~ d'2*3/4 ~ d'2*7/4 ~ d'2 b2*3/2 cis2 b2 \finalis
}

tenorMusic = {
r2*3/2 e'2*3/2 ~ e'4 b2*3/2 ~ b2 a4 g4 a2*3/2 g2*7/4 ~ g2*4/2 fis2*3/2 \divisioMinima
g2*3/2 a2*3/4 b2*7/4 a2 g2*3/2 ~ g2 ~ g2 \finalis
r2 b2*3/2 ~ b2 ~ b2*6/2 ~ \divisioMinima
b4 g2 ~ g2*11/4 b2*7/2 a2 ~ a2*6/2 g2 ~ \divisioMaxima
g2 ~ g2 ~ g2*7/4 fis2 e2 g2 b2*3/2 ~ b2*3/2 ~ b4 \divisioMaior
cis2*3/2 b2*3/4 a2*3/2 g2 ~ g2*3/2 d2 e2 b2 \divisioMaior
a4 ~ a2*3/2 g2*3/2 ~ g2*3/2 ~ g2*13/4 ~ g2*4/2 fis2*3/2 \divisioMinima
g2*3/2 a2*3/4 b2*7/4 a2 g2*3/2 ~ g2 ~ g2 \finalis
}

bassMusic = {
r2*7/2 g2*3/2 e2 ~ e2 a,2*3/2 ~ a,2*7/4 b,2*4/2 d2*3/2 \divisioMinima
b,2*3/2 ~ b,2*3/4 ~ b,2*7/4 d2 e2*3/2 ~ e2 ~ e2 \finalis
r2 g2*3/2 fis2 e2*6/2 ~ \divisioMinima
e4 ~ e2 b,2*11/4 ~ b,2*7/2 ~ b,2 e2*6/2 ~ e2 \divisioMaxima
r2 fis2 e2*7/4 ~ e2 ~ e2 b,2 ~ b,2*3/2 d2*3/2 e4 ~ \divisioMaior
e2*3/2 ~ e2*3/4 ~ e2*3/2 ~ e2 b,2*3/2 ~ b,2 ~ b,2 ~ b,2 ~ \divisioMaior
b,4 e2*3/2 d2*3/2 cis2*3/2 a,2*13/4 b,2*4/2 d2*3/2 \divisioMinima
b,2*3/2 ~ b,2*3/4 ~ b,2*7/4 ~ b,2 e2*3/2 ~ e2 ~ e2 \finalis
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