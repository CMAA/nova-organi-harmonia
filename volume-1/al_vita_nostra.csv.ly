\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.110
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Vita nostra" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Vita nostra"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Vita nostra" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- _ le -- lú -- ia. 
\set stanza = " * " _ _ _ _ ℣. 
Vi -- _ ta no -- stra _ _ est abs -- cón -- _ _ di -- ta 
cum Chri -- sto 
\set stanza = " * " in De -- o. _ _ _ _ _ }

chantMusic = {
\tieDown   d'4 ( f'4 d'4) ~ d'4 ( c'4) e'4 g'4 ( \once \tweak #'font-size #-4 a' ) a'4. \divisioMinima
 g'4 ( c''4 b'4 g'4) b'4 ( a'4) ~ a'4 ( g'4 f'4) ~ f'4 ( e'4 d'4.) c'4 ( f'4 e'4) e'4 d'4 \finalis \forceBreak

 d'4 ( f'4 d'4) ~ d'4 ( c'4) e'4 g'4 ( a'4) a'4. g'4 ( c''4 b'4 g'4) b'4 ( a'4) \divisioMinima
 a'4 ( c''4) a'4 ( g'4) g'4 ( a'4 g'4 e'4) f'4 ( e'4 d'4) e'4 ( d'4) c'4 ( d'4 \forceBreak
) d'4 \divisioMaior
 c'4 ( \once \tweak #'font-size #-4 d' ) d'4 ( f'4 d'4) d'4 c'4 e'4 \divisioMinima
 g'4 g'4 ( a'4) a'4. g'4 ( c''4 b'4 g'4) b'4 ( a'4) ~ a'4 ( g'4 f'4) ~ f'4 ( e'4 d'4.) c'4 ( f'4 e'4) e'4 d'4 \finalis

}

altoMusic = {
r2*4/2 c'4 ~ c'4 e'2 ~ e'2*3/4 \divisioMinima
c'2*5/2 ~ c'2*3/2 a2*9/4 c'2 a2 ~ a4 \finalis
r2*4/2 c'4 ~ c'4 d'2 e'2*3/4 ~ e'2*4/2 ~ e'2 ~ \divisioMinima
e'2 d'2 c'2*4/2 ~ c'2*3/2 ~ c'2 ~ c'2 a4 \divisioMaior
r2 a2 ~ a2*3/2 ~ a4 ~ \divisioMinima
a4 d'2 c'2*3/4 ~ c'2*5/2 ~ c'2*3/2 a2*9/4 c'2 a2 ~ a4 \finalis
}

tenorMusic = {
a2 ~ a2*4/2 b2 c'2*3/4 \divisioMinima
g2*5/2 f2*3/2 ~ f2*9/4 g2 ~ g2 f4 \finalis
a2*6/2 b2 c'2*3/4 ~ c'2*4/2 ~ c'2 ~ \divisioMinima
c'2 b2 a2*4/2 ~ a2*3/2 g2 e2 f4 \divisioMaior
g2 ~ g2 f2*3/2 e4 ~ \divisioMinima
e4 ~ e2 ~ e2*3/4 g2*5/2 f2*3/2 ~ f2*9/4 g2 ~ g2 f4 \finalis
}

bassMusic = {
f2 a2*4/2 ~ a2 ~ a2*3/4 \divisioMinima
e2*5/2 ~ e2*3/2 d2*9/4 a,2 d2 ~ d4 \finalis
f2*6/2 a2 ~ a2*3/4 ~ a2*4/2 c'2 \divisioMinima
a2 ~ a2 ~ a2*4/2 d2*3/2 ~ d2 ~ d2 ~ d4 \divisioMaior
e2 d2 ~ d2*3/2 c4 ~ \divisioMinima
c4 b,2 a,2*3/4 e2*5/2 ~ e2*3/2 d2*9/4 a,2 d2 ~ d4 \finalis
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
