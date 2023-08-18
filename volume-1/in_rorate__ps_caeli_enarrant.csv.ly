\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.38
%(volume.page)

global = {
 \key f \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Rorate... Ps. Caeli enarrant" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Rorate... Ps. Caeli enarrant"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Rorate... Ps. Caeli enarrant" }
    \line {}
  }
}

chantText = \lyricmode {
Ro -- rá -- te 
\set stanza = " * " cœ -- _ li dé -- su -- per, 
et nu -- bes plu -- ant ju -- _ _ stum: 
a -- pe -- ri -- á -- tur ter -- ra, 
et gér -- mi -- net Sal -- va -- tó -- rem. Ps. 
Cœ -- li e -- nár -- rant gló -- ri -- am De -- i: 
\set stanza = " * " 
et ó -- pe -- ra má -- nu -- um e -- jus an -- nún -- ti -- at fir -- ma -- mén -- tum. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown  c'4 ( d'4)  d'4 ( a'4 bes'4) a'4 \divisioMinima
 a'4 ( c''4) ~ c''4 ( a'4) a'4 ( g'4) a'4 ( b'\prall c''4) c''4 ( b'4 c''\prall d''4 c''4 d''4) d''4 ( c''4) \divisioMaior
 f'4  a'4 ( bes'4 a'4) g'4 \forceBreak
 c''4 ( c''4 a'4) a'4 g'4 ( f'4) a'4 ( g'4 f'4) g'4 ( f'4) f'4 \divisioMaxima
 f'4 g'4 a'4 a'4 ( b'\prall c''4) g'4 f'4 ( g'4 f'4 d'4) d'4 \divisioMaior \forceBreak

 d'4 ( f'4 e'4) f'4 ( g'4) g'4 f'4 ( g'4 f'4 d'4) d'4 ( e'\prall f'4) c'4 ( e'4 d'4) d'4 ( e'4 d'4) d'4 \finalis
 f'4 g'4 ( a'4) a'4 a'4 a'4 \forceBreak
 a'4 ( c''4) a'4 a'4 a'4 ( g'4) g'4 ( a'4) \divisioMaxima
 g'4 ( f'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 \forceBreak
 a'4 ( c''4 a'4) g'4 f'4 f'4 ( f'4 f'4) d'4 \finalis
  f'4 g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima \forceBreak

 a'4 a'4 a'4 ( c''4) a'4 a'4 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) \divisioMaxima
 g'4 ( f'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima \forceBreak

 a'4 a'4 ( c''4) a'4 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) \divisioMaxima
 g'4 ( f'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 ( c''4 a'4) g'4 f'4 f'4 ( f'4 f'4) d'4 ( \finalis

}

altoMusic = {
r2 d'2*4/2 ~ \divisioMinima
d'4 g'2*3/2 e'2 ~ e'2*3/2 g'2*3/2 ~ g'2*3/2 e'2 \divisioMaior
f'4 ~ f'2*4/2 e'2*4/2 d'2 e'2*3/2 ~ e'2 f'4 ~ \divisioMaxima
f'2*3/2 e'2*4/2 d'2*4/2 ~ d'4 \divisioMaior
a2*3/2 c'2*3/2 ~ c'2*4/2 bes2*3/2 a2*3/2 ~ a2*3/2 ~ a4 \finalis
f'2*6/2 e'2*4/2 d'2 e'2 \divisioMaxima
d'2*6/2 ~ d'2*3/2 ~ d'2 ~ \divisioMinima
d'2*3/2 c'2*3/2 ~ c'2 a2*3/2 c'4 f'2*4/2 e'2*3/2 ~ e'2*3/2 ~ \divisioMinima
e'2 ~ e'2*4/2 d'2 e'2 \divisioMaxima
d'2*4/2 ~ d'2*4/2 ~ d'2*3/2 ~ \divisioMinima
d'4 e'2*3/2 d'2 c'2 ~ \divisioMaxima
c'2*4/2 ~ c'2*4/2 ~ c'2*3/2 ~ c'2 <a f>2*3/2 ~ <a f>4 \finalis
}

tenorMusic = {
r2 a2*4/2 ~ \divisioMinima
a4 ~ a2*3/2 b2 d'2*3/2 ~ d'2*3/2 b2*3/2 c'2 ~ \divisioMaior
c'4 d'2*4/2 c'2*4/2 bes2 c'2*3/2 bes2 a4 ~ \divisioMaxima
a2*3/2 ~ a2*4/2 ~ a2*4/2 f4 ~ \divisioMaior
f2*3/2 ~ f2*3/2 d'2*4/2 ~ d'2*3/2 g2*3/2 ~ g2*3/2 f4 \finalis
b2*6/2 c'2*4/2 bes2 c'2 \divisioMaxima
a2*3/2 e2*3/2 f2*3/2 ~ f2 ~ \divisioMinima
f2*3/2 ~ f2*3/2 g2 ~ g2*3/2 f4 d'2*4/2 ~ d'2*3/2 c'2*3/2 \divisioMinima
d'2 c'2*4/2 bes2 c'2 \divisioMaxima
a2*4/2 g2*4/2 f2*3/2 ~ \divisioMinima
f4 a2*3/2 e2 ~ e2 ~ \divisioMaxima
e2*4/2 f2*4/2 g2*3/2 a2 g2*3/2 e4 \finalis
}

bassMusic = {
r2 f2*4/2 ~ \divisioMinima
f4 e2*3/2 ~ e2 g2*3/2 ~ g2*3/2 ~ g2*3/2 a2 ~ \divisioMaior
a4 g2*4/2 a2*9/2 f2 ~ f4 \divisioMaxima
d2*3/2 c2*4/2 d2*4/2 ~ d4 ~ \divisioMaior
d2*3/2 a,2*3/2 ~ a,2*4/2 g,2*3/2 a,2*3/2 d2*3/2 ~ d4 \finalis
r2*12/2 a2 \divisioMaxima
d2*3/2 ~ d2*3/2 ~ d2*3/2 ~ d2 ~ \divisioMinima
d2*3/2 a,2*3/2 ~ a,2 d2*3/2 ~ d4 r2*10/2 \divisioMinima
bes2 a2*4/2 ~ a2 ~ a2 \divisioMaxima
d2*4/2 ~ d2*4/2 ~ d2*3/2 ~ \divisioMinima
d4 c2*3/2 bes,2 a2 \divisioMaxima
a,2*4/2 ~ a,2*4/2 ~ a,2*3/2 ~ a,2 d,2*3/2 ~ d,4 \finalis
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
