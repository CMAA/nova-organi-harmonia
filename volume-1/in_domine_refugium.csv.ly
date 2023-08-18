\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.183
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Domine refugium" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Domine refugium"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Domine refugium" }
    \line {}
  }
}

chantText = \lyricmode {
Do -- mi -- ne 
\set stanza = " * " re -- fú -- gi -- um fa -- _ ctus es no -- bis 
a ge -- ne -- ra -- ti -- ó -- ne et pro -- gé -- _ ni -- _ e: 
a sǽ -- cu -- lo, et in sǽ -- cu -- lum tu _ es. Ps. 
Pri -- ús -- quam mon -- tes fí -- e -- rent, aut for -- ma -- ré -- tur ter -- ra et or -- bis: 
\set stanza = " * " 
a sǽ -- cu -- lo, et us -- que in sǽ -- cu -- lum tu es De -- us. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   ees'4 g'4 bes'4 \divisioMinima
 bes'4 bes'4 ( c''4) bes'4 bes'4 bes'4 ( c''4 bes'4) ~ bes'4 ( a'4) f'4 g'4 bes'4 ( c''4 a'4 bes'4) a'4 ( g'4) \divisioMaior \forceBreak

 ees'4 f'4 g'4 g'4 g'4 g'4 ( a'\prall bes'4) g'4 ( g'4) f'4 g'4 g'4 bes'4 ( c''4) bes'4 ( a'4) c''4 ( bes'4) bes'4 \divisioMaxima
  aes'4  g'4 ( aes'4 bes'4 \forceBreak
) aes'4 ( g'4) g'4 g'4  aes'4  g'4 ( aes'4 bes'4) g'4 ( f'4) g'4 \divisioMinima
 g'4 ( bes'4 g'4 f'4) g'4 ( f'4 ees'4 f'4) f'4 ( ees'4) \finalis
 ees'4 g'4 bes'4 bes'4 bes'4 \forceBreak
 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 c''4 c''4 bes'4 \divisioMaxima
 g'4 bes'4 bes'4 bes'4 bes'4 \forceBreak
 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 c''4 a'4 bes'4 g'4 \finalis
  ees'4 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima \forceBreak

 bes'4 bes'4 bes'4 bes'4 c''4 c''4 bes'4 \divisioMaxima
 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima \forceBreak

 bes'4 bes'4 c''4 c''4 bes'4 \divisioMaxima
 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 c''4 a'4 bes'4 g'4 \finalis

}

altoMusic = {
r4 g'2 ~ \divisioMinima
g'4 f'2*4/2 ~ f'2 d'2*5/2 ~ d'2*4/2 ~ d'2 \divisioMaior
ees'2*3/2 d'2 ees'2*3/2 d'2*4/2 ~ d'2*3/2 ~ d'2 ~ d'2 ~ d'4 ees'4 ~ ees'2*3/2 ~ ees'2 c'2 ~ c'4 ees'2*3/2 ~ ees'2*3/2 ~ \divisioMinima
ees'2*4/2 bes2*4/2 ~ bes2 \finalis
r4 g'2*4/2 f'2*6/2 ~ f'2 g'2*3/2 ~ g'2 \divisioMaxima
d'4 ~ d'2*4/2 f'2*3/2 ~ f'2*3/2 ees'2 d'2 r2*6/2 f'2*3/2 ~ \divisioMinima
f'2 ~ f'2*3/2 g'2 \divisioMaxima
d'2*6/2 ees'2*4/2 f'2 g'2 \divisioMaxima
d'2 f'2*5/2 ees'2 d'2 \finalis
}

tenorMusic = {
ees'2*3/2 ~ \divisioMinima
ees'4 ~ ees'2*4/2 d'2 g2*5/2 c'2*4/2 bes2 ~ \divisioMaior
bes2*3/2 ~ bes2 ~ bes2*3/2 a2*4/2 g2*3/2 bes2 a2 g4 c'4 aes2*3/2 bes2 ~ bes2 aes4 bes2*3/2 ~ bes2*3/2 ~ \divisioMinima
bes2*4/2 aes2*4/2 f4 g4 \finalis
ees'2*5/2 ~ ees'2*3/2 ~ \divisioMinima
ees'2*3/2 d'2 ees'2*3/2 d'2 \divisioMaxima
f4 g2*4/2 ~ g2*3/2 f2*3/2 g2 ~ g4 bes4 ees2*6/2 ees'2*3/2 ~ \divisioMinima
ees'2 d'2*3/2 ~ d'2 \divisioMaxima
bes2*6/2 ~ bes2*4/2 ~ bes2 ~ bes2 ~ \divisioMaxima
bes2 ~ bes2*5/2 g2 ~ g4 bes4 \finalis
}

bassMusic = {
r2*3/2 \divisioMinima
r2*12/2 g2*4/2 ~ g2 ~ \divisioMaior
g2*3/2 ~ g2 c2*3/2 d2*4/2 g2*3/2 ~ g2 ~ g2 ~ g4 c4 ~ c2*3/2 ~ c2 f2 ~ f4 ees2*3/2 d2*3/2 \divisioMinima
c2*4/2 ees2*4/2 ~ ees2 \finalis
r2*13/2 c'2*3/2 g2 \divisioMaxima
bes,4 ~ bes,2*4/2 d2*3/2 ~ d2*3/2 c2 g4 ~ g4 r2*14/2 g2 ~ \divisioMaxima
g2*6/2 c2*4/2 d2 ees2 \divisioMaxima
g2 d2*5/2 c2 g4 ~ g4 \finalis
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
