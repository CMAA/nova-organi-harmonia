\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.108
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Benedictus es" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Benedictus es"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Benedictus es" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- ia, 
\set stanza = " * " al -- le -- lú -- ia. _ _ _ _ _ _ 
_ _ _ _ ℣. 
Be -- ne -- dí -- ctus es, _ _ 
Dó -- mi -- ne De -- us pa -- trum no -- stró -- rum, _ _ _ 
et lau -- dá -- bi -- lis _ _ 
\set stanza = " * " 
in sǽ -- cu -- la. _ _ _ _ _ _ 
_ _ _ _ }

chantMusic = {
\tieDown   f'4 f'4 ( g'4) g'4 ( a'4) f'4 \divisioMinima
 f'4 f'4 ( g'4) g'4 ( a'4) f'4 \divisioMinima
 g'4 ( f'4) g'4 ( bes'4 a'4 f'4) ~ f'4 ( f'4) g'4 ( f'4) g'4 ( f'4) g'4 ( bes'4 a'4 f'4) \divisioMaior \forceBreak

 a'4 ( c''4 bes'4 a'4 g'4 f'4) g'4 ( f'4.) g'4 ( bes'4 a'4 g'4 f'4) g'4 ( g'4 f'4) \finalis
 f'4 ( f'4 f'4) f'4 ( bes'4) bes'4 bes'4 ( a'4) g'4 ( f'4) g'4 ( a'4 g'4) ~ g'4 ( f'4) \divisioMaior \forceBreak

 f'4 f'4 ( c''4) c''4 c''4 ( bes'4 a'4 bes'4) bes'4 ( a'4) \divisioMinima
 f'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( a'4) g'4 ( f'4) f'4. g'4 ( bes'4 a'4) bes'4 ( c''4 bes'4) ~ bes'4 ( a'4) \divisioMaxima \forceBreak

 f'4 ( bes'4) bes'4 ( \once \tweak #'font-size #-4 a' ) g'4 g'4 ( f'4) f'4. g'4 ( a'4 g'4) ~ g'4 ( f'4) \divisioMaior
 f'4 ( f'4 f'4) f'4 g'4 ( a'4) a'4 ( f'4) \divisioMinima
 g'4 ( f'4) g'4 ( bes'4 a'4 f'4 \forceBreak
) ~ f'4 ( f'4) g'4 ( f'4) g'4 ( f'4) g'4 ( bes'4 a'4 f'4) \divisioMaior
 a'4 ( c''4 bes'4 a'4 g'4 f'4) g'4 ( f'4.) g'4 ( bes'4 a'4 g'4 f'4) g'4 ( g'4 f'4) \finalis

}

altoMusic = {
r4 d'2 ~ d'2 ~ d'4 \divisioMinima
r4 d'2 ~ d'2 ~ d'4 ~ \divisioMinima
d'2 ~ d'2*4/2 ~ d'2 ees'2 ~ ees'2 c'2*3/2 ~ c'4 ~ \divisioMaior
c'2*4/2 ~ c'2 d'2*5/4 ~ d'2*3/2 ~ d'2 c'2 ~ c'4 \finalis
d'2*3/2 ~ d'2 ~ d'4 f'2 ~ f'2 ees'2 d'2*3/2 \divisioMaior
f'4 ~ f'2*3/2 d'2*4/2 f'2 ~ \divisioMinima
f'4 ~ f'2*4/2 r2*7/4 d'2*3/2 ~ d'2 f'2*3/2 ~ \divisioMaxima
f'2 d'2 ees'4 d'2*7/4 ~ d'2 c'2*3/2 \divisioMaior
d'2*4/2 ~ d'2 ~ d'2 \divisioMinima
ees'2 ~ ees'2*4/2 d'2 ~ d'2 ~ d'2 c'2*3/2 d'4 ~ \divisioMaior
d'2 ~ d'2*4/2 ~ d'2*5/4 bes2*5/2 ~ bes2 a4 \finalis
}

tenorMusic = {
r4 bes2 ~ bes2 ~ bes4 \divisioMinima
r4 bes2 g2 bes4 \divisioMinima
g2 f2*4/2 bes2 ~ bes2 ~ bes2 ~ bes2*3/2 a4 \divisioMaior
f2*4/2 a2 ~ a2*5/4 g2*3/2 bes2 ~ bes2 a4 \finalis
bes2*3/2 ~ bes2 ~ bes4 ~ bes2 ~ bes2 ~ bes2 a2*3/2 \divisioMaior
bes4 a2*3/2 bes2*4/2 c'2 ~ \divisioMinima
c'4 d'2*4/2 c'2*7/4 ~ c'2*3/2 bes2 d'2*3/2 \divisioMaxima
bes2 ~ bes2 ~ bes4 a2*7/4 bes2 c'2*3/2 \divisioMaior
bes2*3/2 a4 g2 f2 \divisioMinima
bes2 ~ bes2*4/2 a2 ~ a2 g2 ~ g2*3/2 a4 \divisioMaior
f2 ~ f2*4/2 ~ f2*5/4 d2*5/2 c2 ~ c4 \finalis
}

bassMusic = {
r2*3/2 g2 bes4 \divisioMinima
r4 bes,2 ~ bes,2 ~ bes,4 ~ \divisioMinima
bes,2 d2*4/2 ~ d2 ~ d2 c2 f2*3/2 ~ f4 ~ \divisioMaior
f2*4/2 ~ f2 d2*5/4 ees2*3/2 ~ ees2 f2 ~ f4 \finalis
r2*3/2 a2 g4 d2 ees2 c2 d2*3/2 ~ \divisioMaior
d4 f2*3/2 g2*4/2 f2 \divisioMinima
a4 bes2*4/2 a2*7/4 g2*3/2 ~ g2 d2*3/2 ~ \divisioMaxima
d2 g2 ~ g4 d2*7/4 bes,2 a,2*3/2 \divisioMaior
bes,2*4/2 ~ bes,2 d2 ~ \divisioMinima
d2 c2*4/2 ~ c2 bes,2 ees2 ~ ees2*3/2 d4 ~ \divisioMaior
d2 c2*4/2 bes,2*5/4 ~ bes,2*5/2 f,2 ~ f,4 \finalis
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
