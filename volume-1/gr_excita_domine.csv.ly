\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.29
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Excita Domine" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Excita Domine"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Excita Domine" }
    \line {}
  }
}

chantText = \lyricmode {
Ex -- ci -- ta, 
\set stanza = " * " Dó -- _ _ mi -- ne, 
po -- tén -- _ ti -- am _ tu -- _ am, _ _ _ _ _ 
et ve -- _ _ _ _ ni, _ _ _ _ _ 
ut sal -- vos fá -- ci -- as _ nos. _ _ _ _ _ _ _ ℣. 
Qui re -- gis Is -- ra -- el, in -- tén -- _ _ _ _ _ _ _ _ _ de: 
qui de -- dú -- cis vel -- ut o -- vem Jo -- _ _ _ _ _ _ _ _ seph: 
qui se -- des _ su -- per Ché -- ru -- bim, _ _ ap -- pá -- _ re _ _ _ 
co -- ram Eph -- ra -- im, _ _ _ _ _ _ _ _ _ _ 
Bén -- ja -- min, _ 
\set stanza = " * " et Ma -- nás -- se. _ _ _ }

chantMusic = {
\tieDown   f'4 ( a'4 g'4) g'4 g'4 \divisioMinima
 bes'4 ( g'4 a'4) bes'4 ( a'4 g'4) a'4 ( f'4 g'4) a'4 ( g'4) g'4 \divisioMaior
 g'4 bes'4 ( g'4) bes'4 ( c''4 d''4) bes'4 ( a'4 g'4 \forceBreak
)  g'4 ( f'4) aes'4 ( g'4 f'4) f'4 ( ees'4) g'4 ( f'4 g'4) g'4 ( ees'4) f'4 ( g'4) bes'4 ( bes'4 g'4 f'4.) g'4 ( a'\prall bes'4) c''4 ( bes'4 bes'4) g'4 ( a'4 g'4) \divisioMaxima
 bes'4 ( bes'4 \forceBreak
) bes'4 ( a'4) bes'4 ( c''4 d''4 bes'4 a'4 bes'4) ~ bes'4 ( a'4) \divisioMinima
 c''4 ( bes'4) c''4 ( bes'4 g'4) g'4 ( bes'4 g'4 f'4) g'4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( bes'4 a'4 g'4) bes'4 ( f'4) ~ f'4 ( ees'4) \divisioMaxima \forceBreak

 ees'4 ees'4 ( f'4 g'4) g'4 g'4 ( bes'4 a'4 g'4 a'4) f'4 ( g'4) bes'4 ( g'4) bes'4 ( c''4) c''4 ( bes'4) c''4 ( d''4 c''4 bes'4) \divisioMinima
 d''4 ( bes'4) d''4 ( ees''4 c''4 a'4) bes'4 ( g'4 f'4 \forceBreak
) g'4 ( a'\prall bes'4 c''4.) bes'4 ( c''4 d''4) \divisioMinima
 c''4 ( d''4 c''4 d''4 bes'4 g'4 a'\prall bes'4 g'4) \finalis
 g'4 bes'4 bes'4 ( c''4) c''4 c''4 c''4 \divisioMinima
 c''4 ( \once \tweak #'font-size #-4 d''  \forceBreak
) d''4 ( c''4 bes'4 a'4) bes'4 ( g'4 f'4) \divisioMinima
 a'4 ( f'4 g'4) bes'4 ( bes'4) c''4 ( d''4 c''4 d''4) \divisioMinima
 bes'4 ( d''4 ees''4 c''4 a'4) bes'4 ( g'4 f'4.) g'4 ( a'4 g'4 f'4 g'4) \divisioMinima
 c''4 ( d''\prall ees''4 d''4 \forceBreak
) ees''4 ( d''4 c''4 d''4) d''4 ( c''4) \divisioMaxima
 c''4 ( d''\prall ees''4 d''4 c''4 d''\prall ees''4 d''4 c''4) c''4 c''4 c''4 \divisioMinima
 c''4 c''4 c''4 c''4 ( \once \tweak #'font-size #-4 d'' ) d''4 ( bes'4) d''4 ( c''4 bes'4) ~ bes'4 ( g'4) bes'4 ( bes'4 g'4) bes'4. ~ bes'4 ( bes'4) ~ bes'4 ( g'4) \divisioMinima
 bes'4 ( c''4 d''4 c''4 bes'4) d''4 ( c''4 bes'4) c''4 ( g'4) g'4 \divisioMaxima \forceBreak

 bes'4 ( bes'4) bes'4 ( d''4 c''4) c''4 ( bes'4) ~ bes'4 ( g'4) \divisioMinima
 g'4 g'4 g'4 g'4 ( c''4) c''4 ( g'4) c''4 ( d''4 bes'4 g'4) bes'4. a'4 ( bes'4 g'4 f'4) \divisioMinima \forceBreak

 g'4 ( f'4 g'4) bes'4 ( g'4) bes'4 ( bes'4 bes'4) bes'4 ( g'4 a'\prall bes'4 c''4.) bes'4 ( c''4) d''4 ( bes'4 bes'4) c''4 ( c''4 bes'4) \divisioMaxima
 bes'4 ( bes'4) bes'4 bes'4 bes'4 \forceBreak
 bes'4 ( a'4) bes'4 ( c''4 d''4 bes'4 a'4 bes'4) ~ bes'4 ( a'4) \divisioMinima
 c''4 ( bes'4) c''4 ( bes'4 g'4.) bes'4 ( g'4 f'4) g'4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( bes'4 a'4 g'4) bes'4 ( f'4) ~ f'4 ( ees'4) \divisioMaxima
 ees'4 f'4 ( g'4 \forceBreak
) g'4 bes'4 ( a'4 g'4 a'4)  f'4 ( g'4) bes'4 ( g'4) bes'4 ( c''4) c''4 ( d''4 bes'4 a'4) bes'4 ( c''4) \divisioMinima
 ees'4 ( g'4 bes'4) ~ bes'4 ( d''4 c''4 bes'4 a'4 g'4 a'\prall bes'4 g'4) \finalis

}

altoMusic = {
d'2*4/2 ~ d'4 ~ \divisioMinima
d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'4 ~ \divisioMaior
d'4 f'2*5/2 d'2*3/2 c'2 ~ c'2*3/2 f'4 ees'4 ~ ees'2*3/2 ~ ees'2 ~ ees'2 f'2*9/4 ees'2*3/2 d'2*3/2 ~ d'2 ~ d'4 \divisioMaxima
g'2 f'2*5/2 ~ f'2 ~ f'2*3/2 \divisioMinima
g'2 ~ g'2*3/2 d'2*5/2 ees'2*3/2 d'2*5/2 r2*3/2 \divisioMaxima
r4 c'2*4/2 d'2*5/2 ~ d'2 ~ d'2*4/2 g'2*6/2 \divisioMinima
f'2 ees'2*4/2 f'2*3/2 d'2*3/2 ~ d'2*7/4 ~ d'4 \divisioMinima
g'2*4/2 d'2*3/2 ~ d'2 \finalis
g'2 f'2 ~ f'2*3/2 \divisioMinima
g'2 ~ g'2*5/2 ~ g'4 f'4 ~ \divisioMinima
f'2*3/2 g'2*6/2 ~ \divisioMinima
g'2*6/2 ~ g'4 f'2*3/4 d'2*5/2 \divisioMinima
g'2*4/2 ~ g'2*4/2 f'2 \divisioMaxima
g'2*4/2 f'2*6/2 ees'2 \divisioMinima
g'2*3/2 ~ g'2 ~ g'2*4/2 ~ g'2*3/2 ~ g'2*3/2 ~ g'2*3/4 d'2 ~ d'2 \divisioMinima
f'2*5/2 ~ f'2*3/2 g'2 ~ g'4 ~ \divisioMaxima
g'2 f'2*4/2 d'2*3/2 ~ \divisioMinima
d'2 g'2*3/2 ~ g'2 d'2*4/2 ~ d'2*3/4 ~ d'2*3/2 ~ d'4 ~ \divisioMinima
d'2*3/2 ~ d'2 ees'2*3/2 ~ ees'2*4/2 g'2*7/4 f'2*3/2 d'2*3/2 \divisioMaxima
g'2*5/2 f'2*5/2 ~ f'2 ~ f'2*3/2 \divisioMinima
g'2 ~ g'2*7/4 d'2*4/2 ees'2*3/2 d'2*5/2 r2*3/2 \divisioMaxima
ees'4 ~ ees'2 d'2*5/2 ~ d'2 ~ d'2 f'2 ~ f'2*4/2 ~ f'2 ~ \divisioMinima
f'2 d'2*4/2 ~ d'2 ~ d'2 ~ d'2 \finalis
}

tenorMusic = {
bes2*4/2 ~ bes4 ~ \divisioMinima
bes2*3/2 ~ bes2*3/2 c'2*3/2 a2 bes4 ~ \divisioMaior
bes4 ~ bes2*5/2 ~ bes2*3/2 ~ bes2 aeess2*3/2 bes2 ~ bes2*3/2 ~ bes2*4/2 ~ bes2*9/4 ~ bes2*3/2 ~ bes2*3/2 c'2 bes4 ~ \divisioMaxima
bes2 ~ bes2*5/2 c'2 d'2*3/2 ~ \divisioMinima
d'2 c'2*3/2 ~ c'2*5/2 bes2*3/2 ~ bes2*5/2 ~ bes2*3/2 ~ \divisioMaxima
bes2*5/2 ~ bes2*5/2 c'2 bes2*4/2 ~ bes2*6/2 ~ \divisioMinima
bes2 ~ bes2*4/2 ~ bes2*3/2 ~ bes2*3/2 a2*7/4 bes4 \divisioMinima
c'2*4/2 ~ c'2*3/2 bes2 \finalis
ees'2 ~ ees'2 d'2*3/2 \divisioMinima
ees'2 d'2*4/2 ~ d'2*3/2 ~ \divisioMinima
d'2*3/2 ~ d'2*6/2 \divisioMinima
ees'2*5/2 d'2*7/4 bes2*5/2 ~ \divisioMinima
bes2*4/2 ~ bes2*4/2 a2 \divisioMaxima
g2*4/2 ~ g2*6/2 ~ g2 ~ \divisioMinima
g2*3/2 a2 bes2*4/2 d'2*3/2 ~ d'2*3/2 c'2*3/4 ~ c'2 bes2 ~ \divisioMinima
bes2*5/2 ~ bes2*3/2 ~ bes2 c'4 \divisioMaxima
bes2 ~ bes2*4/2 ~ bes2*3/2 ~ \divisioMinima
bes2 ~ bes4 a2 g2 ~ g2*4/2 a2*3/4 bes2*3/2 ~ bes4 ~ \divisioMinima
bes2*3/2 ~ bes2 ~ bes2*3/2 ~ bes2*4/2 g2*7/4 bes2*3/2 ~ bes2*3/2 ~ \divisioMaxima
bes2*5/2 ~ bes2*5/2 c'2 d'2*3/2 ~ \divisioMinima
d'2 c'2*7/4 ~ c'2*4/2 bes2*3/2 ~ bes2*5/2 ~ bes2*3/2 ~ \divisioMaxima
bes2*3/2 ~ bes2*5/2 c'2 bes2 ~ bes2 ~ bes2*4/2 g4 a4 ~ \divisioMinima
a2 g2*4/2 a2 c'2 bes2 \finalis
}

bassMusic = {
r2*5/2 \divisioMinima
a2*3/2 g2*3/2 ~ g2*3/2 ~ g2 ~ g4 ~ \divisioMaior
g4 d2*5/2 g2*3/2 ees2 f2*3/2 g2 ~ g2*3/2 ees2*4/2 d2*9/4 c2*3/2 g2*3/2 ~ g2 ~ g4 \divisioMaxima
ees2 d2*5/2 ~ d2 ~ d2*3/2 \divisioMinima
ees2 ~ ees2*3/2 g2*5/2 ~ g2*3/2 ~ g2*5/2 ~ g2*3/2 ~ \divisioMaxima
g2*5/2 ~ g2*5/2 ~ g2 ~ g2*4/2 ees2*6/2 \divisioMinima
d2 c2*4/2 d2*3/2 g2*3/2 ~ g2*7/4 ~ g4 \divisioMinima
ees2*4/2 g2*3/2 ~ g2 \finalis
r2*7/2 \divisioMinima
c'2 bes2*4/2 ~ bes2*3/2 \divisioMinima
c'2*3/2 bes2*6/2 \divisioMinima
c'2*5/2 g2*7/4 ~ g2*5/2 \divisioMinima
ees2*4/2 c2*4/2 f2 \divisioMaxima
ees2*4/2 d2*6/2 c2 \divisioMinima
ees2*3/2 ~ ees2 g2*4/2 ~ g2*3/2 ees2*3/2 ~ ees2*3/4 g2 ~ g2 ~ \divisioMinima
g2*5/2 d2*3/2 ees2 ~ ees4 ~ \divisioMaxima
ees2 d2*4/2 g2*3/2 \divisioMinima
f2 ees4 ~ ees2 ~ ees2 g2*4/2 ~ g2*3/4 ~ g2*3/2 bes4 \divisioMinima
r2*3/2 a2 ~ a2*3/2 g2*4/2 ees2*7/4 d2*3/2 g2*3/2 \divisioMaxima
ees2*5/2 d2*5/2 ~ d2 ~ d2*3/2 \divisioMinima
ees2 ~ ees2*7/4 g2*4/2 ~ g2*3/2 ~ g2*5/2 ~ g2*3/2 ~ \divisioMaxima
g2*3/2 ~ g2*5/2 ~ g2 ~ g2 ~ g2 d2*4/2 f2 ~ \divisioMinima
f2 g2*4/2 ~ g2 ~ g2 ~ g2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Gradual"
        "II"
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
