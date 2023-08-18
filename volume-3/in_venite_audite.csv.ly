\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.13
%(volume.page)

global = {
 \key g \major
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Venite audite" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Venite audite"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Venite audite" }
    \line {}
  }
}

chantText = \lyricmode {
Ve -- ni -- _ te, 
\set stanza = " * " au -- dí -- te, 
et nar -- rá -- bo, o -- mnes qui ti -- mé -- tis De -- um, 
quan -- ta fe -- cit Dó -- mi -- nus á -- _ ni -- mæ me -- æ. Ps. 
Ju -- bi -- lá -- te De -- o o -- mnis ter -- ra: 
\set stanza = " * " 
psal -- mum dí -- ci -- te nó -- mi -- ni e -- jus, da -- te gló -- ri -- am lau -- di e -- jus. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   e'4 g'4 ( e'4) g'4 ( g'4 g'4) g'4 \divisioMinima
 a'4  a'4 ( cis''4 b'4 a'4) a'4 ( g'4) \divisioMaior
 g'4 ( fis'4) a'4 a'4 ( b'4 g'4) g'4 \divisioMinima
 g'4 ( a'4 \tiny g' e' 4) e'4 fis'4 g'4 a'4 ( g'4) a'4 e'4 ( fis'4 e'4 d'4) d'4 \divisioMaxima
 g'4 ( e'4 g'4) g'4  a'4 ( cis''4) b'4 a'4 ( b'4) a'4 ( g'4) g'4 \divisioMinima
 a'4 ( g'4) b'4 ( a'4) g'4 g'4 g'4 ( a'4 g'4) g'4 \finalis
 g'4 ( a'4) a'4 ( g'4) a'4 ( b'4) b'4 b'4 a'4  cis''4 b'4 a'4 g'4 \divisioMaxima
 g'4 a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 ( d''4) a'4 \divisioMinima
 g'4 g'4 g'4 g'4 a'4 g'4 ( \once \tweak #'font-size #-4 e' ) g'4 a'4 g'4 \finalis
  g'4 ( a'4) a'4 ( g'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 a'4  cis''4 b'4 b'4 a'4 g'4 \divisioMaxima
 g'4 a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 a'4  cis''4 b'4 a'4 g'4 \divisioMaxima
 g'4 a'4 ( b'4) b'4 ( d''4) a'4 g'4 g'4 a'4 g'4 ( e'4) g'4 a'4 g'4 \finalis

}

altoMusic = {
b4 c'2 d'2*3/2 ~ d'4 ~ \divisioMinima
d'4 e'2*4/2 d'2 ~ \divisioMaior
d'2*3/2 ~ d'2*3/2 ~ d'4 \divisioMinima
b2*5/2 d'2 ~ d'2*3/2 b2*4/2 a4 \divisioMaxima
b2*4/2 e'2*3/2 ~ e'2*4/2 d'4 \divisioMinima
c'2*4/2 d'2 c'2*3/2 b4 \finalis
e'2 d'2 ~ d'2 ~ d'4 e'2*4/2 d'2 ~ \divisioMaxima
d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ \divisioMinima
d'2 c'2*6/2 ~ c'4 b4 e'2 d'2 ~ d'2 ~ d'2*3/2 ~ d'2*3/2 ~ \divisioMinima
d'2 e'2*3/2 d'2 \divisioMaxima
e'2*3/2 d'2*4/2 e'2*4/2 ~ e'2 d'2 \divisioMaxima
e'2*3/2 d'2*6/2 c'2*3/2 ~ c'4 b4 \finalis
}

tenorMusic = {
g4 a2 b2*3/2 ~ b4 \divisioMinima
a4 ~ a2*4/2 b2 ~ \divisioMaior
b2*3/2 fis2*3/2 g4 ~ \divisioMinima
g2*5/2 a2 fis2*3/2 g2*4/2 fis4 \divisioMaxima
g2*4/2 ~ g2*3/2 ~ g2*4/2 ~ g4 ~ \divisioMinima
g2*4/2 ~ g2 ~ g2*3/2 ~ g4 \finalis
c'2 b2 a2 r4 a2*4/2 c'4 b4 ~ \divisioMaxima
b2*3/2 a2*3/2 g2*3/2 fis2*3/2 \divisioMinima
g2 ~ g2*6/2 ~ g2 ~ g2 ~ g2 ~ g2 ~ g2*3/2 fis2*3/2 ~ \divisioMinima
fis2 g2*3/2 ~ g2 ~ \divisioMaxima
g2*3/2 ~ g2*4/2 ~ g2*4/2 ~ g2 ~ g2 ~ \divisioMaxima
g2*3/2 ~ g2*6/2 ~ g2*3/2 ~ g2 \finalis
}

bassMusic = {
r2*6/2 g4 \divisioMinima
fis4 g2*4/2 ~ g2 \divisioMaior
b,2*3/2 ~ b,2*3/2 ~ b,4 \divisioMinima
e2*5/2 d2 ~ d2*3/2 e2*4/2 fis4 \divisioMaxima
e2*4/2 d2*3/2 c2*4/2 b,4 \divisioMinima
a,2*4/2 b,2 g,2*3/2 ~ g,4 \finalis
r2*6/2 g4 ~ g2*4/2 ~ g2 \divisioMaxima
b,2*3/2 ~ b,2*3/2 ~ b,2*3/2 ~ b,2*3/2 ~ \divisioMinima
b,2 a,2*6/2 g,2 c2 b,2 a,2 g,2*3/2 b,2*3/2 \divisioMinima
d2 c,2*3/2 b,2 \divisioMaxima
c2*3/2 b,2*4/2 e2*3/2 ~ \divisioMinima
e4 c2 b,2 \divisioMaxima
c2*3/2 b,2*6/2 a,2*3/2 g,2 \finalis
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
        "VI"
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
