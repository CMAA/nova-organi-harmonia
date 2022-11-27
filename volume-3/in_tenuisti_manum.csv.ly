\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.114
%(volume.page)

global = {
 \key d \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Tenuisti manum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Tenuisti manum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Tenuisti manum" }
    \line {}
  }
}

chantText = \lyricmode {
Te -- nu -- í -- sti 
\set stanza = " * " ma -- num déx -- _ te -- ram me -- am: 
et in vo -- lun -- tá -- te tu -- a de -- du -- xí -- sti _ me, 
et cum gló -- ri -- a _ sus -- ce -- _ pí -- sti me. T.P. 
Al -- le -- lú -- ia, al -- le -- _ lú -- ia. Ps. 
Quam bo -- nus Is -- ra -- el De -- us, 
\set stanza = " * " 
his qui re -- cto sunt cor -- de! 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   d'4 ( e'4) d'4 d'4 ( e'4 g'4) g'4 \divisioMinima
 a'4 ( g'4 a'4) a'4 a'4 c''4 ( c''4 c''4) a'4 a'4 ( b'4 \once \tweak #'font-size #-4 g' ) a'4 ( b'\prall c''4 b'4 c''4) b'4 ( a'4) \divisioMaxima
 a'4 a'4 ( g'4) a'4 c''4 b'4 ( c''4 d''4 c''4) c''4 b'4 ( c''4 b'4 a'4 b'4) b'4 ( a'4) \divisioMinima
 a'4 a'4 ( c''4) c''4 c''4 ( b'4) c''4 ( b'4 a'4 b'4) b'4 ( a'4) \divisioMaxima
 a'4 ( b'4) g'4 ( a'4) a'4 g'4 ( a'4) a'4 ( b'4 a'4 a'4) fis'4 ( g'4 fis'4) \divisioMinima
 fis'4 ( g'4 a'4 b'4 a'4) a'4 ( g'4) ~ g'4 ( e'4 fis'\prall g'4) d'4 d'4 ( e'4 d'4) d'4 \finalis
 g'4 ( \once \tweak #'font-size #-4 a' ) a'4 g'4 ( a'4 fis'4 g'4 a'4 g'4) g'4 \divisioMinima
 g'4 ( a'4) a'4 ( b'4 g'4) ~ g'4 ( fis'4 e'4 d'4) d'4 ( e'4 d'4) d'4 \finalis
 d'4 ( g'4 fis'4) g'4 ( a'4) a'4 a'4 ( c''4) b'4 b'4 b'4 ( a'4) a'4 ( b'4) \divisioMaxima
 a'4 ( fis'4) g'4 ( a'4) a'4 ( b'\prall c''4) a'4 g'4 g'4 ( g'4 g'4) e'4 ( d'4) \finalis
  d'4 ( g'4 fis'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 ( c''4) b'4 b'4 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) \divisioMaxima
 a'4 ( fis'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 ( c''4) b'4 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) \divisioMaxima
 a'4 ( fis'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 ( b'\prall c''4) a'4 g'4 g'4 ( g'4 g'4) e'4 ( d'4) \finalis

}

altoMusic = {
b2*3/2 ~ b2*3/2 ~ b4 \divisioMinima
e'2*5/2 c'2*4/2 d'2*3/2 e'2*5/2 d'2 \divisioMaxima
r4 e'2*4/2 g'2*4/2 ~ g'4 ~ g'2*5/2 e'2 ~ \divisioMinima
e'4 ~ e'2*3/2 ~ e'2 ~ e'2*4/2 d'2 ~ \divisioMaxima
d'2 ~ d'2 ~ d'2*3/2 e'2*4/2 d'2*3/2 ~ \divisioMinima
d'2*6/2 c'2 ~ c'2*3/2 d'4 a2*3/2 ~ a4 \finalis
d'2 ~ d'4 ~ d'2*3/2 ~ d'2*3/2 ~ d'4 \divisioMinima
e'2 c'2 d'2*4/2 ~ d'4 a2*3/2 ~ a4 \finalis
d'2*3/2 e'2 fis'4 ~ fis'2 ~ fis'2 e'2 fis'2 \divisioMaxima
e'2 d'2 c'2*4/2 ~ c'4 a2*3/2 ~ a2 d'2*3/2 ~ d'2*3/2 e'2*3/2 fis'2*3/2 ~ \divisioMinima
fis'2 ~ fis'2 ~ fis'2 e'2 fis'2 \divisioMaxima
d'2 ~ d'2 ~ d'2*4/2 e'2 fis'4 ~ \divisioMinima
fis'4 e'2*3/2 ~ e'2 d'2 ~ \divisioMaxima
d'2 ~ d'2 ~ d'2*4/2 e'2*3/2 d'2 c'2*3/2 a2 \finalis
}

tenorMusic = {
g2*3/2 ~ g2*3/2 ~ g4 ~ \divisioMinima
g2*5/2 ~ g2*4/2 ~ g2*3/2 ~ g2*5/2 fis2 \divisioMaxima
r4 g2*4/2 ~ g2*4/2 c'4 d'2*5/2 c'2 ~ \divisioMinima
c'4 b2*3/2 a2 ~ a2*4/2 ~ a2 \divisioMaxima
fis2 e2 fis2*3/2 a2*4/2 b2*3/2 \divisioMinima
a2*6/2 ~ a2 g2*3/2 ~ g4 ~ g2*3/2 fis4 \finalis
g2 fis4 e2*3/2 d2*3/2 g4 ~ \divisioMinima
g2 ~ g2 ~ g2*5/2 ~ g2*3/2 fis4 \finalis
d'2*3/2 ~ d'2 ~ d'4 e'2 d'2 c'2 d'2 \divisioMaxima
e2 ~ e2 ~ e2*4/2 g4 ~ g2*3/2 fis2 r2*3/2 b2*3/2 c'2*3/2 d'2*3/2 ~ \divisioMinima
d'2 e'2 d'2 c'2 d'2 \divisioMaxima
fis2 e2 fis2*4/2 g2 a4 ~ \divisioMinima
a4 ~ a2*3/2 g2 fis2 ~ \divisioMaxima
fis2 e2 fis2*4/2 g2*3/2 fis2 g2*3/2 ~ g4 fis4 \finalis
}

bassMusic = {
r2*3/2 fis2*3/2 e4 \divisioMinima
c2*5/2 a,2*4/2 b,2*3/2 c2*5/2 d2 \divisioMaxima
r4 c2*4/2 e2*4/2 ~ e4 ~ e2*5/2 a2 ~ \divisioMinima
a4 ~ a2*3/2 ~ a2 g2*4/2 fis2 \divisioMaxima
d2 ~ d2 ~ d2*3/2 c2*4/2 b,2*3/2 ~ \divisioMinima
b,2*6/2 a,2 ~ a,2*3/2 b,4 d2*3/2 ~ d4 \finalis
b,2 ~ b,4 ~ b,2*3/2 ~ b,2*3/2 ~ b,4 \divisioMinima
c2 a,2 b,2*5/2 d2*3/2 ~ d4 \finalis
r2*12/2 b2 \divisioMaxima
c2 b,2 a,2*4/2 ~ a,4 d2*3/2 ~ d2 r2*20/2 b2 \divisioMaxima
d2 ~ d2 ~ d2*4/2 ~ d2 ~ d4 ~ \divisioMinima
d4 c2*3/2 ~ c2 b,2 \divisioMaxima
d2 ~ d2 ~ d2*4/2 c2*3/2 b,2 a,2*3/2 d2 \finalis
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
