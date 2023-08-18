\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.12
%(volume.page)

global = {
 \key d \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Aqua sapientiae" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Aqua sapientiae"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Aqua sapientiae" }
    \line {}
  }
}

chantText = \lyricmode {
A -- qua 
\set stanza = " * " sa -- pi -- én -- ti -- æ 
po -- tá -- vit e -- os, al -- le -- lú -- ia: 
fir -- má -- _ bi -- tur in il -- lis, 
et non fle -- cté -- tur, al -- le -- lú -- ia: 
et ex -- al -- tá -- bit e -- os in æ -- tér -- num, 
al -- le -- _ lú -- ia, al -- le -- _ _ _ lú -- ia. Ps. 
Con -- fi -- té -- mi -- ni Dó -- mi -- no, et in -- vo -- cá -- te no -- men e -- jus: 
\set stanza = " * " 
an -- nun -- ti -- á -- te in -- ter gen -- tes ó -- pe -- ra e -- jus. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   d'4 ( a'4) a'4  a'4 ( b'4 a'4) g'4 ( a'4 e'4) g'4 g'4 ( b'4 a'4) a'4 \divisioMaior
 g'4 a'4 ( c''4) c''4 ( c''4 c''4) c''4 ( d''4 c''4 a'4) a'4 \divisioMinima
 c''4 ( c''4 \once \tweak #'font-size #-4 a'  \forceBreak
) c''4 ( c''4) c''4 ( d''4 c''4 \once \tweak #'font-size #-4 a' ) a'4 \divisioMaxima
 a'4 a'4 ( c''4) e''4 ( d''4) c''4 c''4 ( c''4 c''4) c''4 c''4 ( d''4 c''4 \once \tweak #'font-size #-4 a' ) a'4 \divisioMaior
 a'4 ( \once \tweak #'font-size #-4 c'' ) c''4 c''4 b'4 ( c''4 a'4) g'4 ( fis'4) \divisioMinima \forceBreak

 a'4 ( \once \tweak #'font-size #-4 c'' ) c''4 ( b'4 c''4 a'4) a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4 g'4 g'4) \divisioMaxima
 e'4 g'4 ( fis'4) g'4 ( \once \tweak #'font-size #-4 a' ) a'4 a'4 ( g'4 g'4) g'4 ( a'4 g'4 e'4) e'4 g'4 a'4 \forceBreak
 a'4 ( \once \tweak #'font-size #-4 c'' ) c''4 ( b'4 c''4 a'4) \divisioMaior
 a'4 ( b'4) fis'4 g'4 ( b'4 a'4) g'4 ( a'4 g'4 fis'4 g'4) d'4 \divisioMinima
 e'4 ( g'4 fis'4) g'4. e'4 ( a'4 g'4) a'4 ( g'4) ~ g'4 ( e'4 d'4) d'4 ( e'4 d'4) d'4 \finalis \forceBreak

 d'4 ( g'4 fis'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 a'4 a'4 a'4 ( c''4) b'4 b'4 ( a'4) a'4 ( b'4) \divisioMaxima \forceBreak

 a'4 ( \once \tweak #'font-size #-4 fis' ) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 ( b'\prall c''4) a'4 g'4 g'4 ( g'4 g'4) e'4 ( d'4) \finalis
  d'4 ( g'4 fis'4) g'4 ( a'4) a'4 \forceBreak
 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 ( c''4) b'4 b'4 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) \divisioMaxima
 a'4 ( fis'4) g'4 ( a'4) a'4 a'4 a'4 a'4 \forceBreak
 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 ( c''4) b'4 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) \divisioMaxima
 a'4 ( fis'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 ( b'\prall c''4) a'4 g'4 g'4 ( g'4 g'4) e'4 ( d'4) \finalis

}

altoMusic = {
r2*3/2 fis'2*3/2 e'2*3/2 ~ e'4 d'2*3/2 e'4 ~ \divisioMaior
e'4 ~ e'2 ~ e'2*3/2 g'2*5/2 \divisioMinima
e'2*3/2 ~ e'2 g'2*4/2 fis'4 \divisioMaxima
e'4 ~ e'2*5/2 ~ e'2*4/2 ~ e'2*4/2 ~ e'4 ~ \divisioMaior
e'2*3/2 ~ e'4 ~ e'2*3/2 ~ e'2 ~ \divisioMinima
e'2 ~ e'2*4/2 c'2 d'2*4/2 \divisioMaxima
r4 b2*4/2 c'4 d'2*3/2 c'2*4/2 d'2*3/2 e'2 ~ e'2*4/2 \divisioMaior
d'2*6/2 ~ d'2*5/2 ~ d'4 \divisioMinima
c'2*3/2 b2*3/4 e'2*4/2 d'2*3/2 ~ d'4 a2*3/2 ~ a4 \finalis
r2*3/2 g'2 ~ g'2*3/2 fis'2*6/2 e'2 ~ e'2*3/2 fis'2 ~ fis'2 \divisioMaxima
d'2*5/2 e'2*4/2 d'2 c'2*5/2 d'2*3/2 a2 r2*3/2 g'2*3/2 ~ g'2*3/2 fis'2*3/2 \divisioMinima
e'2 ~ e'2*4/2 fis'2 ~ fis'2 \divisioMaxima
d'2*8/2 e'2*4/2 ~ e'2*3/2 ~ e'2 d'2 ~ \divisioMaxima
d'2 ~ d'2 ~ d'2*4/2 e'2*3/2 ~ e'2 d'2*3/2 a2 \finalis
}

tenorMusic = {
d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 c'4 ~ c'2*3/2 ~ c'4 ~ \divisioMaior
c'4 ~ c'2 ~ c'2*3/2 ~ c'2*5/2 ~ \divisioMinima
c'2*3/2 a2 ~ a2*4/2 ~ a4 \divisioMaxima
c'4 b2*5/2 a2*4/2 d'2*4/2 c'4 \divisioMaior
a2*3/2 fis4 g2*3/2 a2 ~ \divisioMinima
a2 ~ a2*4/2 e2 d2*4/2 \divisioMaxima
g4 ~ g2*5/2 ~ g2*3/2 ~ g2*4/2 ~ g2*3/2 ~ g2 a2*4/2 \divisioMaior
fis2*6/2 g2*5/2 ~ g4 ~ \divisioMinima
g2*3/2 ~ g2*3/4 ~ g2*4/2 ~ g2*4/2 ~ g2*3/2 fis4 \finalis
d'2*5/2 ~ d'2*3/2 ~ d'2*6/2 ~ d'2 c'2*3/2 d'2 ~ d'2 \divisioMaxima
fis2*5/2 g2*4/2 ~ g2 ~ g2*5/2 ~ g2*3/2 ~ g4 fis4 d'2*6/2 ~ d'2*3/2 ~ d'2*3/2 ~ \divisioMinima
d'2 c'2*4/2 d'2 ~ d'2 \divisioMaxima
fis2*8/2 a2*4/2 e2*3/2 fis2 ~ fis2 ~ \divisioMaxima
fis2 e2 fis2*4/2 a2*3/2 b2 ~ b2*3/2 g4 fis4 \finalis
}

bassMusic = {
r2*14/2 \divisioMaior
r4 b2 a2*3/2 e2*5/2 \divisioMinima
a2*3/2 g2 e2*4/2 d4 \divisioMaxima
a4 ~ a2*5/2 ~ a2*4/2 ~ a2*4/2 ~ a4 \divisioMaior
c2*3/2 ~ c4 ~ c2*3/2 ~ c2 ~ \divisioMinima
c2 a,2*4/2 ~ a,2 b,2*4/2 \divisioMaxima
e4 ~ e2*5/2 b,2*3/2 a,2*4/2 b,2*3/2 c2 ~ c2*4/2 \divisioMaior
b,2*6/2 ~ b,2*5/2 ~ b,4 \divisioMinima
a,2*3/2 e2*3/4 c2*4/2 b,2*4/2 d2*3/2 ~ d4 \finalis
b2*5/2 d'2*3/2 r2*6/2 r2*5/2 r2 b2 \divisioMaxima
d2*5/2 c2*4/2 b,2 a,2*5/2 b,2*3/2 d2 b2*6/2 d'2*6/2 \divisioMinima
r2*8/2 b2 \divisioMaxima
d2*8/2 c2*4/2 ~ c2*3/2 ~ c2 b,2 \divisioMaxima
d2 ~ d2 ~ d2*4/2 c2*3/2 e2 b,2*3/2 d2 \finalis
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
