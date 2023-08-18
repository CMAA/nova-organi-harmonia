\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.222
%(volume.page)

global = {
 \key g \major
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Exsultate Deo" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Exsultate Deo"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Exsultate Deo" }
    \line {}
  }
}

chantText = \lyricmode {
Ex -- sul -- tá -- _ _ te De -- o 
\set stanza = " * " ad -- ju -- tó -- ri no -- stro: 
ju -- bi -- lá -- te De -- o Ja -- cob: 
sú -- mi -- te psal -- _ mum ju -- cún -- dum cum cí -- tha -- ra: 
cá -- ni -- te in -- í -- ti -- o men -- sis tu -- ba: 
qui -- a præ -- cé -- ptum in Is -- ra -- el est, 
et ju -- dí -- ci -- um De -- o Ja -- _ cob. Ps. 
Te -- sti -- mó -- ni -- um in Jo -- seph pó -- su -- it il -- lud, cum ex -- í -- ret de ter -- ra Æ -- gý -- pti: 
\set stanza = " * " 
lin -- guam, quam non nó -- ve -- rat, au -- dí -- vit. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   e'4 e'4 ( c'4 d'4) e'4 ( d'4) g'4 ( g'4) ~ g'4 ( a'4) g'4 g'4 ( a'4) g'4 \divisioMinima
 g'4 g'4 g'4 ( a'4 g'4) g'4 ( fis'4 a'4) a'4 ( b'4 g'4 \forceBreak
) g'4 ( a'4 g'4) \divisioMaxima
 g'4 a'4 ( b'4 a'4) b'4 g'4 g'4 ( b'4 a'4 g'4) g'4 ( g'4) g'4 ( a'4 g'4) g'4 \divisioMaxima
 g'4 ( g'4 a'4) g'4 g'4 g'4 ( a'4 g'4) ~ g'4 ( g'4 \forceBreak
) e'4 ( d'4) e'4 ( c'4 d'4) g'4 ( g'4 \once \tweak #'font-size #-4 a' ) g'4 \divisioMinima
 g'4 ( fis'4 a'4) a'4 ( b'4 g'4) g'4 ( a'4 g'4) g'4 \divisioMaxima
 g'4 ( g'4 a'4) g'4 g'4 g'4 \forceBreak
 g'4 g'4 g'4 ( a'4) g'4 ( \once \tweak #'font-size #-4 e' ) g'4 a'4 ( c''4 b'4) b'4 \divisioMaxima
 g'4 ( e'4) g'4 b'4 b'4 ( c''\prall d''4) a'4 g'4 g'4 ( fis'4) a'4 a'4 ( c''4 b'4 a'4 \forceBreak
) a'4 ( g'4) \divisioMaior
 g'4 g'4 g'4 ( g'4 g'4) e'4 ( d'4) d'4 e'4 ( c'4 d'4) g'4 ( g'4) g'4 ( fis'4) a'4 ( b'4 g'4) g'4 \finalis
 g'4 ( a'4) a'4 ( g'4) a'4 ( b'4) b'4 \forceBreak
 b'4 b'4 b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 b'4 b'4 b'4 b'4 a'4 c''4 b'4 \forceBreak
 a'4 g'4 \divisioMaxima
 b'4 ( d''4) a'4 g'4 g'4 g'4 a'4 g'4 ( e'4) g'4 a'4 g'4 \finalis
  g'4 ( a'4) a'4 ( g'4) a'4 ( b'4) b'4 b'4 b'4 \forceBreak
 b'4 b'4 b'4 \divisioMinima
 b'4 a'4  cis''4 b'4 b'4 a'4 g'4 \divisioMaxima
 g'4 a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima \forceBreak

 a'4  cis''4 b'4 a'4 g'4 \divisioMaxima
 g'4 a'4 ( b'4) b'4 ( d''4) a'4 g'4 g'4 a'4 g'4 ( e'4) g'4 a'4 g'4 \finalis

}

altoMusic = {
r2*5/2 d'4 ~ d'2 r2*3/2 d'2 ~ d'4 ~ \divisioMinima
d'2 e'2*3/2 d'2*3/2 ~ d'2*3/2 b2*3/2 \divisioMaxima
r4 e'2*3/2 d'2 c'2*4/2 ~ c'2 ~ c'2*3/2 b4 ~ \divisioMaxima
b2*3/2 ~ b2 c'2*3/2 b2 ~ b2 c'2*3/2 d'2*4/2 ~ \divisioMinima
d'2*3/2 fis'2*3/2 d'2*3/2 ~ d'4 ~ \divisioMaxima
d'2*3/2 e'2*3/2 ~ e'2 ~ e'2 ~ e'2*3/2 ~ e'2*3/2 ~ e'4 \divisioMaxima
b2*4/2 d'2*3/2 ~ d'2 ~ d'2*3/2 e'2*4/2 ~ e'2 \divisioMaior
d'2 c'2*3/2 b2*3/2 a2 d'4 ~ d'2 ~ d'2 ~ d'2*3/2 ~ d'4 \finalis
r2 d'2 g'2*3/2 ~ g'2*4/2 ~ g'2*3/2 ~ g'2 ~ \divisioMinima
g'2 ~ g'2*3/2 e'2*3/2 d'2 \divisioMaxima
fis'2*3/2 e'2*4/2 ~ e'2*3/2 d'2 r2 d'2 ~ d'2 g'2*3/2 ~ g'2*3/2 \divisioMinima
e'2 ~ e'2*3/2 d'2 \divisioMaxima
e'4 ~ e'2 ~ e'2*4/2 g'2*3/2 \divisioMinima
e'2*3/2 ~ e'2 \divisioMaxima
b4 d'2 ~ d'2*3/2 ~ d'4 c'2 ~ c'2*3/2 ~ c'4 b4 \finalis
}

tenorMusic = {
r2*4/2 c'2 b2 c'2*3/2 ~ c'2 b4 ~ \divisioMinima
b2 ~ b2*3/2 a2*3/2 fis2*3/2 g2*3/2 \divisioMaxima
r4 g2*3/2 ~ g2 e2*4/2 c2 d2*3/2 ~ d4 ~ \divisioMaxima
d2*3/2 e2 ~ e2*3/2 ~ e2 g2 ~ g2*3/2 ~ g2*4/2 \divisioMinima
a2*3/2 d'2*3/2 c'2*3/2 b4 ~ \divisioMaxima
b2*3/2 ~ b2*3/2 c'2 ~ c'2 b2*3/2 a2*3/2 g4 ~ \divisioMaxima
g2*4/2 ~ g2*3/2 b2 a2*3/2 ~ a2*4/2 b2 \divisioMaior
e2 ~ e2*3/2 fis2*3/2 g2*3/2 ~ g2 a2 c'2*3/2 b4 ~ \finalis
b2 ~ b2 c'2*3/2 d'2*4/2 ~ d'2*3/2 e'2 ~ \divisioMinima
e'2 ~ e'2*3/2 r2*5/2 \divisioMaxima
b2*3/2 ~ b2*4/2 c'2*3/2 ~ c'4 b4 ~ b2 ~ b2 c'2 d'2*3/2 ~ d'2*3/2 ~ \divisioMinima
d'2 c'2*3/2 b2 ~ \divisioMaxima
b4 ~ b2 ~ b2*4/2 ~ b2*3/2 \divisioMinima
d'4 c'2 b2 \divisioMaxima
r4 fis2 ~ fis2*3/2 g4 ~ g2 e2*3/2 d2 \finalis
}

bassMusic = {
r2*8/2 a2*3/2 g2 ~ g4 \divisioMinima
fis2 e2*3/2 b,2*3/2 ~ b,2*3/2 e2*3/2 \divisioMaxima
r4 c2*3/2 b,2 ~ b,2*4/2 a,2 g,2*3/2 ~ g,4 \divisioMaxima
fis,2*3/2 e,2 a,2*3/2 g,2 ~ g,2 a,2*3/2 b,2*4/2 \divisioMinima
d2*3/2 ~ d2*3/2 g2*3/2 ~ g4 \divisioMaxima
fis2*3/2 e2*3/2 ~ e2 d2 ~ d2*3/2 c2*3/2 e4 ~ \divisioMaxima
e2*4/2 b,2*3/2 ~ b,2 d2*3/2 c2*4/2 e2 ~ \divisioMaior
e2 a,2*3/2 b,2*3/2 c2*3/2 b,2 d2 g2*3/2 ~ g4 ~ \finalis
g2 ~ g2 ~ g2*3/2 ~ g2*4/2 fis2*3/2 e2 \divisioMinima
r2 d'2*3/2 c'2*3/2 b2 \divisioMaxima
d2*3/2 e2*4/2 c2*3/2 g2 ~ g2 ~ g2 ~ g2 ~ g2*3/2 e2*3/2 \divisioMinima
a2 ~ a2*3/2 b2 \divisioMaxima
e4 fis2 g2*4/2 e2*3/2 \divisioMinima
b4 a2 e2 ~ \divisioMaxima
e4 d2 b,2*3/2 e4 ~ e2 c2*3/2 g,2 \finalis
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
        "VI."
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
