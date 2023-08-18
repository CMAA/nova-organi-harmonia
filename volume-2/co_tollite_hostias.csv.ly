\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.233
%(volume.page)

global = {
 \key a \locrian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Tollite hostias" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Tollite hostias"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Tollite hostias" }
    \line {}
  }
}

chantText = \lyricmode {
Tol -- li -- te hó -- sti -- as, 
\set stanza = " * " et in -- tro -- í -- _ te in á -- _ tri -- a e -- _ jus: 
ad -- o -- rá -- te Dó -- mi -- num in au -- _ la san -- cta e -- jus. }

chantMusic = {
\tieDown   c''4 bes'4 a'4 c''4 ( d''4 c''4 d''4) bes'4 ( c''4) c''4 ( a'4) \divisioMinima
 bes'4 a'4 bes'4 ( c''4) c''4 ( a'4) bes'4 ( c''4 bes'4) a'4 \divisioMinima \forceBreak

 bes'4 bes'4 ( g'4.) bes'4 ( a'4 bes'4) a'4 ( g'4) g'4 g'4 ( bes'4 a'4) bes'4 ( \tiny a' g' 4) a'4 ( g'4) \divisioMaxima
 bes'4 ( a'4) bes'4 c''4 ( bes'4) bes'4 ( g'4) g'4 ( f'4) f'4 ( ees'4) ees'4 \divisioMinima \forceBreak

 g'4 g'4 ( bes'4 a'4) c''4 ( \tiny bes' a' 4) a'4 a'4 a'4 ( c''4 bes'4) g'4 ( c''4 \tiny bes' a' 4) a'4 \finalis

}

altoMusic = {
f'2*3/2 ~ f'2*4/2 ~ f'2 ~ f'2 \divisioMinima
d'2 ~ d'2 f'2 ~ f'2*3/2 ~ f'4 ~ \divisioMinima
f'4 ~ f'2*5/4 ~ f'2*3/2 ~ f'2*3/2 ees'2*3/2 ~ ees'2*3/2 d'2 ~ \divisioMaxima
d'2*3/2 ees'2 d'2 ~ d'2 ~ d'2 c'4 ~ \divisioMinima
c'4 ees'2*3/2 f'2*3/2 ~ f'2 d'2*3/2 ~ d'2 ~ d'2 ~ d'4 \finalis
}

tenorMusic = {
r2*3/2 a2*4/2 d'2 c'2 ~ \divisioMinima
c'2 bes2 a2 d'2*3/2 c'4 ~ \divisioMinima
c'4 bes2*5/4 c'2*3/2 bes2*3/2 ~ bes2*3/2 g2*3/2 ~ g2 ~ \divisioMaxima
g2*5/2 ~ g2 ~ g2 ~ g2 ~ g4 ~ \divisioMinima
g4 bes2*3/2 ~ bes2*3/2 c'2 ~ c'2*3/2 bes2 g2 a4 \finalis
}

bassMusic = {
f2*3/2 ~ f2*4/2 g2 a2 \divisioMinima
g2 ~ g2 d2 ~ d2*3/2 f4 ~ \divisioMinima
f4 d2*5/4 ~ d2*3/2 ~ d2*3/2 c2*3/2 ~ c2*3/2 bes,2 \divisioMaxima
g,2*5/2 ~ g,2 bes,2 c2 ~ c4 ~ \divisioMinima
c4 ~ c2*3/2 d2*3/2 ~ d2 g2*3/2 ~ g2 ~ g2 d4 \finalis
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
        "IV"
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
