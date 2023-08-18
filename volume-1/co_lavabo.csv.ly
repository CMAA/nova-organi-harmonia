\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.292
%(volume.page)

global = {
 \key g \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Lavabo" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Lavabo"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Lavabo" }
    \line {}
  }
}

chantText = \lyricmode {
La -- vá -- bo 
\set stanza = " * " in -- ter in -- no -- cén -- tes ma -- nus me -- as, 
et cir -- cu -- í -- _ _ bo 
al -- tá -- _ re tu -- um, Dó -- mi -- ne: 
ut áu -- di -- am _ vo -- cem lau -- dis tu -- _ æ, 
et e -- nár -- rem _ u -- ni -- vér -- sa mi -- ra -- bí -- li -- a _ tu -- _ _ _ _ a. }

chantMusic = {
\tieDown   d'4 f'4 ( a'4 g'4) g'4 \divisioMinima
 g'4 ( a'4) g'4 g'4 ( a'4) g'4 f'4 ( g'4 f'4 f'4) d'4 ( e'\prall f'4 e'4 c'4) \divisioMinima \forceBreak

 f'4 ( g'4 a'4) f'4 ( g'4) g'4 ( a'\prall b'4 a'4 b'4) a'4 ( g'4) \divisioMaxima
 g'4 ( \once \tweak #'font-size #-4 e' ) g'4 ( a'4 \once \tweak #'font-size #-4 g' ) a'4 ( b'4 a'4) c''4. ~ c''4 ( c''4) ~ c''4 ( a'4 g'4 f'4 g'\prall a'4 g'4 a'4) a'4 ( g'4) \divisioMaior \forceBreak

 f'4  g'4 ( a'4 g'4) a'4 ( bes'4) a'4 g'4 ( f'4 g'\prall a'4 g'4 f'4) g'4 \divisioMinima
 g'4 g'4 ( a'\prall b'4 a'4 b'4) a'4 ( g'4) \divisioMaxima \forceBreak

 c''4 ( b'4) c''4 ( d''4) c''4 c''4 ( b'4) c''4 ( d''4 c''4) a'4 f'4 ( a'4) a'4 ( b'\prall c''4) g'4 ( a'4) a'4 ( g'4) ~ g'4 ( f'4 g'4) g'4 ( f'4) \divisioMaior \forceBreak

 g'4 ( c''4) c''4 c''4 ( d''4) c''4 ( b'4) c''4 ( d''4 c''4) \divisioMinima
 c''4 ( b'4) b'4 ( g'4) a'4 ( \once \tweak #'font-size #-4 b' ) b'4 b'4 b'4 d''4 ( b'4 c''4) a'4 ( g'4) g'4 ( f'4) a'4 ( b'\prall c''4) \divisioMinima \forceBreak

 g'4 ( f'4) ~ f'4 ( d'4.) f'4 ( a'4) c''4 ( g'4) ~ g'4 ( f'4 g'\prall a'4 g'4 a'4) a'4 ( g'4) \finalis

}

altoMusic = {
r4 d'2*3/2 ~ d'4 ~ \divisioMinima
d'2*3/2 ~ d'2*3/2 ~ d'2*4/2 e'4 r2*4/2 \divisioMinima
c'2*3/2 ~ c'2 d'2*5/2 ~ d'2 \divisioMaxima
e'2 ~ e'2*3/2 g'2*3/2 ~ g'2*3/4 f'2 e'2*3/2 d'2*5/2 e'2 \divisioMaior
f'4 ~ f'2*3/2 ~ f'2*3/2 ~ f'2*6/2 c'4 \divisioMinima
d'4 e'2*5/2 d'2 \divisioMaxima
g'2 ~ g'2*3/2 f'2*5/2 ~ f'4 ~ f'2 e'2*3/2 ~ e'2 ~ e'4 ~ e'2*4/2 d'2 \divisioMaior
g'2 ~ g'4 f'2*4/2 e'2*3/2 ~ \divisioMinima
e'2 d'2 e'2*3/2 ~ e'2 f'2*3/2 e'2 d'2 e'2*3/2 ~ \divisioMinima
e'4 c'2*7/4 ~ c'2*3/2 ~ c'2*4/2 ~ c'2*3/2 b2 \finalis
}

tenorMusic = {
r4 c'2*3/2 b4 \divisioMinima
a2*3/2 b2*3/2 a2*4/2 ~ a2*5/2 \divisioMinima
f2*3/2 e2 d2*5/2 g2 \divisioMaxima
b2 d'2*3/2 c'2*3/2 ~ c'2*3/4 ~ c'2 ~ c'2*3/2 a2*5/2 c'2 ~ \divisioMaior
c'4 ~ c'2*3/2 bes2*3/2 a2*6/2 g4 ~ \divisioMinima
g4 ~ g2*5/2 ~ g2 ~ \divisioMaxima
g2 a2*3/2 ~ a2*5/2 b4 c'2 ~ c'2*3/2 b2 a4 ~ a2*4/2 ~ a2 \divisioMaior
g2 a4 ~ a2*4/2 ~ a2*3/2 \divisioMinima
g2 ~ g2 ~ g2*3/2 ~ g2 a2*3/2 ~ a2 ~ a2 ~ a2*3/2 ~ \divisioMinima
a4 ~ a2*7/4 f2*3/2 e2*4/2 f2*3/2 d2 \finalis
}

bassMusic = {
d4 ~ d2*3/2 g4 ~ \divisioMinima
g2*3/2 ~ g2*3/2 d2*4/2 f2*5/2 \divisioMinima
a,2*3/2 ~ a,2 b,2*5/2 ~ b,2 \divisioMaxima
e2 ~ e2*3/2 ~ e2*3/2 ~ e2*3/4 d2 c2*3/2 ~ c2*5/2 ~ c2 \divisioMaior
d4 ~ d2*3/2 ~ d2*3/2 ~ d2*6/2 e4 \divisioMinima
d4 c2*5/2 b,2 \divisioMaxima
e2 ~ e2*3/2 d2*5/2 ~ d4 ~ d2 c2*3/2 ~ c2 ~ c4 d2*4/2 ~ d2 \divisioMaior
e2 ~ e4 d2*4/2 a,2*3/2 ~ \divisioMinima
a,2 b,2 c2*3/2 e2 d2*3/2 ~ d2 ~ d2 c2*3/2 ~ \divisioMinima
c4 a,2*7/4 ~ a,2*3/2 ~ a,2*4/2 d2*3/2 g,2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Communion"
        "VIII"
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
