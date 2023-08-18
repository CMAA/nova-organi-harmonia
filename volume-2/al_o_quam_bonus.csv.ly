\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.96
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"O quam bonus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "O quam bonus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "O quam bonus" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- _ ia, 
\set stanza = " * " 
al -- le -- lú -- _ ia. 
_ _ _ _ _ _ _ 
_ _ _ _ _ _ ℣. 
O quam bo -- nus _ _ _ et su -- á -- vis est, Dó -- mi -- _ ne, 
Spí -- ri -- tus tu -- _ _ _ _ _ _ _ _ 
_ _ _ _ _ _ _ _ _ _ 
_ _ _ _ _ _ _ us 
\set stanza = " * " 
in no -- bis! _ 
_ _ _ _ _ _ _ 
_ _ _ _ _ _ }

chantMusic = {
\tieDown   d'4 e'4 ( g'4 e'4 g'4) fis'4 ( g'4 a'4 g'4 fis'4) g'4 ( \once \tweak #'font-size #-4 a' ) a'4 \divisioMaior
 d'4 e'4 ( g'4 e'4 g'4) fis'4 ( g'4 a'4 g'4 fis'4) g'4 ( \once \tweak #'font-size #-4 a' ) a'4 \divisioMaior \forceBreak

 b'4 ( a'4 g'4) a'4 ( g'4 fis'4) g'4 ( a'4.) b'4 ( a'4 g'4) a'4 ( g'4 fis'4 d'4 e'4) \divisioMinima
 e'4 ( g'4 fis'4 e'4 d'4) e'4 ( e'4 d'4) \divisioMaior
 a'4 ( b'4 g'4 fis'4 e'4. \forceBreak
) ~ e'4 ( fis'4 g'4 a'4) fis'4 ( g'4 a'4 e'4) ~ e'4 ( d'4) \divisioMinima
 fis'4 a'4 ( a'4 b'4 g'4 fis'4 e'4.) fis'4 ( g'4 fis'4 g'4 e'4) \finalis
 b'4 b'4 b'4 ( a'4) a'4 ( fis'4.) g'4 ( a'4 g'4) a'4 ( e'4) ~ e'4 ( d'4) \divisioMinima
 d'4 e'4 fis'4 ( g'4 a'4) a'4 ( fis'4) a'4 ( b'4) g'4 ( fis'4 e'4) e'4 ( d'4 e'\prall fis'4 e'4 d'4) e'4 ( fis'4) e'4 \divisioMaxima \forceBreak

 e'4 ( fis'4 e'4 fis'4) d'4 fis'4  a'4 ( b'4) c''4 ( a'4) b'4 ( fis'4) \divisioMinima
 g'4 ( fis'4 e'4) g'4 ( fis'4) a'4 ( fis'4.) g'4 ( fis'4 d'4) fis'4 ( e'4) g'4 ( e'4) \divisioMaior
  d'4 ( fis'4) a'4 ( b'4 \forceBreak
) c''4 ( a'4) b'4 ( fis'4) \divisioMinima
 g'4 ( fis'4 e'4) g'4 ( fis'4) a'4 ( fis'4.) g'4 ( fis'4 d'4) fis'4 ( e'4) g'4 ( e'4) \divisioMaior
 a'4. fis'4 ( g'4) a'4 ( fis'4) g'4 ( e'4) fis'4. \divisioMinima \forceBreak

 a'4. fis'4 ( g'4) a'4 ( fis'4) g'4 ( e'4) fis'4. d'4 ( e'\prall fis'4 g'4) fis'4 ( e'4) \divisioMaxima
 d'4 e'4 ( g'4 e'4 g'4) fis'4 ( g'4 a'4 g'4 fis'4) g'4 ( a'4) \divisioMaior
 b'4 ( a'4 g'4 \forceBreak
) a'4 ( g'4 fis'4) g'4 ( a'4.) b'4 ( a'4 g'4) a'4 ( g'4 fis'4 d'4 e'4) \divisioMinima
 e'4 ( g'4 fis'4 e'4 d'4) e'4 ( e'4 d'4) \divisioMaior
 a'4 ( b'4 g'4 fis'4 e'4.) ~ e'4 ( fis'4 g'4 a'4 \forceBreak
) fis'4 ( g'4 a'4 e'4) ~ e'4 ( d'4) \divisioMinima
 fis'4 a'4 ( a'4 b'4 g'4 fis'4 e'4.) fis'4 ( g'4 fis'4 g'4 e'4) \finalis

}

altoMusic = {
r4 b2*4/2 d'2*5/2 ~ d'2 ~ d'4 \divisioMaior
r4 b2*4/2 d'2*5/2 ~ d'2 ~ d'4 ~ \divisioMaior
d'2*3/2 ~ d'2*3/2 ~ d'2*5/4 ~ d'2*3/2 b2 ~ b2*3/2 ~ \divisioMinima
b2*5/2 ~ b2*3/2 \divisioMaior
d'2 ~ d'2*7/4 c'2 ~ c'2 a2*3/2 ~ a2*3/2 ~ \divisioMinima
a4 d'2*3/2 b2*7/4 ~ b2*4/2 ~ b4 \finalis
r2 c'2 d'2*5/4 ~ d'2*4/2 e'4 ~ e'4 d'4 ~ \divisioMinima
d'2 ~ d'2*3/2 ~ d'2 ~ d'2 ~ d'2*3/2 b2*3/2 ~ b2*3/2 ~ b2 ~ b4 \divisioMaxima
r2*6/2 d'2 g'2 fis'2 \divisioMinima
e'2 ~ e'4 d'2 ~ d'2*5/4 ~ d'2*3/2 ~ d'4 e'4 ~ e'2 d'2*4/2 g'2 fis'2 \divisioMinima
e'2 ~ e'4 d'2 ~ d'2*5/4 b2*3/2 ~ b2 ~ b2 \divisioMaior
d'2*3/4 ~ d'2 ~ d'2 ~ d'2 ~ d'2*3/4 ~ \divisioMinima
d'2*3/4 ~ d'2 ~ d'2 ~ d'2 ~ d'2*3/4 ~ d'2 ~ d'2 b2 \divisioMaxima
r2*5/2 d'2 ~ d'2*3/2 ~ d'2 ~ \divisioMaior
d'2*3/2 ~ d'2*3/2 ~ d'2*5/4 ~ d'2*3/2 b2 ~ b2*3/2 ~ \divisioMinima
b2*5/2 ~ b2*3/2 \divisioMaior
d'2 ~ d'2*7/4 c'2 ~ c'2 a2*3/2 ~ a2*3/2 ~ \divisioMinima
a4 d'2*3/2 b2*7/4 ~ b2*4/2 ~ b4 \finalis
}

tenorMusic = {
r4 g2*4/2 a2*5/2 e2 fis4 \divisioMaior
r4 g2*4/2 a2*5/2 e2 fis4 \divisioMaior
g2*3/2 ~ g2*3/2 fis2*5/4 g2*3/2 ~ g2 a2*3/2 \divisioMinima
g2*5/2 fis2*3/2 ~ \divisioMaior
fis2 g2*7/4 ~ g2 ~ g2 ~ g2*3/2 fis2*4/2 ~ fis2*3/2 g2*7/4 a2*4/2 g4 \finalis
r2*13/4 b2*4/2 a2*3/2 ~ \divisioMinima
a2 ~ a2*3/2 fis2 ~ fis2 g2*3/2 fis2*3/2 a2*3/2 ~ a2 g4 \divisioMaxima
b2*4/2 a2 ~ a2 ~ a2 ~ a2 \divisioMinima
b2*3/2 a2 ~ a2*5/4 b2*3/2 ~ b2 ~ b2 a2*4/2 ~ a2 ~ a2 \divisioMinima
b2*3/2 a2 fis2*5/4 e2*3/2 a2 g2 \divisioMaior
fis2*3/4 e2 fis2 b2 a2*3/4 \divisioMinima
fis2*3/4 ~ fis2 ~ fis2 e2 b2*3/4 fis2 a2 ~ a4 g4 \divisioMaxima
b4 ~ b2*4/2 a2 fis2*3/2 ~ fis2 \divisioMaior
g2*3/2 e2*3/2 ~ e4 fis2*3/4 g2*3/2 ~ g2 a2*3/2 \divisioMinima
g2*5/2 fis2*3/2 ~ \divisioMaior
fis2 g2*7/4 ~ g2 ~ g2 ~ g2*3/2 fis2*4/2 ~ fis2*3/2 g2*7/4 a2*4/2 g4 \finalis
}

bassMusic = {
r2*5/2 d2*5/2 ~ d2 ~ d4 \divisioMaior
r2*5/2 d2*5/2 ~ d2 ~ d4 \divisioMaior
g,2*3/2 b,2*3/2 ~ b,2*5/4 ~ b,2*3/2 e2 ~ e2*3/2 ~ \divisioMinima
e2*5/2 b,2*3/2 ~ \divisioMaior
b,2 ~ b,2*7/4 ~ b,2 a,2 d2*3/2 ~ d2*3/2 ~ \divisioMinima
d4 b,2*3/2 e2*7/4 ~ e2*4/2 ~ e4 \finalis
b2 ~ b2 ~ b2*5/4 g2*4/2 fis2*3/2 ~ \divisioMinima
fis2 d2*3/2 ~ d2 c2 b,2*3/2 ~ b,2*3/2 ~ b,2*3/2 e2 ~ e4 \divisioMaxima
g2*4/2 fis2 ~ fis2 e2 d2 ~ \divisioMinima
d2*3/2 ~ d2 fis2*5/4 b2*3/2 a2 g2 fis2*4/2 e2 d2 ~ \divisioMinima
d2*3/2 ~ d2 ~ d2*5/4 e2*3/2 ~ e2 ~ e2 \divisioMaior
d2*3/4 ~ d2 ~ d2 ~ d2 ~ d2*3/4 ~ \divisioMinima
d2*3/4 c2 b,2 ~ b,2 ~ b,2*3/4 ~ b,2 ~ b,2 e2 \divisioMaxima
r4 g2*4/2 d2 ~ d2*3/2 b,2 ~ \divisioMaior
b,2*3/2 ~ b,2*3/2 d2*5/4 b,2*3/2 e2 ~ e2*3/2 ~ \divisioMinima
e2*5/2 b,2*3/2 ~ \divisioMaior
b,2 ~ b,2*7/4 ~ b,2 a,2 d2*3/2 ~ d2*3/2 ~ \divisioMinima
d4 b,2*3/2 e2*7/4 ~ e2*4/2 ~ e4 \finalis
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
