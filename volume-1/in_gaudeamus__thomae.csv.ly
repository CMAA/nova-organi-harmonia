\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.82
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Gaudeamus... Thomae" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Gaudeamus... Thomae"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Gaudeamus... Thomae" }
    \line {}
  }
}

chantText = \lyricmode {
Gau -- de -- á -- mus 
\set stanza = " * " o -- mnes in Dó -- mi -- no, 
di -- em fe -- stum ce -- le -- brán -- tes sub ho -- nó -- _ re Tho -- mæ Már -- ty -- ris: 
de cu -- jus pas -- si -- ó -- _ ne gau -- dent An -- _ ge -- li, 
et col -- láu -- _ dant Fí -- li -- um _ _ De -- i. Ps. 
Ex -- sul -- tá -- te ju -- sti in Dó -- mi -- no, 
\set stanza = " * " 
re -- ctos de -- cet col -- lau -- dá -- ti -- o. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. _ }

chantMusic = {
\tieDown   c'4 d'4  ( d'4 a'4) bes'4 a'4 \divisioMinima
 a'4 ( \once \tweak #'font-size #-4 g' ) a'4 ( g'4) f'4 ( g'4) g'4 ( c''4 a'4)  a'4 ( g'4 a'\prall bes'4 a'4 bes'4) bes'4 ( a'4) \divisioMaior \forceBreak

 a'4 f'4 ( \once \tweak #'font-size #-4 g' ) g'4 g'4 ( f'4 f'4) d'4 ( g'4) g'4 ( f'4 f'4) d'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( f'4 f'4) \divisioMinima
 f'4 g'4 g'4 a'4 ( c''4 a'4) g'4 ( a'4 g'4 \forceBreak
) f'4 ( a'4) g'4 ( c''4 c''4) a'4 a'4 ( b'4 a'4) a'4 \divisioMaxima
 f'4 ( g'4) f'4 ( g'4) f'4 f'4 g'4 g'4 a'4 ( c''4 a'4) g'4 ( a'4 g'4) \divisioMinima \forceBreak

 f'4 ( g'4) f'4 f'4 ( g'4) a'4 ( g'4 a'4) g'4 ( f'4 e'4 f'\prall g'4 f'4 g'4) g'4 ( f'4) \divisioMaior
 f'4 g'4 g'4 a'4 ( c''4 \tiny a' g' 4) a'4 ( g'4) \divisioMinima \forceBreak

 f'4 ( g'4 e'4) f'4 f'4 ( g'4) a'4 ( f'4) g'4 ( f'4 e'4) d'4 ( e'\prall f'4 e'4 f'4) e'4 ( d'4) \finalis
 f'4 g'4 ( a'4) a'4 a'4 a'4 ( c''4) a'4 a'4 \forceBreak
 a'4 a'4 ( g'4) g'4 ( a'4) \divisioMaxima
 g'4 ( f'4) g'4 ( a'4) a'4 a'4 a'4 ( c''4 a'4) g'4 f'4 f'4 ( f'4 f'4) d'4 \finalis
  f'4 g'4 ( a'4) a'4 a'4 a'4 a'4 \forceBreak
 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 ( c''4) a'4 a'4 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) \divisioMaxima
 g'4 ( f'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima \forceBreak

 a'4 a'4 ( c''4) a'4 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) \divisioMaxima
 g'4 ( f'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 ( c''4 a'4) g'4 f'4 f'4 ( f'4 f'4) d'4 ( c'4) d'4 ( f'4) \finalis

}

altoMusic = {
r2 d'2*4/2 \divisioMinima
c'2 ~ c'2 ~ c'2 ~ c'2*3/2 d'2*3/2 ~ d'2*3/2 ~ d'2 \divisioMaior
c'2*3/2 a4 ~ a2*3/2 d'2 c'2*3/2 bes2 a2*3/2 \divisioMinima
f'2 ~ f'4 e'2*3/2 d'2*3/2 f'2 e'2*3/2 ~ e'4 ~ e'2*3/2 ~ e'4 \divisioMaxima
r2 d'2*3/2 ~ d'2 e'4 f'2*3/2 g'2*3/2 \divisioMinima
c'2*3/2 d'2 e'2*3/2 d'2 ~ d'2 ~ d'2*3/2 c'2 \divisioMaior
d'2 e'4 ~ e'2*4/2 ~ e'2 \divisioMinima
d'2*4/2 ~ d'2 ~ d'2 c'2*3/2 a2*5/2 ~ a2 \finalis
f'2*3/2 e'2 ~ e'2*4/2 d'4 ~ d'2 e'2 \divisioMaxima
c'2 ~ c'2*4/2 ~ c'2*3/2 ~ c'2 a2*3/2 ~ a4 f'2*4/2 e'2*3/2 ~ e'2*3/2 ~ \divisioMinima
e'2 ~ e'2*4/2 d'2 e'2 \divisioMaxima
d'2*4/2 ~ d'2*4/2 ~ d'2*3/2 ~ \divisioMinima
d'4 e'2*3/2 d'2 c'2 ~ \divisioMaxima
c'2*4/2 ~ c'2*4/2 ~ c'2*3/2 ~ c'2 a2*3/2 g2 a2 \finalis
}

tenorMusic = {
g2 f2*4/2 ~ \divisioMinima
f2 e2 d2 e2*3/2 d2*3/2 g2*3/2 f2 ~ \divisioMaior
f2*3/2 ~ f4 ~ f2*3/2 ~ f2 ~ f2*3/2 ~ f2 ~ f2*3/2 \divisioMinima
a2 c'4 ~ c'2*3/2 b2*3/2 c'2 ~ c'2*3/2 d4 b2*3/2 c'4 ~ \divisioMaxima
c'2 bes2*3/2 b2 ~ b4 c'2*3/2 ~ c'2*3/2 \divisioMinima
a2*3/2 ~ a2 ~ a2*3/2 bes2 g2 e2*3/2 ~ e4 f4 \divisioMaior
a2 ~ a4 ~ a2*4/2 c'2 \divisioMinima
a2*4/2 ~ a2 g2 ~ g2*3/2 ~ g2*5/2 f2 \finalis
d'2*3/2 ~ d'2 c'2*4/2 ~ c'4 bes2 c'2 \divisioMaxima
e2 ~ e2*4/2 f2*3/2 g2 ~ g2*3/2 f4 d'2*4/2 ~ d'2*3/2 c'2*3/2 \divisioMinima
d'2 c'2*4/2 bes2 c'2 \divisioMaxima
a2*4/2 g2*4/2 f2*3/2 ~ \divisioMinima
f4 a2*3/2 e2 ~ e2 ~ \divisioMaxima
e2*4/2 f2*4/2 g2*3/2 a2 g2*3/2 e2 f2 \finalis
}

bassMusic = {
e2 d2*4/2 \divisioMinima
a,2 ~ a,2 ~ a,2 ~ a,2*3/2 bes,2*3/2 ~ bes,2*3/2 d2 \divisioMaior
f2*3/2 e4 d2*3/2 bes,2 a,2*3/2 g,2 d2*3/2 ~ \divisioMinima
d2 ~ d4 a2*3/2 ~ a2*3/2 ~ a2 ~ a2*3/2 ~ a4 ~ a2*3/2 ~ a4 ~ \divisioMaxima
a2 ~ a2*3/2 g2 ~ g4 f2*3/2 e2*3/2 ~ \divisioMinima
e2*3/2 d2 c2*3/2 bes,2 ~ bes,2 ~ bes,2*3/2 a,2 \divisioMaior
d2 ~ d4 c2*4/2 ~ c2 ~ \divisioMinima
c2*4/2 bes,2 ~ bes,2 a,2*3/2 d2*5/2 ~ d2 \finalis
r2*12/2 a2 \divisioMaxima
c2 a,2*4/2 ~ a,2*3/2 ~ a,2 d2*3/2 ~ d4 r2*10/2 \divisioMinima
bes2 a2*4/2 ~ a2 ~ a2 \divisioMaxima
d2*4/2 ~ d2*4/2 ~ d2*3/2 ~ \divisioMinima
d4 c2*3/2 bes,2 a2 \divisioMaxima
a,2*4/2 ~ a,2*4/2 ~ a,2*3/2 ~ a,2 d2*3/2 ~ d2 ~ d2 \finalis
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
