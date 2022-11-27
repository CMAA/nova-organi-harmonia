\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.37
%(volume.page)

global = {
 \key a \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Quasi modo" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Quasi modo"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Quasi modo" }
    \line {}
  }
}

chantText = \lyricmode {
Qua -- si mo -- do 
\set stanza = " * " gé -- _ _ ni -- ti in -- fán -- tes, al -- le -- lú -- ia: 
ra -- ti -- o -- ná -- bi -- les, si -- ne do -- lo _ lac con -- cu -- pí -- sci -- te, 
al -- le -- lú -- ia, al -- le -- lú -- ia, _ _ al -- le -- lú -- ia. Ps. 
Ex -- sul -- tá -- te De -- o ad -- ju -- tó -- ri no -- stro: 
\set stanza = " * " 
ju -- bi -- lá -- te De -- o Ja -- cob. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   d'4 e'4 e'4 e'4  e'4 g'4 ( g'4) ~ g'4 ( a'4) g'4 g'4 g'4 g'4 d'4 \divisioMinima
 g'4 a'4 ( fis'4 g'4) g'4 ( b'4 \tiny a' g' 4) g'4 \divisioMaxima \forceBreak

 g'4 ( e'4) g'4 a'4  a'4 ( c''4 b'4) a'4 ( g'4) g'4 \divisioMinima
 g'4 fis'4 ( g'4 a'4) a'4 ( g'4) g'4 ( a'4 g'4 g'4) e'4 ( fis'4 e'4) \divisioMinima
 e'4 ( g'4 a'4 \forceBreak
) a'4 ( \once \tweak #'font-size #-4 b' ) g'4 g'4 ( a'4 g'4) e'4 e'4 ( d'4 e'4) \divisioMaior
 d'4 g'4 ( g'4) g'4 ( b'4 \tiny a' g' 4) g'4 \divisioMinima
 e'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( fis'4) g'4 ( a'4 g'4) g'4 ( g'4) ~ g'4 ( e'4) ~ e'4 ( d'4) \divisioMinima \forceBreak

 e'4 g'4 ( g'4) g'4 ( b'4 \tiny a' g' 4) g'4 \finalis
 g'4 ( a'4) a'4 ( g'4) a'4 ( b'4) b'4 b'4 b'4 b'4 a'4  c''4 b'4 a'4 g'4 \divisioMaxima \forceBreak

 g'4 g'4 g'4 a'4 g'4 e'4 g'4 a'4 g'4 \finalis
  g'4 ( a'4) a'4 ( g'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima \forceBreak

 b'4 a'4  c''4 b'4 b'4 a'4 g'4 \divisioMaxima
 g'4 a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4  a'4 \forceBreak
  c''4 b'4 a'4 g'4 \divisioMaxima
 g'4 a'4 ( b'4) b'4 ( d''4) a'4 g'4 g'4 a'4 g'4 ( e'4) g'4 a'4 g'4 \finalis

}

altoMusic = {
b2 ~ b2*3/2 ~ b2 e'2*5/2 d'2 ~ \divisioMinima
d'4 ~ d'2*3/2 e'2*4/2 d'4 \divisioMaxima
e'2*4/2 ~ e'2*3/2 d'2*3/2 ~ \divisioMinima
d'2*4/2 ~ d'2 c'2*4/2 b2*3/2 ~ \divisioMinima
b2*3/2 ~ b2*3/2 ~ b2*4/2 ~ b2 ~ b4 ~ \divisioMaior
b4 d'2 c'2*4/2 d'4 ~ \divisioMinima
d'2 ~ d'2 b2*3/2 ~ b2*3/2 a2*3/2 \divisioMinima
b4 ~ b2 e'2*4/2 d'4 \finalis
g'2 fis'2 ~ fis'2*3/2 g'2 e'2 ~ e'4 d'2*3/2 \divisioMaxima
b2*4/2 a2*3/2 b2 g'2 fis'2*4/2 ~ fis'2*3/2 g'2*3/2 \divisioMinima
e'2 ~ e'2*3/2 d'2 \divisioMaxima
b2*3/2 ~ b2*4/2 d'2*4/2 e'2 d'2 \divisioMaxima
e'2*3/2 fis'2 e'2 b2 a2*3/2 b2 \finalis
}

tenorMusic = {
b2 g2*3/2 ~ g2 ~ g2*5/2 ~ g2 ~ \divisioMinima
g4 b2*3/2 ~ b2*4/2 ~ b4 ~ \divisioMaxima
b2*4/2 a2*3/2 b2*3/2 \divisioMinima
r4 d2*3/2 e2 ~ e2*4/2 ~ e2*3/2 ~ \divisioMinima
e2*3/2 ~ e2*3/2 ~ e2*4/2 fis2 g4 ~ \divisioMaior
g4 ~ g2 ~ g2*4/2 ~ g4 \divisioMinima
b2 a2 ~ a2*3/2 g2*3/2 fis2*3/2 \divisioMinima
g4 ~ g2 a2*4/2 b4 \finalis
r2 d'2 ~ d'2*3/2 ~ d'2 c'2 a4 b2*3/2 \divisioMaxima
e2*4/2 ~ e2*3/2 d2 r2 d'2*4/2 ~ d'2*3/2 ~ d'2*3/2 \divisioMinima
c'2 ~ c'2*3/2 b2 \divisioMaxima
r4 fis2 g2*4/2 ~ g2*4/2 ~ g2 ~ g2 \divisioMaxima
b4 g2 fis2 e2 ~ e2 ~ e2*3/2 d2 \finalis
}

bassMusic = {
r2 fis2*3/2 e2 c2*5/2 b,2 ~ \divisioMinima
b,4 ~ b,2*3/2 c2*4/2 g4 \divisioMaxima
d2*4/2 c2*3/2 b,2*3/2 ~ \divisioMinima
b,4 ~ b,2*3/2 ~ b,2 a,2*4/2 g,2*3/2 \divisioMinima
e,2*3/2 fis,2*3/2 g,2*4/2 ~ g,2 ~ g,4 ~ \divisioMaior
g,4 b,2 a,2*4/2 b,4 ~ \divisioMinima
b,2 ~ b,2 e2*3/2 ~ e2*3/2 fis2*3/2 ~ \divisioMinima
fis4 e2 c2*4/2 g4 \finalis
r2*4/2 b2*3/2 ~ b2 c'2 r2*4/2 \divisioMaxima
r2*4/2 c2*3/2 g,2 r2*6/2 b2*3/2 ~ b2*3/2 \divisioMinima
r2 a2*3/2 b2 \divisioMaxima
e4 ~ e2 ~ e2*4/2 b,2*4/2 a,2 b,2 \divisioMaxima
e4 ~ e2 d2 e2 ~ e2 c2*3/2 g,2 \finalis
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
