\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.7
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Dominus dabit benignitiátem" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Dominus dabit benignitiátem"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Dominus dabit benignitiátem" }
    \line {}
  }
}

chantText = \lyricmode {
Dó -- mi -- nus _ _ 
\set stanza = " * " da -- bit be -- nig -- ni -- tá -- _ tem: 
et ter -- ra no -- _ stra 
da -- _ _ bit _ fru -- ctum _ su -- um. }

chantMusic = {
\tieDown   f'4 ( f'4) f'4 ( a'4 g'4) g'4 ( a'4 f'4 e'4) f'4 ( e'4 d'4 c'4) d'4 ( c'4) \divisioMinima
 f'4 ( f'4) f'4 ( f'4 g'4) f'4 ( d'4) f'4 g'4 ( a'4) a'4 ( c''4) d''4 ( c''4 a'4) a'4 \divisioMaxima \forceBreak

 a'4 g'4 ( a'4 g'4) e'4 ( f'4) g'4 ( a'4) ~ a'4 ( g'4) g'4 \divisioMaior
 a'4. f'4 ( a'4 g'4) a'4 ( f'4 e'4 d'4) d'4 ( f'4 d'4) ~ d'4 ( c'4) \divisioMinima
 f'4 ( g'4) e'4 ( d'4) f'4 ( g'4 f'4 e'4 f'4) d'4 ( e'4 d'4) d'4 \finalis

}

altoMusic = {
a2 ~ a2*3/2 ~ a2*4/2 c'2*4/2 g2 \divisioMinima
a2 ~ a2*3/2 d'2*3/2 e'2 f'2 g'2*3/2 e'4 \divisioMaxima
r4 c'2*3/2 ~ c'2*3/2 d'2*3/2 e'4 \divisioMaior
c'2*3/4 ~ c'2*3/2 ~ c'2*4/2 ~ c'2 a2*3/2 ~ \divisioMinima
a2*4/2 c'2*3/2 ~ c'2 a2*3/2 ~ a4 \finalis
}

tenorMusic = {
f2 ~ f2*3/2 ~ f2*4/2 ~ f2*4/2 g2 ~ \divisioMinima
g2 f2*3/2 a2*3/2 ~ a2 ~ a2 ~ a2*3/2 ~ a4 \divisioMaxima
r4 g2*3/2 a2*3/2 b2*3/2 c'4 \divisioMaior
f2*3/4 ~ f2*3/2 ~ f2*4/2 ~ f2 e2*3/2 \divisioMinima
r2*4/2 a2*3/2 g2 ~ g2*3/2 f4 \finalis
}

bassMusic = {
r2 e2*3/2 d2*4/2 ~ d2*4/2 e2 \divisioMinima
d2 ~ d2*3/2 c2*3/2 d2 ~ d2 e2*3/2 a4 \divisioMaxima
r4 e2*3/2 d2*3/2 c2*3/2 ~ c4 \divisioMaior
r2*3/4 e2*3/2 d2*4/2 a,2 ~ a,2*3/2 \divisioMinima
d2*4/2 ~ d2*3/2 ~ d2 ~ d2*3/2 ~ d4 \finalis
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
