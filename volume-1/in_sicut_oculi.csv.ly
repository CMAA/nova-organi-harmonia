\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.180
%(volume.page)

global = {
 \key e \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Sicut oculi" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Sicut oculi"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Sicut oculi" }
    \line {}
  }
}

chantText = \lyricmode {
Si -- cut ó -- cu -- li 
\set stanza = " * " ser -- vó -- rum _ 
in má -- ni -- bus do -- mi -- nó -- rum su -- _ ó -- rum: 
i -- ta ó -- cu -- li no -- stri ad Dó -- mi -- num De -- um no -- _ _ strum, 
do -- nec mi -- se -- re -- á -- tur no -- bis: _ 
mi -- se -- ré -- re no -- bis Dó -- mi -- ne, _ _ _ 
mi -- se -- ré -- re no -- _ bis. Ps. 
Ad te le -- vá -- vi ó -- cu -- los me -- os: 
\set stanza = " * " 
qui há -- bi -- tas in cœ -- lis. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   e'4 ( g'4 f'4) f'4 e'4 ( f'\prall g'4 a'4) g'4 g'4  g'4 ( \once \tweak #'font-size #-4 a' ) a'4 g'4 ( a'4 b'4) ~ b'4 ( a'4) \divisioMaior
 a'4 ( \once \tweak #'font-size #-4 g' ) a'4 ( b'\prall c''4) g'4 \forceBreak
 f'4 ( g'4 f'4 f'4) f'4 ( d'4) f'4 e'4 ( f'4 g'\prall a'4 g'4 f'4) g'4 g'4 ( a'4 g'4 f'4) g'4 ( a'4 g'4) e'4 ( g'4 f'4 f'4) f'4 ( e'4) \divisioMaxima
 e'4 ( g'4 f'4) f'4 \forceBreak
 e'4 ( f'\prall g'4 a'4) g'4 g'4 g'4 ( a'4) g'4 \divisioMinima
 g'4 g'4 ( a'4) g'4 g'4 e'4 ( f'4 g'\prall a'4) a'4 g'4 ( f'4 \forceBreak
) a'4 ( g'4 f'4) g'4 ( f'4 e'4) e'4 \divisioMaior
 e'4 ( f'\prall g'4 a'4) g'4 g'4 ( a'4) g'4 ( a'4) g'4 g'4 g'4 ( a'4 b'\prall c''4) c''4 ( b'4 a'4 \forceBreak
) a'4 ( g'4) b'4 ( a'4 g'4 a'4) \divisioMaxima
 e'4 g'4 g'4 g'4 ( a'4) a'4 ( g'4) g'4 ( f'4) f'4 ( g'4 a'4) g'4 g'4 ( e'4) g'4 ( a'4 f'4 e'4) f'4 ( e'4 d'4 \forceBreak
) e'4 ( d'4) \divisioMaior
 d'4 ( e'4 f'4 g'4) g'4 g'4 g'4 f'4 ( a'4 g'4 f'4) g'4 ( f'4 e'4) e'4 \finalis
 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) a'4 a'4 a'4 a'4 ( g'4 \forceBreak
) g'4 ( b'4) b'4 a'4 ( b'4) a'4 \divisioMaxima
 a'4 a'4 a'4 g'4 ( f'4) g'4 ( a'4) g'4 e'4 \finalis
  a'4 ( g'4) g'4 ( a'4) a'4 a'4 a'4 a'4 \forceBreak
 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 ( g'4) g'4 ( b'4) b'4 a'4 ( b'4) a'4 \divisioMaxima
 a'4 ( g'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima \forceBreak

 a'4 ( g'4) g'4 ( b'4) b'4 a'4 ( b'4) a'4 \divisioMaxima
 a'4 ( g'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 g'4 ( f'4) g'4 ( a'4) g'4 e'4 \finalis

}

altoMusic = {
c'2*4/2 ~ c'2*6/2 d'2 e'2*3/2 ~ e'2 ~ e'4 ~ \divisioMaior
e'2 ~ e'2*4/2 d'2*4/2 c'2*3/2 ~ c'2*7/2 ~ c'2*4/2 ~ c'2*3/2 ~ c'2*4/2 ~ c'2 ~ \divisioMaxima
c'2*4/2 ~ c'2*6/2 d'2*3/2 ~ \divisioMinima
d'4 e'2*4/2 ~ e'2*5/2 c'2 ~ c'2*3/2 b2*3/2 c'4 ~ \divisioMaior
c'2*5/2 d'2 ~ d'2*3/2 ~ d'4 e'2*4/2 g'2*3/2 e'2 ~ e'2*3/2 ~ e'4 ~ \divisioMaxima
e'2 d'4 e'2 d'2 c'2 ~ c'2*4/2 ~ c'2 ~ c'2*4/2 ~ c'2*3/2 a2 \divisioMaior
c'2*5/2 ~ c'2 ~ c'2*4/2 b2*3/2 c'4 \finalis
e'2 ~ e'2*3/2 ~ e'2 ~ e'2 ~ e'2*3/2 ~ e'2 ~ e'4 \divisioMaxima
c'4 ~ c'2 ~ c'2 b2 ~ b4 c'4 e'2 ~ e'2*3/2 ~ e'2*3/2 ~ e'2*3/2 ~ \divisioMinima
e'2 ~ e'2 ~ e'2*3/2 ~ e'2 ~ e'4 \divisioMaxima
c'2 b2*6/2 c'2*3/2 \divisioMinima
d'2 ~ d'2*3/2 e'2 ~ e'4 \divisioMaxima
d'2 ~ d'2 c'2*5/2 ~ c'2*4/2 b4 c'4 \finalis
}

tenorMusic = {
a2*4/2 ~ a2*6/2 b2 c'2*3/2 d'2 c'4 \divisioMaior
b2 a2*4/2 ~ a2*4/2 ~ a2*3/2 g2*7/2 e2*4/2 f2*3/2 g2*4/2 a2 \divisioMaxima
e2*4/2 g2*6/2 ~ g2*3/2 ~ \divisioMinima
g4 ~ g2*4/2 a2*5/2 ~ a2 f2*3/2 d2*3/2 e4 ~ \divisioMaior
e2*5/2 ~ e2 d2*3/2 g4 ~ g2*4/2 ~ g2*3/2 b2 d'2*3/2 c'4 ~ \divisioMaxima
c'2 ~ c'4 ~ c'2 b2 a2 ~ a2*4/2 e2 f2*4/2 g2*3/2 ~ g4 f4 ~ \divisioMaior
f2*5/2 e2 f2*4/2 d2*3/2 a4 \finalis
c'2 d'2*3/2 c'2 b2 d'2*3/2 ~ d'2 c'4 \divisioMaxima
e4 f2 g2 d2 a2 c'2 d'2*3/2 ~ d'2*3/2 c'2*3/2 ~ \divisioMinima
c'2 b2 d'2*3/2 ~ d'2 c'4 \divisioMaxima
e2 d2*6/2 e2*3/2 \divisioMinima
d2 g2*3/2 ~ g2 a4 \divisioMaxima
e2 ~ e2 ~ e2*5/2 f2*4/2 d4 a4 \finalis
}

bassMusic = {
r2*4/2 a2*6/2 ~ a2 ~ a2*3/2 ~ a2 ~ a4 \divisioMaior
e2 c2*4/2 d2*4/2 a,2*3/2 ~ a,2*7/2 ~ a,2*4/2 ~ a,2*3/2 ~ a,2*4/2 ~ a,2 ~ \divisioMaxima
a,2*4/2 ~ a,2*6/2 b,2*3/2 ~ \divisioMinima
b,4 c2*4/2 ~ c2*5/2 a,2 ~ a,2*3/2 ~ a,2*3/2 ~ a,4 ~ \divisioMaior
a,2*5/2 b,2 ~ b,2*3/2 ~ b,4 c2*4/2 e2*3/2 ~ e2 a2*3/2 ~ a4 \divisioMaxima
r2*9/2 a,2*4/2 ~ a,2 ~ a,2*4/2 ~ a,2*3/2 d2 \divisioMaior
a,2*5/2 ~ a,2 ~ a,2*4/2 ~ a,2*3/2 ~ a,4 \finalis
r2 b2*3/2 a2 e2 ~ e2*3/2 a2 ~ a4 \divisioMaxima
a,4 ~ a,2 ~ a,2 ~ a,2 ~ a,2 r2 b2*3/2 a2*3/2 ~ a2*3/2 ~ \divisioMinima
a2 e2 ~ e2*3/2 a2 ~ a4 \divisioMaxima
a,2 ~ a,2*6/2 ~ a,2*3/2 \divisioMinima
b,2 ~ b,2*3/2 c2 ~ c4 \divisioMaxima
b,2 a,2 ~ a,2*5/2 ~ a,2*4/2 ~ a,4 ~ a,4 \finalis
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
        "IV"
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
