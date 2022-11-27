\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.240
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Ego autem in... speravi" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Ego autem in... speravi"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Ego autem in... speravi" }
    \line {}
  }
}

chantText = \lyricmode {
E -- go au -- tem 
\set stanza = " * " in Dó -- _ mi -- no _ spe -- rá -- _ vi: 
ex -- sul -- tá -- bo, et læ -- tá -- bor _ in tu -- a mi -- se -- ri -- cór -- di -- a: 
qui -- a re -- spe -- xí -- _ sti hu -- mi -- li -- _ tá -- tem me -- am. _ Ps. 
In te Dó -- mi -- ne spe -- rá -- vi, non con -- fún -- dar in æ -- tér -- num: 
\set stanza = " * " 
in ju -- stí -- ti -- a tu -- a lí -- be -- ra me. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   f'4 g'4 ( a'4) a'4 a'4 \divisioMinima
 a'4 a'4 c''4 ( c''4 c''4) a'4 ( g'4)  g'4 ( bes'4 a'4) bes'4 ( g'4 f'4) a'4 ( g'4) a'4 c''4 ( c''4 c''4)  b'4 ( a'4) \divisioMaior \forceBreak

 g'4 a'4 ( \once \tweak #'font-size #-4 c'' ) c''4 c''4 \divisioMinima
 c''4 ( c''4 c''4) a'4 c''4 c''4 ( c''4) ~ c''4 ( c''4 c''4) \divisioMinima
 a'4  f'4 ( a'4 bes'4 a'4 f'4 g'4) g'4 \forceBreak
 g'4 f'4 g'4 ( a'4 g'4) a'4 g'4 ( f'4) f'4 \divisioMaxima
 f'4 g'4 ( a'4) a'4 a'4  a'4 ( f'4) a'4 ( bes'4 g'4) f'4 \divisioMinima
 f'4 f'4 \forceBreak
 f'4 ( f'4) ~ f'4 ( d'4) f'4 ( g'4) g'4 f'4 ( g'4 f'4 e'4) f'4 ( f'4 f'4) d'4 ( e'4 d'4) \finalis
 f'4 g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima \forceBreak

 a'4 a'4 a'4 a'4 a'4 ( c''4) a'4 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) \divisioMaxima
 g'4 ( f'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 ( c''4 a'4 \forceBreak
) g'4 f'4 f'4 ( f'4 f'4) d'4 \finalis
  f'4 g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 \forceBreak
 a'4 ( c''4) a'4 a'4 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) \divisioMaxima
 g'4 ( f'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 ( c''4) a'4 \forceBreak
 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) \divisioMaxima
 g'4 ( f'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 ( c''4 a'4) g'4 f'4 f'4 ( f'4 f'4) d'4 \finalis

}

altoMusic = {
d'4 e'2 f'2 ~ \divisioMinima
f'4 e'4 ~ e'2*5/2 d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'4 c'2*3/2 ~ c'2 ~ \divisioMaior
c'4 ~ c'2 ~ c'2 \divisioMinima
g'2*4/2 ~ g'4 f'2 e'2*3/2 ~ \divisioMinima
e'4 d'2 ~ d'2*5/2 c'2 ~ c'2*3/2 ~ c'2*3/2 ~ c'4 ~ \divisioMaxima
c'4 ~ c'2 d'2 ~ d'2 ~ d'2*3/2 c'4 ~ \divisioMinima
c'2 bes2 c'2 ~ c'2*3/2 ~ c'2*4/2 a2*3/2 ~ a2*3/2 \finalis
r4 e'2*6/2 f'2 ~ \divisioMinima
f'2 e'2 ~ e'2*3/2 ~ e'2 ~ e'2 \divisioMaxima
c'2 ~ c'2 ~ c'2*4/2 ~ c'2*3/2 ~ c'2 a2*3/2 ~ a4 r4 e'2 f'2*4/2 e'2*3/2 ~ \divisioMinima
e'2 ~ e'2*4/2 d'2 e'2 \divisioMaxima
d'2*4/2 ~ d'2*4/2 ~ d'2*3/2 ~ \divisioMinima
d'4 e'2*3/2 d'2 c'2 ~ \divisioMaxima
c'2*4/2 ~ c'2*4/2 ~ c'2*3/2 ~ c'2 a2*3/2 ~ a4 \finalis
}

tenorMusic = {
a4 ~ a2 ~ a2 ~ \divisioMinima
a2 ~ a2*5/2 ~ a2*3/2 g2*3/2 f2 e4 ~ e2*3/2 ~ e2 ~ \divisioMaior
e4 f2 e2 \divisioMinima
g2*4/2 a4 ~ a2 ~ a2*3/2 ~ \divisioMinima
a4 ~ a2 g2*5/2 ~ g2 f2*3/2 e2*3/2 f4 ~ \divisioMaxima
f4 e2 f2 ~ f2 ~ f2*3/2 ~ f4 ~ \divisioMinima
f2 ~ f2 ~ f2 e2*3/2 a2*4/2 g2*3/2 f2*3/2 \finalis
d'2*7/2 ~ d'2 ~ \divisioMinima
d'2 ~ d'2 c'2*3/2 d'2 c'2 \divisioMaxima
e2 ~ e2 f2*4/2 g2*3/2 a2 g2*3/2 f4 d'2*3/2 ~ d'2*4/2 c'2*3/2 \divisioMinima
d2 c'2*4/2 bes2 c'2 \divisioMaxima
a2*4/2 g2*4/2 f2*3/2 ~ \divisioMinima
f4 g2*3/2 e2 ~ e2 ~ \divisioMaxima
e2*4/2 f2*4/2 g2*3/2 a2 g2*3/2 f4 \finalis
}

bassMusic = {
d4 ~ d2 ~ d2 ~ \divisioMinima
d2 c2*5/2 bes,2*3/2 ~ bes,2*3/2 ~ bes,2 ~ bes,4 a,2*3/2 ~ a,2 ~ \divisioMaior
a,4 ~ a,2 ~ a,2 \divisioMinima
e2*4/2 ~ e4 d2 c,2*3/2 \divisioMinima
c4 bes,2 ~ bes,2*5/2 a,2 ~ a,2*3/2 ~ a,2*3/2 ~ a,4 \divisioMaxima
d4 ~ d2 ~ d2 c2 bes,2*3/2 a,4 ~ \divisioMinima
a,2 g,2 a,2 ~ a,2*3/2 ~ a,2*4/2 d2*3/2 ~ d2*3/2 \finalis
r2*9/2 \divisioMinima
r2*7/2 bes2 a2 \divisioMaxima
c2 a,2 ~ a,2*4/2 ~ a,2*3/2 ~ a,2 d2*3/2 ~ d4 r2*10/2 \divisioMinima
bes2 a2*4/2 ~ a2 ~ a2 \divisioMaxima
d2*4/2 ~ d2*4/2 ~ d2*3/2 ~ \divisioMinima
d4 c2*3/2 bes,2 a,2 ~ \divisioMaxima
a,2*4/2 ~ a,2*4/2 ~ a,2*3/2 ~ a,2 d2*3/2 ~ d4 \finalis
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
        "I"
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
