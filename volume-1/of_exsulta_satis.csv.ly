\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.37
%(volume.page)

global = {
 \key d \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Exsulta satis" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Exsulta satis"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Exsulta satis" }
    \line {}
  }
}

chantText = \lyricmode {
Ex -- súl -- _ ta sa -- tis 
\set stanza = " * " fí -- li -- _ a Si -- on, _ _ _ _ _ 
prǽ -- di -- ca fí -- _ li -- a Je -- rú -- sa -- lem: _ _ _ _ 
ec -- ce Rex tu -- _ _ _ us 
ve -- nit ti -- _ bi san -- ctus, et sal -- vá -- _ tor. }

chantMusic = {
\tieDown   f'4 f'4 bes'4 ( bes'4 bes'4) g'4 bes'4 ( bes'4 a'4) bes'4 \divisioMinima
 bes'4 bes'4 ( bes'4) ~ bes'4 ( g'4) g'4 ( f'4) f'4 ( g'4 f'4 ees'4) g'4. bes'4 ( c''4 bes'4) ~ bes'4 ( bes'4 \forceBreak
) ~ bes'4 ( g'4 f'4) ~ f'4 ( ees'4) g'4 ( a'4 g'4 a'4 f'4) \divisioMaxima
 bes'4 bes'4 ( bes'4 bes'4) g'4 \divisioMinima
 g'4 bes'4 ( bes'4) g'4 ( f'4) f'4 g'4 f'4 ( ees'4) ees'4 ( ees'4)  d'4 ( ees'4 \forceBreak
) g'4 ( aes'4 g'4 ees'4.) f'4 ( c'4) ees'4. ~ ees'4 ( ees'4) ~ ees'4 ( c'4) \divisioMaxima
 c'4 ( ees'4 f'4) f'4 g'4 ( f'4 g'4) ees'4 ( f'4) g'4 ( f'4) g'4 ( a'4 g'4) a'4 ( f'4) f'4 \divisioMaior \forceBreak

 f'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4. a'4 ( bes'4 g'4) g'4 \divisioMinima
 g'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( f'4) ees'4 ees'4 ( \once \tweak #'font-size #-4 f' ) f'4 ( g'4 f'4 ees'4) f'4 ( ees'4 d'4) d'4 \finalis

}

altoMusic = {
d'2 ees'2*4/2 d'2*4/2 ~ \divisioMinima
d'4 g'2 f'2 r2*6/2 d'2*3/4 g'2*3/2 f'2 ~ f'2 ~ f'4 r2 c'2*4/2 ~ c'4 \divisioMaxima
f'2*4/2 ~ f'4 ~ \divisioMinima
f'4 ees'2 d'2*4/2 c'2 ~ c'2 ~ c'2 ~ c'2*13/4 bes2*3/4 aes2 g2 \divisioMaxima
c'4 ~ c'2*3/2 ~ c'2*3/2 ees'2*4/2 ~ ees'2*3/2 c'2 ~ c'4 \divisioMaior
f'2*3/2 d'2*9/4 ~ d'4 \divisioMinima
c'2 ~ c'2*3/2 ~ c'2 bes2*7/2 ~ bes4 \finalis
}

tenorMusic = {
bes2 ~ bes2*4/2 ~ bes2*4/2 ~ \divisioMinima
bes4 d'2*4/2 c'2 bes2*4/2 ~ bes2*3/4 ~ bes2*3/2 ~ bes2 ~ bes2 ~ bes2*3/2 ~ bes2*4/2 a4 \divisioMaxima
bes4 c'2*3/2 bes4 ~ \divisioMinima
bes2*3/2 ~ bes2*4/2 g2 ~ g2 f2 ees2*13/4 ~ ees2*7/4 ~ ees2 \divisioMaxima
r4 g2*3/2 bes2*3/2 c'2*4/2 bes2*3/2 ~ bes2 a4 \divisioMaior
c'2*3/2 ~ c'2*9/4 bes4 ~ \divisioMinima
bes2 g2*3/2 ~ g2 d2*4/2 ees2*3/2 f4 \finalis
}

bassMusic = {
r2 g2*4/2 ~ g2*4/2 ~ \divisioMinima
g4 ~ g2*4/2 a2 g2*4/2 f2*3/4 ees2*3/2 ~ ees2 d2 c2*3/2 f2*4/2 ~ f4 \divisioMaxima
d2*4/2 ~ d4 \divisioMinima
c2*3/2 bes,2*4/2 ~ bes,2 aes,2 ~ aes,2 ~ aes,2*13/4 c2*7/4 ~ c2 \divisioMaxima
ees4 ~ ees2*3/2 ~ ees2*3/2 c2*4/2 ~ c2*3/2 f2 ~ f4 \divisioMaior
a2*3/2 g2*9/4 ~ g4 \divisioMinima
ees2 ~ ees2*3/2 bes,2 ~ bes,2*7/2 ~ bes,4 \finalis
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
