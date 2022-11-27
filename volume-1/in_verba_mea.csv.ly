\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.246
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Verba mea" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Verba mea"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Verba mea" }
    \line {}
  }
}

chantText = \lyricmode {
Ver -- ba me -- a 
\set stanza = " * " áu -- ri -- bus pér -- ci -- pe Dó -- mi -- ne, 
in -- tél -- li -- ge _ _ 
cla -- mó -- rem me -- um: 
in -- tén -- de vo -- ci o -- ra -- ti -- ó -- nis me -- æ. Ps. 
Quó -- ni -- am ad te o -- rá -- bo, Dó -- mi -- ne: 
\set stanza = " * " 
ma -- ne ex -- áu -- di -- es vo -- cem me -- am. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. _ }

chantMusic = {
\tieDown   ees'4 ees'4 ees'4 g'4 \divisioMinima
 bes'4 g'4 bes'4 ( bes'4) bes'4 ( bes'4 bes'4) g'4 g'4 g'4 ( a'\prall bes'4) f'4 ( g'4 f'4 ees'4 f'4) f'4 ( ees'4) \divisioMaxima \forceBreak

 ees'4 f'4 ( g'4 f'4 g'4) g'4  g'4 ( f'4) g'4 ( aes'4 f'4) ~ f'4 ( ees'4) \divisioMaior
 ees'4 ( g'4) g'4 ( a'\prall bes'4 a'4 g'4) bes'4 ( bes'4) bes'4 ( c''4 d''4 c''4 bes'4 c''4) c''4 ( bes'4) \divisioMaxima \forceBreak

 bes'4 bes'4 bes'4 ( c''4) c''4 ( bes'4 bes'4) g'4 \divisioMinima
 g'4 ees'4 f'4 ( g'4) g'4 ( a'\prall bes'4 a'4 f'4)  g'4 ( bes'4 g'4 f'4 g'\prall aes'4 g'4 f'4 \forceBreak
) ees'4 ( f'4 g'4 f'4 ees'4 f'4) f'4 ( ees'4) \finalis
 ees'4 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 c''4 c''4 bes'4 bes'4 \divisioMaxima \forceBreak

 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 c''4 a'4 bes'4 g'4 \finalis
  ees'4 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima \forceBreak

 bes'4 bes'4 bes'4 bes'4 c''4 c''4 bes'4 \divisioMaxima
 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima \forceBreak

 bes'4 bes'4 c''4 c''4 bes'4 \divisioMaxima
 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 c''4 a'4 bes'4 g'4 ( f'4) g'4 ( f'4 ees'4 f'4) \finalis

}

altoMusic = {
ees'2 ~ ees'2 ~ \divisioMinima
ees'2 ~ ees'2 d'2*5/2 ees'2*3/2 r2*5/2 bes2 ~ \divisioMaxima
bes4 c'2*4/2 ~ c'4 ~ c'2 ~ c'2 r2*3/2 \divisioMaior
ees'2 ~ ees'2*5/2 f'2 g'2*6/2 f'2 ~ \divisioMaxima
f'4 ees'4 d'2 ~ d'2*3/2 ~ d'4 \divisioMinima
ees'2 f'2 ees'2*5/2 d'2*3/2 c'2 ~ c'2*3/2 ~ c'2*6/2 bes2 \finalis
r4 g'2*3/2 f'2 ~ f'2 d'2*3/2 \divisioMaxima
g'2*3/2 f'2*3/2 ~ f'2 d'2 r4 g'2*5/2 f'2*3/2 ~ \divisioMinima
f'2 ~ f'2*3/2 d'2 \divisioMaxima
g'2 f'2*4/2 ees'2*3/2 ~ \divisioMinima
ees'4 f'2 d'2 ~ \divisioMaxima
d'2 g'2*5/2 f'2 ~ f'4 ees'2 d'2*4/2 \finalis
}

tenorMusic = {
bes2 ~ bes2 ~ \divisioMinima
bes2 ~ bes2 ~ bes2*5/2 ~ bes2*3/2 ~ bes2*5/2 g2 \divisioMaxima
r4 aes2*4/2 a4 g2 a2 bes2*3/2 ~ \divisioMaior
bes2 ~ bes2*5/2 ~ bes2 ~ bes2*6/2 ~ bes2 ~ \divisioMaxima
bes2 ~ bes2 a2*3/2 bes4 ~ \divisioMinima
bes2 ~ bes2 ~ bes2*5/2 ~ bes2*3/2 ees2 f2*3/2 aes2*6/2 ~ aes2 \finalis
ees'2*4/2 ~ ees'2 d'2 g2*3/2 \divisioMaxima
bes2*3/2 ~ bes2*3/2 a2 c'4 bes4 ees'2*6/2 ~ ees'2*3/2 ~ \divisioMinima
ees'2 d'2*3/2 g2 \divisioMaxima
bes2 ~ bes2*4/2 ~ bes2*3/2 ~ \divisioMinima
bes4 ~ bes2 ~ bes2 ~ \divisioMaxima
bes2 ~ bes2*5/2 ~ bes2 ~ bes4 ~ bes2 ~ bes2*4/2 \finalis
}

bassMusic = {
g2 ees2 \divisioMinima
d2 c2 bes,2*5/2 c2*3/2 d2*5/2 ees2 \divisioMaxima
g4 ~ g2*4/2 f4 ~ f2 ~ f2 g2*3/2 ~ \divisioMaior
g2 c2*5/2 d2 ees2*6/2 d2 \divisioMaxima
g2 ~ g2 ~ g2*3/2 ~ g4 \divisioMinima
ees2 d2 c2*5/2 bes,2*3/2 aes,2 a,2*3/2 aes,2*6/2 ees2 \finalis
r2*11/2 \divisioMaxima
ees2*3/2 d2*3/2 ~ d2 g2 r2*9/2 \divisioMinima
r2*7/2 \divisioMaxima
ees2 d2*4/2 c2*3/2 ~ \divisioMinima
c4 d2 g2 ~ \divisioMaxima
g2 ees2*5/2 d2 ~ d4 ees2 bes,2*4/2 \finalis
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
