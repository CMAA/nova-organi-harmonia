\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.160
%(volume.page)

global = {
 \key f \major
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Circuibo" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Circuibo"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Circuibo" }
    \line {}
  }
}

chantText = \lyricmode {
Cir -- cu -- í -- bo, 
\set stanza = " * " et im -- mo -- lá -- bo in ta -- ber -- ná -- cu -- lo e -- _ jus 
hó -- sti -- am ju -- bi -- la -- ti -- ó -- nis: 
can -- tá -- bo, et psal -- mum di -- _ _ _ _ cam Dó -- mi -- no. }

chantMusic = {
\tieDown   f'4 f'4 ( c'4)  ees'4 ( g'4 f'4) f'4 \divisioMinima
 f'4 a'4 f'4 g'4 f'4 \divisioMinima
 f'4 ( \once \tweak #'font-size #-4 c' ) f'4 g'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 \forceBreak
 bes'4 ( bes'4 bes'4) g'4 g'4 ( bes'4 a'4) bes'4 ( \tiny a' g' 4) a'4 ( g'4) \divisioMaior
 a'4 ( bes'\prall c''4 d''4) c''4 c''4 c''4 c''4 ( a'4) bes'4 ( c''4) a'4 f'4 ( g'4 f'4) f'4 \divisioMaxima \forceBreak

 d'4 ( \once \tweak #'font-size #-4 f' ) f'4 ( e'4 f'4) d'4 \divisioMinima
 d'4 ( \once \tweak #'font-size #-4 c' ) f'4 ( g'4 f'4) f'4 ( \once \tweak #'font-size #-4 e' ) g'4 ( bes'4) ~ bes'4 ( a'4) bes'4 ( a'4 g'4) a'4 ( g'4) a'4 ( f'4 f'4) f'4 f'4 f'4 ( g'4 f'4) f'4 \finalis

}

altoMusic = {
r2 c'4 ~ c'2*3/2 ~ c'4 ~ \divisioMinima
c'4 ~ c'2 d'2 \divisioMinima
c'2*3/2 d'2*3/2 ~ d'2*4/2 ~ d'2*3/2 ~ d'2*3/2 c'2 ~ \divisioMaior
c'2 f'2*3/2 ~ f'2 ~ f'2 ~ f'2*3/2 c'2*3/2 ~ c'4 \divisioMaxima
d'2 c'2*3/2 d'4 ~ \divisioMinima
d'4 \tiny c' \normalsize4 c'2*3/2 ~ c'2*3/2 d'2*3/2 ~ d'2*3/2 c'2 ~ c'2*3/2 ~ c'4 bes4 bes'2*3/2 a4 \finalis
}

tenorMusic = {
r2*7/2 \divisioMinima
r4 f2 ~ f2 ~ \divisioMinima
f2*3/2 d2 g4 ~ g2*4/2 ~ g2*3/2 f2*3/2 e2 \divisioMaior
r2 a2*3/2 ~ a2 d'2 c'2*3/2 bes2*3/2 a4 ~ \divisioMaxima
a2 g2*3/2 f4 ~ \divisioMinima
f2 ~ f2*3/2 g2*3/2 ~ g2*3/2 f2*3/2 e2 f2*3/2 d2 c2*3/2 ~ c4 \finalis
}

bassMusic = {
r2*3/2 bes2*3/2 a4 ~ \divisioMinima
a4 r2 bes,2 \divisioMinima
a,2*3/2 bes,2 ~ bes,4 g,2*4/2 bes,2*3/2 ~ bes,2*3/2 c2 \divisioMaior
f2 ~ f2*3/2 e2 d2 f2*3/2 ~ f2*3/2 ~ f4 ~ \divisioMaxima
f2 c2*3/2 ~ c4 \divisioMinima
bes,2 a,2*3/2 c2*3/2 g,2*3/2 ~ g,2*3/2 c2 a,2*3/2 bes,2 f,2*3/2 ~ f,4 \finalis
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
