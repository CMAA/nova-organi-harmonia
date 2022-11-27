\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.79
%(volume.page)

global = {
 \key g \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Veni Sancte Spiritus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Veni Sancte Spiritus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Veni Sancte Spiritus" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ _ lú -- ia. 
\set stanza = " * " _ _ _ 
_ _ _ Hic genuflectitur _ ℣. 
Ve -- _ _ _ ni San -- cte Spí -- _ _ ri -- tus, 
re -- plé _ tu -- ó -- rum cor -- da fi -- dé -- li -- um: 
et tu -- i a -- mó -- _ _ _ _ _ _ _ _ _ _ ris 
in e -- is ig -- nem 
\set stanza = " * " ac -- _ _ cén -- de. _ _ _ _ 
_ _ _ _ _ }

chantMusic = {
\tieDown   f'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) bes'4 ( a'4) ~ a'4 ( g'4) f'4 ( \once \tweak #'font-size #-4 g' ) g'4 \divisioMinima
 c''4 ( c''4) a'4 ( bes'4 c''4 bes'4 a'4.) g'4 ( bes'4 a'4) f'4 ( f'4 g'4) \divisioMaior \forceBreak

  d''4 ( d''4) c''4 ( ees''4 d''4 c''4) ~ c''4 ( bes'4 g'4.) a'4 ( c''4 bes'4 a'4 f'4) a'4 ( a'4 g'4) \finalis
 f'4 ( g'\prall a'4) bes'4 ( a'4) ~ a'4 ( g'4) f'4 ( g'4) g'4 \divisioMinima \forceBreak

 g'4 a'4 ( bes'\prall c''4) c''4. bes'4 ( c''4 a'4) bes'4 ( g'4 a'4) a'4 ( f'4 g'4) g'4 \divisioMaior
 bes'4 a'4 ( g'4 f'4 g'4) a'4 ( a'4 g'4) \divisioMinima
 g'4 bes'4 ( a'4) bes'4 ( c''4 \forceBreak
) c''4 a'4 ( bes'4 g'4 a'4) a'4 a'4 ( g'4) f'4 ( g'4) g'4 \divisioMaxima
 a'4 c''4 c''4 ( d''4) d''4  ees''4 ( d''4 c''4) ~ c''4 ( bes'4 g'4.) a'4 ( bes'4 a'4 g'4) f'4 ( g'4) \divisioMinima \forceBreak

  f'4 ( a'4.) c''4 ( d''4) ees''4 ( d''4 c''4) ~ c''4 ( bes'4 g'4.) a'4 ( bes'4 a'4 g'4) f'4 ( g'4.) f'4 ( g'\prall a'4 bes'4) a'4 \divisioMaior
 a'4 ( f'4 g'4) a'4 ( g'4) g'4 \forceBreak
 f'4 ( \once \tweak #'font-size #-4 g' ) g'4  g'4 ( a'4) bes'4 ( a'4) ~ a'4 ( g'4) f'4 ( \once \tweak #'font-size #-4 g' ) g'4 \divisioMinima
 c''4 ( c''4) a'4 ( bes'4 c''4 bes'4 a'4.) g'4 ( bes'4 a'4) f'4 ( f'4 g'4) \divisioMaior \forceBreak

  d''4 ( d''4) c''4 ( ees''4 d''4 c''4) ~ c''4 ( bes'4 g'4.) a'4 ( c''4 bes'4 a'4 f'4) a'4 ( a'4 g'4) \finalis

}

altoMusic = {
d'2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'4 \divisioMinima
f'2*4/2 d'2*7/4 ~ d'2*3/2 ~ d'2 ~ d'4 f'2 g'2*3/2 d'2*9/4 f'2*3/2 c'2 bes2*3/2 \finalis
f'2*4/2 ~ f'2*3/2 ~ f'2 r4 \divisioMinima
g'4 ~ g'2*3/2 f'2*3/4 ~ f'2*3/2 ~ f'2*3/2 d'2*3/2 ~ d'4 ~ \divisioMaior
d'4 bes2 c'2 d'2*3/2 ~ \divisioMinima
d'4 ees'2*4/2 f'4 ~ f'2 ~ f'2 ~ f'4 d'2 ~ d'2 ~ d'4 \divisioMaxima
a'2 f'2 ~ f'4 ees'2 ~ ees'2*3/2 d'2*3/4 ~ d'2*4/2 ~ d'2 f'2*5/4 g'2 ees'2 d'2*9/4 ~ d'2*4/2 ~ d'2*5/4 f'2*4/2 ~ f'4 \divisioMaior
d'2*3/2 ~ d'2*3/2 c'2*3/2 ~ c'2*3/2 bes2*3/2 c'2 d'4 \divisioMinima
f'2 ~ f'2*4/2 ~ f'2*3/4 d'2*3/2 ~ d'2 ~ d'4 g'2 ~ g'2*3/2 d'2*3/2 ~ d'2*3/4 f'2*3/2 c'2 bes2*3/2 \finalis
}

tenorMusic = {
bes2 ~ bes2*3/2 ~ bes2*3/2 a2 bes4 \divisioMinima
a2*4/2 ~ a2*7/4 bes2*3/2 a2 bes4 ~ bes2 ~ bes2*3/2 ~ bes2*9/4 c'2*3/2 f2 d2*3/2 \finalis
d'2*4/2 ~ d'2*3/2 ~ d'2 ~ d'4 \divisioMinima
bes4 c'2*3/2 ~ c'2*3/4 d'2*3/2 c'2*3/2 ~ c'2*3/2 bes4 \divisioMaior
g4 d2 ~ d2 ~ d2*3/2 \divisioMinima
g4 ~ g2*4/2 f4 g2 bes2 c'4 ~ c'2 a2 bes4 \divisioMaxima
r4 a4 ~ a2 bes4 ~ bes2 ~ bes2*3/2 ~ bes2*3/4 c'2*4/2 bes2 a2*5/4 g2 ~ g2 ~ g2*9/4 ~ g2*4/2 a2*5/4 ~ a2*4/2 f4 ~ \divisioMaior
f2*3/2 d2*3/2 ~ d2*3/2 ~ d2*3/2 ~ d2*3/2 ~ d2 ~ d4 ~ \divisioMinima
d2 f2*4/2 c'2*3/4 ~ c'2*3/2 a2 bes4 ~ bes2 a2*3/2 ~ a2*3/2 bes2*3/4 c'2*3/2 f2 d2*3/2 \finalis
}

bassMusic = {
r2 a2*3/2 g2*3/2 ~ g2 ~ g4 \divisioMinima
d2*4/2 f2*7/4 g2*3/2 ~ g2 ~ g4 d2 ees2*3/2 g2*9/4 d2*3/2 ~ d2 g,2*3/2 \finalis
r2*4/2 c'2*3/2 a2 bes4 \divisioMinima
g4 f2*3/2 d2*3/4 ~ d2*3/2 ~ d2*3/2 g2*3/2 ~ g4 \divisioMaior
g,4 ~ g,2 a,2 bes,2*3/2 ~ \divisioMinima
bes,4 c2*4/2 d4 ~ d2 ~ d2 ~ d4 g2 ~ g2 ~ g4 \divisioMaxima
f4 ~ f4 d2 ~ d4 c2 g2*3/2 ~ g2*3/4 f2*4/2 g2 d2*5/4 ees2 c2 g,2*9/4 bes,2*4/2 ~ bes,2*5/4 d2*4/2 ~ d4 \divisioMaior
c2*3/2 bes,2*3/2 a,2*3/2 g,2*3/2 ~ g,2*3/2 a,2 bes,4 \divisioMinima
d2 ~ d2*4/2 ~ d2*3/4 g2*3/2 ~ g2 ~ g4 ees2 ~ ees2*3/2 g2*3/2 ~ g2*3/4 d2*3/2 ~ d2 g,2*3/2 \finalis
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
