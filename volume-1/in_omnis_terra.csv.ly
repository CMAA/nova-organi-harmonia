\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.119
%(volume.page)

global = {
 \key fis \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Omnis terra" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Omnis terra"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Omnis terra" }
    \line {}
  }
}

chantText = \lyricmode {
O -- mnis ter -- ra 
\set stanza = " * " ad -- ó -- _ ret _ _ te, De -- _ us, 
et psal -- lat ti -- bi: 
psal -- _ mum di -- cat nó -- _ mi -- ni tu -- _ o Al -- tís -- si -- _ me. Ps. 
Ju -- bi -- lá -- te De -- o o -- mnis ter -- ra, 
\set stanza = " * " 
psal -- mum dí -- ci -- te nó -- mi -- ni e -- jus: da -- te gló -- ri -- am lau -- di e -- jus. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   g'4 ( g'4 g'4) e'4 ( g'4 fis'4) fis'4 ( a'4 \once \tweak #'font-size #-4 b' ) b'4 \divisioMinima
 a'4 ( b'4) b'4 ( d''4) ~ d''4 ( a'4) b'4 ( a'4) g'4 ( g'4) e'4 ( fis'4 e'4) fis'4 ( g'4 a'\prall b'4 \forceBreak
) a'4 ( b'4 g'4) ~ g'4 ( fis'4 g'4) g'4 ( fis'4) \divisioMaior
 g'4 ( g'4 g'4) fis'4 ( g'4 a'\prall b'4) b'4 ( a'4) a'4 ( fis'4 g'4) fis'4 ( e'4) \divisioMaxima
 g'4. ~ g'4 ( g'4 g'4) e'4 ( g'4 fis'4 \forceBreak
) fis'4 ( g'4 b'4) b'4 \divisioMinima
 b'4 ( a'4) b'4 d''4 ( d''4) b'4 ( cis''4 a'4) b'4 ( a'4)  fis'4 ( g'4) b'4 ( c''4 a'4) a'4 \divisioMinima
 g'4 ( g'4 g'4) fis'4 ( g'4 a'4) g'4 ( b'4 a'4 g'4 \forceBreak
) a'4 ( g'4 fis'4) fis'4 \finalis
 b'4 ( a'4) a'4 ( b'4) b'4 b'4 b'4 b'4 ( a'4) a'4 ( cis''4) cis''4 b'4 ( cis''4) b'4 \divisioMaxima
 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 \forceBreak
 b'4 b'4 \divisioMinima
 b'4 b'4 b'4 b'4 b'4 a'4 ( \once \tweak #'font-size #-4 g' ) a'4 ( b'4) a'4 fis'4 \finalis
  b'4 a'4 a'4 b'4 b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima \forceBreak

 b'4 b'4 b'4 a'4 a'4 cis''4 cis''4 b'4 cis''4 b'4 \divisioMaxima
 b'4 a'4 a'4 b'4 b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima \forceBreak

 b'4 a'4 a'4 cis''4 cis''4 b'4 cis''4 b'4 \divisioMaxima
 b'4 a'4 a'4 b'4 b'4 b'4 b'4 b'4 b'4 a'4 g'4 a'4 b'4 a'4 fis'4 \finalis

}

altoMusic = {
e'2*3/2 ~ e'2*3/2 ~ e'2*3/2 fis'4 ~ \divisioMinima
fis'2 g'4 fis'2*3/2 ~ fis'2 d'2 ~ d'2*3/2 ~ d'2*4/2 ~ d'2 ~ d'2*4/2 ~ d'2 \divisioMaior
b2*3/2 ~ b2*4/2 ~ b2 ~ b2*3/2 ~ b2 \divisioMaxima
c'2*3/4 d'2*3/2 ~ d'2*3/2 b2*3/2 ~ b4 \divisioMinima
e'2*3/2 d'2 fis'2*3/2 d'2 ~ d'2 e'2*3/2 d'4 \divisioMinima
e'2*3/2 ~ e'2*3/2 d'2*4/2 cis'2*3/2 b4 \finalis
fis'2 e'2 fis'2*3/2 ~ fis'2 ~ fis'2*3/2 ~ fis'2 ~ fis'4 ~ \divisioMaxima
fis'2 e'2*8/2 d'2 ~ \divisioMinima
d'2*5/2 ~ d'2*4/2 ~ d'2 fis'2 e'2*6/2 fis'2*3/2 ~ \divisioMinima
fis'2 ~ fis'2 ~ fis'2*3/2 ~ fis'2 ~ fis'4 ~ \divisioMaxima
fis'2 e'2*6/2 d'2*3/2 \divisioMinima
cis'2 ~ cis'2*3/2 d'2*3/2 \divisioMaxima
e'2 ~ e'2 d'2*5/2 ~ d'2*4/2 cis'4 d'4 \finalis
}

tenorMusic = {
b2*3/2 ~ b2*3/2 ~ b4 c'2 d'4 ~ \divisioMinima
d'2 ~ d'4 ~ d'2*3/2 ~ d'2 b2 ~ b2*3/2 a2*4/2 b2 ~ b2*4/2 ~ b2 \divisioMaior
g2*3/2 a2*4/2 fis2 e2*3/2 a4 g4 ~ \divisioMaxima
g2*3/4 ~ g2*3/2 b2*3/2 ~ b4 e2 fis4 ~ \divisioMinima
fis2*3/2 ~ fis2 ~ fis2*3/2 ~ fis2 b2 a2*3/2 ~ a4 \divisioMinima
b2*3/2 g2*3/2 ~ g2*4/2 e2*3/2 fis4 \finalis
d'2 cis'2 d'2*3/2 cis'2 e'2*3/2 ~ e'2 d'4 \divisioMaxima
fis2 ~ fis2*8/2 ~ fis2 ~ \divisioMinima
fis2*5/2 g2*4/2 b2 d'2 cis'2*6/2 d'2*3/2 ~ \divisioMinima
d'2 cis'2 e'2*3/2 ~ e'2 d'4 \divisioMaxima
fis2 ~ fis2*6/2 ~ fis2*3/2 ~ \divisioMinima
fis2 ~ fis2*3/2 ~ fis2*3/2 ~ \divisioMaxima
fis2 ~ fis2 ~ fis2*5/2 g2*4/2 b2 \finalis
}

bassMusic = {
e2*3/2 g2*3/2 b4 ~ b2 ~ b4 \divisioMinima
c'2 b4 ~ b2*3/2 ~ b2 ~ b2 g2*3/2 fis2*4/2 ~ fis2 e2*4/2 b,2 \divisioMaior
e2*3/2 d2*4/2 ~ d2 e2*3/2 ~ e2 \divisioMaxima
a,2*3/4 b,2*3/2 ~ b,2*3/2 d4 ~ d2 ~ d4 \divisioMinima
cis2*3/2 b,2 d2*3/2 fis2 e2 g2*3/2 fis4 \divisioMinima
e2*3/2 ~ e2*3/2 b,2*4/2 ~ b,2*3/2 ~ b,4 \finalis
b2 ~ b2 ~ b2*3/2 fis2 ~ fis2*3/2 b2 ~ b4 \divisioMaxima
d2 cis2*8/2 b,2 ~ \divisioMinima
b,2*5/2 ~ b,2*4/2 ~ b,2 b2 ~ b2*6/2 ~ b2*3/2 ~ \divisioMinima
b2 fis2 ~ fis2*3/2 b2 ~ b4 \divisioMaxima
d2 cis2*6/2 b,2*3/2 \divisioMinima
fis2 fis,2*3/2 b,2*3/2 \divisioMaxima
cis2 b,2 ~ b,2*5/2 ~ b,2*4/2 ~ b,2 \finalis
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
