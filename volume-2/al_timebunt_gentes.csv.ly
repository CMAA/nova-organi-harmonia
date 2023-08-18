\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.230
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Timebunt gentes" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Timebunt gentes"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Timebunt gentes" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- _ le -- lú -- _ ia, 
\set stanza = " * " 
al -- _ le -- lú -- _ ia. 
_ _ _ _ 
_ _ _ _ _ _ _ _ _ _ _ ℣. 
Ti -- _ mé -- bunt _ gen -- tes 
no -- _ _ men tu -- _ _ um, Dó -- mi -- ne: 
et o -- _ mnes _ re -- _ _ _ _ ges ter -- ræ _ _ _ 
gló -- _ _ _ _ _ _ _ _ ri -- am 
\set stanza = " * " tu -- _ _ _ am. 
_ _ _ _ 
_ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   e'4 ( g'4 e'4) ~ e'4 ( \once \tweak #'font-size #-4 d' ) g'4 ( a'4 g'4) a'4 ( b'4 a'4) ~ a'4 ( \once \tweak #'font-size #-4 g' ) g'4 \divisioMaior
 e'4 ( g'4 e'4) ~ e'4 ( \once \tweak #'font-size #-4 d' ) g'4 ( a'4 g'4) a'4 ( b'4 a'4) ~ a'4 ( \once \tweak #'font-size #-4 g' ) g'4 \divisioMaior \forceBreak

  g'4 ( b'4 c''4 b'4 a'4) b'4 ( d''4 b'4) d''4 ( c''4 a'4) ~ a'4 ( g'4) \divisioMaior
  g'4 ( b'4 c''4 b'4 a'4) b'4 ( d''4 b'4) d''4 ( c''4 a'4) ~ a'4 ( g'4) \divisioMinima
 a'4 ( b'4 a'4 g'4) a'4 ( e'4. \forceBreak
) fis'4 ( g'\prall a'4 g'4) ~ g'4 ( fis'4 d'4) \divisioMinima
 d'4 ( e'4 fis'4 g'4) a'4 ( g'4) ~ g'4 ( fis'4 e'4) \finalis
 e'4 ( g'4 e'4) ~ e'4 ( d'4) g'4 ( a'4 g'4) a'4 ( b'4 a'4) b'4 ( a'4 a'4 \forceBreak
) g'4 ( a'4 b'4 a'4 g'4 a'4) g'4 ( a'4 g'4) \divisioMaior
 g'4 ( a'4 b'4 a'4 g'4) a'4 ( e'4.) fis'4 ( g'\prall a'4 g'4) g'4 ( fis'4 d'4) d'4 ( e'4 fis'4 g'4) a'4 ( g'4) ~ g'4 ( fis'4 e'4) e'4 \divisioMinima \forceBreak

 d'4 ( cis'4) d'4 ( e'4 fis'\prall g'4 e'4) e'4 \divisioMaxima
 e'4 e'4 ( g'4) e'4 ( fis'4 d'4) e'4 ( g'4 a'\prall b'4 a'4) b'4 ( a'4 g'4) a'4 ( b'4 cis''\prall d''4 b'4) \divisioMinima \forceBreak

 g'4 ( a'4 b'4) d''4 ( d''4 b'4) ~ b'4 ( b'4) ~ b'4 ( a'4 g'4) a'4 ( b'4) a'4 ( b'4 a'4 g'4 a'4) e'4 g'4 ( g'4 e'4) fis'4 ( e'4) ~ e'4 ( d'4) \divisioMaior \forceBreak

 d'4 ( d'4 e'4) ~ e'4 ( fis'4) g'4 ( a'4.) g'4 ( b'4) a'4 ( b'4 g'4) \divisioMinima
 a'4 ( g'4) a'4 ( b'4 g'4) ~ g'4 ( fis'4 d'4) e'4 ( e'4 d'4 b4) d'4 ( e'4) e'4 \divisioMinima \forceBreak

 g'4 ( g'4) e'4 ( fis'4 d'4.) e'4 g'4 ( g'4 a'4.) g'4 ( a'4 b'4 a'4 g'4) g'4 \divisioMaior
  g'4 ( b'4 c''4 b'4 a'4) b'4 ( d''4 b'4) d''4 ( c''4 a'4) ~ a'4 ( g'4) \divisioMaior \forceBreak

  g'4 ( b'4 c''4 b'4 a'4) b'4 ( d''4 b'4) d''4 ( c''4 a'4) ~ a'4 ( g'4) \divisioMinima
 a'4 ( b'4 a'4 g'4) b'4 ( e'4.) fis'4 ( g'\prall a'4 g'4) ~ g'4 ( fis'4 d'4) \divisioMinima
 d'4 ( e'4 fis'4 g'4) a'4 ( g'4) ~ g'4 ( fis'4 e'4) \finalis

}

altoMusic = {
r2*7/2 g'4 ~ g'2 fis'2*3/2 d'4 \divisioMaior
b2 ~ b2*3/2 ~ b2*3/2 d'2 ~ d'2*3/2 ~ d'4 g'2 ~ g'2*3/2 fis'2*3/2 e'2 ~ e'2*3/2 g'2 ~ g'2*3/2 fis'2*3/2 a'2 ~ a'4 r2 \divisioMinima
e'2*4/2 ~ e'2*5/4 ~ e'2*3/2 d'2*4/2 ~ \divisioMinima
d'2*5/2 b2*3/2 ~ b4 \finalis
r2*7/2 g'4 ~ g'2*3/2 fis'2*3/2 r2*9/2 \divisioMaior
r2*27/4 d'4 ~ d'2*5/2 ~ d'2*5/2 \divisioMinima
r2 b2*5/2 ~ b4 \divisioMaxima
r2*6/2 e'2*3/2 ~ e'2 ~ e'2*3/2 ~ e'2*3/2 d'2 ~ \divisioMinima
d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'2*3/2 ~ d'2 e'2*6/2 c'2 ~ c'2 a2 ~ a4 \divisioMaior
b2 ~ b2*3/2 ~ b2*5/4 e'2 ~ e'2*3/2 \divisioMinima
d'2*4/2 ~ d'2*3/2 ~ d'4 b2*4/2 ~ b2 ~ b4 \divisioMinima
d'2 ~ d'2*9/4 ~ d'2*7/4 e'2*5/2 d'4 g'2 ~ g'2*3/2 fis'2*3/2 e'2 ~ e'2*3/2 ~ e'2*5/2 fis'2*3/2 e'2 d'2*3/2 ~ \divisioMinima
d'2*4/2 c'2*5/4 a2*3/2 b2*4/2 \divisioMinima
d'2 ~ d'2*3/2 b2*3/2 ~ b4 \finalis
}

tenorMusic = {
b2 a2*3/2 b2*3/2 d'2 ~ d'2*3/2 b4 \divisioMaior
g2 fis2*3/2 g2*3/2 ~ g2 fis2*3/2 b4 ~ b2 a2*3/2 d'2*3/2 c'2 b2*3/2 e'2 ~ e'2*3/2 d'2*3/2 e'2 d'2*3/2 ~ \divisioMinima
d'2*4/2 c'2*5/4 a2*3/2 ~ a2*4/2 ~ \divisioMinima
a2*5/2 ~ a2*3/2 g4 \finalis
r2*20/2 d'2*3/2 \divisioMaior
b2 d'2*3/2 c'2*5/4 d'2*4/2 a2*3/2 b2*5/2 ~ b2*4/2 ~ b4 \divisioMinima
a2 ~ a2*5/2 g4 \divisioMaxima
r2*6/2 g2*3/2 fis2 g2*3/2 fis2*3/2 ~ fis2 \divisioMinima
g2*3/2 ~ g2*3/2 fis2 g2*3/2 fis2 e2*6/2 ~ e2 g2 ~ g2 fis4 \divisioMaior
g2 ~ g2*3/2 ~ g2*5/4 ~ g2 ~ g2*3/2 ~ \divisioMinima
g2*4/2 a2*4/2 ~ a2*4/2 fis2 g4 \divisioMinima
b2 a2*9/4 g2*7/4 ~ g2*5/2 ~ g4 ~ g2 a2*3/2 d'2*3/2 c'2 b2*3/2 g2*5/2 fis2*3/2 a2 b2*3/2 \divisioMinima
e2*4/2 ~ e2*5/4 d2*3/2 ~ d2*4/2 \divisioMinima
fis2 a2*3/2 ~ a2*3/2 g4 \finalis
}

bassMusic = {
g2 fis2*3/2 e2*3/2 d2 ~ d2*3/2 g4 \divisioMaior
g,2 b,2*3/2 e2*3/2 d2 ~ d2*3/2 g4 e2 ~ e2*3/2 d2*3/2 a2 e2*3/2 ~ e2 e'2*3/2 r2*3/2 c'2 b2*3/2 \divisioMinima
a2*4/2 ~ a2*5/4 d2*3/2 ~ d2*4/2 \divisioMinima
b,2*5/2 e2*3/2 ~ e4 \finalis
r2*5/2 b2*3/2 d'2*3/2 ~ d'2*3/2 e'2*6/2 b2*3/2 \divisioMaior
e2 ~ e2*3/2 a2*5/4 d2*4/2 ~ d2*3/2 b2*5/2 a2*4/2 g4 \divisioMinima
fis2 e2*5/2 ~ e4 \divisioMaxima
r4 e2 a2*3/2 e2*3/2 ~ e2 ~ e2*3/2 c2*3/2 b,2 ~ \divisioMinima
b,2*3/2 e2*3/2 d2 b,2*3/2 ~ b,2 c2*3/2 b,2*3/2 a,2 ~ a,2 d2 ~ d4 \divisioMaior
r2 fis2*3/2 e2*5/4 d2 c2*3/2 \divisioMinima
b,2*4/2 ~ b,2*4/2 e2*4/2 ~ e2 ~ e4 \divisioMinima
b,2 ~ b,2*9/4 e2*7/4 c2*5/2 b,4 e2 ~ e2*3/2 d2*3/2 a2 e2*3/2 ~ e2*5/2 d2*3/2 c2 b,2*3/2 \divisioMinima
a,2*4/2 ~ a,2*5/4 d2*3/2 b,2*4/2 ~ \divisioMinima
b,2 ~ b,2*3/2 e2*3/2 ~ e4 \finalis
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
