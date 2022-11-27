\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.140
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Recordare Virgo" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Recordare Virgo"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Recordare Virgo" }
    \line {}
  }
}

chantText = \lyricmode {
Re -- _ _ _ cor -- dá -- re, 
\set stanza = " * " 
Vir -- _ _ _ go Ma -- ter, in con -- spé -- ctu De -- i, _ 
ut lo -- quá -- ris pro no -- bis bo -- na, 
et ut a -- vér -- tat in -- di -- gna -- ti -- ó -- nem su -- am 
a _ _ _ _ _ _ _ _ _ _ _ _ no -- bis. }

chantMusic = {
\tieDown   d'4 f'4 ( f'4) g'4 ( g'4 f'4) g'4 ( a'4) f'4 ( \once \tweak #'font-size #-4 e' ) g'4 ( f'4 e'4 c'4 d'4) d'4 \divisioMaior
 d'4 f'4 ( f'4) g'4 ( g'4 f'4) g'4 ( a'4) f'4 ( e'4) c'4 ( d'4) d'4 \divisioMinima
 f'4 g'4 ( a'4) a'4 ( g'4) g'4 ( e'4) g'4 ( f'4) d'4 ( f'4) ~ f'4 ( f'4 f'4) \divisioMaior
 d'4 ( a'4 c''4) c''4 ( b'4) g'4 ( f'4) f'4 ( g'4 a'4) f'4 g'4 a'4 f'4 ( e'4 c'4 d'4) d'4 \divisioMaxima
 f'4 g'4 g'4 ( a'4) f'4 ( e'4) d'4 \divisioMinima
 f'4 g'4 a'4 ( c''4) c''4 d''4 b'4 c''4 a'4 \divisioMaior
 d'4 f'4 ( f'4) g'4 ( g'4 f'4) g'4 ( a'4 d'4) f'4 ( f'4) ~ f'4 ( a'4) c''4 ( c''4 b'4 g'4 f'4 a'4) \divisioMinima
 a'4 c''4 ( c''4) d''4 ( d''4 c''4) d''4 ( e''4 a'4) c''4 ( c''4) ~ c''4 ( b'4 g'4 f'4) g'4 ( a'4) d'4 ( e'\prall f'4 e'4 f'4) e'4 ( d'4) \finalis

}

altoMusic = {
d'4 ~ d'2 c'2*3/2 ~ c'2 bes2 a2*5/2 ~ a4 ~ \divisioMaior
a4 ~ a2 c'2*3/2 ~ c'2 ~ c'2 r2 a4 ~ \divisioMinima
a4 d'2 ~ d'2 ~ d'2 c'2 a2 ~ a2*3/2 \divisioMaior
c'2*3/2 ~ c'2 ~ c'2 ~ c'2*4/2 ~ c'2 a2 ~ a2 ~ a4 ~ \divisioMaxima
a2 ~ a2 ~ a2*3/2 \divisioMinima
f'2 e'2 g'4 f'2 e'2 \divisioMaior
d'4 ~ d'2 ~ d'2*3/2 ~ d'2 ~ d'4 c'2 ~ c'2 ~ c'2*4/2 d'2 \divisioMinima
e'4 ~ e'2 ~ e'2*3/2 ~ e'2*3/2 f'2 e'2 d'2 ~ d'2 a2*5/2 ~ a2 \finalis
}

tenorMusic = {
r4 bes2 a2*3/2 ~ a2 g2 ~ g2*5/2 f4 ~ \divisioMaior
f4 d2 ~ d2*3/2 e2 g2 ~ g2 f4 ~ \divisioMinima
f4 ~ f2 d2 g2 ~ g2 ~ g2 f2*3/2 ~ \divisioMaior
f2*3/2 e2 ~ e2 d2*4/2 e2 f2 g2 f4 \divisioMaxima
r2 e2 f2*3/2 \divisioMinima
a2 ~ a2 ~ a4 ~ a2 ~ a2 ~ \divisioMaior
a4 ~ a2 ~ a2*3/2 ~ a2*3/2 ~ a2 g2 ~ g2*4/2 a2 ~ \divisioMinima
a4 ~ a2 ~ a2*3/2 ~ a2*3/2 ~ a2 g2 a2 e2 f2*5/2 g4 f4 \finalis
}

bassMusic = {
r2*6/2 g2 ~ g2 d2*5/2 ~ d4 ~ \divisioMaior
d4 ~ d2 c2*3/2 ~ c2 ~ c2 e2 d4 ~ \divisioMinima
d4 bes,2 ~ bes,2 ~ bes,2 a,2 d2 ~ d2*3/2 \divisioMaior
a,2*3/2 ~ a,2 c2 ~ c2*4/2 ~ c2 d2 ~ d2 ~ d4 ~ \divisioMaxima
d2 ~ d2 ~ d2*3/2 ~ \divisioMinima
d2 c2 e4 d2 a2 \divisioMaior
f4 d2 e2*3/2 f2*3/2 ~ f2 ~ f2 e2*4/2 d2 \divisioMinima
c4 a,2 b,2*3/2 c2*3/2 d2 e2 d2 ~ d2 ~ d2*5/2 ~ d2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Offertory"
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
