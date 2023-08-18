\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.176
%(volume.page)

global = {
 \key a \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Dum clamarem" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Dum clamarem"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Dum clamarem" }
    \line {}
  }
}

chantText = \lyricmode {
Dum cla -- má -- rem 
\set stanza = " * " ad Dó -- mi -- num, 
ex -- au -- dí -- vit vo -- cem me -- am, 
ab his qui ap -- pro -- pín -- quant _ _ mi -- hi: 
et hu -- mi -- li -- á -- _ vit e -- _ os, 
qui est an -- te sǽ -- cu -- la, 
et ma -- _ net in æ -- _ _ tér -- num: 
ja -- cta co -- gi -- tá -- tum tu -- um in Dó -- mi -- no, 
et i -- pse te _ _ e -- _ nú -- tri -- et. Ps. 
Ex -- áu -- di De -- us o -- ra -- ti -- ó -- nem me -- am, et ne de -- spé -- xe -- ris de -- pre -- ca -- ti -- ó -- nem me -- am: 
\set stanza = " * " 
in -- tén -- de mi -- hi, et ex -- áu -- di me. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   e'4 ( e'4 f'4) d'4 ( g'4 e'4) e'4 ( g'4) g'4  a'4 ( g'4 a'4) a'4 ( c''4 b'4) c''4 c''4 \divisioMaior
 c''4 b'4 ( \once \tweak #'font-size #-4 a' ) c''4 ( c''4 c''4 \forceBreak
) g'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( g'4) g'4 ( f'4 a'4) a'4 ( b'\prall c''4 b'4 a'4 g'4 a'4) a'4 ( g'4) \divisioMaior
 g'4 ( a'4) a'4 g'4 a'4 c''4 ( c''4) g'4 a'4 ( g'4) ~ g'4 ( f'4 \forceBreak
) g'4 ( a'4 g'4) e'4 ( g'4 f'4 f'4) f'4 ( e'4) \divisioMaxima
 f'4 f'4 e'4 ( f'\prall g'4 a'4) g'4 g'4 ( a'4) c''4 ( b'4) c''4 d''4 ( c''4) ~ c''4 ( b'4 a'4) b'4 ( a'4) \divisioMaior \forceBreak

 g'4 c''4 ( c''4) a'4 ( \once \tweak #'font-size #-4 b' ) g'4 c''4 ( c''4) a'4 ( d''4 c''4 b'4 c''4) c''4 ( b'4) \divisioMaior
 c''4 ( d''4) c''4 d''4 ( c''4 c''4) b'4 ( a'4) a'4 a'4 ( g'4) ~ g'4 ( f'4 \forceBreak
) g'4 ( a'4 g'4) e'4 ( g'4 f'4 f'4) f'4 ( e'4) \divisioMaxima
 e'4 ( g'4 f'4) e'4 ( e'4 f'4) d'4 ( g'4) g'4 a'4 g'4 a'4 g'4 f'4 ( \once \tweak #'font-size #-4 a' ) a'4 \forceBreak
 g'4 ( b'4 g'4 a'4) b'4 ( a'4) \divisioMaior
 f'4 g'4 a'4 a'4 ( b'\prall c''4) d''4 ( c''4) ~ c''4 ( g'4) \divisioMinima
 a'4 ( b'\prall c''4 b'4 a'4) b'4 ( g'4 a'\prall b'4 a'4 g'4 \forceBreak
) e'4 e'4 ( g'4 f'4 f'4) f'4 ( e'4) \finalis
 g'4 a'4 ( c''4) c''4 c''4 c''4 c''4 c''4 c''4 c''4 c''4 c''4 c''4 \divisioMinima \forceBreak

 c''4 c''4 c''4 c''4 c''4 c''4 c''4 c''4 c''4 c''4 d''4 c''4 b'4 ( a'4) c''4 ( c''4 c''4) \divisioMaxima \forceBreak

 b'4 ( \once \tweak #'font-size #-4 g' ) a'4 ( c''4) c''4 c''4 c''4 c''4 ( c''4 b'4) a'4 ( g'4) a'4 b'4 g'4 ( a'4) \finalis
  g'4 a'4 ( c''4) c''4 c''4 c''4 c''4 c''4 c''4 c''4 \divisioMinima \forceBreak

 c''4 c''4 d''4 c''4 c''4 b'4 ( \once \tweak #'font-size #-4 a' ) c''4 ( c''4 c''4) \divisioMaxima
 b'4 ( g'4) a'4 ( c''4) c''4 c''4 c''4 c''4 c''4 c''4 c''4 \divisioMinima \forceBreak

 c''4 d''4 c''4 b'4 ( \once \tweak #'font-size #-4 a' ) c''4 ( c''4 c''4) \divisioMaxima
 b'4 ( g'4) a'4 ( c''4) c''4 c''4 c''4 c''4 c''4 ( c''4 b'4) a'4 g'4 a'4 b'4 g'4 ( a'4) \finalis

}

altoMusic = {
r2*5/2 e'4 ~ e'2 ~ e'4 f'2*3/2 ~ f'2*4/2 g'4 ~ \divisioMaior
g'4 ~ g'2 e'2*3/2 ~ e'2 ~ e'2 c'2*3/2 f'2*4/2 d'2*3/2 ~ d'2 \divisioMaior
e'2 ~ e'2*3/2 ~ e'2 ~ e'2 c'2*3/2 ~ c'2*3/2 b2*4/2 c'2 ~ \divisioMaxima
c'2 ~ c'2 ~ c'2*3/2 ~ c'2 e'2 ~ e'2 f'2*4/2 e'2 ~ \divisioMaior
e'4 c'2 b2*3/2 e'2 f'2 ~ f'2*3/2 g'2 \divisioMaior
e'2*3/2 g'2*3/2 e'2*4/2 d'2*3/2 ~ d'2*3/2 c'2*4/2 ~ c'2 \divisioMaxima
b2*3/2 c'2*3/2 b2*3/2 e'2 ~ e'2 d'2 f'4 e'2*4/2 ~ e'2 \divisioMaior
d'4 ~ d'2 e'2*4/2 g'2*3/2 ~ \divisioMinima
g'2 f'2*3/2 d'2*3/2 ~ d'2*3/2 c'4 b2*4/2 c'2 \finalis
e'4 ~ e'2*3/2 ~ e'2*5/2 f'2 e'2 \divisioMinima
f'2*3/2 g'2*7/2 a'2 g'2 e'2*3/2 \divisioMaxima
d'2 c'2*3/2 e'2 f'2*3/2 e'2 ~ e'2 ~ e'2 ~ e'4 ~ e'2*3/2 ~ e'2 f'4 g'2*3/2 ~ \divisioMinima
g'2 a'2*3/2 g'2 e'2*3/2 ~ \divisioMaxima
e'2 ~ e'2 ~ e'2*4/2 ~ e'2*3/2 ~ \divisioMinima
e'4 f'2 g'2 e'2*3/2 \divisioMaxima
d'2 c'2 e'2*4/2 f'2*3/2 e'2 ~ e'2 ~ e'2 \finalis
}

tenorMusic = {
c'2*3/2 b2*3/2 c'2 b4 c'2*3/2 ~ c'2*4/2 ~ c'4 \divisioMaior
e'4 d'2 c'2*3/2 ~ c'2 b2 a2*3/2 ~ a2*4/2 f2*3/2 g2 \divisioMaior
c'2 b2*3/2 a2 e2 f2*3/2 e2*3/2 d2*4/2 a2 \divisioMaxima
f2 g2 e2*3/2 ~ e2 g2 a2 ~ a2*4/2 ~ a2 ~ \divisioMaior
a4 g2 ~ g2*3/2 ~ g2 a2 d'2*3/2 ~ d'2 \divisioMaior
c'2*3/2 ~ c'2*3/2 ~ c'2*4/2 a2*3/2 g2*3/2 a2*4/2 g2 ~ \divisioMaxima
g2*3/2 ~ g2*3/2 ~ g2*3/2 e2 a2 ~ a2 c'4 b2*4/2 c'2 \divisioMaior
d'4 b2 a2*4/2 g2*3/2 \divisioMinima
c'2 a2*3/2 g2*3/2 ~ g2*3/2 ~ g4 a2*4/2 ~ a2 \finalis
r4 c'2*3/2 ~ c'2*5/2 d'2 c'2 ~ \divisioMinima
c'2*3/2 ~ c'2*7/2 a2 d'2 c'2*3/2 \divisioMaxima
e2 ~ e2*3/2 a2 ~ a2*3/2 b2 d'2 ~ d'4 c'4 r4 c'2*3/2 ~ c'2*3/2 ~ c'2*3/2 ~ \divisioMinima
c'2 a2*3/2 d'2 c'2*3/2 \divisioMaxima
g2 e2 a2*4/2 ~ a2*4/2 ~ a2 d'2 c'2*3/2 \divisioMaxima
e2 ~ e2 a2*4/2 ~ a2*3/2 b2 ~ b4 d'4 ~ d'4 c'4 \finalis
}

bassMusic = {
r2*6/2 a2 e4 ~ e2*3/2 d2*4/2 e4 ~ \divisioMaior
e4 g2 a2*3/2 e2 ~ e2 ~ e2*3/2 d2*4/2 c2*3/2 b,2 \divisioMaior
c2 ~ c2*3/2 ~ c2 b,2 a,2*3/2 ~ a,2*3/2 ~ a,2*4/2 ~ a,2 ~ \divisioMaxima
a,2 c2 ~ c2*3/2 b,2 ~ b,2 a,2 d2*4/2 c2 ~ \divisioMaior
c4 e2 ~ e2*3/2 ~ e2 d2 ~ d2*3/2 g2 \divisioMaior
a2*3/2 e2*3/2 c2*4/2 d2*3/2 b,2*3/2 a,2*4/2 c2 \divisioMaxima
g,2*3/2 a,2*3/2 b,2*3/2 c2 ~ c2 d2 ~ d4 ~ d2*4/2 c2 \divisioMaior
r4 c2 ~ c2*4/2 e2*3/2 \divisioMinima
f2 d2*3/2 g2*3/2 e2*3/2 ~ e4 d2*4/2 a,2 \finalis
r2*4/2 a2*7/2 ~ a2 ~ \divisioMinima
a2*3/2 e2*7/2 f2 g2 a2*3/2 \divisioMaxima
a,2 ~ a,2*3/2 ~ a,2 d2*3/2 e2 ~ e2 a2 r2*4/2 a2*3/2 e2*3/2 ~ \divisioMinima
e2 f2*3/2 g2 a2*3/2 \divisioMaxima
e2 c2 ~ c2*4/2 a,2*3/2 ~ \divisioMinima
a,4 d2 e2 a2*3/2 \divisioMaxima
a,2 ~ a,2 ~ a,2*4/2 d2*3/2 e2 ~ e2 a2 \finalis
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
