\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.396
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Ego dilecto" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Ego dilecto"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Ego dilecto" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- _ _ ia, 
\set stanza = " * " 
al -- le -- lú -- _ _ ia. 
_ _ _ _ _ _ _ ℣. 
E -- go di -- lé -- cto me -- o, _ _ _ _ 
et ad me con -- vér -- si -- o 
\set stanza = " * " e -- jus. 
_ _ _ _ _ _ _ }

chantMusic = {
\tieDown   f'4 f'4 ( g'\prall a'4 f'4) a'4 c''4 ( bes'4) ~ bes'4 ( a'4 g'4 g'4) f'4 \divisioMaior
  f'4 f'4 ( g'\prall a'4 f'4) a'4 c''4 ( bes'4) ~ bes'4 ( a'4 g'4 g'4) f'4 \divisioMaior
 f'4 g'4 ( f'4) ~ f'4 ( ees'4) g'4 ( ees'4 f'4) \divisioMinima
 g'4 bes'4 ( g'4) ~ g'4 ( f'4) g'4 ( a'4 g'4) ~ g'4 ( f'4) \finalis
 f'4 ( g'\prall a'4 bes'4) bes'4 bes'4 bes'4 ( a'4) g'4 ( a'4) g'4 ( f'4) f'4. g'4 bes'4 ( g'4) ~ g'4 ( f'4) g'4 ( a'4 g'4) ~ g'4 ( f'4) \divisioMaxima
 f'4 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( bes'4 f'4) \divisioMinima
 f'4 f'4 ( g'4) f'4 f'4 ( c'4)  ees'4 ( \once \tweak #'font-size #-4 f' ) f'4 \divisioMaior
 f'4 g'4 ( f'4) ~ f'4 ( ees'4) g'4 ( ees'4 f'4) \divisioMinima
 g'4 bes'4 ( g'4) ~ g'4 ( f'4) g'4 ( a'4 g'4) ~ g'4 ( f'4) \finalis

}

altoMusic = {
r4 f'2*4/2 ~ f'2 d'2*3/2 ~ d'2 c'4 r4 c'2*4/2 ~ c'2 ~ c'2*3/2 bes2 a4 \divisioMaior
bes2 ~ bes2*3/2 ees'4 ~ ees'2 ~ \divisioMinima
ees'2 d'2*3/2 c'2 ~ c'2*3/2 \finalis
d'2*6/2 ~ d'2*4/2 ~ d'2 ~ d'2*7/4 ees'2*5/2 d'2*3/2 \divisioMaxima
ees'4 f'2 ~ f'2*3/2 \divisioMinima
r4 c'2*3/2 ~ c'2 bes2 c'4 \divisioMaior
bes2 ~ bes2*3/2 ees'4 ~ ees'2 ~ \divisioMinima
ees'2 d'2*3/2 c'2 ~ c'2 ~ c'4 \finalis
}

tenorMusic = {
r4 c'2*4/2 ~ c'2 ~ c'2*3/2 bes2 c'4 r4 f2*4/2 ~ f2 d2*5/2 ~ d4 \divisioMaior
f2 g2*3/2 bes2 ~ bes4 ~ \divisioMinima
bes2*5/2 ~ bes2 ~ bes2 a4 \finalis
bes2*6/2 f2*4/2 g2 bes2*7/4 ~ bes2*5/2 a2*3/2 \divisioMaxima
d'4 c'2 bes2*3/2 ~ \divisioMinima
bes4 ~ bes2*3/2 a2 g2 a4 \divisioMaior
f2 g2*3/2 bes2 ~ bes4 ~ \divisioMinima
bes2 ~ bes2*3/2 ~ bes2 ~ bes2 a4 \finalis
}

bassMusic = {
r4 a2*4/2 f2 g2*3/2 ~ g2 a4 r4 a,2*4/2 f,2 g,2*5/2 d4 ~ \divisioMaior
d2 c2*3/2 ~ c2 d4 \divisioMinima
ees2*5/2 ~ ees2 f2 ~ f4 \finalis
bes,2*6/2 ~ bes,2*4/2 ~ bes,2 ~ bes,2*7/4 c2*5/2 d2*3/2 ~ \divisioMaxima
d4 ~ d2 ~ d2*3/2 ~ \divisioMinima
d4 f2*3/2 ~ f2 ~ f2 ~ f4 \divisioMaior
d2 c2*3/2 ~ c2 d4 \divisioMinima
ees2 ~ ees2*3/2 ~ ees2 f2 ~ f4 \finalis
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
        "8"
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
