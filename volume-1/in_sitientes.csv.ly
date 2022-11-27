\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.268
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Sitientes" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Sitientes"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Sitientes" }
    \line {}
  }
}

chantText = \lyricmode {
Si -- ti -- én -- tes _ 
\set stanza = " * " ve -- ní -- te ad a -- _ quas, di -- cit Dó -- mi -- nus: 
et qui non _ ha -- bé -- tis pré -- ti -- um, 
vé -- ni -- te, bí -- bi -- te cum læ -- tí -- ti -- a. Ps. 
At -- tén -- di -- te pó -- pu -- le me -- us le -- gem me -- am: 
\set stanza = " * " 
in -- cli -- ná -- te au -- rem ve -- stram in ver -- ba o -- ris me -- i. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   f'4 g'4 g'4 g'4 ( bes'4 g'4) ~ g'4 ( f'4) \divisioMinima
 g'4 g'4 ( bes'4 c''4 bes'4) bes'4 ( bes'4 bes'4) g'4 g'4 ( bes'4) ~ bes'4 ( g'4 \forceBreak
) f'4 ( g'4 ees'4) \divisioMinima
 g'4 ( bes'4) bes'4 ( a'4 bes'4 g'4) g'4 g'4 ( a'4 g'4) g'4 \divisioMaxima
 f'4 g'4 g'4 bes'4 ( d''4 c''4) bes'4 bes'4 ( c''4 bes'4 \forceBreak
) bes'4 ( bes'4 bes'4) bes'4 ( c''4 bes'4) g'4 g'4 ( a'4 g'4) \divisioMaior
 g'4 g'4 ( bes'4 c''4 bes'4) bes'4 ( bes'4 bes'4) \divisioMinima
 bes'4 ( c''4 bes'4) g'4 f'4 ( g'4 ees'4) \divisioMinima \forceBreak

 g'4 ( bes'4) bes'4 ( a'4 bes'4 g'4) g'4 g'4 ( a'4 g'4) g'4 \finalis
 f'4 g'4 ( f'4) f'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 ( a'4 \forceBreak
) bes'4 ( c''4) c''4 bes'4 ( c''4) bes'4 \divisioMaxima
 bes'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 c''4 \forceBreak
 bes'4 ( g'4) bes'4 a'4 ( f'4) g'4 ( a'4 g'4) \finalis
  f'4 g'4 ( f'4) f'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 bes'4 ( a'4 \forceBreak
) bes'4 ( c''4) c''4 bes'4 ( c''4) bes'4 \divisioMaxima
 bes'4 ( g'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 ( a'4) bes'4 ( c''4) c''4 bes'4 ( c''4) bes'4 \divisioMaxima \forceBreak

 bes'4 ( g'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 c''4 bes'4 ( g'4) bes'4 a'4 ( f'4) g'4 ( a'4 g'4) \finalis

}

altoMusic = {
d'2 c'4 d'2 r2*3/2 \divisioMinima
d'4 ~ d'2*4/2 ~ d'2*4/2 ~ d'4 c'2*3/2 ees'2*3/2 ~ \divisioMinima
ees'2 f'2*4/2 ~ f'4 d'2*3/2 ~ d'4 ~ \divisioMaxima
d'2 ~ d'4 ~ d'2*4/2 ~ d'2*3/2 ees'2*3/2 d'2*4/2 ~ d'2 ~ d'4 ~ \divisioMaior
d'4 ees'2*4/2 d'2*3/2 \divisioMinima
f'2*4/2 ~ f'4 r2 \divisioMinima
ees'2 f'2*4/2 ~ f'4 d'2*3/2 ~ d'4 ~ \finalis
d'4 c'2 d'2*3/2 ~ d'2*3/2 ees'4 f'2 ~ f'2*3/2 d'2*3/2 \divisioMaxima
ees'2 d'2 ~ d'2*6/2 ~ \divisioMinima
d'4 f'2 ~ f'2*3/2 ~ f'2 d'2 ~ d'4 ~ \shiftRight d'4 c'2 d'2 ~ d'2*3/2 ~ d'2*3/2 ~ \divisioMinima
d'2 f'2 ~ f'2*3/2 d'2*3/2 \divisioMaxima
f'2 ees'2 ~ ees'2*4/2 f'2*3/2 ~ \divisioMinima
f'2 ~ f'2*3/2 d'2*3/2 \divisioMaxima
ees'2 d'2 ~ d'2*3/2 f'2 ~ f'2*3/2 ~ f'2 d'2 ~ d'4 \finalis
}

tenorMusic = {
bes2 ~ bes4 ~ bes2 c'2*3/2 \divisioMinima
bes4 ~ bes2*4/2 g2*4/2 ~ g2*4/2 ~ g2*3/2 \divisioMinima
bes2 ~ bes2*4/2 c'4 ~ c'2*3/2 bes4 ~ \divisioMaxima
bes2 ~ bes4 ~ bes2*4/2 a2*3/2 bes2*3/2 ~ bes2*4/2 c'2 bes4 ~ \divisioMaior
bes4 ~ bes2*4/2 ~ bes2*3/2 ~ \divisioMinima
bes2*4/2 ~ bes2*3/2 ~ \divisioMinima
bes2 ~ bes2*4/2 c'4 ~ c'2*3/2 bes4 ~ \finalis
bes2*3/2 ~ bes2*3/2 ~ bes2*3/2 ~ bes4 c'2 a2*3/2 bes2*3/2 \divisioMaxima
g2 ~ g2 ~ g2*6/2 ~ \divisioMinima
g4 ~ g2 bes2*3/2 c'2 ~ c'2 bes4 ~ \shiftRight bes2*3/2 ~ bes2 ~ bes2*3/2 ~ bes2*3/2 ~ \divisioMinima
bes2 c'2 a2*3/2 bes2*3/2 ~ \divisioMaxima
bes2 g2 ~ g2*4/2 f2*3/2 \divisioMinima
bes2 a2*3/2 g2*3/2 ~ \divisioMaxima
g2 ~ g2 ~ g2*3/2 ~ g2 bes2*3/2 c'2 ~ c'2 bes4 \finalis
}

bassMusic = {
r2*5/2 a2*3/2 ~ \divisioMinima
a4 g2*4/2 f2*4/2 ees2*4/2 c2*3/2 ~ \divisioMinima
c2 d2*4/2 ~ d4 g2*3/2 ~ g4 \divisioMaxima
r2 a4 g2*4/2 ~ g2*3/2 ~ g2*3/2 ~ g2*4/2 ~ g2 ~ g4 ~ \divisioMaior
g4 ~ g2*4/2 ~ g2*3/2 \divisioMinima
d2*4/2 g2*3/2 \divisioMinima
c2 d2*4/2 ~ d4 g2*3/2 ~ g4 \finalis
r2*6/2 g2*3/2 ~ g4 f2 ~ f2*3/2 g2*3/2 \divisioMaxima
c2 bes,2 g,2*6/2 ~ \divisioMinima
g,4 d2 ~ d2*3/2 ~ d2 g2 ~ g4 r2*5/2 a2*3/2 g2*3/2 ~ \divisioMinima
g2 f2 ~ f2*3/2 g2*3/2 \divisioMaxima
d2 ~ d2 c2*4/2 d2*3/2 ~ \divisioMinima
d2 ~ d2*3/2 g2*3/2 \divisioMaxima
c2 bes,2 g,2*3/2 d2 ~ d2*3/2 ~ d2 g2 ~ g4 \finalis
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
        "II"
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
