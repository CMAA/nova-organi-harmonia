\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.168
%(volume.page)

global = {
 \key c \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Magnus Dominus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Magnus Dominus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Magnus Dominus" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- _ _ ia, 
\set stanza = " * " al -- le -- lú -- _ _ ia. _ _ _ _ _ _ 
_ _ _ _ ℣. 
Ma -- _ gnus Dó -- _ mi -- nus, 
et lau -- dá -- bi -- lis val -- _ de, 
in ci -- vi -- tá -- te _ _ _ _ _ De -- _ i, 
\set stanza = " * " 
in mon -- te san -- cto e -- jus. _ _ _ _ _ _ 
_ _ _ _ }

chantMusic = {
\tieDown   c'4 ( g'4) g'4 f'4 ( f'4) g'4 ( f'4 d'4) f'4 ( \once \tweak #'font-size #-4 g' ) g'4 \divisioMinima
 c'4 ( g'4) g'4 f'4 ( f'4) g'4 ( f'4 d'4) f'4 ( \once \tweak #'font-size #-4 g' ) g'4 \divisioMinima \forceBreak

 f'4 ( g'4 a'4 bes'4 a'4 g'4 f'4 g'4.) f'4 ( g'4 g'4) \divisioMinima
 f'4 ( g'4 a'4 bes'4 a'4 g'4 f'4 g'4.) f'4 ( g'4 g'4) \divisioMinima
 e'4 ( g'4 a'4 g'4 f'4 d'4 e'4. \forceBreak
) d'4 ( f'4 g'4 d'4 c'4 bes4 c'4) \divisioMaior
 c'4 ( g'4 a'4 g'4 f'4 d'4 e'4.) d'4 ( f'4 g'4 d'4 c'4 bes4 c'4) ~ c'4 ( e'4 c'4 bes4) d'4 ( d'4 c'4) \finalis \forceBreak

 g'4 ( f'4 d'4) f'4 ( \once \tweak #'font-size #-4 g' ) g'4 g'4 ( bes'4 a'4) bes'4 ( c''4 d''4) bes'4 ( a'4 g'4) g'4 \divisioMaior
 g'4 ( \once \tweak #'font-size #-4 a' ) g'4 ( \once \tweak #'font-size #-4 f' ) d'4 ( c'4) bes4 ( c'4) c'4 \forceBreak
 g'4 ( f'4 d'4) f'4 ( \once \tweak #'font-size #-4 g' ) g'4 \divisioMaxima
 g'4 f'4 ( e'4) f'4 ( g'4) g'4 f'4 ( g'4 a'4 bes'4 a'4 g'4 f'4 g'4.) f'4 ( g'4 g'4) \divisioMinima
 f'4 ( g'4 a'4 bes'4 a'4 g'4 f'4 g'4. \forceBreak
) f'4 ( g'4 g'4) \divisioMinima
 e'4 ( g'4 a'4 g'4 f'4 d'4 e'4.) d'4 ( f'4 g'4 d'4 c'4 bes4 c'4) c'4 ( e'4 d'4) e'4 ( f'4) d'4 ( c'4) \divisioMaior
 c'4 e'4 c'4 \forceBreak
 e'4 f'4 g'4 ( a'4) g'4 \divisioMinima
 f'4 ( g'4 a'4 bes'4 a'4 g'4 f'4 g'4.) f'4 ( g'4 g'4) \divisioMinima
 f'4 ( g'4 a'4 bes'4 a'4 g'4 f'4 g'4.) f'4 ( g'4 g'4) \divisioMinima \forceBreak

 e'4 ( g'4 a'4 g'4 f'4 d'4 e'4.) d'4 ( f'4 g'4 d'4 c'4 bes4 c'4) \divisioMaior
 c'4 ( g'4 a'4 g'4 f'4 d'4 e'4.) d'4 ( f'4 g'4 d'4 c'4 bes4 c'4) ~ c'4 ( e'4 c'4 bes4) d'4 ( d'4 c'4) \finalis

}

altoMusic = {
c'2*3/2 ~ c'2 ~ c'2*3/2 ~ c'2 ~ c'4 ~ \divisioMinima
c'2*3/2 a2*5/2 c'2 ~ c'4 \divisioMinima
d'2*3/2 ~ d'2*4/2 ~ d'2*3/4 ~ d'2*3/2 \divisioMinima
c'2*3/2 bes2*4/2 d'2*3/4 ~ d'2*3/2 \divisioMinima
c'2 ~ c'2*4/2 ~ c'2*3/4 bes2 ~ bes2 ~ bes2 c'4 ~ \divisioMaior
c'2 ~ c'2*4/2 ~ c'2*3/4 bes2 ~ bes2*4/2 g2*3/2 bes2 g2 ~ g4 \finalis
r2 d'4 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 f'2*3/2 g'4 \divisioMaior
d'2 ~ d'2 ~ d'4 r2*3/2 c'4 ~ c'2*3/2 d'2 ~ d'4 \divisioMaxima
r2*3/2 d'2 ~ d'4 ~ d'2*3/2 ~ d'2*11/4 ~ d'2*3/2 \divisioMinima
f'2*3/2 d'2*4/2 ~ d'2*3/4 ~ d'2*3/2 \divisioMinima
e'2 f'2 ~ f'4 r2*5/4 bes2 ~ bes2 r2 c'4 ~ c'2*3/2 bes2 g2 \divisioMaior
c'4 ~ c'2 ~ c'2 ~ c'2 bes4 \divisioMinima
c'2*3/2 bes2*4/2 d'2*3/4 ~ d'2*3/2 ~ \divisioMinima
d'2*3/2 ~ d'2*4/2 ~ d'2*3/4 ~ d'2*3/2 \divisioMinima
c'2 ~ c'2*4/2 ~ c'2*3/4 bes2 ~ bes2 r2 c'4 ~ \divisioMaior
c'2 ~ c'2*4/2 ~ c'2*3/4 bes2 ~ bes2*4/2 g2*3/2 ~ g2 ~ g2 bes4 \finalis
}

tenorMusic = {
r2*3/2 a2 ~ a2*3/2 ~ a2 g4 \divisioMinima
e2*3/2 f2*5/2 a2 g4 \divisioMinima
a2*3/2 g2*4/2 ~ g2*3/4 d2*3/2 ~ \divisioMinima
d2*3/2 ~ d2*4/2 ~ d2*3/4 g2*3/2 ~ \divisioMinima
g2 f2*4/2 c2*3/4 d2 ~ d2 f2 e4 ~ \divisioMaior
e2 f2*4/2 g2*3/4 f2 ~ f2*4/2 e2*3/2 d2 f2 e4 \finalis
r2*3/2 c'2*3/2 bes2*3/2 g2*3/2 d'2*3/2 ~ d'4 \divisioMaior
bes2 a2 ~ a2 g2 ~ g4 c'2*3/2 ~ c'2 bes4 \divisioMaxima
r2*5/2 bes4 ~ bes2*3/2 ~ bes2*11/4 ~ bes2*3/2 \divisioMinima
c'2*3/2 ~ c'2*4/2 bes2*3/4 a4 bes2 \divisioMinima
c'2 ~ c'2*11/4 r2 g2 ~ g2 ~ g4 e2*3/2 d2 f4 e4 ~ \divisioMaior
e4 g2 c2 d2 ~ d4 \divisioMinima
f2*3/2 ~ f2*4/2 d2*3/4 bes2*3/2 \divisioMinima
a2*3/2 g2*4/2 c'2*3/4 a4 bes2 \divisioMinima
g2 f2*4/2 c2*3/4 d2 ~ d2 f2 e4 ~ \divisioMaior
e2 f2*4/2 g2*3/4 f2 ~ f2*4/2 e2*3/2 d2 f2 e4 \finalis
}

bassMusic = {
r2*5/2 f2*3/2 d2 e4 \divisioMinima
c2*3/2 d2*5/2 ~ d2 e4 \divisioMinima
d2*3/2 g,2*4/2 bes,2*3/4 ~ bes,2*3/2 \divisioMinima
a,2*3/2 g,2*4/2 bes,2*3/4 ~ bes,2*3/2 \divisioMinima
c2 a,2*4/2 ~ a,2*3/4 ~ a,2 g,2 ~ g,2 c4 \divisioMaior
a,2 ~ a,2*4/2 ~ a,2*3/4 ~ a,2 g,2*4/2 c2*3/2 ~ c2 ~ c2 ~ c4 \finalis
r2*15/2 bes4 \divisioMaior
g2 d2 f2 ~ f2 e4 a2*3/2 g2 ~ g4 \divisioMaxima
r4 c'2 ~ c'2 r4 a2*3/2 g2*11/4 bes2*3/2 \divisioMinima
a2*3/2 g2*4/2 ~ g2*3/4 ~ g2*3/2 \divisioMinima
r2 a2*11/4 ~ a2 r2 f2 e4 c2*3/2 ~ c2 ~ c2 ~ \divisioMaior
c4 ~ c2 a.2 g,2 ~ g,4 \divisioMinima
a,2*3/2 d2*4/2 bes,2*3/4 ~ bes,2*3/2 \divisioMinima
d2*3/2 g2*4/2 ~ g2*3/4 ~ g2*3/2 \divisioMinima
c2 a,2*4/2 ~ a,2*3/4 ~ a,2 g,2 ~ g,2 a,4 \divisioMaior
c2 a,2*4/2 ~ a,2*3/4 ~ a,2 g,2*4/2 c2*3/2 ~ c2 ~ c2 ~ c4 \finalis
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
