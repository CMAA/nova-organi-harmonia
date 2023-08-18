\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.160
%(volume.page)

global = {
 \key g \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Omnes gentes" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Omnes gentes"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Omnes gentes" }
    \line {}
  }
}

chantText = \lyricmode {
O -- _ _ _ mnes gen -- tes _ 
\set stanza = " * " pláu -- di -- te má -- ni -- bus: 
ju -- bi -- lá -- _ te De -- _ _ o 
in vo -- ce ex -- sul -- ta -- ti -- ó -- _ nis. Ps. 
Quó -- ni -- am Dó -- mi -- nus ex -- cél -- sus, ter -- rí -- bi -- lis: 
\set stanza = " * " 
Rex ma -- gnus su -- per o -- mnem ter -- ram. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   g'4 ( g'4) ~ g'4 ( e'4 d'4) e'4 ( g'4 g'4) b'4 ( a'4 b'4) g'4 b'4 ( a'4 b'4) a'4. g'4 ( a'4 g'4 e'4) \divisioMinima
 g'4 ( g'4) g'4 a'4 ( g'4 fis'4 g'4 \forceBreak
) e'4 e'4 ( fis'4 e'4) e'4 \divisioMaxima
 g'4 a'4 ( b'4 a'4) b'4 d''4 ( cis''4 d''4) b'4 g'4 ( b'4 a'4 g'4) b'4 ( a'4 g'4) a'4 ( g'4) g'4 \divisioMaior \forceBreak

 e'4 ( \once \tweak #'font-size #-4 g' ) g'4 g'4 ( g'4 g'4) g'4 e'4 ( \once \tweak #'font-size #-4 fis' ) d'4 g'4 ( g'4) g'4 ( b'4) a'4 ( b'4 g'4) g'4 \finalis
 g'4 ( a'4) a'4 ( g'4) a'4 ( b'4) b'4 b'4 b'4 \forceBreak
 b'4 a'4  c''4 b'4 a'4 g'4 g'4 \divisioMaxima
 b'4 b'4 ( d''4) a'4 g'4 a'4 g'4 ( \once \tweak #'font-size #-4 e' ) g'4 a'4 g'4 \finalis \forceBreak

  g'4 ( a'4) a'4 ( g'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 a'4  c''4 b'4 b'4 a'4 g'4 \divisioMaxima \forceBreak

 g'4 a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 a'4  c''4 b'4 a'4 g'4 \divisioMaxima
 g'4 a'4 ( b'4 \forceBreak
) b'4 ( d''4) a'4 g'4 g'4 a'4 g'4 ( e'4) g'4 a'4 g'4 \finalis

}

altoMusic = {
b2 c'2*3/2 b2*3/2 d'2*4/2 e'2*3/2 ~ e'2*3/4 ~ e'2*3/2 ~ e'4 \divisioMinima
d'2*3/2 ~ d'2 ~ d'2 c'4 b2*3/2 ~ b4 \divisioMaxima
r4 d'2*3/2 ~ d'4 ~ d'2*4/2 ~ d'2*4/2 e'2*5/2 d'4 ~ \divisioMaior
d'2 c'4 b2*4/2 ~ b2*3/2 ~ b2 e'2 ~ e'2*3/2 d'4 \finalis
r2*3/2 g'4 ~ g'2 ~ g'2*4/2 e'2*3/2 ~ e'2*3/2 \divisioMaxima
d'4 fis'2*3/2 e'2 ~ e'2*3/2 d'2 r2*3/2 g'4 ~ g'2 ~ g'2*6/2 \divisioMinima
fis'2 e'2*3/2 d'2 \divisioMaxima
g'4 ~ g'2 fis'2 ~ fis'2 g'2*3/2 ~ \divisioMinima
g'4 e'2 ~ e'2 \divisioMaxima
r4 d'2 ~ d'2*3/2 b2*3/2 c'2*3/2 ~ c'4 b4 \finalis
}

tenorMusic = {
g2 ~ g2*3/2 ~ g2*3/2 ~ g2*4/2 ~ g2*3/2 c'2*3/4 b2*3/2 g4 ~ \divisioMinima
g2*3/2 b2 a2 ~ a4 ~ a2*3/2 g4 ~ \divisioMaxima
g4 ~ g2*3/2 fis4 ~ fis2*4/2 g2*4/2 ~ g2*5/2 ~ g4 ~ \divisioMaior
g2 ~ g4 ~ g2*4/2 a2*3/2 g2 ~ g2 c'2*3/2 b4 ~ \finalis
b2 c'2*4/2 d'2*4/2 c'2*3/2 b2*3/2 ~ \divisioMaxima
b4 ~ b2*3/2 ~ b2 c'2*3/2 ~ c'4 b4 r2 b2 c'2 d'2*6/2 ~ \divisioMinima
d'2 c'2*3/2 b2 \divisioMaxima
r4 d'2 ~ d'2 b2 ~ b2*3/2 ~ \divisioMinima
b4 a2 b2 \divisioMaxima
g4 ~ g2 fis2*3/2 g2*3/2 e2*3/2 d2 \finalis
}

bassMusic = {
r2 e2*3/2 ~ e2*3/2 b,2*4/2 c2*3/2 ~ c2*3/4 e2*3/2 ~ e4 \divisioMinima
b,2*3/2 ~ b,2 ~ b,2 ~ b,4 e2*3/2 ~ e4 \divisioMaxima
r4 d2*3/2 ~ d4 b,2*4/2 e2*4/2 c2*5/2 b,4 \divisioMaior
c2 e4 ~ e2*4/2 ~ e2*3/2 ~ e2 c2 ~ c2*3/2 g4 ~ \finalis
g2 ~ g2*4/2 ~ g2*4/2 c2*3/2 e2*3/2 \divisioMaxima
b,4 d2*3/2 e2 c2*3/2 g2 ~ g2 ~ g2 ~ g2 ~ g2*6/2 \divisioMinima
r2*7/2 \divisioMaxima
g4 ~ g2 d2 ~ d2 e2*3/2 ~ \divisioMinima
e4 c2 e2 \divisioMaxima
r4 b,2 d2*3/2 e2*3/2 c2*3/2 g,2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Introit"
        "VI"
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
