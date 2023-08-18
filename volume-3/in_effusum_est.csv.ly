\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.274
%(volume.page)

global = {
 \key f \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Effusum est" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Effusum est"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Effusum est" }
    \line {}
  }
}

chantText = \lyricmode {
Ef -- fú -- sum est _ 
\set stanza = " * " in ter -- ra je -- _ cur me -- um 
su -- per con -- tri -- ti -- ó -- ne fí -- li -- æ pó -- pu -- li me -- _ i, 
cum de -- fí -- ce -- ret _ 
pár -- vu -- lus et la -- ctens 
in pla -- té -- _ _ _ is óp -- pi -- di. Ps. 
Lau -- dá -- te pú -- e -- ri Dó -- mi -- num: 
\set stanza = " * " 
lau -- dá -- te no -- men Dó -- mi -- ni. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. _ }

chantMusic = {
\tieDown   c'4 ( d'4)  d'4 ( a'4 bes'4) a'4  a'4 ( g'4) a'4 ( bes'4 a'4)  g'4 g'4 ( a'4 g'4) d'4 ( e'\prall f'4 e'4 c'4) \divisioMinima
 f'4 ( f'4) ~ f'4 ( d'4) f'4 ( g'4 a'4) d'4 ( e'\prall f'4 d'4) d'4 \divisioMaior
 d'4 f'4 g'4 g'4 ( a'4) g'4 g'4 ( d'4) d'4 \divisioMinima
 f'4 e'4 f'4 g'4 ( a'4) g'4 g'4 g'4 ( a'4) c''4 ( b'4) b'4 ( a'4) \divisioMaxima
 c''4 ( c''4 c''4) a'4 ( g'4)  bes'4 ( a'4 bes'4) g'4 a'4 ( g'4) a'4 ( bes'4 a'4) \divisioMaior
 f'4 ( a'4) g'4 g'4 a'4 g'4 ( f'4 e'4 f'\prall g'4 f'4 g'4) g'4 ( f'4) \divisioMaior
 f'4 f'4 g'4 ( f'4) ~ f'4 ( e'4 c'4) d'4 ( e'\prall f'4) g'4 ( a'4 f'4 e'4) f'4 d'4 d'4 ( e'4 d'4) d'4 \finalis
 f'4 g'4 ( a'4) a'4 a'4 ( c''4) a'4 a'4 a'4 a'4 ( g'4) g'4 ( a'4) \divisioMaxima
 g'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( a'4) a'4 a'4 ( c''4 a'4) g'4 f'4 f'4 ( f'4 f'4) d'4 \finalis
  f'4 g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 ( c''4) a'4 a'4 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) \divisioMaxima
 g'4 ( f'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 ( c''4) a'4 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) \divisioMaxima
 g'4 ( f'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 ( c''4 a'4) g'4 f'4 f'4 ( f'4 f'4) d'4 ( c'4) d'4 ( f'4) \finalis

}

altoMusic = {
r2 d'2*4/2 ~ d'2*6/2 ~ d'2*3/2 c'2*5/2 ~ \divisioMinima
c'2 bes2 a2*3/2 ~ a2*4/2 ~ a4 ~ \divisioMaior
a2*3/2 d'2*3/2 ~ d'2*3/2 \divisioMinima
c'2*3/2 ~ c'2*4/2 ~ c'2 ~ c'2 ~ c'2 \divisioMaxima
e'2*3/2 f'2 g'2*4/2 f'2*5/2 \divisioMaior
d'2*5/2 ~ d'2*7/2 ~ d'2 ~ \divisioMaior
d'2*3/2 c'2*4/2 d'2*3/2 ~ d'2*5/2 a4 ~ a2*3/2 ~ a4 \finalis
f'4 ~ f'2*3/2 ~ f'2*4/2 e'4 ~ e'2 ~ e'2 \divisioMaxima
c'2 ~ c'2*3/2 ~ c'2*5/2 a2*3/2 ~ a4 f'4 ~ f'2*3/2 ~ f'2*3/2 e'2*3/2 ~ \divisioMinima
e'2 ~ e'2*4/2 d'2*3/2 e'4 \divisioMaxima
d'2*4/2 ~ d'2*4/2 e'2*3/2 ~ \divisioMinima
e'4 f'2*3/2 ~ f'2*3/2 ~ f'4 \divisioMaxima
r2*4/2 f'2*4/2 c'2*3/2 ~ c'2 d'2*3/2 a2*3/2 ~ a4 \finalis
}

tenorMusic = {
g2 f2*4/2 ~ f2*6/2 ~ f2*3/2 ~ f2*5/2 ~ \divisioMinima
f2*4/2 ~ f2*3/2 g2*4/2 f4 ~ \divisioMaior
f2*3/2 ~ f2*3/2 g2*3/2 ~ \divisioMinima
g2*3/2 f2*4/2 e2 d2 e2 \divisioMaxima
c'2*3/2 ~ c'2 d'2*4/2 ~ d'2*5/2 \divisioMaior
c'2*5/2 bes2*7/2 a2 ~ \divisioMaior
a2*3/2 g2*4/2 f2*3/2 e2*5/2 ~ e4 g2*3/2 f4 \finalis
r4 e'2*3/2 d'2*4/2 ~ d'4 c'2 ~ c'2 \divisioMaxima
e2 f2*3/2 g2*5/2 ~ g2*3/2 f4 r4 e'2*3/2 d'2*3/2 ~ d'2*3/2 ~ \divisioMinima
d'2 c'2*4/2 bes2*3/2 c'4 \divisioMaxima
g2*4/2 f2*4/2 g2*3/2 ~ \divisioMinima
g4 a2*3/2 bes2*3/2 d'4 \divisioMaxima
c'2*4/2 ~ c'2*4/2 a2*3/2 ~ a2 ~ a2*3/2 g2*3/2 f4 \finalis
}

bassMusic = {
e2 d2*4/2 c2*6/2 bes,2*3/2 a,2*5/2 \divisioMinima
d2*4/2 ~ d2*3/2 ~ d2*4/2 ~ d4 \divisioMaior
c2*3/2 bes,2*3/2 ~ bes,2*3/2 \divisioMinima
a,2*3/2 ~ a,2*4/2 ~ a,2 ~ a,2 ~ a,2 \divisioMaxima
a2*3/2 ~ a2 g2*4/2 d2*5/2 ~ \divisioMaior
d2*5/2 ~ d2*7/2 ~ d2 ~ \divisioMaior
d2*3/2 ~ d2*4/2 ~ d2*3/2 ~ d2*5/2 ~ d4 ~ d2*3/2 ~ d4 \finalis
r2*11/2 a2 \divisioMaxima
r2*5/2 e2*5/2 d2*3/2 ~ d4 r2*10/2 \divisioMinima
r2*9/2 a4 \divisioMaxima
bes,2*4/2 d2*4/2 ~ d2*3/2 ~ \divisioMinima
d4 ~ d2*3/2 ~ d2*3/2 ~ d4 \divisioMaxima
e2*4/2 f2*4/2 ~ f2*3/2 e2 d2*3/2 ~ d2*3/2 ~ d4 \finalis
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
