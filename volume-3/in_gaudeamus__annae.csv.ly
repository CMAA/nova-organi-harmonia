\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.281
%(volume.page)

global = {
 \key f \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Gaudeamus... Annae" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Gaudeamus... Annae"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Gaudeamus... Annae" }
    \line {}
  }
}

chantText = \lyricmode {
Gau -- de -- á -- mus 
\set stanza = " * " o -- mnes in Dó -- mi -- no, 
di -- em fe -- stum ce -- le -- brán -- tes sub ho -- nó -- _ re be -- á -- te An -- næ: 
de cu -- jus so -- le -- mni -- tá -- _ te gau -- dent An -- _ ge -- li, 
et col -- láu -- dant Fí -- li -- um _ _ De -- i. Ps. 
E -- ru -- ctá -- vit cor me -- um ver -- bum bo -- num: 
\set stanza = " * " 
di -- co e -- go ó -- pe -- ra me -- a re -- gi. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. _ }

chantMusic = {
\tieDown   c'4 d'4  d'4 ( a'4 bes'4) a'4 \divisioMinima
 a'4 ( \once \tweak #'font-size #-4 g' ) a'4 ( g'4) f'4 ( g'4) g'4 ( c''4 a'4)  a'4 ( g'4 a'\prall bes'4 a'4 bes'4) bes'4 ( a'4) \divisioMaior
 a'4 f'4 ( \once \tweak #'font-size #-4 g' ) g'4 g'4 ( f'4 f'4) d'4 ( g'4) g'4 ( f'4 f'4) d'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( f'4 f'4) \divisioMinima
 f'4 g'4 g'4 a'4 ( c''4 a'4) g'4 ( a'4 g'4) f'4 a'4 g'4 ( c''4 c''4) a'4 ( b'4 a'4) a'4 \divisioMaxima
 f'4 ( g'4) f'4 ( g'4) f'4 f'4 g'4 g'4 g'4 a'4 ( c''4 a'4) g'4 ( a'4 g'4) \divisioMinima
 f'4 ( g'4) f'4 f'4 ( g'4) a'4 ( g'4 a'4) g'4 ( f'4 e'4 f'\prall g'4 f'4 g'4) g'4 ( f'4) \divisioMaior
 f'4 g'4 g'4 ( a'4 c''4 \tiny a' g' 4) a'4 ( g'4) \divisioMinima
 f'4 ( g'4 e'4) f'4 f'4 ( g'4) a'4 ( f'4) g'4 ( f'4 e'4) d'4 ( e'\prall f'4 e'4 f'4) e'4 ( d'4) \finalis
 f'4 g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 ( c''4) a'4 a'4 ( g'4) g'4 ( a'4) \divisioMaxima
 g'4 ( f'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 ( c''4 a'4) g'4 f'4 f'4 ( f'4 f'4) d'4 \finalis
  f'4 g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 ( c''4) a'4 a'4 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) \divisioMaxima
 g'4 ( f'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 ( c''4) a'4 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) \divisioMaxima
 g'4 ( f'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 ( c''4 a'4) g'4 f'4 f'4 ( f'4 f'4) d'4 ( c'4) d'4 ( f'4) \finalis

}

altoMusic = {
r2 d'2*4/2 ~ \divisioMinima
d'2*6/2 ~ d'2*3/2 ~ d'2*6/2 ~ d'2 \divisioMaior
e'2*3/2 d'4 ~ d'2*5/2 c'2*3/2 bes2 c'2*3/2 ~ \divisioMinima
c'2*3/2 ~ c'2*7/2 ~ c'4 ~ c'2*3/2 d'2*3/2 c'4 \divisioMaxima
d'2 c'2*7/2 ~ c'2*6/2 ~ \divisioMinima
c'2*3/2 ~ c'2*5/2 d'2 ~ d'2*5/2 ~ d'2 ~ \divisioMaior
d'2 c'4 ~ c'2*6/2 ~ \divisioMinima
c'2*4/2 d'2*7/2 a2*5/2 ~ a2 \finalis
f'4 ~ f'2 ~ f'2*3/2 e'2 ~ e'2*3/2 d'2 e'2 \divisioMaxima
c'2*4/2 ~ c'2*4/2 ~ c'2*5/2 a2*3/2 ~ a4 f'2*4/2 ~ f'2*3/2 ~ f'2*3/2 ~ \divisioMinima
f'2 e'2*4/2 ~ e'2 ~ e'2 \divisioMaxima
d'2*4/2 f'2*4/2 ~ f'2*3/2 ~ \divisioMinima
f'4 ~ f'2*3/2 e'2*3/2 f'4 \divisioMaxima
c'2*4/2 ~ c'2*4/2 ~ c'2*3/2 a2 ~ a2*3/2 ~ a2 ~ a2 \finalis
}

tenorMusic = {
g2 f2*4/2 ~ \divisioMinima
f2*6/2 ~ f2*3/2 g2*6/2 f2 ~ \divisioMaior
f2*4/2 ~ f2*5/2 ~ f2*3/2 ~ f2 ~ f2*3/2 ~ \divisioMinima
f2 ~ f4 e2*7/2 f4 e2*3/2 ~ e2*3/2 ~ e4 \divisioMaxima
a2 ~ a2*6/2 ~ a4 g2*6/2 \divisioMinima
a2*3/2 f2*5/2 ~ f2 g2*5/2 a2 ~ \divisioMaior
a2*3/2 g2*6/2 \divisioMinima
a2*4/2 g2*7/2 ~ g2*5/2 f2 \finalis
r4 e'2 d'2*3/2 ~ d'2 c'2*3/2 bes2 c'2 \divisioMaxima
g2*4/2 f2*4/2 g2*5/2 ~ g2*3/2 f4 r2*4/2 e'2*3/2 d'2*3/2 ~ \divisioMinima
d'2 ~ d'2*4/2 c'2 ~ c'2 \divisioMaxima
bes2*4/2 c'2*4/2 ~ c'2*3/2 ~ \divisioMinima
c'4 d'2*3/2 ~ d'2*3/2 ~ d'4 \divisioMaxima
g2*4/2 f2*4/2 ~ f2*3/2 ~ f2 ~ f2*3/2 g2 f2 \finalis
}

bassMusic = {
e2 d2*4/2 \divisioMinima
c2*6/2 bes,2*3/2 ~ bes,2*6/2 d2 \divisioMaior
c2*4/2 bes,2*5/2 a,2*3/2 g,2 a,2*3/2 ~ \divisioMinima
a,2 c4 ~ c2*7/2 a,4 ~ a,2*3/2 ~ a,2*3/2 ~ a,4 \divisioMaxima
d2 ~ d2*6/2 e4 ~ e2*6/2 \divisioMinima
f2*3/2 a,2*5/2 bes,2 ~ bes,2*5/2 d2 ~ \divisioMaior
d2*3/2 e2*6/2 \divisioMinima
f2*4/2 bes,2*7/2 d2*5/2 ~ d2 \finalis
r2*13/2 a2 \divisioMaxima
e2*4/2 f2*4/2 e2*5/2 d2*3/2 ~ d4 r2*10/2 \divisioMinima
r2*8/2 a2 \divisioMaxima
r2*4/2 f2*4/2 e2*3/2 ~ \divisioMinima
e4 d2*3/2 ~ d2*3/2 ~ d4 \divisioMaxima
e2*4/2 f2*4/2 e2*3/2 ~ e2 d2*3/2 ~ d2 ~ d2 \finalis
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
