\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.43
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Ego sum pastor" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Ego sum pastor"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Ego sum pastor" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- _ ia. 
\set stanza = " * " _ _ _ _ _ _ _ _ _ _ _ ℣. 
E -- go sum _ _ _ 
pa -- _ stor _ bo -- _ nus: 
et co -- gnó -- _ _ _ sco o -- _ _ _ _ _ _ _ _ ves me -- _ as 
et co -- gnó -- _ _ _ scunt me 
\set stanza = " * " me -- _ _ _ _ _ _ _ _ æ. _ _ }

chantMusic = {
\tieDown   e'4 ( fis'\prall g'4 fis'4) e'4 ( e'4 d'4) g'4 ( a'4 b'4 a'4 g'4) a'4 ( b'4) b'4 \divisioMinima
  a'4 ( c''4 b'4 a'4 g'4.) fis'4 ( a'4) b'4 ( a'4 fis'4) g'4 ( e'4) \divisioMinima \forceBreak

 d'4 ( fis'4) a'4 ( a'4 fis'4 g'4.) fis'4 ( g'4) b'4 ( a'4 fis'4) g'4 ( e'4.) g'4 ( fis'4 d'4) fis'4 ( fis'4 e'4) \finalis
 b'4 a'4 ( g'4) fis'4. d'4 ( fis'4) a'4 ( g'4 fis'4 e'4. \forceBreak
) d'4 ( e'4 fis'4 e'4 d'4 e'4) \divisioMaior
 e'4 ( g'4 fis'4) a'4 ( b'4 a'4) g'4 ( fis'4 e'4.) d'4 ( e'4 fis'4 e'4 d'4 e'4) e'4 ( g'4 fis'4) g'4 ( a'4) fis'4 ( e'4) \divisioMaxima \forceBreak

 e'4 e'4 g'4 ( e'4) ~ e'4 ( d'4) g'4 ( a'4 b'4 a'4 g'4) a'4 ( b'4) b'4 \divisioMinima
  b'4. a'4 ( c''4 b'4 a'4 g'4.) fis'4 ( a'4 b'4 a'4 fis'4) g'4 ( e'4) \divisioMinima \forceBreak

 d'4 ( fis'4) a'4 ( a'4 fis'4 g'4.) fis'4 ( g'4) b'4 ( a'4 fis'4) g'4 ( e'4) e'4 g'4 ( fis'4 d'4) fis'4 ( g'4 e'4) e'4 \divisioMaxima
 e'4 e'4 g'4 ( e'4) ~ e'4 ( d'4 \forceBreak
) g'4 ( a'4 b'4 a'4 g'4) a'4 ( b'4) b'4 b'4 \divisioMinima
  b'4. a'4 ( c''4 b'4 a'4 g'4.) fis'4 ( a'4 b'4 a'4 fis'4) g'4 ( e'4) \divisioMinima \forceBreak

 d'4 ( fis'4) a'4 ( a'4 fis'4 g'4.) fis'4 ( g'4) b'4 ( a'4 fis'4) g'4 ( e'4) e'4 g'4 ( fis'4 d'4) fis'4 ( fis'4 e'4) \finalis

}

altoMusic = {
r2*7/2 g'2*5/2 ~ g'2 ~ g'4 ~ g'2*4/2 ~ g'2*3/4 fis'2 ~ fis'2 ~ fis'4 b2 \divisioMinima
d'2 ~ d'2*13/4 ~ d'2*3/2 b2*5/4 ~ b2*3/2 ~ b2 ~ b4 \finalis
r2*9/4 d'2 e'2*3/2 ~ e'2*3/4 d'2 b2*4/2 \divisioMaior
d'2*3/2 ~ d'2*3/2 e'2 ~ e'2*3/4 d'2 ~ d'2*4/2 e'2*5/2 ~ e'2 \divisioMaxima
b2*3/2 ~ b2*3/2 d'2 ~ d'2*3/2 e'2 ~ e'4 g'2*3/4 ~ g'2*4/2 ~ g'2*3/4 fis'2 ~ fis'2 ~ fis'4 b2 \divisioMinima
d'2 ~ d'2*9/4 e'2 fis'2 ~ fis'4 e'2 ~ e'4 d'2 ~ d'4 b2*3/2 ~ b4 \divisioMaxima
c'2*3/2 d'2*3/2 ~ d'2 ~ d'2*3/2 e'2*3/2 ~ e'4 g'2*3/4 ~ g'2*4/2 ~ g'2*3/4 fis'2 ~ fis'2 ~ fis'4 b2 \divisioMinima
d'2 ~ d'2*13/4 fis'2 ~ fis'4 e'2 d'2*3/2 ~ d'4 b2 ~ b4 \finalis
}

tenorMusic = {
b2*4/2 a2*3/2 b2*5/2 c'2 b4 c'2*4/2 b2*3/4 ~ b2 fis2*3/2 e2 \divisioMinima
a2 b2*9/4 g2 fis2*3/2 e2*5/4 b2*3/2 a2 g4 \finalis
b2*9/4 ~ b2 ~ b2*9/4 ~ b2 ~ b2*4/2 ~ \divisioMaior
b2*3/2 ~ b2*3/2 ~ b2*7/4 ~ b2 ~ b2*4/2 ~ b2*3/2 ~ b2 a4 g4 ~ \divisioMaxima
g2*3/2 fis2*3/2 d2 g2*3/2 ~ g2 ~ g4 d'2*3/4 c'2*4/2 b2*3/4 ~ b2 fis2*3/2 e2 \divisioMinima
a2 b2*9/4 ~ b2 ~ b2*3/2 ~ b2 a4 ~ a2*3/2 ~ a2*3/2 g4 ~ \divisioMaxima
g2*3/2 ~ g2*3/2 b2 g2*3/2 ~ g2*3/2 ~ g4 d'2*3/4 c'2*4/2 b2*3/4 ~ b2 fis2*3/2 e2 \divisioMinima
a2 b2*13/4 ~ b2*3/2 ~ b2 ~ b2*4/2 a2 g4 \finalis
}

bassMusic = {
g2*4/2 fis2*3/2 e2*5/2 ~ e2 ~ e4 ~ e2*4/2 ~ e2*3/4 d2 ~ d2*3/2 e2 \divisioMinima
fis2 e2*9/4 ~ e2 d2*3/2 e2*5/4 b,2*3/2 e2 ~ e4 \finalis
r2*13/4 g2*9/4 a2 g2*4/2 \divisioMaior
r2*3/2 fis2*3/2 g2*7/4 a2 g2*4/2 fis2*3/2 e2 ~ e2 \divisioMaxima
g,2*3/2 b,2*3/2 ~ b,2 ~ b,2*3/2 c2 e4 er2*3/4 e2*4/2 ~ e2*3/4 d2 ~ d2*3/2 e2 \divisioMinima
fis2 e2*9/4 ~ e2 d2*3/2 c2 ~ c4 b,2*3/2 e2*3/2 ~ e4 \divisioMaxima
a,2*3/2 b,2*3/2 ~ b,2 ~ b,2*3/2 c2*3/2 e4 ~ e2*3/4 ~ e2*4/2 ~ e2*3/4 d2 ~ d2*3/2 e2 \divisioMinima
fis2 e2*13/4 d2*3/2 c2 b,2*4/2 e2 ~ e4 \finalis
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
