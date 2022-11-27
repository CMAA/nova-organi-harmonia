\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.184
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Exsultate Deo" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Exsultate Deo"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Exsultate Deo" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- ia, 
\set stanza = " * " al -- le -- lú -- ia. _ _ _ _ _ _ _ _ _ _ _ _ _ ℣. 
Ex -- sul -- tá -- te De -- _ o 
ad -- ju -- tó -- ri no -- _ stro, _ _ 
ju -- bi -- lá -- te _ De -- _ o Ja -- cob: _ 
sú -- mi -- te psal -- _ _ _ mum ju -- cún -- dum _ _ 
\set stanza = " * " 
cum cí -- tha -- ra. _ _ _ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   f'4 f'4 ( bes'4 a'4) bes'4 ( \once \tweak #'font-size #-4 c'' ) c''4 \divisioMinima
 f'4 f'4 ( bes'4 a'4) bes'4 ( \once \tweak #'font-size #-4 c'' ) c''4 \divisioMinima
 bes'4 ( bes'4 c''4) a'4 ( c''4 d''4.) bes'4 ( d''4 c''4 d''\prall ees''4 c''4. \forceBreak
) a'4 ( g'4 a'\prall bes'4) c''4 ( bes'4) ~ bes'4 ( f'4) \divisioMinima
 bes'4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( a'4) c''4 ( bes'4) ~ bes'4 ( g'4 f'4) g'4 ( a'4 g'4) ~ g'4 ( f'4) \finalis
 f'4 ( g'4) f'4 \forceBreak
 f'4 ( bes'4 a'4) bes'4 ( c''4) c''4 ( d''4 bes'4 a'4) bes'4 ( c''4) c''4 \divisioMaior
 c''4 c''4 c''4 ees''4 ( c''4 d''\prall ees''4 d''4 c''4) c''4 ( d''4 bes'4 a'4) bes'4 ( c''4 \forceBreak
) c''4 ( d''4 bes'4) c''4 ( bes'4 a'4) bes'4 ( a'4) \divisioMaxima
 a'4 ( bes'4) a'4 a'4 ( bes'4 c''\prall d''4) d''4 ( c''4) d''4 ( bes'4 g'4) c''4. \divisioMinima
 c''4 ( bes'4) ~ bes'4 ( a'4 g'4 f'4) g'4 ( g'4 f'4 \forceBreak
) f'4 ( g'4 a'\prall bes'4 c''4) c''4 ( d''4 bes'4 a'4) bes'4 ( c''4) \divisioMaxima
 f'4 f'4 ( bes'4 a'4) bes'4 ( c''4) c''4 ( d''\prall ees''4) f''4 ( ees''4) ~ ees''4 ( c''4 d''\prall ees''4 d''4) ees''4 ( d''4 c''4) d''4 ( c''4) \divisioMinima \forceBreak

 c''4 c''4 ees''4 ( c''4 d''\prall ees''4 d''4) ees''4 ( d''4 c''4) d''4 ( c''4) \divisioMaior
 c''4 ( \once \tweak #'font-size #-4 g' ) g'4 ( bes'4 a'4) bes'4 ( c''4) c''4 \divisioMinima
 bes'4 ( bes'4 c''4) a'4 ( c''4 d''4.) bes'4 ( d''4 c''4 d''\prall ees''4 c''4. \forceBreak
) a'4 ( g'4 a'\prall bes'4) c''4 ( bes'4) ~ bes'4 ( f'4) \divisioMinima
 bes'4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( a'4) c''4 ( bes'4) ~ bes'4 ( g'4 f'4) g'4 ( a'4 g'4) ~ g'4 ( f'4) \finalis

}

altoMusic = {
r4 d'2*3/2 ~ d'2 f'4 \divisioMinima
d'4 ~ d'2*3/2 ~ d'2 c'4 \divisioMinima
f'2*3/2 ~ f'2*7/4 g'2 ~ g'2*9/4 f'2*5/2 ~ f'2 ~ f'4 \divisioMinima
d'2 g'2 f'2*3/2 ~ f'2*3/2 ~ f'4 ees'2 c'2 ~ c'4 \finalis
d'2*3/2 ~ d'2*3/2 ~ d'2 f'2 ~ f'2 ~ f'2 ~ f'4 \divisioMaior
a'2 g'4 ~ g'2*6/2 ~ g'2*4/2 ~ g'2 ~ g'2*3/2 ~ g'2*3/2 f'2 ~ \divisioMaxima
f'2*3/2 ~ f'2*4/2 ~ f'2 ~ f'2*3/2 ~ f'2*5/4 ~ f'2*5/2 d'2*3/2 ~ d'2*3/2 ~ d'2 f'2 ~ f'2 ~ f'2 \divisioMaxima
c'4 d'2*3/2 ~ d'2 g'2*4/2 ~ g'2*4/2 c'2 g'2*3/2 f'2 \divisioMinima
a'2 g'2*5/2 bes'2*3/2 a'2 \divisioMaior
g'2 f'2*3/2 ~ f'2 ees'4 \divisioMinima
f'2*3/2 ~ f'2*7/4 g'2 ~ g'2*9/4 f'2*5/2 ~ f'2 ~ f'4 \divisioMinima
d'2 g'2 f'2*3/2 ~ f'2*3/2 ~ f'4 ees'2 c'2 ~ c'4 \finalis
}

tenorMusic = {
r4 bes2*3/2 ~ bes2 a4 \divisioMinima
bes4 a2*3/2 g2 a4 \divisioMinima
bes2*3/2 c'4 a2*5/4 g2 ~ g2*9/4 c'2*5/2 d'2*3/2 \divisioMinima
bes2 ~ bes2 ~ bes2*3/2 ~ bes2*4/2 ~ bes2 ~ bes2 a4 \finalis
bes2*3/2 ~ bes2*3/2 ~ bes2 a2 f2 g2 a4 \divisioMaior
f'2 ~ f'4 ees'2*6/2 d'2*4/2 ~ d'2 g2*3/2 c'2*3/2 d'2 ~ \divisioMaxima
d'2*3/2 ~ d'2*4/2 ~ d'2 bes2*3/2 c'2*3/4 ~ \divisioMinima
c'4 d'2*5/2 bes2*3/2 ~ bes2*3/2 ~ bes2 ~ bes2 g2 ~ g4 a4 \divisioMaxima
r4 bes2*3/2 ~ bes2 g2*4/2 c'2*4/2 ~ c'2 ~ c'2*3/2 ~ c'2 ~ \divisioMinima
c'4 f'4 ees'2*5/2 g'2*3/2 f'2 \divisioMaior
c'2 d'2*3/2 g2 ~ g4 \divisioMinima
bes2*3/2 c'4 a2*5/4 g2 ~ g2*9/4 c'2*5/2 d'2*3/2 \divisioMinima
bes2 ~ bes2 ~ bes2*3/2 ~ bes2*4/2 ~ bes2 ~ bes2 a4 \finalis
}

bassMusic = {
bes4 a2*3/2 g2 f4 \divisioMinima
bes,4 ~ bes,2*3/2 ~ bes,2 f4 \divisioMinima
d2*3/2 f2*7/4 ~ f2 ees2*9/4 f2*5/2 d2*3/2 \divisioMinima
g2 ees2 ~ ees2*3/2 d2*4/2 c2 f2 ~ f4 \finalis
r2*3/2 a2*3/2 g2 f2 ~ f2 ~ f2 ~ f4 ~ \divisioMaior
f2 c'4 ~ c'2*6/2 g2*4/2 f2 ees2*3/2 ~ ees2*3/2 d2 \divisioMaxima
r2*3/2 c'2*4/2 bes2 g2*3/2 a2*3/4 ~ \divisioMinima
a4 d'2*5/2 r2*3/2 a2*3/2 g2 f2 ~ f2 ~ f2 \divisioMaxima
a4 ~ a2*3/2 g2 ees2*4/2 c2*6/2 bes2*3/2 a2 \divisioMinima
f2 c'2*5/2 ~ c'2*3/2 f2 \divisioMaior
ees2 d2*3/2 c2 ~ c4 \divisioMinima
d2*3/2 f2*7/4 ~ f2 ees2*9/4 f2*5/2 d2*3/2 \divisioMinima
g2 ees2 ~ ees2*3/2 d2*4/2 c2 f2 ~ f4 \finalis
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
        "VII"
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
