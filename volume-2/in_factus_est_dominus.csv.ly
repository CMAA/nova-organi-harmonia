\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.128
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Factus est Dominus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Factus est Dominus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Factus est Dominus" }
    \line {}
  }
}

chantText = \lyricmode {
Fa -- ctus est 
\set stanza = " * " Dó -- mi -- nus pro -- té -- ctor me -- _ us, 
et e -- dú -- xit me in la -- ti -- tú -- di -- nem: 
sal -- vum me fe -- cit, 
quó -- ni -- am _ vó -- _ _ lu -- it me. Ps. 
Dí -- li -- gam te Dó -- mi -- ne for -- ti -- tú -- do me -- a: 
\set stanza = " * " 
Dó -- mi -- nus fir -- ma -- mén -- tum me -- um, et re -- fú -- gi -- um me -- um, et li -- be -- rá -- tor me -- us. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown    d'4 ( a'4 bes'4) a'4 a'4  a'4 g'4 ( f'4) f'4 \divisioMinima
 g'4 ( f'4 g'4) a'4 ( g'4 a'4)  a'4 ( g'4 \once \tweak #'font-size #-4 bes' )  bes'4 ( g'4) bes'4 ( a'4) a'4 \divisioMaior \forceBreak

 a'4 c''4 ( c''4) c''4 ( d''4) a'4 ( b'4) a'4 \divisioMinima
 a'4 c''4 ( c''4) d''4 ( c''4 b'4 c''4) a'4 a'4 ( b'4 a'4) a'4 \divisioMaxima
 a'4 g'4 f'4 ( g'4 a'4 \forceBreak
) g'4 ( a'4 f'4 g'4) d'4 \divisioMaior
 f'4 f'4 ( e'4) f'4 ( g'4 f'4) e'4 ( f'4 d'4) f'4 ( a'4.) g'4 ( a'4 g'4.) e'4 ( f'4 g'4 a'4) g'4 ( a'4 f'4 g'4) d'4 ( e'\prall f'4 \tiny e' d' 4) d'4 \finalis \forceBreak

 f'4 g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 ( c''4) a'4 a'4 ( g'4) g'4 ( a'4) \divisioMaxima
 g'4 ( f'4) g'4 ( a'4 \forceBreak
) a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 \forceBreak
 a'4 ( c''4 a'4) g'4 f'4 f'4 ( f'4 f'4) d'4 \finalis
  f'4 g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima \forceBreak

 a'4 a'4 a'4 ( c''4) a'4 a'4 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) \divisioMaxima
 g'4 ( f'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima \forceBreak

 a'4 a'4 ( c''4) a'4 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) \divisioMaxima
 g'4 ( f'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 ( c''4 a'4) g'4 f'4 f'4 ( f'4 f'4) d'4 \finalis

}

altoMusic = {
d'2*5/2 ~ d'2*4/2 ~ \divisioMinima
d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2 f'2*3/2 ~ \divisioMaior
f'4 a'2 f'2 e'2 ~ e'4 ~ \divisioMinima
e'4 a'2 g'2*4/2 f'4 e'2*3/2 ~ e'4 \divisioMaxima
c'2 d'2*3/2 ~ d'2*5/2 ~ \divisioMaior
d'4 ~ d'2*5/2 c'2 d'4 ~ d'2*5/4 ~ d'2*7/4 e'2*4/2 d'2*4/2 bes2 ~ bes2*3/2 a4 \finalis
f'4 ~ f'2 ~ f'2 ~ f'2*5/2 e'2*3/2 d'2 <e' d'>4 c'4 \divisioMaxima
d'2 ~ d'2 f'2*3/2 ~ f'2 ~ f'2 ~ f'2 e'2*3/2 ~ e'2 ~ \divisioMinima
e'2 ~ e'2*3/2 d'2 bes2*3/2 a4 f'4 ~ f'2*3/2 ~ f'2*3/2 ~ f'2*3/2 ~ \divisioMinima
f'2 e'2*4/2 d'2 <e' d'>4 c'4 \divisioMaxima
d'2 ~ d'2 ~ d'2*4/2 f'2*3/2 ~ \divisioMinima
f'4 e'2*3/2 d'2 ~ d'4 c'4 \divisioMaxima
d'2*4/2 c'2*4/2 ~ c'2*3/2 ~ c'2 bes2*3/2 a4 \finalis
}

tenorMusic = {
r2*6/2 a2*3/2 \divisioMinima
bes2*3/2 a2*3/2 c'2*3/2 bes2 d'2*3/2 ~ \divisioMaior
d'4 e'2 d'2 ~ d'2 c'4 ~ \divisioMinima
c'4 a2 ~ a2*4/2 ~ a4 ~ a2*3/2 ~ a4 ~ \divisioMaxima
a2 ~ a2*3/2 bes2*5/2 \divisioMaior
b4 a2*5/2 g2*3/2 a2*5/4 bes2*7/4 c'2*4/2 a2*4/2 ~ a2 g2*3/2 f4 \finalis
r2*3/2 e'2 d'2*5/2 c'2*3/2 bes2 a2 \divisioMaxima
bes2 ~ bes2 c'2*3/2 ~ c'2 d'2 a2 ~ a2*3/2 ~ a2 \divisioMinima
c'2 a2*3/2 ~ a2 g2*3/2 f4 r2*10/2 \divisioMinima
r2*10/2 \divisioMaxima
bes2 ~ bes2 a2*4/2 ~ a2*4/2 ~ a2*3/2 d2 e2 \divisioMaxima
d2*4/2 f2*4/2 e2*3/2 a2 g2*3/2 f4 \finalis
}

bassMusic = {
r2*5/2 d4 ~ d2*3/2 \divisioMinima
g2*3/2 f2*3/2 g2*3/2 ~ g2 d2*3/2 ~ \divisioMaior
d4 a2 ~ a2 ~ a2 ~ a4 \divisioMinima
g4 f2 e2*4/2 d4 ~ d2*3/2 c4 \divisioMaxima
f2 d2*3/2 bes,2*5/2 \divisioMaior
d4 ~ d2*5/2 ~ d2*3/2 c2*5/4 bes,2*7/4 a,2*4/2 d2*4/2 ~ d2 ~ d2*3/2 ~ d4 \finalis
r2*17/2 \divisioMaxima
r2 g2 f2*3/2 e2 d2 ~ d2 ~ d2*3/2 c2 ~ \divisioMinima
c2 ~ c2*3/2 d2 ~ d2*3/2 ~ d4 r2*4/2 e'2*3/2 d'2*3/2 ~ \divisioMinima
d'2 c'2*4/2 bes2 a2 \divisioMaxima
r2 g2 f2*4/2 d2*3/2 ~ \divisioMinima
d4 c2*3/2 bes,2 a,2 \divisioMaxima
bes,2*4/2 f,2*4/2 a,2*3/2 ~ a,2 d2*3/2 ~ d4 \finalis
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
