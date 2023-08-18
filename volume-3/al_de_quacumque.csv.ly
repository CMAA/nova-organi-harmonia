\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.163
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"De quacumque" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "De quacumque"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "De quacumque" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- ia, _ 
\set stanza = " * " al -- le -- lú -- ia. _ _ _ _ 
_ _ _ _ _ _ _ _ _ ℣. 
De qua -- cúm -- que tri -- bu -- la -- ti -- ó -- _ _ ne cla -- má -- ve -- rint ad me, 
e -- xáu -- di -- am e -- _ os, 
et e -- ro pro -- té -- _ ctor e -- ó -- rum 
\set stanza = " * " sem -- per. _ _ _ _ 
_ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   c'4 e'4 g'4 ( a'4 b'4) a'4. g'4 ( a'4 g'4) \divisioMinima
  c'4 e'4 g'4 ( a'4 b'4) a'4. g'4 ( a'4 g'4) \divisioMinima
 c''4 ( b'4 g'4) a'4 ( a'4 g'4 e'4) f'4 ( e'4 d'4 e'4) \divisioMaior
 c'4 ( e'4) g'4 ( a'4.) g'4 ( b'4 a'4) g'4 ( b'4 a'4) g'4 ( g'4 f'4 d'4.) e'4 ( f'4 e'4 d'4.) c'4 ( e'4) f'4 ( e'4) ~ e'4 ( d'4) \finalis
 a'4 a'4 ( g'4 e'4) g'4 ( \once \tweak #'font-size #-4 a' ) a'4 a'4 ( g'4) e'4 f'4 ( e'4) d'4 ( e'4) c'4 ( e'4) g'4 ( g'4 e'4 f'4.) g'4 ( a'4 g'4 e'4 f'4) e'4 ( d'4) \divisioMinima
 a'4 a'4 ( g'4 e'4) g'4 ( a'4) a'4 ( d'4) e'4 ( f'4 g'4) f'4 ( e'4) \divisioMaior
 g'4 f'4 ( a'4) g'4 e'4 ( d'4) e'4 ( d'4 c'4) d'4 ( e'\prall f'4) e'4 ( d'4) \divisioMaxima
 e'4 d'4 ( d'4) c'4 e'4 g'4. f'4 ( a'4 g'4) e'4 f'4 e'4 ( d'4) c'4 ( e'4)  g'4 ( a'4 b'4) a'4. g'4 ( a'4 g'4) \divisioMinima
 c''4 ( b'4 g'4) a'4 ( a'4 g'4 e'4) f'4 ( e'4 d'4 e'4) \divisioMaior
 c'4 ( e'4) g'4 ( a'4.) g'4 ( b'4 a'4) g'4 ( b'4 a'4) g'4 ( g'4 f'4 d'4.) e'4 ( f'4 e'4 d'4.) c'4 ( e'4) f'4 ( e'4) ~ e'4 ( d'4) \finalis

}

altoMusic = {
r2 d'2*3/2 e'2*3/4 d'2*3/2 c'2 d'2*3/2 e'2*3/4 d'2*3/2 \divisioMinima
e'2*3/2 d'2*4/2 c'2*4/2 ~ \divisioMaior
c'2*9/4 d'2*3/2 c'2*3/2 a2*3/2 ~ a2*3/4 ~ a2*3/2 ~ a2*3/4 ~ a2*3/2 ~ a2*3/2 \finalis
c'4 d'2*3/2 ~ d'2 c'4 ~ c'2*3/2 a2*4/2 c'2 d'2*9/4 c'2*5/2 a2 ~ \divisioMinima
a4 ~ a2*5/2 ~ a2 c'2*5/2 ~ \divisioMaior
c'4 ~ c'2 ~ c'4 a2 ~ a2*3/2 ~ a2*3/2 ~ a2 \divisioMaxima
r2*3/2 c'2 ~ c'2*3/4 ~ c'2*5/2 ~ c'2 ~ c'2 d'2*3/2 e'2*3/4 b2*3/2 \divisioMinima
e'2*3/2 d'2*4/2 c'2*4/2 ~ \divisioMaior
c'2*9/4 d'2*3/2 c'2*3/2 a2*3/2 ~ a2*3/4 ~ a2*3/2 ~ a2*3/4 a'2*3/2 a2*3/2 \finalis
}

tenorMusic = {
c'2 ~ c'2*3/2 ~ c'2*3/4 b2*3/2 g2 ~ g2*3/2 ~ g2*3/4 ~ g2*3/2 ~ \divisioMinima
g2*3/2 ~ g2*4/2 a2*4/2 \divisioMaior
e2*9/4 f2*3/2 g2*3/2 ~ g2*3/2 f2*3/4 e2*3/2 f2*3/4 g2*3/2 f2*3/2 \finalis
e4 ~ e2*3/2 d2 e4 g2*3/2 ~ g2*4/2 ~ g2 a2*9/4 ~ a2*5/2 g4 f4 ~ \divisioMinima
f4 e2*5/2 f2 g2*5/2 \divisioMaior
e4 d2 e4 f2 e2*3/2 f2*3/2 g4 f4 \divisioMaxima
r4 g2*4/2 ~ g2*3/4 a2*5/2 g2*4/2 ~ g2*3/2 ~ g2*3/4 ~ g2*3/2 ~ \divisioMinima
g2*3/2 ~ g2*4/2 a2*4/2 \divisioMaior
e2*9/4 f2*3/2 g2*3/2 ~ g2*3/2 f2*3/4 e2*3/2 f2*3/4 g2*3/2 f2*3/2 \finalis
}

bassMusic = {
r2*19/4 a,2 b,2*3/2 c2*3/4 b,2*3/2 \divisioMinima
c2*3/2 b,2*4/2 a,2*4/2 ~ \divisioMaior
a,2*9/4 ~ a,2*3/2 ~ a,2*3/2 d2*3/2 ~ d2*3/4 ~ d2*3/2 ~ d2*3/4 ~ d2*3/2 ~ d2*3/2 \finalis
a,4 b,2*3/2 ~ b,2 a,4 ~ a,2*3/2 d2*4/2 e2 d2*9/4 a,2*5/2 d2 ~ \divisioMinima
d4 ~ d2*5/2 ~ d2 c2*5/2 ~ \divisioMaior
c4 ~ c2 ~ c4 d2 ~ d2*3/2 ~ d2*3/2 ~ d2 \divisioMaxima
r4 e2*4/2 a,2*3/4 ~ a,2*5/2 ~ a,2*4/2 b,2*3/2 c2*3/4 e2*3/2 \divisioMinima
c2*3/2 b,2*4/2 a,2*4/2 ~ \divisioMaior
a,2*9/4 ~ a,2*3/2 ~ a,2*3/2 d2*3/2 ~ d2*3/4 ~ d2*3/2 ~ d2*3/4 ~ d2*3/2 ~ d2*3/2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Alleluia"
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
