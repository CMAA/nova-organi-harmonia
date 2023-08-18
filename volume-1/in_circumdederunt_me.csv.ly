\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.131
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Circumdederunt me" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Circumdederunt me"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Circumdederunt me" }
    \line {}
  }
}

chantText = \lyricmode {
Cir -- cum -- de -- de -- runt _ me 
\set stanza = " * " gé -- mi -- tus mor -- tis, 
do -- ló -- res in -- fér -- ni cir -- cum -- de -- dé -- _ runt me: _ 
et in tri -- bu -- la -- ti -- ó -- ne me -- a 
in -- vo -- cá -- vi Dó -- mi -- num, 
et ex -- au -- dí -- vit de tem -- plo san -- cto su -- _ o 
vo -- _ cem me -- _ am. Ps. 
Dí -- li -- gam te Dó -- mi -- ne, for -- ti -- tú -- do me -- a: 
\set stanza = " * " 
Dó -- mi -- nus fir -- ma -- mén -- tum me -- um, et re -- fú -- gi -- um me -- um, et li -- be -- rá -- tor me -- us. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. _ }

chantMusic = {
\tieDown   ees'4 ( \once \tweak #'font-size #-4 g' ) g'4 g'4 g'4 g'4 ( f'4) ~ f'4 ( g'4) ees'4 \divisioMinima
 g'4 ( bes'4) g'4 bes'4 ( bes'4) bes'4 ( \once \tweak #'font-size #-4 c'' ) bes'4 \divisioMaior
 bes'4 bes'4 ( c''4 bes'4 \forceBreak
) bes'4 ( a'4) g'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( \once \tweak #'font-size #-4 a' ) a'4 \divisioMinima
 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( c''4 bes'4 f'4) g'4 ( bes'4 a'4 bes'4) g'4 ( bes'4 f'4) ~ f'4 ( ees'4) ees'4  ees'4 ( g'4.) f'4 ( aes'4 g'4 ees'4) \divisioMaxima \forceBreak

 ees'4 ( g'4) g'4 g'4 ( f'4 g'4) g'4 g'4 f'4 ( g'4) ees'4 ( f'4 g'4) g'4 g'4 ( f'4 g'4 ees'4) ees'4 \divisioMaior
 ees'4 f'4 ( g'4 f'4) g'4 ( bes'4 c''4) bes'4 ( c''4 f'4 g'4 \forceBreak
) g'4 ( f'4) bes'4 bes'4 ( c''4 g'4) \divisioMaxima
 g'4 bes'4 ( bes'4) bes'4 bes'4 ( c''4 bes'4) bes'4 ( a'4) \divisioMinima
 f'4 g'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 bes'4 a'4 ( bes'4 \forceBreak
) g'4 ( bes'4 f'4) ~ f'4 ( ees'4 f'4) f'4 ( ees'4) \divisioMaior
 ees'4 ( f'\prall g'4 f'4 g'4) bes'4 ( bes'4 f'4 g'4) f'4 ( g'4 f'4) ees'4 ( f'4) g'4 ( f'4 ees'4 f'4) f'4 ( ees'4) \finalis
 ees'4 g'4 bes'4 \forceBreak
 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 c''4 c''4 bes'4 \divisioMaxima
 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \forceBreak
 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 bes'4 c''4 a'4 bes'4 g'4 \finalis
  ees'4 g'4 bes'4 bes'4 bes'4 bes'4 \forceBreak
 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 bes'4 bes'4 c''4 c''4 bes'4 \divisioMaxima
 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima \forceBreak

 bes'4 bes'4 c''4 c''4 bes'4 \divisioMaxima
 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 c''4 a'4 bes'4 g'4 ( f'4) g'4 ( f'4 ees'4 f'4) \finalis

}

altoMusic = {
bes2*4/2 c'2 ~ c'2*3/2 ~ c'4 \divisioMinima
ees'2*3/2 f'2 d'2*3/2 ~ \divisioMaior
d'4 g'2*3/2 f'2 ~ f'2 ~ f'2 ~ f'4 \divisioMinima
d'2*6/2 ~ d'2*4/2 ~ d'2 ~ d'2*4/2 c'2*5/4 ~ c'2*3/2 bes4 \divisioMaxima
g2*3/2 c'2*5/2 ~ c'2 bes2*4/2 ~ bes2*4/2 g4 \divisioMaior
c'4 ~ c'2*3/2 d'2*3/2 ~ d'2*4/2 ~ d'2*3/2 ~ d'2*3/2 \divisioMaxima
r4 f'2*3/2 ~ f'2*3/2 ~ f'2 ~ \divisioMinima
f'4 d'2*4/2 ~ d'2 ees'2 c'2*4/2 ~ c'2 \divisioMaior
bes2*5/2 ~ bes2*4/2 ~ bes2*3/2 c'2 ~ c'2*4/2 bes2 \finalis
r4 g'2*3/2 ~ g'2*5/2 ~ g'2 ~ g'2 \divisioMaxima
d'2*7/2 ees'2 ~ ees'2*5/2 f'2 ~ \divisioMinima
f'2*3/2 ~ f'2 d'2 r4 g'2*5/2 ~ g'2*3/2 ~ \divisioMinima
g'2 ~ g'2*3/2 ~ g'2 \divisioMaxima
ees'2*6/2 f'2*6/2 g'2 ~ \divisioMaxima
g'2 d'2*5/2 ees'2 d'2*3/2 bes2*3/2 ~ bes4 \finalis
}

tenorMusic = {
g2*6/2 ~ g2*3/2 ~ g4 ~ \divisioMinima
g2*3/2 f2 g2*3/2 \divisioMaior
d'4 ~ d'2*3/2 c'2 bes2 a2 f4 ~ \divisioMinima
f2 g2*4/2 bes2*4/2 a2 g2*4/2 ~ g2*5/4 aes2*3/2 g4 \divisioMaxima
r2*3/2 d2*5/2 ees2 ~ ees2*4/2 d2*4/2 ees4 \divisioMaior
r4 d2*3/2 ~ d4 g'2 a2*4/2 bes2*3/2 ~ bes2*3/2 ~ \divisioMaxima
bes4 ~ bes2*3/2 ~ bes2*3/2 c'2 ~ \divisioMinima
c'4 ~ c'2*4/2 bes2 ~ bes2 g2*4/2 ~ g2 \divisioMaior
ees2*5/2 d2*4/2 g2*3/2 ~ g2 aes2*4/2 a4 g4 \finalis
ees'2*4/2 ~ ees'2*5/2 ~ ees'2 d'2 \divisioMaxima
bes2*7/2 ~ bes2 ~ bes2*5/2 ~ bes2 ~ \divisioMinima
bes2*3/2 a4 c'4 ~ c'4 bes4 r4 ees'2*5/2 ~ ees'2*3/2 ~ \divisioMinima
ees'2 ~ ees'2*3/2 d'2 \divisioMaxima
bes2*6/2 ~ bes2*6/2 ~ bes2 \divisioMaxima
c'2 bes2*5/2 a2 g2*3/2 ~ g2*3/2 d4 \finalis
}

bassMusic = {
ees2*6/2 d2*3/2 c4 ~ \divisioMinima
c2*3/2 d2 g2*3/2 ~ \divisioMaior
g4 f2*3/2 ~ f2 d2 ~ d2 ~ d4 \divisioMinima
c2 bes,2*4/2 ~ bes,2*4/2 ~ bes,2 c2*4/2 aes,2*5/4 ~ aes,2*3/2 ees4 \divisioMaxima
c2*3/2 ~ c2*5/2 ~ c2 g,2*4/2 bes,2*4/2 c4 ~ \divisioMaior
c4 ~ c2*3/2 bes,2*3/2 ~ bes,2*4/2 ~ bes,2*3/2 g2*3/2 \divisioMaxima
ees4 ~ ees2*3/2 d2*3/2 ~ d2 ~ \divisioMinima
d4 g2*4/2 ~ g2 ees2 d2*4/2 c2 \divisioMaior
g,2*5/2 ~ g,2*4/2 ~ g,2*3/2 c2 aes,2*4/2 ees2 \finalis
r2*4/2 d'2*5/2 c'2 g2 \divisioMaxima
bes,2*7/2 c2 ~ c2*5/2 d2 ~ \divisioMinima
d2*3/2 ~ d2 g2 r2*6/2 d'2*3/2 ~ \divisioMinima
d'2 c'2*3/2 g2 \divisioMaxima
c2*6/2 d2*6/2 ees2 ~ \divisioMaxima
ees2 g2*5/2 ~ g2 ~ g2*3/2 g,2*3/2 bes,4 \finalis
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
        "V"
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
