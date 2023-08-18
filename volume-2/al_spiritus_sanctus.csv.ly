\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.90
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Spiritus Sanctus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Spiritus Sanctus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Spiritus Sanctus" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ lú -- ia, 
\set stanza = " * " al -- le -- _ lú -- ia. _ _ _ _ _ _ _ ℣. 
Spí -- ri -- tus San -- ctus do -- cé -- bit _ vos 
quæ -- cúm -- _ que dí -- xe -- ro 
\set stanza = " * " vo -- bis. _ _ _ _ _ _ }

chantMusic = {
\tieDown   f'4 ( \once \tweak #'font-size #-4 g' ) f'4 g'4 ( f'4 bes'4) bes'4 ( c''4 d''4 \tiny c'' bes' 4) c''4 ( bes'4) \divisioMinima
 f'4 ( \once \tweak #'font-size #-4 g' ) f'4 g'4 ( f'4 bes'4) bes'4 ( c''4 d''4 \tiny c'' bes' 4) c''4 ( bes'4) \divisioMinima \forceBreak

 c''4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( a'4.) f'4 ( g'4 f'4 ees'4) \divisioMinima
 g'4 ( a'\prall bes'4 a'4 g'4) a'4 ( g'4) ~ g'4 ( f'4) \finalis
 f'4 ( g'4) f'4 ( g'4 bes'4) bes'4 ( c''4 bes'4 a'4 \forceBreak
) f'4 ( g'4) f'4 ( f'4 ees'4) \divisioMinima
 g'4 ( f'4) g'4 ( bes'4) a'4 ( g'4) a'4 ( \tiny g' f' 4) g'4 ( f'4) \divisioMaior
 ees'4 ( f'4) f'4 g'4 ( f'4 bes'4) bes'4 bes'4 ( c''4 d''4) c''4 bes'4 ( c''4 bes'4) \divisioMinima \forceBreak

 c''4 ( bes'4) a'4 ( c''4 bes'4) ~ bes'4 ( g'4) bes'4 ( a'4.) f'4 ( g'4 f'4 ees'4) \divisioMinima
 g'4 ( a'\prall bes'4 a'4 g'4) a'4 ( g'4) ~ g'4 ( f'4) \finalis

}

altoMusic = {
c'2*3/2 d'2*3/2 ~ d'2*5/2 f'2 \divisioMinima
ees'2*3/2 d'2*3/2 g'2*5/2 f'2 ~ \divisioMinima
f'4 d'2*3/2 f'2*5/4 ~ f'4 g'4 f'4 ees'4 ~ \divisioMinima
ees'2 ~ ees'2*4/2 c'2 ~ c'4 ~ \finalis
c'2 d'2*3/2 ~ d'2*4/2 c'2 bes2*3/2 \divisioMinima
c'2 d'2 ~ d'2 ~ d'2*3/2 ~ d'2 \divisioMaior
r2 f'4 ~ f'2*4/2 ees'2*4/2 f'2*3/2 ~ \divisioMinima
f'2 ~ f'2 d'2*3/2 ~ d'2*5/4 r2*4/2 \divisioMinima
d'2 ees'2 ~ ees'2 c'2 ~ c'4 \finalis
}

tenorMusic = {
bes2*3/2 ~ bes2*3/2 ~ bes2*5/2 ~ bes2 ~ \divisioMinima
bes2*3/2 ~ bes2*3/2 ~ bes2*5/2 ~ bes2*3/2 ~ bes2*3/2 c'2*5/4 bes2*4/2 ~ \divisioMinima
bes2 ~ bes2*4/2 ~ bes2 a4 \finalis
bes2 ~ bes2*3/2 ~ bes2*4/2 a2 g2*3/2 \divisioMinima
a2 bes2 c'2 bes2*3/2 a2 \divisioMaior
g2 bes4 ~ bes2*4/2 ~ bes2*4/2 ~ bes2*3/2 \divisioMinima
a2 f2 g2*3/2 f2*5/4 g2*4/2 ~ \divisioMinima
g2 ~ g2 bes2 ~ bes2 a4 \finalis
}

bassMusic = {
r2*3/2 a2*3/2 g2*5/2 d2 \divisioMinima
c2*3/2 bes,2*3/2 ees2*5/2 d2 ~ \divisioMinima
d4 g2*3/2 f2*5/4 g2*4/2 \divisioMinima
ees2 c2*4/2 f2 ~ f4 \finalis
r2 a2*3/2 g2*4/2 ~ g2 ~ g2*3/2 ~ \divisioMinima
g2 ~ g2 ~ g2 ~ g2*3/2 d2 \divisioMaior
ees2 ~ ees4 d2*4/2 c2*4/2 d2*3/2 \divisioMinima
f2 ~ f2 r2*3/2 d2*5/4 c2*4/2 \divisioMinima
bes,2 c2 ~ c2 f2 ~ f4 \finalis
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
