\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.106
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Vere tu es" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Vere tu es"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Vere tu es" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ _ _ lu -- ia, 
\set stanza = " * " 
al -- le -- _ _ _ lu -- ia. 
_ _ _ _ _ _ _ _ _ ℣. 
Ve -- re tu _ _ es 
Rex abs -- cón -- _ _ _ _ di -- tus, 
De -- us Is -- _ ra -- el 
\set stanza = " * " Sal -- vá -- _ _ _ tor. 
_ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   f'4 ( g'4) ees'4 ( d'4 c'4) d'4 ( ees'4) f'4 ( ees'4) g'4 ( f'4) ees'4 ( \once \tweak #'font-size #-4 f' ) f'4 \divisioMaior
 f'4 ( g'4) ees'4 ( d'4 c'4) d'4 ( ees'4) f'4 ( ees'4) g'4 ( f'4) ees'4 ( \once \tweak #'font-size #-4 f' ) f'4 \divisioMaior \forceBreak

 g'4 ( f'4) bes'4 ( bes'4 a'4 g'4) c''4 ( bes'4 g'4) ~ g'4 ( f'4) \divisioMinima
 g'4 ( f'4 ees'4 d'4 c'4) f'4. ees'4 ( f'4 g'4) ~ g'4 ( f'4) bes'4 ( a'4 g'4) ~ g'4 ( f'4) \finalis \forceBreak

 f'4 ( g'4) ees'4 ( d'4 c'4) d'4 ( ees'4) f'4 ( ees'4) g'4 ( f'4 ees'4 f'4) f'4 \divisioMaior
 g'4 ( bes'4 a'4) bes'4 g'4 ( a'\prall bes'4 c''4 bes'4 g'4) ~ g'4 ( f'4. \forceBreak
) g'4 ( bes'4 f'4) g'4 ( f'4 ees'4) g'4. f'4 ( g'4 a'\prall bes'4 a'4) g'4 ( f'4) f'4 \divisioMaxima
 f'4 ( bes'4) bes'4 ( a'4 g'4) g'4 ( c''4) ~ c''4 ( bes'4) g'4 ( f'4) f'4 \divisioMinima \forceBreak

 f'4 ( g'4) ees'4 ( d'4 c'4) d'4 ( ees'4) f'4 ( ees'4) g'4 ( f'4 ees'4 f'4) f'4 \divisioMaior
 g'4 ( f'4) bes'4 ( bes'4 a'4 g'4) c''4 ( bes'4 g'4) ~ g'4 ( f'4) \divisioMinima
 g'4 ( f'4 ees'4 d'4 c'4 \forceBreak
) f'4. ees'4 ( f'4 g'4) ~ g'4 ( f'4) bes'4 ( a'4 g'4) ~ g'4 ( f'4) \finalis

}

altoMusic = {
d'2 r2 c'4 ~ c'2 ~ c'2*4/2 ~ c'2 ~ c'4 \divisioMaior
bes2 c'2*5/2 ~ c'2*4/2 ~ c'2 ~ c'4 ~ \divisioMaior
c'2 ees'2*4/2 d'2 c'2*3/2 \divisioMinima
bes2 ~ bes2*3/2 ~ bes2*7/4 ~ bes2*3/2 ees'2 ~ ees'2 c'4 \finalis
bes2 c'2 ~ c'4 bes2*4/2 c'2*4/2 ~ c'4 \divisioMaior
f'2*4/2 ees'2*5/2 d'2*7/4 ~ d'2*3/2 c'2*3/2 d'2*3/4 c'2*3/2 bes2 ~ bes2 ~ bes4 ~ \divisioMaxima
bes2 ees'2*3/2 ~ ees'4 f'2*3/2 ~ f'2 d'4 \divisioMinima
bes2*5/2 ~ bes2*4/2 ees'2*4/2 c'4 \divisioMaior
bes2 ees'2*4/2 d'2 c'2*3/2 \divisioMinima
bes2*5/2 ~ bes2*7/4 ~ bes2*3/2 ~ bes2 c'2 ~ c'4 \finalis
}

tenorMusic = {
bes2 ~ bes2*3/2 ~ bes2 ~ bes2*4/2 g2 a4 \divisioMaior
f2 g2*5/2 ~ g2*4/2 ~ g2 a4 \divisioMaior
f2 g2*4/2 ~ g2 d2*3/2 ~ \divisioMinima
d2 ees2*3/2 ~ ees2*7/4 d2*3/2 c2 bes2 a4 \finalis
f2 g2*3/2 bes2*4/2 ~ bes2 g2 a4 \divisioMaior
bes2*4/2 ~ bes2*5/2 a2*7/4 g2*3/2 ees2*3/2 f2*3/4 d2*3/2 ~ d2 ees2 d4 \divisioMaxima
f2 g2*3/2 bes4 ~ bes2*3/2 a2 ~ a4 \divisioMinima
g2*5/2 ~ g2*4/2 bes2*4/2 a4 \divisioMaior
f2 g2*4/2 ~ g2 d2*3/2 \divisioMinima
ees2*5/2 ~ ees2*7/4 d2*3/2 f2 bes2 a4 \finalis
}

bassMusic = {
r2 g2*3/2 f2 ees2*4/2 f2 ~ f4 \divisioMaior
d2 ees2*5/2 c2*4/2 bes,2 a,4 \divisioMaior
d2 c2*4/2 bes,2 a,2*3/2 \divisioMinima
g,2 ~ g,2*3/2 bes,2*7/4 ~ bes,2*3/2 c2 ~ c2 f4 \finalis
d2 ees2*3/2 g2*4/2 f2 ~ f2 ~ f4 \divisioMaior
d2*4/2 c2*5/2 d2*7/4 bes,2*3/2 ~ bes,2*3/2 d2*3/4 a,2*3/2 g,2 ~ g,2 bes,4 \divisioMaxima
d2 c2*3/2 ~ c4 d2*3/2 ~ d2 ~ d4 \divisioMinima
r2*5/2 ees2*4/2 c2*4/2 f4 \divisioMaior
d2 c2*4/2 bes,2 a,2*3/2 \divisioMinima
g,2*5/2 bes,2*7/4 ~ bes,2*3/2 d2 ees2 f4 \finalis
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
