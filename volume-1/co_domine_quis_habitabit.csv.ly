\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.239
%(volume.page)

global = {
 \key f \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Domine quis habitabit" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Domine quis habitabit"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Domine quis habitabit" }
    \line {}
  }
}

chantText = \lyricmode {
Do -- mi -- ne, 
\set stanza = " * " quis ha -- bi -- tá -- bit in ta -- ber -- ná -- cu -- lo tu -- o? 
aut quis re -- qui -- é -- scet in mon -- te san -- cto tu -- o? 
Qui in -- gré -- di -- tur si -- ne má -- cu -- la, 
et o -- pe -- rá -- _ _ tur ju -- stí -- _ _ ti -- am. }

chantMusic = {
\tieDown   f'4 e'4 ( f'4) d'4 ( e'4) \divisioMinima
 d'4 ( c'4) f'4 ( g'4) f'4 g'4 ( a'4) a'4 \divisioMinima
 a'4 a'4 a'4 a'4 ( c''4) a'4 g'4 \forceBreak
 f'4 ( g'\prall a'4 g'4) a'4 ( g'4) \divisioMaior
 g'4 a'4 f'4 d'4 f'4 ( e'4 f'4) d'4 \divisioMinima
 d'4 ( \once \tweak #'font-size #-4 c' ) f'4 g'4 ( a'4) a'4 ( b'\prall c''4) a'4 ( g'4 a'4 g'4 \forceBreak
) f'4 ( g'4 a'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMaxima
 c''4 c''4 d''4 c''4 ( b'4) a'4 c''4 ( b'4) g'4 a'4 g'4 f'4 \divisioMaior \forceBreak

 f'4 f'4 g'4 f'4 ( d'4 f'4.) e'4 ( f'4 d'4) e'4 ( d'4 c'4 d'4) d'4 ( c'4) \divisioMinima
 f'4 f'4 ( a'4 g'4 f'4) g'4 ( f'4 e'4 f'4) a'4 ( g'4 a'4 f'4) f'4 ( g'4 f'4) f'4 \finalis

}

altoMusic = {
r4 c'2 ~ c'2 \divisioMinima
r4 c'4 ~ c'2*3/2 ~ c'2 ~ c'4 ~ \divisioMinima
c'4 ~ c'2 d'2 ~ d'2 ~ d'2*4/2 e'2 ~ \divisioMaior
e'2 d'2 a2*3/2 c'4 \divisioMinima
g2 a4 ~ a2 d'2*3/2 e'2*4/2 d'2*6/2 c'2 \divisioMaxima
g'2 f'2*4/2 e'2*3/2 c'2*3/2 ~ \divisioMaior
c'4 ~ c'2 d'2*7/4 a2*3/2 ~ a2*4/2 r2 \divisioMinima
a4 c'2*4/2 ~ c'2*4/2 ~ c'2*4/2 ~ c'2*3/2 ~ c'4 \finalis
}

tenorMusic = {
a4 ~ a2 ~ a2 ~ \divisioMinima
a2 g2*3/2 ~ g2 f4 ~ \divisioMinima
f4 ~ f2 ~ f2 g2 a2*4/2 c'2 \divisioMaior
b2 a2 g2*3/2 f4 \divisioMinima
e2 d4 e2 f2*3/2 a2*4/2 ~ a2*6/2 ~ a2 \divisioMaxima
g2 a2*4/2 g2*3/2 f2*3/2 ~ \divisioMaior
f4 g2 a2*7/4 g2*3/2 f2*4/2 g2 \divisioMinima
f4 ~ f2*4/2 e2*4/2 f2*4/2 g2*3/2 a4 \finalis
}

bassMusic = {
r2*5/2 \divisioMinima
f2 ~ f2*3/2 e2 f4 \divisioMinima
r4 e2 d2 ~ d2 ~ d2*4/2 c2 ~ \divisioMaior
c2 d2 ~ d2*3/2 ~ d4 ~ \divisioMinima
d2 ~ d4 ~ d2 ~ d2*3/2 c2*4/2 d2*6/2 f2 \divisioMaxima
e2 d2*4/2 a,2*3/2 ~ a,2*3/2 ~ \divisioMaior
a,4 ~ a,2 d2*7/4 ~ d2*3/2 ~ d2*4/2 e2 \divisioMinima
d4 ~ d2*4/2 a,2*4/2 ~ a,2*4/2 f2*3/2 ~ f4 \finalis
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
