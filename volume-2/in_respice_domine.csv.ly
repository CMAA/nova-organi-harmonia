\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.194
%(volume.page)

global = {
 \key d \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Respice Domine" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Respice Domine"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Respice Domine" }
    \line {}
  }
}

chantText = \lyricmode {
Re -- spi -- ce, 
\set stanza = " * " Dó -- mi -- ne, in te -- sta -- mén -- _ tum tu -- um, 
et á -- _ ni -- mas páu -- pe -- rum tu -- ó -- rum ne de -- re -- lín -- quas in fi -- nem: 
ex -- súr -- ge Dó -- mi -- ne, 
et jú -- di -- ca cau -- _ sam tu -- am: 
et ne o -- bli -- vis -- cá -- _ ris vo -- _ _ ces quæ -- rén -- _ ti -- um te. Ps. 
Ut quid De -- us re -- pu -- lí -- sti in fi -- nem: 
\set stanza = " * " 
i -- rá -- tus est fu -- ror tu -- us su -- per o -- ves pá -- scu -- æ tu -- æ? 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   d'4 ( a'4) a'4 a'4 ( c''4 b'4)  c''4 ( b'4 c''4 a'4) a'4 a'4 \divisioMinima
 a'4 a'4 ( b'4 a'4) g'4 ( fis'4) fis'4 ( g'4 \forceBreak
) b'4 ( c''4 a'4) g'4 ( e'4) e'4 ( fis'\prall g'4 d'4) d'4 \divisioMaior
 d'4 d'4 ( e'4) g'4 ( fis'4 g'4) g'4 g'4 fis'4 ( \once \tweak #'font-size #-4 g' ) g'4 g'4 ( g'4 g'4) e'4 \forceBreak
 g'4 ( g'4) e'4 ( fis'\prall g'4) \divisioMinima
 e'4 g'4 ( fis'4) g'4 ( a'4) a'4 ( a'4 g'4) e'4 g'4 fis'4 ( a'4 g'4 g'4) g'4 ( fis'4) \divisioMaxima
 g'4 fis'4 ( g'\prall a'4 b'4) a'4 \forceBreak
 c''4 ( c''4) d''4 ( c''4 a'4) a'4 \divisioMaior
 a'4 a'4 ( b'4 a'4) g'4 g'4 ( g'4 g'4) e'4 ( g'4) a'4 ( g'4 a'4) a'4 ( g'4 g'4) e'4 ( fis'\prall g'4 e'4) e'4 \divisioMaxima \forceBreak

 e'4 ( g'4) fis'4 ( g'4 a'4) a'4 a'4 ( b'4 a'4) g'4 g'4 ( g'4) ~ g'4 ( a'4) g'4 g'4 ( e'4) g'4 ( g'4) ~ g'4 ( a'4) g'4 \divisioMinima
 g'4 g'4 ( a'4 b'4) ~ b'4 ( a'4 \forceBreak
) a'4 ( g'4 g'4) e'4 ( fis'\prall g'4 \tiny fis' d' 4) e'4 ( d'4) \finalis
 d'4 ( g'4 fis'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 ( c''4) b'4 b'4 b'4 ( a'4) a'4 ( b'4) \divisioMaxima \forceBreak

 a'4 ( fis'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 a'4 a'4 ( b'\prall c''4) a'4 g'4 \forceBreak
 g'4 ( g'4 g'4) e'4 ( d'4) \finalis
  d'4 ( g'4 fis'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 ( c''4) b'4 b'4 \forceBreak
 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) \divisioMaxima
 a'4 ( fis'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 ( c''4) b'4 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) \divisioMaxima \forceBreak

 a'4 ( fis'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 ( b'\prall c''4) a'4 g'4 g'4 ( g'4 g'4) e'4 ( d'4) \finalis

}

altoMusic = {
d'2*3/2 ~ d'2*3/2 c'2*3/2 d'2 ~ d'4 ~ \divisioMinima
d'4 ~ d'2*3/2 b2 d'2 e'2*3/2 c'2 a2 ~ a2 ~ a4 ~ \divisioMaior
a4 b2 d'2*5/2 ~ d'2*3/2 ~ d'2*4/2 c'2 b2 ~ b4 ~ \divisioMinima
b4 d'2 ~ d'2 ~ d'2*3/2 b2 ~ b2*4/2 d'2 \divisioMaxima
r4 d'2 ~ d'2*3/2 e'2*5/2 ~ e'4 ~ \divisioMaior
e'4 d'2*4/2 ~ d'2*3/2 ~ d'2 e'2*3/2 ~ e'2*3/2 b2*4/2 ~ b4 \divisioMaxima
e'2 d'2 ~ d'2 ~ d'2*4/2 ~ d'2 c'2*3/2 b2 e'2 d'2 ~ d'4 ~ \divisioMinima
d'4 ~ d'2 ~ d'2*3/2 ~ d'2*3/2 c'2 ~ c'2*3/2 a2 \finalis
r2*3/2 g'2 ~ g'2 fis'2 e'2*4/2 fis'2 g'2 \divisioMaxima
d'2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2 ~ \divisioMinima
d'2*4/2 c'2*3/2 ~ c'2 b2*3/2 a2 d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ \divisioMinima
d'2 e'2 ~ e'2 fis'2 g'2 \divisioMaxima
d'2 ~ d'2 ~ d'2*4/2 ~ d'2*3/2 ~ \divisioMinima
d'4 c'2*3/2 d'2 ~ d'2 ~ \divisioMaxima
d'2 ~ d'2 ~ d'2*4/2 ~ d'2*3/2 c'2 d'2*3/2 a2 \finalis
}

tenorMusic = {
fis2*3/2 g2*3/2 ~ g2*3/2 ~ g2 fis4 ~ \divisioMinima
fis4 ~ fis2*3/2 g2 b2 a2*3/2 ~ a2 g2 e2 fis4 ~ \divisioMaior
fis4 g2 ~ g2*5/2 b2*3/2 ~ b2*4/2 a2 ~ a2 g4 ~ \divisioMinima
g4 a2 ~ a2 ~ a2*3/2 g2 ~ g2*4/2 b2 \divisioMaxima
r4 a2 fis2*3/2 a2*5/2 ~ a4 ~ \divisioMaior
a4 fis2*4/2 g2*3/2 b2 a2*3/2 b2*3/2 a2*4/2 g4 \divisioMaxima
b2 a2 fis2 g2*4/2 e2 ~ e2*3/2 ~ e2 ~ e2 g2 ~ g4 ~ \divisioMinima
g4 ~ g2 fis2*3/2 e2*3/2 g2 ~ g2*3/2 ~ g4 fis4 \finalis
r2*3/2 e'2 d'2 ~ d'2 c'2*4/2 d'2 ~ d'2 \divisioMaxima
a2 ~ a2*3/2 ~ a2*3/2 fis2 ~ \divisioMinima
fis2*4/2 e2*3/2 ~ e2 g2*3/2 ~ g4 fis4 g2*3/2 ~ g2*3/2 ~ g2*3/2 fis2*3/2 ~ \divisioMinima
fis2 a2 g2 d'2 ~ d'2 \divisioMaxima
a2 ~ a2 ~ a2*4/2 fis2*3/2 ~ \divisioMinima
fis4 e2*3/2 fis2 g2 \divisioMaxima
fis2 e2 fis2*4/2 e2*3/2 ~ e2 g2*3/2 ~ g4 fis4 \finalis
}

bassMusic = {
d2*3/2 g2*3/2 e2*3/2 d2 ~ d4 ~ \divisioMinima
d4 b,2*3/2 e2 ~ e2 c2*3/2 a,2 d2 ~ d2 ~ d4 ~ \divisioMaior
d4 g,2 b,2*5/2 ~ b,2*3/2 e2*4/2 ~ e2 ~ e2 ~ e4 ~ \divisioMinima
e4 d2 e2 fis2*3/2 g2 e2*4/2 b,2 \divisioMaxima
r4 d2 ~ d2*3/2 a,2*5/2 c4 ~ \divisioMaior
c4 d2*4/2 b,2*3/2 ~ b,2 c2*3/2 e2*3/2 ~ e2*4/2 ~ e4 \divisioMaxima
g2 d2 ~ d2 b,2*4/2 ~ b,2 a,2*3/2 d2 c2 ~ c2 b,4 ~ \divisioMinima
b,4 e2 d2*3/2 b,2*3/2 ~ b,2 a,2*3/2 d2 \finalis
r2*15/2 g2 \divisioMaxima
fis2 e2*3/2 fis2*3/2 d2 ~ \divisioMinima
d2*4/2 a,2*3/2 c2 e2*3/2 d2 r2*3/2 e2*3/2 d2*3/2 ~ d2*3/2 ~ \divisioMinima
d2 c2 ~ c2 d2 g2 \divisioMaxima
fis2 e2 fis2*4/2 d2*3/2 ~ \divisioMinima
d4 a,2*3/2 d2 g,2 \divisioMaxima
d2 ~ d2 ~ d2*4/2 a,2*3/2 ~ a,2 b,2*3/2 d2 \finalis
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
