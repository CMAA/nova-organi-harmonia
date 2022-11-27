\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.425
%(volume.page)

global = {
 \key d \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Judicant sancti" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Judicant sancti"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Judicant sancti" }
    \line {}
  }
}

chantText = \lyricmode {
Ju -- di -- cant 
\set stanza = " * " san -- cti gen -- _ tes, 
et do -- mi -- nán -- tur pó -- pu -- _ lis: 
re -- gná -- bit Dó -- mi -- nus De -- us _ il -- ló -- rum 
in per -- _ pé -- tu -- um. Ps. 
Ex -- sul -- tá -- te ju -- sti in Dó -- mi -- no 
\set stanza = " * " 
re -- ctos de -- cet col -- lau -- dá -- ti -- o. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   d'4 ( g'4) g'4 ( g'4 a'4) a'4  a'4 ( b'4 a'4) g'4 ( g'4 g'4) a'4 ( g'4) b'4 ( a'4) a'4 \divisioMaior
 a'4 a'4 a'4 ( d''4) d''4 ( c''4) c''4 b'4 ( d''4 c''4 b'4) c''4 ( b'4) ~ b'4 ( a'4 b'4) b'4 ( a'4) \divisioMaxima
 a'4 fis'4 ( g'\prall a'4 b'4) a'4 a'4 ( b'4) a'4 ( g'4) g'4 \divisioMinima
 g'4 ( a'4) a'4 ( g'4) ~ g'4 ( fis'4) e'4 e'4 ( fis'\prall g'4 a'4 g'4 fis'4 g'\prall a'4 g'4 a'4) a'4 ( g'4) \divisioMaior
 g'4 ( a'4 c''4 b'4 a'4) a'4 ( g'4) ~ g'4 ( e'4 fis'\prall g'4) d'4 d'4 ( e'4 d'4) d'4 \finalis
 d'4 ( g'4 fis'4) g'4 ( a'4) a'4 a'4 a'4 ( c''4) b'4 b'4 b'4 b'4 ( a'4) a'4 ( b'4) \divisioMaxima
 a'4 ( fis'4) g'4 ( a'4) a'4 a'4 a'4 ( b'\prall c''4) b'4 g'4 g'4 ( g'4 g'4) e'4 ( d'4) \finalis
  d'4 ( g'4 fis'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 ( c''4) b'4 b'4 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) \divisioMaxima
 a'4 ( fis'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 ( c''4) b'4 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) \divisioMaxima
 a'4 ( fis'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 ( b'\prall c''4) a'4 g'4 g'4 ( g'4 g'4) e'4 ( d'4) \finalis

}

altoMusic = {
b2 d'2*4/2 ~ d'2*3/2 ~ d'2*3/2 e'2 ~ e'2 d'4 ~ \divisioMaior
d'2 fis'2 e'2*3/2 d'2*5/2 ~ d'2*4/2 c'2 \divisioMaxima
r4 d'2*5/2 ~ d'2*4/2 ~ d'4 ~ \divisioMinima
d'2*3/2 ~ d'2*4/2 e'2*5/2 ~ e'2*5/2 ~ e'2 \divisioMaior
c'2*6/2 b2 ~ b2*3/2 a4 ~ a2*3/2 ~ a4 \finalis
d'2*5/2 e'2 g'2*4/2 e'4 fis'2 ~ fis'2 \divisioMaxima
b2*4/2 c'2 d'2*4/2 e'4 a2*3/2 ~ a2 d'2*5/2 e'2*4/2 ~ e'2*3/2 ~ \divisioMinima
e'2 g'2*4/2 fis'2 ~ fis'2 \divisioMaxima
d'2*8/2 e'2*3/2 ~ \divisioMinima
e'4 c'2*3/2 d'2 ~ d'2 \divisioMaxima
b2*4/2 c'2*4/2 d'2*3/2 e'2 a2*3/2 ~ a2 \finalis
}

tenorMusic = {
g2 ~ g2*4/2 fis2*3/2 b2*3/2 a2 g2 fis4 ~ \divisioMaior
fis2 a2 ~ a2*3/2 ~ a2*5/2 e2*4/2 ~ e2 \divisioMaxima
r4 a2*5/2 fis2*4/2 g4 \divisioMinima
b2*3/2 a2*4/2 g2*5/2 a2*5/2 b2 \divisioMaior
g2*6/2 ~ g2 ~ g2*3/2 ~ g4 e2*3/2 fis4 \finalis
d'2*5/2 c'2 e'2*4/2 ~ e'4 d'2 ~ d'2 \divisioMaxima
e2*4/2 ~ e2 ~ e2*4/2 ~ e4 ~ e2*3/2 fis2 d'2*5/2 c'2*4/2 ~ c'2*3/2 ~ \divisioMinima
c'2 ~ c'2*4/2 d'2 ~ d'2 \divisioMaxima
fis2*8/2 g2*3/2 ~ \divisioMinima
g4 ~ g2*3/2 fis2 ~ fis2 \divisioMaxima
e2*4/2 ~ e2*4/2 ~ e2*3/2 ~ e2 d2*3/2 g4 fis4 \finalis
}

bassMusic = {
g,2 b,2*4/2 ~ b,2*3/2 ~ b,2*3/2 c2 ~ c2 d4 ~ \divisioMaior
d2 ~ d2 a,2*3/2 ~ a,2*5/2 ~ a,2*4/2 ~ a,2 \divisioMaxima
r4 b,2*5/2 ~ b,2*4/2 ~ b,4 ~ \divisioMinima
b,2*3/2 ~ b,2*4/2 c2*5/2 ~ c2*5/2 e2 ~ \divisioMaior
e2*6/2 ~ e2 c2*3/2 d4 ~ d2*3/2 ~ d4 \finalis
b2*5/2 c'2 ~ c'2*4/2 ~ c'4 d'2 b2 \divisioMaxima
e2*4/2 a,2 b,2*4/2 c4 ~ c2*3/2 d2 b2*5/2 c'2*4/2 b2*3/2 ~ \divisioMinima
b2 a2*4/2 d'2 b2 \divisioMaxima
d2*8/2 c2*3/2 ~ \divisioMinima
c4 a,2*3/2 d2 b,2 \divisioMaxima
e2*4/2 a,2*4/2 b,2*3/2 c2 d2*3/2 ~ d2 \finalis
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
        "VII"
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
