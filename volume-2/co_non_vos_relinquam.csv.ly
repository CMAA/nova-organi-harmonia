\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.98
%(volume.page)

global = {
 \key ees \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Non vos relinquam" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Non vos relinquam"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Non vos relinquam" }
    \line {}
  }
}

chantText = \lyricmode {
Non vos re -- lín -- quam 
\set stanza = " * " ór -- pha -- nos: 
vé -- ni -- am ad vos í -- te -- rum, al -- le -- lú -- ia: 
et gau -- dé -- bit cor ve -- strum, 
al -- le -- lú -- _ ia, 
al -- le -- _ lú -- ia. }

chantMusic = {
\tieDown   g'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 a'4 ( bes'4) g'4 g'4 ( f'4)  g'4 ( bes'4) f'4 ( g'4 f'4 ees'4 f'4) f'4 ( ees'4) \divisioMaior
 g'4 f'4 ( g'4) ees'4 f'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( ees'4 \forceBreak
)  g'4 ( aes'4 g'4) f'4 ( g'4) g'4 \divisioMinima
 g'4 f'4  g'4 ( aes'4 g'4) f'4 \divisioMaxima
 g'4 bes'4 bes'4 bes'4 ( bes'4 bes'4) g'4 ( a'4 bes'4 a'4 f'4  g'\prall \forceBreak
 aes'4 g'4) f'4 ees'4 ( f'4 g'4 f'4 ees'4 f'4) f'4 ( ees'4) \divisioMaxima
 ees'4 ( g'4) bes'4 ( bes'4 c''\prall d''4) d''4 ( c''4) ~ c''4 ( bes'4 c''4) c''4 ( bes'4) \divisioMaior
  ees'4 ( g'4) f'4 bes'4 ( bes'4 g'4 aes'\prall bes'4 aes'4 f'4 g'\prall aes'4 g'4 f'4 ees'4 ( f'4 g'4 f'4 ees'4 f'4) f'4 ( ees'4) \finalis

}

altoMusic = {
d'2 ~ d'4 ~ d'2 ~ d'4 ~ d'2 ees'2 r2*5/2 bes2 ~ \divisioMaior
bes4 c'2*3/2 ~ c'2 ~ c'2 ~ c'2*3/2 ~ c'2 ees'4 \divisioMinima
d'2 <e' c'>2*3/2 d'4 ~ \divisioMaxima
d'2 ~ d'4 ees'2*3/2 ~ ees'2 f'2 c'2 ~ c'2*3/2 ~ c'2 d'2*4/2 bes2 \divisioMaxima
ees'2 d'2*3/2 g'2 ~ g'2*4/2 f'2 ees'2*3/2 d'2 ees'2 c'2 ~ c'2 ~ c'2*3/2 ~ c'2 ~ c'2 ~ c'2 bes2 \finalis
}

tenorMusic = {
r2*3/2 c'2 bes4 ~ bes2 ~ bes2 ~ bes2*5/2 g2 ~ \divisioMaior
g4 ~ g2*3/2 ~ g2 ~ g2 bes2*3/2 aes2 bes4 ~ \divisioMinima
bes2 r2*3/2 r4 \divisioMaxima
bes2 g4 ~ g2*3/2 bes2 ~ bes2 ~ bes2 aes2*3/2 g2 bes2*4/2 g2 \divisioMaxima
bes2 ~ bes2*3/2 ~ bes2 ~ bes2*4/2 ~ bes2 ~ bes2*3/2 ~ bes2 ~ bes2 ~ bes2 aes2 f2*3/2 g2 ~ g2 aes2 a4 g4 \finalis
}

bassMusic = {
bes2 g4 ~ g2 ~ g4 bes2 g2 d2*5/2 ees2 \divisioMaior
d4 c2*3/2 d2 ees2 f2*3/2 ~ f2 ees4 ~ \divisioMinima
ees2 bes2*3/2 ~ bes4 \divisioMaxima
bes,2 ~ bes,4 c2*3/2 ~ c2 d2 f2 ~ f2*3/2 c2 bes,2*4/2 ees2 \divisioMaxima
g2 ~ g2*3/2 f2 ees2*4/2 d2 c2*3/2 bes,2 c2 f2 ~ f2 ~ f2*3/2 c2 aes,2 ~ aes,2 ees2 \finalis
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
        "V"
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
