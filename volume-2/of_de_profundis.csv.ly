\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.259
%(volume.page)

global = {
 \key g \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"De profundis" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "De profundis"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "De profundis" }
    \line {}
  }
}

chantText = \lyricmode {
De pro -- fún -- _ _ dis 
\set stanza = " * " cla -- má -- vi ad te, _ Dó -- mi -- ne: 
Dó -- _ mi -- ne ex -- áu -- di o -- ra -- ti -- ó -- _ _ nem me -- am: _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
de pro -- fún -- _ _ dis cla -- má -- vi ad te, _ Dó -- mi -- ne. }

chantMusic = {
\tieDown   d'4 f'4 g'4 bes'4 ( g'4) bes'4 ( bes'4 bes'4) g'4 ( f'4 g'4) \divisioMinima
 f'4 f'4 ( g'4 a'\prall bes'4 g'4) bes'4 ( a'4) bes'4 ( a'4 bes'4 g'4) g'4 ( a'4 f'4 e'4 \forceBreak
) f'4 ( g'4 f'4 g'4) g'4 g'4 ( a'4 g'4) g'4 \divisioMaxima
 bes'4 ( c''4 a'4) bes'4 ( g'4) f'4 ( g'4) g'4 ( g'4) \divisioMinima
 bes'4 ( d''4 c''4) bes'4 ( c''4 a'4 bes'4) g'4 \divisioMinima \forceBreak

 g'4 g'4 ( f'4) a'4 ( c''4 bes'4) bes'4 ( bes'4) ~ bes'4 ( f'4) a'4 ( g'4) g'4 ( a'4) g'4 g'4 bes'4 ( bes'4) ~ bes'4 ( f'4) a'4 ( g'4) \divisioMinima
 g'4 bes'4 ( a'4) bes'4 ( c''4 a'4 g'4.) a'4 ( g'4 \forceBreak
) a'4 ( g'4 f'4) g'4 ( f'4 d'4.) f'4 ( g'4 a'\prall bes'4 g'4) \divisioMinima
 bes'4 ( g'4) bes'4 ( bes'4) ~ bes'4 ( g'4 f'4) ~ f'4 ( d'4) f'4 ( f'4 g'4) \divisioMaxima
 d'4 f'4 g'4 bes'4 ( g'4 \forceBreak
) bes'4 ( bes'4 bes'4) g'4 ( f'4 g'4) \divisioMinima
 f'4 f'4 ( g'4 a'\prall bes'4 g'4) bes'4 ( a'4) bes'4 ( a'4 bes'4 g'4) g'4 ( a'4 f'4 e'4) f'4 ( g'4 f'4 g'4) g'4 g'4 ( a'4 g'4) g'4 \finalis

}

altoMusic = {
d'2 bes4 ~ bes2 c'2*3/2 ~ c'2 bes4 ~ \divisioMinima
bes4 ~ bes2*5/2 c'2 d'2*4/2 ~ d'2*4/2 ~ d'2*4/2 ~ d'4 ~ d'2*3/2 ~ d'4 ~ \divisioMaxima
d'2*5/2 c'2 d'2 ~ \divisioMinima
d'2*3/2 ees'2*4/2 d'4 ~ \divisioMinima
d'4 ~ d'4 f'4 ~ f'2*3/2 ~ f'2 ~ f'2 ~ f'2 ~ f'2 ees'2 f'2 ~ f'2 d'2 ~ \divisioMinima
d'4 f'2 ees'2*3/2 d'2*7/4 ~ d'2*3/2 ~ d'2*7/4 ~ d'2*3/2 ~ d'2 \divisioMinima
ees'2 d'2 ~ d'2 c'2*3/2 ~ c'2 bes4 \divisioMaxima
d'2 bes4 ~ bes2 c'2*3/2 ~ c'2 bes4 ~ \divisioMinima
bes4 ~ bes2*5/2 c'2 d'2*4/2 ~ d'2*4/2 ~ d'2*4/2 ~ d'4 ~ d'2*3/2 ~ d'4 \finalis
}

tenorMusic = {
d2 ~ d4 f2 ees2*3/2 d2 ~ d4 ~ \divisioMinima
d4 f2*5/2 ~ f2 ~ f2*4/2 bes2*4/2 a2*4/2 c'4 ~ c'2*3/2 bes4 \divisioMaxima
g2*5/2 d2 ~ d2 \divisioMinima
g2*3/2 ~ g2*4/2 ~ g4 ~ \divisioMinima
g4 a2 f2*3/2 bes2 d'2 c'2 bes2 ~ bes2 ~ bes2 c'2 bes2 ~ \divisioMinima
bes4 d'2 c'2*3/2 bes2*7/4 f2*3/2 a2*7/4 ~ a2*3/2 g2 ~ \divisioMinima
g2 ~ g2 ~ g2 d2*3/2 ~ d2 ~ d4 ~ \divisioMaxima
d2 ~ d4 f2 ees2*3/2 d2 ~ d4 ~ \divisioMinima
d4 f2*5/2 ~ f2 ~ f2*4/2 bes2*4/2 a2*4/2 c'4 ~ c'2*3/2 bes4 \finalis
}

bassMusic = {
r2 g,2*3/2 ~ g,2*3/2 ~ g,2 ~ g,4 ~ \divisioMinima
g,4 d2*5/2 ~ d2 ~ d2*4/2 ~ d2*4/2 ~ d2*4/2 ~ d4 g2*3/2 ~ g4 \divisioMaxima
g,2*5/2 a,2 bes,2 ~ \divisioMinima
bes,2*3/2 c2*4/2 bes,4 ~ \divisioMinima
bes,4 d2 ~ d2*3/2 ~ d2 ~ d2 ~ d2 g2 c2 d2 ~ d2 g2 ~ \divisioMinima
g4 ~ g2 ~ g2*3/2 ~ g2*7/4 d2*3/2 ~ d2*7/4 c2*3/2 bes,2 \divisioMinima
c2 g,2 bes,2 a,2*3/2 g,2 ~ g,4 \divisioMaxima
r2 g,2*3/2 ~ g,2*3/2 ~ g,2 ~ g,4 ~ \divisioMinima
g,4 d2*5/2 ~ d2 ~ d2*4/2 ~ d2*4/2 ~ d2*4/2 ~ d4 g2*3/2 ~ g4 \finalis
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
        "II"
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
