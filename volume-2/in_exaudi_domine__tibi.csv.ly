\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.70
%(volume.page)

global = {
 \key e \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Exaudi Domine... tibi" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Exaudi Domine... tibi"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Exaudi Domine... tibi" }
    \line {}
  }
}

chantText = \lyricmode {
Ex -- áu -- di, 
\set stanza = " * " Dó -- _ mi -- ne, vo -- cem me -- am, qua cla -- má -- vi ad te, al -- le -- lú -- ia: 
ti -- bi di -- xit cor me -- um, 
quæ -- sí -- vi vul -- tum tu -- um, 
vul -- tum tu -- um Dó -- mi -- ne re -- quí -- ram: 
ne a -- vér -- tas fá -- ci -- em tu -- am a me, 
al -- le -- lú -- ia, al -- le -- _ _ lú -- ia. Ps. 
Dó -- mi -- nus il -- lu -- mi -- ná -- ti -- o me -- a, 
\set stanza = " * " 
et sa -- lus me -- a: quem ti -- mé -- bo? 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown    e'4 ( e'4 f'4) d'4 ( g'4) g'4  a'4 ( b'4 a'4) b'4 ( c''4) b'4 b'4 \divisioMinima
 b'4 g'4 a'4 ( b'4 a'4) a'4 \divisioMinima
 g'4 g'4 ( e'4) g'4 ( b'4) a'4 \forceBreak
 g'4 ( \once \tweak #'font-size #-4 a' ) g'4 \divisioMinima
 g'4 g'4 ( fis'4 a'4) g'4 ( a'4 g'4 g'4) e'4 \divisioMaxima
 e'4 ( a'4) a'4 b'4 a'4 g'4 g'4 ( fis'4 e'4) e'4 ( fis'\prall g'4) \divisioMaior \forceBreak

 g'4 ( e'4) g'4 ( b'4) a'4 ( b'4 a'4 g'4) b'4 ( c''4 \once \tweak #'font-size #-4 a' ) b'4 ( a'4) g'4 ( a'4 b'4 a'4 g'4 a'4) a'4 ( g'4) \divisioMaior
 a'4 a'4 a'4 a'4 b'4 a'4 g'4 \forceBreak
 fis'4 d'4 ( e'4) e'4 \divisioMaxima
 e'4 ( g'4 fis'4 e'4 fis'\prall g'4) g'4 ( e'4) g'4 ( b'4) a'4 a'4 ( b'4) g'4 fis'4 ( \once \tweak #'font-size #-4 e' ) g'4 ( a'4) g'4 ( fis'4) e'4 ( fis'4) e'4 \divisioMaior \forceBreak

 b'4 ( c''4) b'4 b'4 ( a'4 b'4) g'4 ( e'4) \divisioMinima
 g'4 ( a'4) fis'4 ( g'4 a'4) b'4 ( g'4) a'4 ( g'4 fis'4) e'4 ( fis'\prall g'4 fis'4 g'4) fis'4 ( e'4) \finalis \forceBreak

 g'4 a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 ( d''4) b'4 b'4 b'4 ( a'4) a'4 ( b'4) \divisioMaxima
 a'4 ( \once \tweak #'font-size #-4 g' ) a'4 ( b'4) b'4 b'4 b'4 ( d''4 b'4 \forceBreak
) a'4 g'4 g'4 ( g'4 g'4) e'4 \finalis
  g'4 a'4 b'4 b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 b'4 b'4 d''4 b'4 b'4 \forceBreak
 b'4 \once \tweak #'font-size #-4 a'  a'4 b'4 \divisioMaxima
 a'4 g'4 a'4 b'4 b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 b'4 d''4 b'4 b'4 \once \tweak #'font-size #-4 a'  a'4 b'4 \divisioMaxima \forceBreak

 a'4 g'4 a'4 b'4 b'4 b'4 b'4 b'4 b'4 d''4 b'4 a'4 g'4 g'4 g'4 g'4 e'4 \finalis

}

altoMusic = {
c'2*3/2 d'2*3/2 e'2*3/2 ~ e'2 ~ e'2 ~ \divisioMinima
e'2 d'2*3/2 ~ d'4 \divisioMinima
b4 c'2 ~ c'2*3/2 d'2 ~ d'4 ~ \divisioMinima
d'4 ~ d'2*3/2 e'2 b2 ~ b4 \divisioMaxima
e'2*3/2 d'2*3/2 b2*3/2 ~ b2*3/2 ~ \divisioMaior
b2 d'2*6/2 c'2*5/2 d'2 ~ d'2*4/2 ~ d'2 ~ \divisioMaior
d'2 ~ d'2 ~ d'2*3/2 ~ d'4 b2 ~ b4 ~ \divisioMaxima
b2*3/2 c'2*3/2 d'2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'2 ~ d'2 ~ d'2*3/2 ~ \divisioMaior
d'2*3/2 ~ d'2*3/2 b2 \divisioMinima
d'2 ~ d'2*3/2 ~ d'2 b2*3/2 ~ b2*5/2 ~ b2 \finalis
g'4 ~ g'2*3/2 ~ g'2*3/2 fis'2*4/2 e'2 fis'2 \divisioMaxima
e'2 ~ e'2*4/2 d'2*3/2 ~ d'2 b2*3/2 ~ b4 g'2*4/2 ~ g'2*3/2 ~ g'2*3/2 ~ \divisioMinima
g'2 fis'2*4/2 e'2 fis'2 \divisioMaxima
e'2*4/2 ~ e'2*4/2 ~ e'2*3/2 ~ \divisioMinima
e'4 d'2*3/2 e'2 d'2 \divisioMaxima
e'2*4/2 ~ e'2*4/2 d'2*3/2 ~ d'2 b2*3/2 <b g>4 \finalis
}

tenorMusic = {
r2*3/2 b2*3/2 ~ b2*3/2 a2 g2 ~ \divisioMinima
g2 e2*3/2 fis4 \divisioMinima
e4 ~ e2 ~ e2*3/2 d2 g4 ~ \divisioMinima
g4 b2*3/2 ~ b2 a2 g4 ~ \divisioMaxima
g2*3/2 fis2*3/2 e2*3/2 g2*3/2 ~ \divisioMaior
g2 ~ g2*6/2 ~ g2*5/2 ~ g2 fis2*4/2 c'4 b4 \divisioMaior
g2 fis2 ~ fis2*3/2 a4 ~ a2 g4 ~ \divisioMaxima
g2*3/2 ~ g2*3/2 ~ g2 e2*3/2 fis2*3/2 b2 ~ b2 ~ b2 ~ b2*3/2 \divisioMaior
g2*3/2 ~ g2*3/2 ~ g2 \divisioMinima
b2 a2*3/2 g2 fis2*3/2 a2*5/2 g2 \finalis
r2*4/2 e'2*3/2 d'2*4/2 c'2 d'2 \divisioMaxima
b2 g2*4/2 ~ g2*3/2 b2 a2*3/2 g4 r2*4/2 fis'2*3/2 e'2*3/2 ~ \divisioMinima
e'2 d'2*4/2 c'2 d'2 \divisioMaxima
b2*4/2 a2*4/2 g2*3/2 ~ \divisioMinima
g4 ~ g2*3/2 ~ g2 ~ g2 \divisioMaxima
b2*4/2 g2*4/2 ~ g2*3/2 e2 ~ e2*3/2 ~ e4 \finalis
}

bassMusic = {
a2*3/2 ~ a2*3/2 g2*3/2 ~ g2 ~ g2 \divisioMinima
d2 ~ d2*3/2 ~ d4 ~ \divisioMinima
d4 c2 a,2*3/2 b,2 ~ b,4 ~ \divisioMinima
b,4 ~ b,2*3/2 e2 ~ e2 ~ e4 \divisioMaxima
d2*3/2 ~ d2*3/2 e2*3/2 ~ e2*3/2 ~ \divisioMaior
e2 b,2*6/2 a,2*5/2 b,2 d2*4/2 g2 \divisioMaior
d2 ~ d2 b,2*3/2 ~ b,4 e2 ~ e4 \divisioMaxima
g,2*3/2 a,2*3/2 b,2 d2*3/2 ~ d2*3/2 ~ d2 e2 fis2 g2*3/2 ~ \divisioMaior
g2*3/2 fis2*3/2 e2 \divisioMinima
b,2 ~ b,2*3/2 ~ b,2 d2*3/2 e2*5/2 ~ e2 \finalis
r2*13/2 b2 \divisioMaxima
e2 ~ e2*4/2 b,2*3/2 ~ b,2 e2*3/2 ~ e4 r2*10/2 \divisioMinima
r2*8/2 b2 \divisioMaxima
e2*4/2 ~ e2*4/2 ~ e2*3/2 ~ \divisioMinima
e4 b,2*3/2 c2 g2 \divisioMaxima
e2*4/2 ~ e2*4/2 b,2*3/2 ~ b,2 e,2*3/2 ~ e,4 \finalis
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
