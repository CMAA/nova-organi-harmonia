\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.58
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Deus enim" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Deus enim"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Deus enim" }
    \line {}
  }
}

chantText = \lyricmode {
De -- us e -- nim 
\set stanza = " * " fir -- má -- _ vit or -- _ _ _ _ bem _ ter -- ræ, _ _ _ 
qui non _ _ _ _ _ com -- mo -- vé -- bi -- tur: 
pa -- rá -- _ ta se -- _ _ des _ tu -- a, De -- us, ex tunc, _ 
a sǽ -- _ cu -- _ lo _ tu -- _ _ _ _ es. }

chantMusic = {
\tieDown  g'4 ees'4 ( g'4 f'4) f'4 f'4  g'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( bes'4 g'4 ( a'\prall bes'4) f'4 \divisioMinima
 ees'4 ( f'4 g'4) bes'4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( bes'4) ~ bes'4 ( \once \tweak #'font-size #-4 g'  \forceBreak
) g'4. ees'4 ( g'4 ees'4 f'4) f'4 f'4 bes'4 ( bes'4 g'4) f'4 ( a'4 g'4 f'4) ~ f'4 ( ees'4) \divisioMaior
 ees'4 ( f'4) f'4 ( g'4) bes'4 ( bes'4) ~ bes'4 ( g'4 f'4) bes'4 ( bes'4 \forceBreak
) ~ bes'4 ( g'4 f'4 f'4) ees'4 ( \once \tweak #'font-size #-4 f' ) f'4 f'4 ( g'4 ees'4 f'4) f'4 f'4 ( g'4 f'4) f'4 \divisioMaxima
 bes'4 a'4 ( c''4 bes'4) ~ bes'4 ( bes'4) g'4 ( f'4) \divisioMinima
 bes'4 ( a'4 \forceBreak
) bes'4 ( bes'4) ~ bes'4 ( f'4) bes'4 bes'4. ~ bes'4 ( bes'4 bes'4) g'4 ( f'4) f'4 ( ees'4) f'4 ( a'4 g'4 f'4) f'4 \divisioMinima
 ees'4 f'4 ( g'4 f'4) g'4 ( a'4 g'4) \divisioMaxima \forceBreak

 f'4 f'4 bes'4 ( bes'4 bes'4) g'4 ( f'4 ( g'\prall a'4 g'4) g'4 ( f'4) ~ f'4 ( ees'4) \divisioMinima
 ees'4 ( f'4 g'4.) ees'4 ( f'4) g'4 ( a'4 g'4) a'4 ( f'4) g'4 ( g'4 f'4) f'4 \finalis

}

altoMusic = {
ees'4 ~ ees'2*3/2 d'2 ~ d'2 ~ d'2 f'2*4/2 \divisioMinima
ees'2*3/2 f'2 ~ f'2 d'2 ~ d'2 ees'2*3/4 ~ ees'2*4/2 bes2 d'2*3/2 ~ d'2*3/2 c'2*3/2 \divisioMaior
ees'2 ~ ees'2 ~ ees'2 d'2*3/2 ~ d'2 ~ d'2*4/2 bes2*3/2 ~ bes2*4/2 ~ bes4 a'2*3/2 bes4 \divisioMaxima
f'2*4/2 ~ f'2 ~ f'2 \divisioMinima
d'2 ees'2 f'2*3/2 ees'2*3/4 d'2*3/2 c'2 bes2 c'2*4/2 ~ c'4 ~ \divisioMinima
c'2*4/2 ~ c'2 bes4 \divisioMaxima
c'2 bes2*3/2 c'2*3/2 d'2*3/2 c'2*3/2 \divisioMinima
bes2*7/4 c'2 ees'2*3/2 ~ ees'2 c'2*3/2 ~ c'4 \finalis
}

tenorMusic = {
r4 bes2*3/2 ~ bes2 ~ bes2 ~ bes2 ~ bes2*4/2 ~ \divisioMinima
bes2*3/2 ~ bes2 c'2 ~ c'2 bes2 ~ bes2*3/4 g2*4/2 f2 g2*3/2 a2*3/2 g2*3/2 ~ \divisioMaior
g2 ~ g2 ~ g2 ~ g2*3/2 ~ g2 ~ g2*4/2 ~ g2*3/2 ees2*4/2 ~ ees4 ~ ees2*3/2 d4 \divisioMaxima
r4 f2*3/2 g2 a2 \divisioMinima
g2 ~ g2 f2*3/2 g2*3/4 ~ g2*3/2 a2 bes2 ~ bes2*4/2 a4 \divisioMinima
g4 ees2*3/2 d2 ~ d4 ~ \divisioMaxima
d2 ~ d2*3/2 ~ d2*3/2 ~ d2 g4 ~ g2*3/2 ~ \divisioMinima
g2*7/4 ~ g2 ~ g2*3/2 bes2 ~ bes2*3/2 a4 \finalis
}

bassMusic = {
ees4 ~ ees2*3/2 bes2 a2 ees2 d2*4/2 \divisioMinima
c2*3/2 d2 ~ d2 g2 ~ g2 ees2*3/4 d2*4/2 ~ d2 bes,2*3/2 ~ bes,2*3/2 c2*3/2 \divisioMaior
ees2 d2 c2 bes,2*3/2 a,2 g,2*4/2 ~ g,2*3/2 c2*4/2 bes,4 ~ bes,2*3/2 ~ bes,4 \divisioMaxima
d4 ~ d2*3/2 ~ d2 ~ d2 \divisioMinima
bes,2 c2 d2*3/2 ees2*3/4 g2*3/2 ~ g2 ~ g2 f2*4/2 ~ f4 \divisioMinima
c4 ~ c2*3/2 g,2 ~ g,4 \divisioMaxima
a,2 g,2*3/2 a,2*3/2 bes,2 ~ bes,4 c2*3/2 \divisioMinima
ees2*7/4 d2 c2*3/2 ~ c2 f2*3/2 ~ f4 \finalis
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
        "VIII"
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
