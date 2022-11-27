\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.43
%(volume.page)

global = {
 \key g \major
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Hodie scietis" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Hodie scietis"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Hodie scietis" }
    \line {}
  }
}

chantText = \lyricmode {
Hó -- _ di -- e sci -- é -- tis, 
\set stanza = " * " 
qui -- a vé -- ni -- et Dó -- mi -- nus, _ 
et sal -- vá -- bit nos: 
et ma -- ne vi -- dé -- bi -- tis gló -- ri -- am e -- jus. Ps. 
Dó -- mi -- ni est ter -- ra, et ple -- ni -- tú -- do e -- jus: 
\set stanza = " * " 
or -- bis ter -- rá -- rum. et u -- ni -- vér -- si qui há -- bi -- tant in e -- o 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown  e'4 g'4 ( g'4 g'4) g'4 g'4 a'4  a'4 ( c''4 b'4 a'4) a'4 ( g'4) \divisioMaior
 g'4 ( e'4) e'4 e'4 ( g'4 a'4) a'4 ( g'4) g'4 g'4 e'4 \forceBreak
 d'4 ( e'4) fis'4 ( e'4) \divisioMaior
 d'4 e'4 g'4 ( g'4) g'4 ( a'4 g'4) g'4 \divisioMaxima
 e'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4 g'4) g'4 ( fis'4 g'4) \divisioMinima
 e'4 g'4 ( fis'4 g'4) e'4 ( fis'4 e'4 d'4 e'4) e'4 ( d'4 \forceBreak
) g'4 ( g'4) g'4 g'4 g'4 ( \once \tweak #'font-size #-4 a' ) g'4 \finalis
 g'4 ( a'4) a'4 ( g'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 a'4  c''4 b'4 a'4 g'4 \divisioMaxima \forceBreak

 g'4 a'4 ( b'4) b'4 b'4 ( d''4) a'4 \divisioMinima
 g'4 g'4 g'4 g'4 g'4 g'4 g'4 a'4 g'4 e'4 g'4 a'4 g'4 \finalis \forceBreak

 g'4 ( a'4) a'4 ( g'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 a'4  cis''4 b'4 b'4 a'4 g'4 \divisioMaxima
 g'4 a'4 ( b'4) b'4 b'4 \forceBreak
 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 a'4  cis''4 b'4 a'4 g'4 \divisioMaxima
 g'4 a'4 ( b'4) b'4 ( d''4) a'4 g'4 g'4 a'4 g'4 e'4 g'4 a'4 g'4 \finalis

}

altoMusic = {
e'2*7/2 ~ e'2*4/2 d'2 \divisioMaior
c'2*3/2 b2*3/2 c'2*3/2 ~ c'2 ~ c'2 b2 ~ \divisioMaior
b2 c'2 d'2*3/2 e'4 ~ \divisioMaxima
e'2 ~ e'2*3/2 ~ e'2*3/2 ~ \divisioMinima
e'4 d'2*3/2 b2*5/2 ~ b2 d'2 e'2 d'2 ~ d'4 \finalis
e'2 ~ e'2 f'2*3/2 g'2*3/2 e'2 ~ e'2 ~ e'2 ~ \divisioMaxima
e'2*4/2 ~ e'2*3/2 ~ \divisioMinima
e'2*3/2 d'2*3/2 c'2*5/2 b2 \finalis
e'2 d'2 ~ d'2 ~ d'2*3/2 ~ d'2*3/2 \divisioMinima
e'2 ~ e'2*3/2 ~ e'2 ~ \divisioMaxima
e'2*3/2 ~ e'2 ~ e'2 ~ e'2*4/2 ~ e'2 ~ e'2 ~ \divisioMaxima
e'2*3/2 ~ e'2*4/2 d'2 c'2*3/2 b2 \finalis
}

tenorMusic = {
b2*5/2 ~ b2 a2*4/2 e2 ~ \divisioMaior
e2*3/2 ~ e2*3/2 ~ e2*3/2 ~ e2 a2 ~ a4 g4 ~ \divisioMaior
g2 ~ g2 b2*3/2 ~ b4 \divisioMaxima
c'2 b2*3/2 a2*3/2 ~ \divisioMinima
a4 ~ a2*3/2 f2*5/2 g2 b2 a2 c'2 b4 \finalis
c'2 ~ c'2 ~ c'2*3/2 d'2*3/2 ~ d'2 c'2 b2 ~ \divisioMaxima
b2*4/2 a2*3/2 \divisioMinima
e2*3/2 ~ e2*3/2 d'2*5/2 ~ d'2 \finalis
c'2 ~ c'2 b2 a2*3/2 g2*3/2 \divisioMinima
c'2 a2*3/2 e'2 \divisioMaxima
b2*3/2 a2 ~ a2 g2*3/2 ~ \divisioMinima
g4 a2 b2 ~ \divisioMaxima
b2*3/2 a2*4/2 e2 d2*3/2 ~ d2 \finalis
}

bassMusic = {
e2*5/2 d2 c2*4/2 b,2 \divisioMaior
a,2*3/2 g,2*3/2 ~ g,2*3/2 a,2 ~ a,2 e2 ~ \divisioMaior
e2 ~ e2 ~ e2*3/2 ~ e4 \divisioMaxima
c2 ~ c2*3/2 ~ c2*3/2 ~ \divisioMinima
c4 b,2*3/2 ~ b,2*5/2 ~ b,2 ~ b,2 c2 g,2 ~ g,4 \finalis
r2 b2 a,2*3/2 g,2*3/2 a,2 ~ a,2 e2 \divisioMaxima
d2*4/2 c2*3/2 ~ \divisioMinima
c2*3/2 b,2*3/2 a,2*5/2 g,2 \finalis
r2*19/2 \divisioMaxima
e2*3/2 ~ e2 ~ e2 ~ e2*3/2 ~ \divisioMinima
e4 c2 e2 \divisioMaxima
d2*3/2 c2*4/2 b,2 a,2*3/2 g,2 \finalis
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
