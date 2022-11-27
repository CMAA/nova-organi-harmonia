\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.179
%(volume.page)

global = {
 \key e \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Scapulis suis" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Scapulis suis"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Scapulis suis" }
    \line {}
  }
}

chantText = \lyricmode {
Scá -- _ pu -- lis su -- is 
\set stanza = " * " o -- bum -- brá -- bit ti -- bi, 
et sub pen -- _ nis e -- jus spe -- _ _ rá -- bis: 
scu -- _ to _ cir -- cúm -- da -- bit te vé -- ri -- tas e -- jus. }

chantMusic = {
\tieDown   g'4 ( a'4) c''4 ( b'4) c''4 c''4 c''4 ( c''4 b'4 a'4) b'4 ( a'4) \divisioMinima
 f'4 g'4 ( a'4) a'4 ( f'4 a'4) g'4 e'4 ( g'4 f'4 f'4 \forceBreak
) f'4 ( e'4) \divisioMaxima
 g'4 g'4 c''4. ~ c''4 ( c''4 c''4) g'4 a'4 f'4  f'4 ( g'4 a'4) bes'4 ( g'4) a'4 ( g'4) e'4 ( g'4 f'4 f'4) f'4 ( e'4) \divisioMaxima \forceBreak

  a'4 ( c''4 a'4) ~ a'4 ( g'4 bes'4) a'4 ( g'4) a'4 ( bes'4 a'4) \divisioMinima
 f'4 a'4 ( \once \tweak #'font-size #-4 g' ) a'4 ( f'4 a'4) g'4 ( f'4 e'4 f'\prall g'4 f'4 g'4) g'4 ( f'4) \divisioMinima
 a'4 ( f'4 \forceBreak
) g'4 ( a'4) g'4 e'4 ( g'4 f'4 f'4) f'4 ( e'4) \finalis

}

altoMusic = {
e'2 ~ e'2*4/2 g'2*4/2 e'2 \divisioMinima
f'4 ~ f'2 ~ f'2*4/2 e'4 r2*3/2 c'2 ~ \divisioMaxima
c'2 d'2*3/4 c'2*4/2 ~ c'2 bes2*3/2 ~ bes2*4/2 c'2*4/2 ~ c'2 e'2 f'2*6/2 ~ f'2*3/2 ~ \divisioMinima
f'4 e'2 c'2*5/2 ~ c'2*5/2 d'2 \divisioMinima
e'2 ~ e'2*3/2 ~ e'2 d'2 c'2 \finalis
}

tenorMusic = {
c'2 ~ c'2*4/2 d'2*4/2 c'2 ~ \divisioMinima
c'4 ~ c'2 ~ c'2*4/2 ~ c'2 a2 ~ a2 \divisioMaxima
e2 ~ e2*3/4 ~ e2*4/2 f2 ~ f2*3/2 g2*4/2 ~ g2 d2 a2 ~ a2 ~ a2 bes2*4/2 c'2*3/2 \divisioMinima
a4 ~ a2 ~ a2*5/2 g2*5/2 a2 ~ \divisioMinima
a2 c'2*3/2 b2 a2 ~ a2 \finalis
}

bassMusic = {
r2 a2*4/2 g2*4/2 a2 ~ \divisioMinima
a4 f2 e2*4/2 d2 ~ d2 a2 \divisioMaxima
c2 b,2*3/4 a,2*4/2 ~ a,2 g,2*3/2 ~ g,2*4/2 a,2*4/2 ~ a,2 c2 d2 ~ d2*4/2 f2*3/2 ~ \divisioMinima
f4 c2 a,2*5/2 ~ a,2*5/2 d2 \divisioMinima
c2 ~ c2*3/2 ~ c2 d2 a,2 \finalis
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
