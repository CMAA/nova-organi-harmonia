\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.258
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Exaudi Deus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Exaudi Deus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Exaudi Deus" }
    \line {}
  }
}

chantText = \lyricmode {
Ex -- áu -- di De -- us 
\set stanza = " * " o -- ra -- ti -- ó -- nem me -- am, 
et ne de -- spé -- xe -- ris de -- pre -- ca -- ti -- ó -- nem me -- am: 
in -- tén -- de in me, 
et ex -- áu -- di me. Ps. 
Con -- tri -- stá -- tus sum in ex -- er -- ci -- ta -- ti -- ó -- ne me -- a: 
\set stanza = " * " 
et con -- tur -- bá -- tus sum a vo -- ce in -- i -- mí -- ci, et a tri -- bu -- la -- ti -- ó -- ne pec -- ca -- tó -- ris. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   g'4 g'4 f'4 g'4 f'4 \divisioMinima
 f'4 ees'4 g'4 ( bes'4) bes'4 ( a'4 g'4) bes'4 ( bes'4) bes'4 ( c''4 d''4 c''4 bes'4 c''4) c''4 ( bes'4) \divisioMaior \forceBreak

 bes'4 ( \once \tweak #'font-size #-4 g' ) bes'4 c''4 d''4 c''4 bes'4 \divisioMinima
 bes'4 bes'4 bes'4 bes'4 bes'4 ( a'4 g'4) g'4 f'4 ( g'4 f'4 ees'4 f'4) f'4 ( ees'4) \divisioMaxima \forceBreak

 g'4 g'4 ( \once \tweak #'font-size #-4 f' ) f'4 ( a'\prall bes'4) g'4 ( \once \tweak #'font-size #-4 f' ) f'4 ( g'4 f'4 ees'4) \divisioMaior
 ees'4 ( f'4 g'4) g'4 ( f'4) g'4 ( a'\prall bes'4 a'4 g'4 f'4  g'\prall aes'4 g'4) f'4 ees'4 ( f'4 g'4 f'4 ees'4 f'4) f'4 ( ees'4) \finalis \forceBreak

 ees'4 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 c''4 c''4 bes'4 \divisioMaxima \forceBreak

 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \forceBreak
 bes'4 bes'4 c''4 a'4 bes'4 g'4 \finalis
  ees'4 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 \forceBreak
 bes'4 bes'4 c''4 c''4 bes'4 \divisioMaxima
 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 c''4 \forceBreak
 c''4 bes'4 \divisioMaxima
 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 c''4 a'4 bes'4 g'4 \finalis

}

altoMusic = {
r4 d'2 c'2 \divisioMinima
r2 d'2 g'2 ~ g'4 f'2 ees'2*6/2 f'2 \divisioMaior
d'2*4/2 ~ d'2 ~ d'4 ~ \divisioMinima
d'2 g'2 f'2*4/2 d'2*5/2 bes2 \divisioMaxima
r4 c'2 d'2*3/2 ees'2 r2*4/2 \divisioMaior
ees'2*3/2 d'2 ees'2*5/2 ~ ees'2 ~ ees'2*3/2 bes2*6/2 ~ bes2 \finalis
ees'2 f'2*5/2 ~ f'2*4/2 ees'2 d'2 \divisioMaxima
g'2*3/2 f'2*8/2 d'2 ~ \divisioMinima
d'2*6/2 f'2 ees'2 d'2 r4 g'2 f'2*3/2 ~ f'2*3/2 ~ \divisioMinima
f'2*3/2 e'2 d'2 \divisioMaxima
g'2*6/2 f'2*3/2 \divisioMinima
e'2*3/2 f'2 \divisioMaxima
d'2 f'2*5/2 e'2 d'2 \finalis
}

tenorMusic = {
bes4 ~ bes2 a2 \divisioMinima
bes2 ~ bes2 ~ bes2*3/2 ~ bes2 ~ bes2*6/2 ~ bes2 ~ \divisioMaior
bes2*4/2 a2 bes4 ~ \divisioMinima
bes2 ~ bes2 ~ bes2*4/2 ~ bes2*5/2 aes4 g4 \divisioMaxima
r4 a2 bes2*3/2 ~ bes2 ~ bes2*4/2 \divisioMaior
g2*3/2 ~ g2 c'2*5/2 bes2 aes2*3/2 a2*6/2 g2 \finalis
ees'2 ~ ees'2*5/2 d'2*4/2 c'2 g2 \divisioMaxima
bes2*3/2 ~ bes2*8/2 ~ bes2 ~ \divisioMinima
bes2*6/2 ~ bes2 ~ bes2 ~ bes2 e'2*3/2 ~ e'2*3/2 d'2*3/2 ~ \divisioMinima
d'2*3/2 c'2 g2 \divisioMaxima
b2*6/2 ~ b2*3/2 ~ \divisioMinima
b2*3/2 ~ b2 ~ \divisioMaxima
b2 ~ b2*5/2 ~ b2 ~ b2 \finalis
}

bassMusic = {
r2*5/2 \divisioMinima
g2 ~ g2 ees2*3/2 d2 c2*6/2 d2 \divisioMaior
g2*4/2 ~ g2 ~ g4 ~ \divisioMinima
g2 ees2 d2*4/2 bes,2*5/2 ees2 \divisioMaxima
g4 ~ g2 ~ g2*3/2 ees2 c2*4/2 ~ \divisioMaior
c2*3/2 ~ c2 ~ c2*5/2 ~ c2 ~ c2*3/2 ees2*6/2 ~ ees2 \finalis
r2*15/2 \divisioMaxima
ees2*3/2 d2*8/2 g2 ~ \divisioMinima
g2*6/2 d2 c2 g2 r2*12/2 r2*4/2 \divisioMaxima
e2*6/2 d2*3/2 \divisioMinima
c2*3/2 d2 \divisioMaxima
g2 d2*5/2 c2 g2 \finalis
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
