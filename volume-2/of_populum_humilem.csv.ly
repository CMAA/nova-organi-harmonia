\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.170
%(volume.page)

global = {
 \key ees \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Populum humilem" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Populum humilem"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Populum humilem" }
    \line {}
  }
}

chantText = \lyricmode {
Po -- pu -- lum hú -- mi -- _ lem 
\set stanza = " * " 
sal -- vum fá -- ci -- es, _ Dó -- _ _ _ mi -- ne, 
et ó -- cu -- los su -- per -- bó -- rum _ hu -- mi -- li -- á -- _ _ _ bis: 
quó -- ni -- am quis _ De -- _ _ us 
præ -- ter te, Dó -- _ _ _ _ _ _ _ _ _ mi -- ne? }

chantMusic = {
\tieDown   ees'4 ( f'4 ees'4) ees'4 ( f'4 ees'4) ees'4 ( f'4 g'4) g'4 ( bes'4 g'4 f'4) g'4 ( f'4) ~ f'4 ( ees'4 f'4) f'4 ( ees'4) \divisioMaior
 g'4 ( bes'4) bes'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( d''4 c''4 \forceBreak
) bes'4 ( a'4) bes'4 ( bes'4 bes'4) g'4 ( bes'4 f'4 ees'4 f'4) \divisioMinima
 c'4 ees'4 ( ees'4) f'4 ( g'4) bes'4 ( g'4 a'\prall bes'4) ees'4 ( f'4 ees'4) ees'4 \divisioMaxima
 ees'4 ( f'4 \forceBreak
) f'4 ( g'4 a'\prall bes'4 a'4 g'4) g'4 ( a'4 g'4) g'4 g'4 g'4 ( \once \tweak #'font-size #-4 f' )  f'4 ( aes'4 g'4 f'4) g'4 ( f'4) ~ f'4 ( ees'4) \divisioMinima
 g'4 ( ees'4) f'4 g'4 ( bes'4 \forceBreak
) bes'4 ( c''4 bes'4 g'4.) bes'4 ( bes'4) ~ bes'4 ( g'4.) bes'4 ( c''4 bes'4 g'4) g'4 ( a'4 g'4) \divisioMaxima
 ees'4 f'4 g'4 bes'4 ( g'4) bes'4 ( bes'4 g'4 a'4) f'4 ( g'4 a'\prall bes'4 \forceBreak
) c''4 ( bes'4) ~ bes'4 ( a'4 bes'4) bes'4 ( a'4) \divisioMaior
 g'4 ( a'4) g'4 ( \once \tweak #'font-size #-4 f' ) bes'4 ( bes'4) bes'4 ( c''4 bes'4) c''4 ( a'4) bes'4 ( g'4 f'4.) bes'4 ( c''4 bes'4) c''4 ( a'4) bes'4 ( g'4 ees'4 f'4) \divisioMinima \forceBreak

 ees'4 ( g'4) ~ g'4 ( f'4 g'4.) bes'4 ( c''4 a'4) bes'4 ( g'4) ees'4 ( f'4 ees'4) ees'4 \finalis

}

altoMusic = {
bes2*3/2 ~ bes2*3/2 c'2*3/2 d'2*5/2 ~ d'2*4/2 bes2 \divisioMaior
ees'2 ~ ees'2 f'2*3/2 ~ f'2 d'2*3/2 ees'2 ~ ees'2 d'4 \divisioMinima
c'4 ~ c'2 ~ c'2 d'2*4/2 ~ d'2*3/2 c'4 \divisioMaxima
r2 f'2*3/2 ~ f'2*3/2 d'2*3/2 ~ d'2 ees'2 c'2*5/2 ~ c'2 ees'4 ~ \divisioMinima
ees'2*3/2 d'2 g'2*3/2 ~ g'2*3/4 f'2 ees'2*5/4 d'2*4/2 c'2 bes4 ~ \divisioMaxima
bes2*3/2 ees'2 d'2*4/2 ~ d'2*5/2 f'2*4/2 ~ f'2 \divisioMaior
d'2 ~ d'2 ~ d'2 f'2*3/2 ~ f'2 ~ f'2 ~ f'2*3/4 ~ f'2*3/2 ~ f'2 ees'2 c'2 \divisioMinima
ees'4 ~ ees'2*9/4 f'2*3/2 d'2 c'2*3/2 bes4 \finalis
}

tenorMusic = {
g2*3/2 ~ g2*3/2 ~ g2*3/2 ~ g2*5/2 bes2*4/2 g2 \divisioMaior
bes2 ~ bes2 ~ bes2*3/2 c'2 bes2*3/2 ~ bes2 ~ bes2 ~ bes4 \divisioMinima
ees4 g2 c'2 bes2*4/2 g2*3/2 ~ g4 ~ \divisioMaxima
g2 bes2*3/2 c'2*3/2 ~ c'2*3/2 bes4 ees4 bes2 aes2*5/2 g2*3/2 ~ \divisioMinima
g2*3/2 ~ g2 ~ g2*9/4 ~ g2 ~ g2*5/4 ~ g2*4/2 d2 ~ d4 \divisioMaxima
g2*3/2 ~ g2 ~ g2*4/2 bes2*5/2 ~ bes2*4/2 c'2 \divisioMaior
bes2 c'2 bes2 ~ bes2*3/2 a2 g2 a2*3/4 bes2*3/2 a2 g2 ~ g4 a4 \divisioMinima
c'4 bes2*9/4 ~ bes2*3/2 ~ bes2 g2*3/2 ~ g4 \finalis
}

bassMusic = {
ees2*3/2 d2*3/2 c2*3/2 bes,2*5/2 ~ bes,2*4/2 ees2 \divisioMaior
d2 c2 d2*3/2 ~ d2 g2*3/2 c2 bes,2 ~ bes,4 ~ \divisioMinima
bes,4 ~ bes,2 a,2 g,2*4/2 c2*3/2 ~ c4 ~ \divisioMaxima
c2 d2*3/2 ~ d2*3/2 g2*3/2 ~ g2 ees2 f2*5/2 c2*3/2 ~ \divisioMinima
c2*3/2 bes,2 ees2*9/4 d2 c2*5/4 g,2*4/2 ~ g,2 ~ g,4 \divisioMaxima
d2*3/2 c2 bes,2*4/2 ~ bes,2*5/2 d2*4/2 f2 \divisioMaior
r2 a2 g2 d2*3/2 f2 ~ f2 ~ f2*3/4 d2*3/2 f2 ~ f2 ~ f2 \divisioMinima
c4 ~ c2*9/4 d2*3/2 bes,2 ees2*3/2 ~ ees4 \finalis
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
