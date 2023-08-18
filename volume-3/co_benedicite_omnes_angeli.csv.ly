\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.361
%(volume.page)

global = {
 \key e \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Benedicite omnes Angeli" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Benedicite omnes Angeli"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Benedicite omnes Angeli" }
    \line {}
  }
}

chantText = \lyricmode {
Be -- ne -- dí -- ci -- te _ 
\set stanza = " * " o -- mnes An -- ge -- li Dó -- mi -- ni Dó -- mi -- num: 
hy -- mnum dí -- ci -- te, _ 
et su -- per -- ex -- al -- tá -- te e -- um in _ _ _ sǽ -- _ _ cu -- la. T.P. 
Al -- le -- lú -- ia. }

chantMusic = {
\tieDown   e'4 ( e'4 f'4) d'4 ( e'4) g'4 ( a'4) g'4 ( f'4) f'4 ( f'4 f'4) d'4 ( e'4 d'4) \divisioMinima
 g'4 g'4 b'4 ( b'4 c''4) a'4 g'4 a'4 g'4 f'4 a'4 ( b'4 a'4) g'4 ( a'4 g'4) g'4 \divisioMaxima
 g'4 g'4 b'4 ( c''4) a'4 g'4 ( a'4 b'\prall c''4 b'4) ~ b'4 ( a'4) \divisioMaior
 a'4 b'4 ( c''4 b'4) g'4 a'4 g'4 f'4 ( g'4 a'4) g'4 e'4 ( f'4 e'4 d'4 e'4) e'4 ( d'4) \divisioMinima
 f'4. ~ f'4 ( f'4) ~ f'4 ( d'4 e'4) g'4 ( a'4) g'4. f'4 ( g'4) a'4 ( a'4 g'4) e'4 ( g'4 f'4 f'4) f'4 ( e'4) \finalis
 f'4 ( f'4) d'4 ( e'\prall f'4 g'4 f'4 e'4) e'4 ( g'4 f'4 f'4) f'4 ( e'4) \finalis

}

altoMusic = {
c'2*3/2 ~ c'2 ~ c'2*4/2 a2*3/2 ~ a2*3/2 \divisioMinima
d'2 c'2*5/2 ~ c'2*3/2 ~ c'2*3/2 a2*3/2 b4 \divisioMaxima
r4 g'4 ~ g'2*3/2 e'2*4/2 ~ e'2*3/2 ~ \divisioMaior
e'4 ~ e'2*6/2 c'2*4/2 ~ c'2*5/2 ~ c'2 ~ \divisioMinima
c'2*3/4 ~ c'2 ~ c'2*3/2 ~ c'2 ~ c'2*7/4 ~ c'2*3/2 b2*4/2 c'2 \finalis
a2 ~ a2*6/2 b2*4/2 c'2 \finalis
}

tenorMusic = {
g2*3/2 f2 e2*4/2 f2*3/2 g2 f4 \divisioMinima
g2 e2*5/2 f2*3/2 d2*3/2 ~ d2*3/2 ~ d4 \divisioMaxima
e'2 ~ e'2*3/2 d'2*4/2 c'2*3/2 ~ \divisioMaior
c'4 ~ c'2*6/2 ~ c'2*4/2 a2*5/2 ~ a2 ~ \divisioMinima
a2*3/4 ~ a2 ~ a2*3/2 ~ a2 ~ a2*7/4 f2*3/2 ~ f2*4/2 g2 ~ \finalis
g2 f2*6/2 ~ f2*4/2 g2 \finalis
}

bassMusic = {
c2*3/2 ~ c2 ~ c2*4/2 d2*3/2 ~ d2 ~ d4 \divisioMinima
b,2 a,2*5/2 f,2*3/2 g,2*3/2 ~ g,2*3/2 ~ g,4 \divisioMaxima
r2*13/2 b2*6/2 a2*4/2 g2*5/2 f2 \divisioMinima
d2*3/4 a2 g2*3/2 f2 e2*7/4 d2*3/2 ~ d2*4/2 c2 \finalis
d2 ~ d2*6/2 ~ d2*4/2 c2 \finalis
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
