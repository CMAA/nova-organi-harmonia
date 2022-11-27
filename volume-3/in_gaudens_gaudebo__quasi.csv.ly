\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.17
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Gaudens gaudebo... quasi" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Gaudens gaudebo... quasi"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Gaudens gaudebo... quasi" }
    \line {}
  }
}

chantText = \lyricmode {
Gau -- dens gau -- dé -- _ bo 
\set stanza = " * " in Dó -- _ mi -- no _ 
et ex -- sul -- tá -- bit á -- _ ni -- ma me -- a in De -- o me -- o: 
qui -- a ín -- du -- it me ve -- sti -- mén -- _ _ tis sa -- lú -- tis, _ _ 
et in -- du -- mén -- to ju -- stí -- _ ti -- æ cir -- cúm -- _ de -- dit me, 
qua -- si spon -- sam or -- ná -- tam mo -- ní -- li -- bus su -- is. Ps. 
Ex -- al -- tá -- bo te, Dó -- mi -- ne, quó -- ni -- am su -- sce -- pí -- sti me: 
\set stanza = " * " 
nec de -- le -- ctá -- sti in -- i -- mí -- cos me -- os su -- per me. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   d'4 ( d'4 ees'4) c'4 ( f'4 d'4) d'4 ( \once \tweak #'font-size #-4 f' ) f'4 ( g'4 f'4) g'4 ( bes'4) bes'4 \divisioMinima
 g'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 ( bes'4) ~ bes'4 ( g'4) g'4 ( f'4) f'4 ( g'4 f'4 f'4) d'4 ( ees'4 d'4) \divisioMaior
 c'4 ( ees'4 d'4) ees'4 ees'4 d'4 ( ees'4 g'4) g'4 g'4 bes'4 ( bes'4) g'4 g'4 g'4 ( ees'4 f'\prall g'4 f'4 g'4) g'4 ( f'4) \divisioMinima
 ees'4 ees'4 c'4 ( ees'4) d'4 ( f'4 ees'4 ees'4) ees'4 ( d'4) \divisioMaxima
 ees'4 ( ees'4) c'4 ( f'4 d'4) f'4 ( g'4) g'4 g'4 ( c''4 bes'4 a'4 bes'4) bes'4 ( a'4) \divisioMinima
 bes'4 bes'4 bes'4 ( a'4) bes'4 ( a'4) bes'4 ( d''4 c''4) c''4 ( a'4) a'4 a'4 ( c''4 bes'4) a'4 ( c''4 a'4) bes'4 ( g'4) ~ g'4 ( f'4) \divisioMaxima
 f'4 g'4 f'4 g'4 ( a'\prall bes'4) a'4 ( g'4) g'4 g'4 bes'4 ( bes'4 bes'4) g'4 ( f'4) f'4 \divisioMinima
 f'4 ( a'4 g'4) f'4. d'4 ( ees'4 g'4) g'4 g'4 ( a'\prall bes'4 \once \tweak #'font-size #-4 f' ) g'4 ( f'4) \divisioMaior
 f'4 g'4 f'4 ( d'4 ees'4) d'4 ( c'4) f'4 ( g'4) f'4 ( g'4 a'\prall bes'4 a'4 bes'4) bes'4 ( g'4) \divisioMinima
 g'4 ( c''4) bes'4 ( g'4 a'\prall bes'4) f'4 f'4 ( d'4) ees'4 ( f'4 ees'4 d'4) d'4 \finalis
 f'4 g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 bes'4 c''4 bes'4 bes'4 a'4 ( g'4) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 a'4 f'4 ( g'4) \finalis
  f'4 g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 c''4 bes'4 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 c''4 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 a'4 f'4 ( g'4) \finalis

}

altoMusic = {
bes2*3/2 ~ bes2*3/2 c'2 d'2*3/2 ~ d'2 ~ d'4 ~ \divisioMinima
d'2 ees'2 d'2 c'2 ~ c'2*4/2 bes2*3/2 ~ \divisioMaior
bes2*5/2 ~ bes2*5/2 ~ bes2*4/2 ~ bes2*6/2 ~ bes2 ~ \divisioMinima
bes4 g2*3/2 bes2*4/2 ~ bes2 ~ \divisioMaxima
bes2 c'2*3/2 bes2*3/2 ees'2*5/2 ~ ees'2 \divisioMinima
f'2 ~ f'2 ~ f'2 ~ f'2*3/2 ~ f'2*3/2 ~ f'2*3/2 d'2 ~ d'2 c'2*3/2 ~ \divisioMaxima
c'2*3/2 bes2*5/2 ~ bes2 ~ bes2*3/2 c'2 ~ c'4 \divisioMinima
d'2*3/2 c'2*3/4 bes2*4/2 d'2*4/2 c'2 \divisioMaior
d'2 c'2*3/2 r2 bes2 d'2*3/2 ~ d'2*3/2 ~ d'2 \divisioMinima
c'2 d'2*5/2 bes2 ~ bes2*4/2 ~ bes4 \finalis
d'2*3/2 ees'2*3/2 f'2*3/2 \divisioMinima
g'2*3/2 f'2 ~ f'4 ees'2 d'2*3/2 ~ \divisioMaxima
d'2*5/2 ees'2*4/2 f'2 ~ f'2*3/2 d'2 ~ d'2 ~ d'2 ~ d'2*4/2 ~ d'2*3/2 ~ d'2*3/2 \divisioMinima
g'2 f'2*3/2 ees'2 d'2*3/2 ~ \divisioMaxima
d'2 ~ d'2 g'2*4/2 f'2*3/2 ~ \divisioMinima
f'4 ees'2 ~ ees'2 d'2*3/2 ~ \divisioMaxima
d'2 ~ d'2 ~ d'2*4/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'4 ~ d'2 \finalis
}

tenorMusic = {
r2*13/2 g4 ~ \divisioMinima
g2 ~ g2 ~ g2 a2 f2*4/2 ~ f2*3/2 \divisioMaior
ees2*5/2 ~ ees2*5/2 d2*4/2 ees2*6/2 d2 \divisioMinima
ees4 ~ ees2*3/2 g2*4/2 f2 \divisioMaxima
g2 f2*3/2 bes2*3/2 ~ bes2*5/2 c'2 \divisioMinima
bes2 d'2 c'2 bes2*3/2 a2*3/2 f2*3/2 ~ f2 ~ f2 ~ f2*3/2 \divisioMaxima
d2*3/2 ~ d2*5/2 ees2 f2*3/2 ~ f2 ~ f4 ~ \divisioMinima
f2*3/2 ~ f2*3/4 g2*4/2 ~ g2*4/2 a2 \divisioMaior
g2 ~ g2*3/2 ~ g2 f2 ~ f2*3/2 ~ f2*3/2 g2 ~ \divisioMinima
g2 ~ g2*5/2 ~ g2 ees2*4/2 f4 \finalis
bes2*3/2 c'2*3/2 d'2*3/2 \divisioMinima
ees'2*3/2 ~ ees'2 d'4 c'2 bes2*3/2 ~ \divisioMaxima
bes2*5/2 ~ bes2*4/2 ~ bes2 f2*3/2 a2 c'2 bes2 ~ bes2*4/2 ~ bes2*3/2 ~ bes2*3/2 ~ \divisioMinima
bes2 ~ bes2*3/2 ~ bes2 ~ bes2*3/2 \divisioMaxima
c'2 bes2 ~ bes2*4/2 ~ bes2*3/2 ~ \divisioMinima
bes4 ~ bes2 c'2 bes2*3/2 \divisioMaxima
c'2 bes2 g2*4/2 a2*3/2 bes2*3/2 c'4 bes2 \finalis
}

bassMusic = {
g2*3/2 ~ g2*3/2 a2 bes2*3/2 a2 r4 \divisioMinima
r2 c2 bes,2 a,2 ~ a,2*4/2 bes,2*3/2 \divisioMaior
c2*5/2 g,2*5/2 ~ g,2*4/2 ~ g,2*6/2 bes,2 \divisioMinima
c4 ~ c2*3/2 g,2*4/2 bes,2 \divisioMaxima
c2 d2*3/2 ~ d2*3/2 c2*5/2 ~ c2 \divisioMinima
d2 ~ d2 ~ d2 ~ d2*3/2 ~ d2*3/2 ~ d2*3/2 c2 bes,2 a,2*3/2 ~ \divisioMaxima
a,2*3/2 g,2*5/2 ~ g,2 ~ g,2*3/2 ~ g,2 a,4 \divisioMinima
bes,2*3/2 a,2*3/4 g,2*4/2 bes,2*4/2 a,2 \divisioMaior
bes,2 c2*3/2 ees2 d2 c2*3/2 bes,2*3/2 ~ bes,2 \divisioMinima
a,2 bes,2*5/2 g,2 ~ g,2*4/2 bes,4 \finalis
r2*9/2 \divisioMinima
r2*11/2 \divisioMaxima
bes,2*5/2 c2*4/2 d2 ~ d2*3/2 ~ d2 ~ d2 g2 r2*4/2 a2*3/2 g2*3/2 \divisioMinima
ees2 d2*3/2 c2 g2*3/2 \divisioMaxima
d2 g2 ees2*4/2 d2*3/2 ~ \divisioMinima
d4 c2 ~ c2 g2*3/2 ~ \divisioMaxima
g2 ~ g2 ~ g2*4/2 ~ g2*3/2 ~ g2*3/2 ~ g4 ~ g2 \finalis
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
