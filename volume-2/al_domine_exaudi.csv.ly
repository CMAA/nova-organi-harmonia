\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.219
%(volume.page)

global = {
 \key c \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Domine exaudi" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Domine exaudi"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Domine exaudi" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- ia, 
\set stanza = " * " al -- le -- lú -- ia. _ _ _ _ 
_ _ _ _ _ _ ℣. 
Dó -- mi -- ne, ex -- áu -- di _ _ 
o -- ra -- ti -- ó -- _ nem me -- am, 
et cla -- mor me -- _ _ _ _ us 
\set stanza = " * " 
ad te vé -- ni -- at. _ _ _ _ 
_ _ _ _ _ _ }

chantMusic = {
\tieDown   c'4 c'4 ( f'4 e'4) g'4 ( f'4 \once \tweak #'font-size #-4 g' ) g'4 \divisioMinima
 c'4 c'4 ( f'4 e'4) g'4 ( f'4 \once \tweak #'font-size #-4 g' ) g'4 \divisioMinima
 a'4 ( g'4) c''4 ( bes'4 a'4.) e'4 ( f'4 g'4) ~ g'4 ( f'4 d'4 c'4) \divisioMaior \forceBreak

 g'4 ( f'4) a'4 ( e'4.) f'4 ( g'4) ~ g'4 ( f'4 d'4 c'4) d'4 ( e'4 d'4) ~ d'4 ( c'4) \finalis
 c'4 ( f'4 e'4 g'4) f'4 ( g'4) g'4 \divisioMinima
 g'4 ( a'4 bes'4 c''4) c''4 ( d''4 \forceBreak
) g'4 ( bes'4 g'4 a'\prall bes'4 a'4) bes'4 ( a'4 g'4) a'4 ( g'4) \divisioMaior
 f'4 f'4 ( f'4 f'4) g'4 ( bes'4) a'4. g'4 ( a'4 f'4) d'4 ( f'4 e'4 d'4 e'4) c'4 ( d'4 c'4) c'4 \divisioMaxima \forceBreak

 c'4 c'4 ( f'4 e'4) f'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( g'4) bes'4 ( g'4) ~ g'4 ( a'4 bes'4 c''4.) a'4 ( c''4 bes'4 a'4 g'4) a'4 ( bes'4) a'4 ( g'4) \divisioMaior
 c'4 c'4 ( f'4 e'4 \forceBreak
) g'4 f'4 ( g'4) g'4 a'4 ( g'4) c''4 ( bes'4 a'4.) e'4 ( f'4 g'4) ~ g'4 ( f'4 d'4 c'4) \divisioMaior
 g'4 ( f'4) a'4 ( e'4.) f'4 ( g'4) ~ g'4 ( f'4 d'4 c'4) d'4 ( e'4 d'4) ~ d'4 ( c'4) \finalis

}

altoMusic = {
r4 c'2*3/2 ~ c'2*3/2 ~ c'4 ~ \divisioMinima
c'4 ~ c'2*3/2 ~ c'2*3/2 ~ c'4 ~ \divisioMinima
c'2 ~ c'2*7/4 ~ c'2 d'2*3/2 ~ d'4 c'4 ~ \divisioMaior
c'2*11/4 ~ c'2*3/2 ~ c'2 bes2 g2 ~ g4 \finalis
r2*4/2 d'2 ~ d'4 ~ \divisioMinima
d'2*4/2 ~ d'2 ~ d'2*4/2 ~ d'2 ~ d'2*3/2 c'2 ~ \divisioMaior
c'4 d'2*3/2 ~ d'2 ~ d'2*3/4 c'2*3/2 bes2*3/2 a2 bes2*3/2 g4 \divisioMaxima
c'4 ~ c'2*3/2 d'2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*5/4 ~ d'2*5/2 ~ d'2 ~ d'2 \divisioMaior
c'4 ~ c'2*3/2 ~ c'4 ~ c'2 ~ c'4 ~ c'2 ~ c'2*7/4 ~ c'2 d'2*3/2 ~ d'4 c'4 ~ \divisioMaior
c'2*11/4 ~ c'2*3/2 ~ c'2 bes2 g2 ~ g4 \finalis
}

tenorMusic = {
r4 r2*3/2 d2*3/2 e4 ~ \divisioMinima
e4 g2*3/2 ~ g2*3/2 ~ g4 \divisioMinima
e2 f2*7/4 ~ f2 ~ f2*4/2 e4 \divisioMaior
a2*11/4 d2*3/2 f2 ~ f2 ~ f2 e4 \finalis
r2*7/2 \divisioMinima
r2*6/2 bes2*4/2 g2 ~ g2*3/2 ~ g2 ~ \divisioMaior
g4 a2*3/2 e2 f2*3/4 ~ f2*3/2 ~ f2*5/2 ~ f2*3/2 e4 \divisioMaxima
r4 g2*3/2 d2 ~ d2*3/2 g2*3/2 ~ g2*5/4 ~ g2 c'2*3/2 ~ c'2 bes2 \divisioMaior
c'4 g2*3/2 e4 d2 e4 ~ e2 f2*7/4 ~ f2 ~ f2*4/2 e4 \divisioMaior
a2*11/4 d2*3/2 f2 ~ f2 ~ f2 e4 \finalis
}

bassMusic = {
r4 c2*3/2 ~ c2*3/2 ~ c4 ~ \divisioMinima
c4 ~ c2*3/2 d2*3/2 e4 \divisioMinima
c2 a,2*7/4 d2 bes,2*4/2 c4 \divisioMaior
a,2*11/4 ~ a,2*3/2 ~ a,2 g,2 c2 ~ c4 \finalis
c'2*4/2 ~ c'2 bes4 ~ \divisioMinima
bes2*4/2 a2 g2*4/2 ~ g2 f2*3/2 e2 ~ \divisioMaior
e4 d2*3/2 ~ d2 ~ d2*3/4 a,2*3/2 bes,2*3/2 ~ bes,2 c2*3/2 ~ c4 \divisioMaxima
r4 c2*3/2 ~ c2 bes,2*3/2 ~ bes,2*3/2 g,2*5/4 g2*5/2 ~ g2 ~ g2 \divisioMaior
c4 ~ c2*3/2 ~ c4 ~ c2 ~ c4 a,2 ~ a,2*7/4 d2 bes,2*4/2 c4 \divisioMaior
a,2*11/4 ~ a,2*3/2 ~ a,2 g,2 c2 ~ c4 \finalis
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
        "VII."
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
