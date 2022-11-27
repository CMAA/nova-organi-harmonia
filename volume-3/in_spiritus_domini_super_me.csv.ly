\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.289
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Spiritus Domini super me" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Spiritus Domini super me"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Spiritus Domini super me" }
    \line {}
  }
}

chantText = \lyricmode {
Spi -- ri -- tus Dó -- mi -- ni 
\set stanza = " * " su -- per me: _ 
pro -- pter quod _ un -- xit me: _ _ 
e -- van -- ge -- li -- zá -- _ _ _ re pau -- pé -- ri -- bus mi -- sit me, _ 
sa -- ná -- _ re con -- trí -- tos cor -- _ _ de. Ps. 
At -- tén -- di -- te pó -- pu -- le me -- us le -- gem me -- am: 
\set stanza = " * " 
in -- cli -- ná -- te au -- rem ve -- stram in ver -- ba o -- ris me -- i. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   f'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 ( bes'4 bes'4) a'4 ( g'4)  g'4 ( c''4) c''4 ( \once \tweak #'font-size #-4 bes' ) bes'4 ( c''4 bes'4) ~ bes'4 ( bes'4) \divisioMaior
 f'4 f'4 ( \once \tweak #'font-size #-4 g' ) g'4 bes'4 ( bes'4 bes'4) g'4 ( f'4) g'4 ( a'4) f'4 ( g'4 a'\prall bes'4 a'4 g'4) a'4 ( bes'4 f'4 f'4) d'4 ( ees'4 d'4) \divisioMaxima
 ees'4 ( f'4 ees'4) d'4 ( ees'4) f'4 ( g'4) f'4 f'4 g'4 ( bes'4 g'4) ees'4 ( g'4 ees'4) f'4 ( g'4) f'4 g'4 ( g'4 f'4) g'4 ( f'4) ees'4 d'4 ( ees'4 f'4) \divisioMinima
 d'4 ( f'4) ees'4 ( d'4) ees'4 ( ees'4 ees'4) c'4 ( d'4 c'4) \divisioMaior
 f'4 ( bes'4) bes'4. ~ bes'4 ( bes'4 bes'4) f'4 f'4 ( g'4) d'4 ( ees'4 f'\prall g'4) g'4 f'4 ( ees'4) g'4 ( f'4 ees'4) f'4 ( \tiny ees' d' 4) d'4 \finalis
 f'4 g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 c''4 bes'4 a'4 ( g'4) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 a'4 f'4 ( g'4) \finalis
  f'4 g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 c''4 bes'4 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 c''4 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 a'4 f'4 ( g'4) \finalis

}

altoMusic = {
d'2*4/2 ~ d'4 ~ d'2*5/2 ~ d'2 c'2 f'2*3/2 ~ f'2 \divisioMaior
d'4 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*4/2 f'2*3/2 ~ f'2*3/2 d'2*4/2 bes2*3/2 \divisioMaxima
g2*5/2 bes2*4/2 ~ bes2*3/2 ~ bes2*3/2 ~ bes2*3/2 ~ bes2*3/2 ~ bes2*3/2 ~ bes2*3/2 ~ \divisioMinima
bes2*4/2 g2*3/2 ~ g2*3/2 \divisioMaior
f'2 ~ f'2*3/4 ees'2*4/2 d'2 bes2*5/2 c'2*5/2 d'2*3/2 bes4 \finalis
f'4 ~ f'2*4/2 ~ f'2*5/2 g'2 ees'2 g'2*3/2 \divisioMaxima
d'2*8/2 ~ d'2 ~ \divisioMinima
d'2 f'2*3/2 d'2*3/2 ~ d'2 ~ d'4 r4 g'2*3/2 ~ g'2*3/2 f'2*3/2 ~ \divisioMinima
f'2 g'2*3/2 ees'2 g'2*3/2 \divisioMaxima
d'2*8/2 ~ d'2*3/2 ~ \divisioMinima
d'4 ees'2 ~ ees'2 f'2*3/2 ~ \divisioMaxima
f'2*4/2 ~ f'2*4/2 ees'2*3/2 d'2*3/2 ~ d'2 ~ d'4 \finalis
}

tenorMusic = {
bes2*4/2 a4 g2*5/2 ~ g2 ~ g2 f2*3/2 bes2 \divisioMaior
a4 g2*3/2 f2*3/2 a2*4/2 c'2*3/2 bes2*3/2 ~ bes2*4/2 f2*3/2 \divisioMaxima
ees2*5/2 d2*4/2 ~ d2*3/2 c2*3/2 d2*3/2 ees2*3/2 f2*3/2 g2*3/2 \divisioMinima
f2*4/2 ~ f2*3/2 ees2*3/2 \divisioMaior
c'2 bes2*3/4 ~ bes2*4/2 ~ bes2 f2*5/2 g2*5/2 bes2*3/2 f4 \finalis
r4 ees'2*4/2 d'2*5/2 ees'2 ~ ees'2 d'2*3/2 \divisioMaxima
c'2*8/2 bes2 ~ \divisioMinima
bes2 c'2*3/2 ~ c'2*3/2 ~ c'2 bes4 f'4 ~ f'2*3/2 ees'2*3/2 d'2*3/2 ~ \divisioMinima
d'2 ees'2*3/2 ~ ees'2 d'2*3/2 \divisioMaxima
c'2*8/2 bes2*3/2 ~ \divisioMinima
bes4 g2 bes2 ~ bes2*3/2 \divisioMaxima
c'2*4/2 bes2*4/2 ~ bes2*3/2 a2*3/2 c'2 bes4 \finalis
}

bassMusic = {
bes,2*4/2 ~ bes,4 ~ bes,2*5/2 ees2 ~ ees2 d2*3/2 ~ d2 ~ \divisioMaior
d4 ~ d2*3/2 ~ d2*3/2 ~ d2*4/2 ~ d2*3/2 ~ d2*3/2 bes,2*4/2 ~ bes,2*3/2 \divisioMaxima
c2*5/2 bes,2*4/2 g,2*3/2 ~ g,2*3/2 ~ g,2*3/2 ~ g,2*3/2 ~ g,2*3/2 ~ g,2*3/2 \divisioMinima
bes,2*4/2 c2*3/2 ~ c2*3/2 \divisioMaior
d2 ~ d2*3/4 c2*4/2 bes,2 ~ bes,2*5/2 ~ bes,2*5/2 ~ bes,2*3/2 ~ bes,4 \finalis
r2*10/2 c'2 ~ c'2 g2*3/2 ~ \divisioMaxima
g2*8/2 ~ g2 ~ \divisioMinima
g2 f2*3/2 a2*3/2 g2 ~ g4 r2*12/2 c'2*3/2 ~ c'2 g2*3/2 ~ \divisioMaxima
g2*8/2 ~ g2*3/2 ~ \divisioMinima
g4 c2 ~ c2 d2*3/2 ~ \divisioMaxima
d2*4/2 ~ d2*4/2 c2*3/2 d2*3/2 g2 ~ g4 \finalis
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