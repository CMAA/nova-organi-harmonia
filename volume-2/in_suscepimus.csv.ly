\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.166
%(volume.page)

global = {
 \key f \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Suscepimus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Suscepimus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Suscepimus" }
    \line {}
  }
}

chantText = \lyricmode {
Su -- scé -- pi -- mus, 
\set stanza = " * " De -- us, mi -- se -- ri -- cór -- di -- am tu -- am 
in mé -- di -- o tem -- pli _ tu -- _ i: 
se -- cún -- dum no -- men tu -- um De -- us, 
i -- ta et laus tu -- _ a in fi -- nes _ ter -- _ ræ: 
ju -- stí -- ti -- a ple -- _ na est déx -- te -- ra _ tu -- a. Ps. 
Ma -- gnus Dó -- mi -- nus et lau -- dá -- bi -- lis ni -- mis: 
\set stanza = " * " 
in ci -- vi -- tá -- te De -- i no -- stri, in mon -- te san -- cto e -- jus. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. _ }

chantMusic = {
\tieDown   c'4 ( d'4)  d'4 ( a'4 bes'4) a'4 a'4 \divisioMinima
 a'4 ( c''4 a'4) g'4 ( a'4 g'4) \divisioMinima
 a'4 ( f'4) g'4 a'4 a'4 ( c''4 c''4 \forceBreak
) g'4 ( f'4) a'4 ( f'4 a'4) a'4 ( b'\prall c''4 a'4) a'4 \divisioMaior
 a'4 f'4 ( a'4 f'4 g'4) a'4 ( g'4) g'4 a'4 c''4 ( a'4) c''4 ( g'4) f'4 ( a'4 g'4 f'4) g'4 ( f'4) f'4 \divisioMaxima \forceBreak

 f'4 a'4 ( \once \tweak #'font-size #-4 g' ) c''4 c''4 ( e''4 d''4) c''4 c''4 ( c''4 c''4) c''4 c''4 ( d''4 c''4 a'4) a'4 \divisioMaior
 c''4 ( c''4) c''4 ( d''4 a'4) a'4 ( \once \tweak #'font-size #-4 b' ) a'4 ( g'4 \forceBreak
) a'4 c''4 ( c''4 a'4 b'\prall c''4 a'4) a'4 \divisioMinima
 c''4 f'4 ( g'4 a'4) c''4 ( a'4) c''4 ( g'4) f'4 ( a'4 g'4 f'4) g'4 ( f'4) f'4 ( e'4) \divisioMaxima
 d'4 f'4 ( f'4 g'4) f'4 f'4 \forceBreak
 f'4 ( g'4) a'4 ( g'4) g'4 ( f'4) f'4 \divisioMinima
 f'4 f'4 ( g'4) g'4 ( f'4) ~ f'4 ( d'4) d'4 ( e'\prall f'4 d'4) d'4 \finalis
 f'4 g'4 ( a'4) a'4 a'4 a'4 \forceBreak
 a'4 a'4 a'4 ( c''4) a'4 a'4 a'4 ( g'4) g'4 ( a'4) \divisioMaxima
 g'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima \forceBreak

 a'4 a'4 a'4 ( c''4 a'4) g'4 f'4 f'4 ( f'4 f'4) d'4 \finalis
  f'4 g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima \forceBreak

 a'4 a'4 a'4 ( c''4) a'4 a'4 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) \divisioMaxima
 g'4 ( f'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima \forceBreak

 a'4 a'4 ( c''4) a'4 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) \divisioMaxima
 g'4 ( f'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 ( c''4 a'4) g'4 f'4 f'4 ( f'4 f'4) d'4 ( c'4) d'4 ( f'4) \finalis

}

altoMusic = {
c'4 d'4 ~ d'2*4/2 ~ d'4 \divisioMinima
c'2*3/2 ~ c'2*3/2 ~ \divisioMinima
c'2*4/2 ~ c'2*3/2 ~ c'2 ~ c'2*3/2 f'2 ~ f'2 e'4 ~ \divisioMaior
e'4 d'2*4/2 ~ d'2*3/2 ~ d'4 c'2*4/2 ~ c'2 ~ c'2 ~ c'2 ~ c'4 \divisioMaxima
r4 c'2*3/2 e'2*4/2 f'2*4/2 g'2*4/2 f'4 \divisioMaior
g'2 f'2*3/2 e'2 ~ e'2*3/2 f'2 d'2*4/2 e'4 ~ \divisioMinima
e'4 c'2*3/2 ~ c'2 ~ c'2 ~ c'2*4/2 d'2 c'2 \divisioMaxima
r4 a2*5/2 c'2*4/2 ~ c'2 ~ c'4 \divisioMinima
bes4 a2*3/2 bes2*3/2 a2*4/2 ~ a4 \finalis
r4 g'2 f'2*3/2 ~ f'2 e'2*4/2 d'2 <e' d'>4 c'4 \divisioMaxima
d'2 ~ d'2*3/2 f'2*6/2 \divisioMinima
e'2 ~ e'2*3/2 d'2 bes2*3/2 a4 r4 g'2*3/2 f'2*3/2 ~ f'2*3/2 \divisioMinima
e'2 ~ e'2*4/2 d'2 <e' d'>4 c'4 \divisioMaxima
d'2 ~ d'2 ~ d'2*4/2 f'2*4/2 e'2*3/2 d'2 ~ d'4 c'4 \divisioMaxima
d'2*4/2 c'2*4/2 ~ c'2*3/2 ~ c'2 a2*3/2 g2 a2 \finalis
}

tenorMusic = {
g2 ~ g2*4/2 f4 ~ \divisioMinima
f2*3/2 e2*3/2 \divisioMinima
f2*4/2 g2*3/2 a2 f2*3/2 ~ f2 a2 ~ a4 ~ \divisioMaior
a4 ~ a2*4/2 e2*3/2 f4 e2*4/2 f2 a2 g2 a4 \divisioMaxima
r4 g2*3/2 a2*4/2 ~ a2*4/2 c'2*4/2 ~ c'4 \divisioMaior
a2 ~ a2*3/2 ~ a2 ~ a2*3/2 ~ a2 ~ a2*4/2 ~ a4 ~ \divisioMinima
a4 ~ a2*3/2 f2 e2 d2*4/2 ~ d2 g2 \divisioMaxima
r4 f2*5/2 ~ f2*4/2 e2 f4 ~ \divisioMinima
f4 ~ f2*3/2 g2*3/2 ~ g2*4/2 f4 \finalis
r4 e'2 d'2*3/2 ~ d'2 c'2*4/2 bes2 a2 \divisioMaxima
bes2 b2*3/2 c'2*6/2 ~ \divisioMinima
c'2 a2*3/2 ~ a2 g2*3/2 f4 r4 e'2*3/2 ~ e'2*3/2 d'2*3/2 ~ \divisioMinima
d'2 c'2*4/2 bes2 a2 \divisioMaxima
bes2 b2 a2*4/2 ~ a2*4/2 ~ a2*3/2 d2 e2 \divisioMaxima
d2*4/2 f2*4/2 ~ f2*3/2 e2 f2*3/2 e2 f2 \finalis
}

bassMusic = {
e2 d2*4/2 ~ d4 \divisioMinima
a,2*3/2 c2*3/2 \divisioMinima
r2*4/2 e2*3/2 ~ e2 ~ e2*3/2 d2 ~ d2 c4 ~ \divisioMaior
c4 ~ c2*4/2 b,2*3/2 a,4 ~ a,2*4/2 d2 ~ d2 e2 f4 \divisioMaxima
r4 e2*3/2 c2*4/2 d2*4/2 e2*4/2 f4 \divisioMaior
e2 d2*3/2 ~ d2 c2*3/2 d2 f2*4/2 c4 ~ \divisioMinima
c4 a,2*3/2 ~ a,2 ~ a,2 d2*4/2 bes,2 c2 \divisioMaxima
r4 d2*5/2 a,2*4/2 c2 d4 ~ \divisioMinima
d4 ~ d2*3/2 g,2*3/2 d2*4/2 ~ d4 \finalis
r2*16/2 \divisioMaxima
r2 g2*3/2 f2*6/2 \divisioMinima
c2 ~ c2*3/2 d2 ~ d2*3/2 ~ d4 r2*10/2 \divisioMinima
r2*10/2 \divisioMaxima
r2 g2 f2*4/2 d2*4/2 c2*3/2 bes,2 a,2 \divisioMaxima
bes,2*4/2 f,2*4/2 a,2*3/2 c2 d2*3/2 ~ d2 ~ d2 \finalis
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
