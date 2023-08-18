\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.250
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Si iniquitates" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Si iniquitates"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Si iniquitates" }
    \line {}
  }
}

chantText = \lyricmode {
Si in -- i -- qui -- tá -- tes 
\set stanza = " * " ob -- ser -- vá -- ve -- ris Dó -- mi -- ne, 
Dó -- mi -- ne quis sus -- ti -- né -- bit? 
qui -- a a -- pud te pro -- pi -- ti -- á -- _ ti -- o est, _ 
De -- us _ _ Is -- ra -- el. Ps. 
De pro -- fún -- dis cla -- má -- vi ad te Dó -- mi -- ne: 
\set stanza = " * " 
Dó -- mi -- ne ex -- áu -- di vo -- cem me -- am. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   d'4 d'4 ( c'4) f'4 g'4 ( bes'4) a'4 ( bes'4) bes'4 \divisioMinima
 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4 bes'4) g'4 ( f'4) f'4 bes'4 ( bes'4 \forceBreak
) g'4 ( c''4 bes'4 a'4 bes'4) a'4 ( a'4 bes'4) \divisioMaior
 g'4 ( c''4) c''4 c''4 c''4 bes'4 ( d''4 c''4 d''4) bes'4 ( a'4) a'4 ( c''4 bes'4 a'4) a'4 ( a'4 bes'4) \divisioMaxima \forceBreak

 g'4 ( bes'4 a'4) bes'4 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4 bes'4) \divisioMinima
 g'4 ( f'4) f'4 ( ees'4) g'4 g'4 bes'4 ( bes'4 f'4) ees'4 ( f'4) f'4 f'4 ( g'4 f'4 f'4) d'4 ( ees'4 d'4) \divisioMaior \forceBreak

 d'4 ( ees'4 f'4) f'4 bes'4 ( bes'4 g'4) a'4 ( f'4 g'\prall a'4 g'4 f'4) d'4 d'4 ( f'4 ees'4 ees'4) ees'4 ( d'4) \finalis
 f'4 g'4 ( bes'4) bes'4 bes'4 bes'4 \forceBreak
 bes'4 bes'4 c''4 bes'4 bes'4 a'4 ( g'4) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4 \forceBreak
) g'4 a'4 f'4 ( g'4) \finalis
  f'4 g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 c''4 bes'4 bes'4 \forceBreak
 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 c''4 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4 bes'4) \divisioMaxima \forceBreak

 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 a'4 f'4 ( g'4) \finalis

}

altoMusic = {
r2 c'4 ~ c'4 d'2 ~ d'2 ~ d'4 ~ \divisioMinima
d'4 f'2 ees'2*3/2 d'2*3/2 ~ d'2 ees'2*5/2 d'2*3/2 \divisioMaior
ees'2*3/2 g'2 f'2*4/2 ~ f'2 d'2*4/2 ~ d'2*3/2 ~ \divisioMaxima
d'2*3/2 ees'2 ~ ees'2 f'2*3/2 \divisioMinima
ees'2 ~ ees'2 ~ ees'2 d'2*3/2 c'2*3/2 ~ c'2*4/2 bes2*3/2 ~ \divisioMaior
bes2*4/2 ~ bes2*3/2 c'2*6/2 bes4 a2*4/2 bes2 \finalis
r4 d'2 ~ d'2*3/2 ~ d'2 f'2 ~ f'4 d'2 ~ d'2*3/2 ~ \divisioMaxima
d'2 ~ d'2*4/2 ~ d'4 ees'2*3/2 d'2 ~ d'4 c'4 ~ c'4 bes4 r4 d'2*3/2 ~ d'2*6/2 ~ \divisioMinima
d'2 f'2*3/2 ~ f'2 d'2*3/2 ~ \divisioMaxima
d'2 ~ d'2 ~ d'2*4/2 ~ d'2*4/2 ~ d'2 c'2 bes2*3/2 \divisioMaxima
c'2 bes2 d'2*4/2 ees'2*3/2 d'2 ~ d'4 c'4 ~ c'4 bes4 \finalis
}

tenorMusic = {
r4 a2*3/2 bes2 c'2 bes4 ~ \divisioMinima
bes4 ~ bes2 ~ bes2*3/2 a2*3/2 g2 ~ g2*5/2 ~ g2*3/2 ~ \divisioMaior
g2*3/2 ~ g2 bes2*4/2 c'2 ~ c'2*4/2 bes2*3/2 \divisioMaxima
g2*3/2 ~ g2 bes2 ~ bes2*3/2 ~ \divisioMinima
bes2 g2 ees2 f2*3/2 g2*3/2 f2*4/2 ~ f2*3/2 \divisioMaior
d2*4/2 ~ d2*3/2 f2*6/2 ~ f4 c2*4/2 g2 \finalis
r4 bes2 ~ bes2*3/2 ~ bes2 ~ bes2 c'4 ~ c'2 bes2*3/2 \divisioMaxima
f2 d2*4/2 g4 ~ g2*3/2 a2 f2 d2 r4 bes2*3/2 ~ bes2*6/2 ~ \divisioMinima
bes2 ~ bes2*3/2 c'2 bes2*3/2 \divisioMaxima
f2 d2 g2*4/2 ~ g2*3/2 ~ \divisioMinima
g4 f2 ~ f2 d2*3/2 ~ \divisioMaxima
d2 ~ d2 g2*4/2 ~ g2*3/2 a2 f2 d2 \finalis
}

bassMusic = {
r2*4/2 g2 ~ g2 ~ g4 ~ \divisioMinima
g4 d2 c2*3/2 ~ c2*3/2 bes,2 c2*5/2 g,2*3/2 \divisioMaior
c2*3/2 ees2 d2*4/2 ~ d2 g2*4/2 ~ g2*3/2 \divisioMaxima
bes,2*3/2 c2 ~ c2 d2*3/2 ~ \divisioMinima
d2 ~ d2 c2 bes,2*3/2 ~ bes,2*3/2 a,2*4/2 bes,2*3/2 \divisioMaior
a,2*4/2 g,2*3/2 f,2*6/2 g,4 ~ g,2*4/2 ~ g,2 \finalis
bes4 ~ bes2 g2*3/2 ~ g2 d2 ~ d4 g2 ~ g2*3/2 \divisioMaxima
d2 bes,2*4/2 ~ bes,4 c2*3/2 d2 ~ d2 g,2 bes4 ~ bes2*3/2 g2*6/2 ~ \divisioMinima
g2 d2*3/2 ~ d2 g2*3/2 \divisioMaxima
d2 bes,2 ~ bes,2*4/2 g,2*3/2 ~ \divisioMinima
g,4 d2 ~ d2 g,2*3/2 ~ \divisioMaxima
g,2 ~ g,2 ~ g,2*4/2 c2*3/2 d2 ~ d2 g,2 \finalis
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
        "III"
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
