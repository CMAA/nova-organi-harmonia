\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.79
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Vidi civitatem" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Vidi civitatem"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Vidi civitatem" }
    \line {}
  }
}

chantText = \lyricmode {
Vi -- di 
\set stanza = " * " ci -- vi -- tá -- _ tem san -- ctam, Je -- rú -- sa -- lem no -- vam, 
de -- scen -- dén -- tem de cœ -- lo a De -- o, 
pa -- rá -- tam sic -- ut spon -- _ _ sam 
or -- ná -- tam vi -- ro _ su -- _ o. T.P. 
Al -- le -- lú -- ia, al -- le -- _ lú -- ia. Ps. 
E -- ru -- ctá -- vit cor me -- um ver -- bum bo -- num: 
\set stanza = " * " 
di -- co e -- go ó -- pe -- ra me -- a re -- gi. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. _ }

chantMusic = {
\tieDown   c'4 ( ees'4 f'4) f'4  f'4 ( g'4) ees'4 ees'4 ( g'4) bes'4 ( a'4) a'4 ( g'4) bes'4 ( bes'4 bes'4) f'4 ( g'4) \divisioMinima
 g'4 ( ees'4 g'4) bes'4 ( bes'4) g'4 g'4 ( ees'4 g'4)  g'4 ( aes'4 g'4 ees'4) ees'4 \divisioMaxima
 ees'4 f'4 g'4 f'4 g'4 ( f'4) g'4 f'4 ees'4 ees'4 ( f'4 g'4) g'4 \divisioMaior
 g'4 ( ees'4)  f'4 ( aes'4 g'4) g'4 bes'4 g'4 ( c''4 bes'4) bes'4 ( bes'4) ~ bes'4 ( g'4) ~ g'4 ( \once \tweak #'font-size #-4 ees' ) ees'4 \divisioMaior
 f'4 ( \once \tweak #'font-size #-4 ees' ) f'4 g'4 ( bes'4) a'4 ( a'4 bes'4) g'4 bes'4 ( bes'4 a'4 g'4 a'\prall bes'4 a'4 g'4) f'4 ( g'4) a'4 ( g'4 f'4 g'4) g'4 ( f'4) \finalis
 bes'4 ( \once \tweak #'font-size #-4 g' ) bes'4 bes'4 ( a'4 bes'4 g'4) f'4 \divisioMinima
 f'4 ( \once \tweak #'font-size #-4 g' ) g'4. ees'4 ( g'4 f'4) f'4 ( g'4 f'4) f'4 \finalis
 f'4 g'4 ( f'4) f'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 ( a'4) bes'4 ( c''4) c''4 bes'4 ( c''4) bes'4 \divisioMaxima
 bes'4 ( g'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) f'4 ( g'4) bes'4 ( a'4) g'4 f'4 \finalis
  f'4 g'4 ( f'4) f'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 bes'4 ( a'4) bes'4 ( c''4) c''4 bes'4 ( c''4) bes'4 \divisioMaxima
 bes'4 ( g'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 ( a'4) bes'4 ( c''4) c''4 bes'4 ( c''4) bes'4 \divisioMaxima
 bes'4 ( g'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) f'4 ( g'4) bes'4 ( a'4) g'4 f'4 ( g'4 c'4) ees'4 ( ees'4 f'4) \finalis

}

altoMusic = {
c'4 ~ c'2 d'4 bes2*3/2 ees'2*4/2 ~ ees'2 f'2*5/2 \divisioMinima
ees'2*3/2 f'2*3/2 ees'2*3/2 ~ ees'2*4/2 ~ ees'4 \divisioMaxima
c'2 ~ c'2 ~ c'2 bes2*3/2 c'2*3/2 bes4 \divisioMaior
c'2 f'2*3/2 ees'4 ~ ees'4 ~ ees'2*3/2 f'2*3/2 ees'2*3/2 ~ ees'4 \divisioMaior
r2 f'4 ~ f'2 g'2*3/2 ees'4 f'2*3/2 c'2*5/2 ~ c'2*6/2 ~ c'2 \finalis
d'2*3/2 ees'2*4/2 f'4 \divisioMinima
bes2 c'2*3/4 ~ c'2*3/2 ~ c'2*3/2 ~ c'4 \finalis
d'4 c'2 d'2*4/2 ~ d'4 ~ d'2 ~ d'2*3/2 ~ d'2*3/2 ~ \divisioMaxima
d'2 ~ d'2*4/2 ees'2 f'2*3/2 ~ f'2 ees'2 c'2 d'4 c'2 d'2 ees'2*3/2 f'2*3/2 ~ \divisioMinima
f'2 g'2 f'2*3/2 ~ f'2*3/2 \divisioMaxima
ees'2 ~ ees'2 ~ ees'2*4/2 d'2*3/2 \divisioMinima
f'2 ~ f'2 ees'4 d'2*3/2 ~ \divisioMaxima
d'2 ees'2 f'2*4/2 ees'2*3/2 d'2 c'2 bes2*4/2 ~ bes2 ~ bes4 \finalis
}

tenorMusic = {
r4 bes2 ~ bes4 ~ bes2*3/2 ees2*4/2 bes2 ~ bes2*5/2 ~ \divisioMinima
bes2*3/2 ~ bes2*3/2 ~ bes2*3/2 c'2*4/2 g4 \divisioMaxima
ees2 ~ ees2 ~ ees2 ~ ees2*3/2 ~ ees2*3/2 ~ ees4 ~ \divisioMaior
ees2 d2*3/2 ees4 g4 bes2*3/2 ~ bes2*3/2 ~ bes2*3/2 ~ bes4 ~ \divisioMaior
bes2 ~ bes2*3/2 ~ bes2*3/2 c'4 ~ c'2*3/2 bes2*5/2 a2*6/2 bes4 a4 \finalis
bes2*3/2 ~ bes2*4/2 ~ bes4 ~ \divisioMinima
bes2 g2*3/4 bes2*3/2 ~ bes2*3/2 a4 \finalis
bes4 ~ bes2 ~ bes2*4/2 ~ bes4 r2 a2*3/2 bes2*3/2 \divisioMaxima
g2 ~ g2*4/2 ~ g2 f2*3/2 bes2 ~ bes2 ~ bes4 a4 bes4 ~ bes2 ~ bes2 c'2*3/2 d'2*3/2 ~ \divisioMinima
d'2 ees'2 ~ ees'2*3/2 d'2*3/2 \divisioMaxima
g2 ~ g2 ~ g2*4/2 ~ g2*3/2 ~ \divisioMinima
g2 ~ g2 ~ g4 ~ g2*3/2 ~ \divisioMaxima
g2 ~ g2 f2*4/2 g2*3/2 ~ g2 c2 d2*4/2 c2 bes,4 \finalis
}

bassMusic = {
r2*4/2 ees2*3/2 c2*4/2 ~ c2 d2*5/2 \divisioMinima
ees2*3/2 d2*3/2 c2*3/2 ~ c2*4/2 ~ c4 ~ \divisioMaxima
c2 bes,2 aes,2 g,2*3/2 aes,2*3/2 ees4 \divisioMaior
c2 ~ c2*3/2 ~ c4 ~ c4 ~ c2*3/2 d2*3/2 ees2*3/2 g4 \divisioMaior
c2 d2*3/2 ees2*3/2 ~ ees4 f2*3/2 ~ f2*5/2 ~ f2*6/2 ~ f2 \finalis
bes,2*3/2 c2*4/2 d4 \divisioMinima
ees2 ~ ees2*3/4 ~ ees2*3/2 f2*3/2 ~ f4 \finalis
r2*8/2 g2 ~ g2*3/2 ~ g2*3/2 \divisioMaxima
r2 f2*4/2 ees2 d2*3/2 ~ d2 c2 f2 r2*11/2 \divisioMinima
r2*10/2 \divisioMaxima
ees2 d2 c2*4/2 bes,2*3/2 \divisioMinima
d2 c2 ~ c4 g2*3/2 \divisioMaxima
f2 ees2 d2*4/2 c2*3/2 bes,2 ~ bes,2 ~ bes,2*4/2 ~ bes,2 ~ bes,4 \finalis
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
        "VIII"
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
