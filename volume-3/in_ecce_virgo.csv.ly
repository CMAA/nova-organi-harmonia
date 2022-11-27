\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.388
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Ecce Virgo" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Ecce Virgo"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Ecce Virgo" }
    \line {}
  }
}

chantText = \lyricmode {
Ec -- ce Vir -- go 
\set stanza = " * " con -- cí -- pi -- et, et pá -- ri -- et Fí -- li -- um, _ _ 
et vo -- cá -- bi -- tur no -- men e -- jus Em -- _ má -- nu -- el. Ps. 
Can -- tá -- te Dó -- mi -- no cán -- ti -- cum no -- vum, 
\set stanza = " * " 
qui -- a mi -- ra -- bí -- li -- a fe -- cit. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   f'4 f'4 g'4 ( \once \tweak #'font-size #-4 bes' ) bes'4  bes'4 bes'4 bes'4 ( a'4 g'4) g'4 \divisioMinima
 f'4 a'4 bes'4 a'4 ( g'4) bes'4 ( bes'4) g'4 ( f'4) f'4. ees'4 ( ees'4) c'4 ( d'4 c'4) \divisioMaior
 c'4 ees'4 d'4 ( ees'\prall f'4 g'4) f'4 f'4 f'4 f'4 ( g'4) g'4 ( ees'4 f'\prall g'4 f'4 g'4) g'4 ( f'4) f'4 ( ees'4) g'4 ( bes'4 g'4 a'\prall bes'4) f'4 ( d'4) ees'4 ( f'4 ees'4 d'4) d'4 \finalis
 f'4 g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 c''4 bes'4 bes'4 a'4 ( g'4) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 a'4 f'4 ( g'4) \finalis
 f'4 g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 c''4 bes'4 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 c''4 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 a'4 f'4 ( g'4) \finalis

}

altoMusic = {
d'2 ~ d'2*5/2 ~ d'2*3/2 ~ d'4 ~ \divisioMinima
d'4 ~ d'2*4/2 ~ d'2*4/2 c'2*3/4 g2 ~ g2*3/2 ~ \divisioMaior
g2 bes2*6/2 ~ bes2*3/2 ~ bes2*8/2 ~ bes2*7/2 ~ bes2 ~ bes2 a2 bes4 \finalis
r4 g'2*3/2 f'2*3/2 g'2*3/2 ees'2 f'2*3/2 \divisioMaxima
d'2 ~ d'2*4/2 ~ d'2*6/2 ~ d'2 ~ d'4 \finalis
r4 g'2*6/2 f'2*3/2 ~ \divisioMinima
f'2 g'2*3/2 ees'2 f'2*3/2 \divisioMaxima
d'2 ~ d'2 ~ d'2*4/2 f'2*3/2 ~ \divisioMinima
f'4 ees'2 ~ ees'2 d'2*3/2 ~ \divisioMaxima
d'2*4/2 ~ d'2*4/2 f'2*3/2 ees'2*3/2 d'2 ~ d'4 \finalis
}

tenorMusic = {
bes2 ~ bes2*4/2 ~ bes4 c'2*3/2 bes4 ~ \divisioMinima
bes4 a2*4/2 g2*4/2 ~ g2*3/4 f2 ees2*3/2 ~ \divisioMaior
ees2 f2*6/2 d4 ~ d2 ees2*6/2 d2 c2 ees2*5/2 f2 g2 ees2 f4 \finalis
r4 ees'2*3/2 r2*3/2 ees'2*3/2 ~ ees'2 d'2*3/2 ~ \divisioMaxima
d'2 c'2*4/2 bes2*3/2 a2*3/2 c'2 bes4 \finalis
r4 ees'2*6/2 d'2*3/2 ~ \divisioMinima
d'2 ees'2*3/2 ~ ees'2 d'2*3/2 ~ \divisioMaxima
d'2 c'2 bes2*4/2 ~ bes2*3/2 ~ \divisioMinima
bes4 g2 c'2 bes2*3/2 \divisioMaxima
c'2*4/2 bes2*4/2 ~ bes2*3/2 ~ bes2*3/2 a2 bes4 \finalis
}

bassMusic = {
r2 a2*4/2 g4 ~ g2*3/2 ~ g4 ~ \divisioMinima
g4 ~ g2*4/2 ~ g2*4/2 c2*3/4 ~ c2 ~ c2*3/2 ~ \divisioMaior
c2 bes,2*6/2 ~ bes,4 a2 g,2*6/2 ~ g,2 c2 ~ c2*5/2 ~ c2 ~ c2 ~ c2 bes,4 \finalis
r2*4/2 d'2*3/2 ~ d'2*3/2 c'2 bes2*3/2 \divisioMaxima
g2 ~ g2*4/2 ~ g2*3/2 ~ g2*3/2 ~ g2 ~ g4 \finalis
r2*10/2 \divisioMinima
d'2 ~ d'2*3/2 c'2 bes2*3/2 \divisioMaxima
g2 ~ g2 ~ g2*4/2 d2*3/2 ~ \divisioMinima
d4 c2 ~ c2 g2*3/2 ~ \divisioMaxima
g2*4/2 ~ g2*4/2 ~ g2*3/2 ~ g2*3/2 ~ g2 ~ g4 \finalis
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
        "3"
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
