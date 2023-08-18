\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.47
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Redemptionem" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Redemptionem"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Redemptionem" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- ia, _ _ 
\set stanza = " * " al -- le -- lú -- ia. _ _ _ _ _ _ _ _ ℣. 
Re -- demp -- ti -- ó -- _ _ _ nem mi -- sit Dó -- _ _ mi -- nus 
in pó -- pu -- lo 
\set stanza = " * " su -- o. _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   f'4 g'4 bes'4 ( \once \tweak #'font-size #-4 c'' ) c''4 ( bes'4) c''4 ( a'4) ~ a'4 ( g'4) \divisioMinima
 f'4 g'4 bes'4 ( \once \tweak #'font-size #-4 c'' ) c''4 ( bes'4) c''4 ( a'4) ~ a'4 ( g'4) \divisioMinima
 bes'4. c''4 ( d''4 c''4) f'4 ( g'4) bes'4 ( g'4 \forceBreak
) bes'4. a'4 ( bes'4 f'4) bes'4 ( bes'4) ~ bes'4 ( g'4 a'\prall bes'4 g'4) \finalis
 g'4 g'4 g'4 g'4 ( f'4) g'4 ( bes'4 c''4 bes'4 a'4) bes'4 ( c''4 bes'4 a'4) bes'4 ( c''4) c''4 \divisioMinima \forceBreak

 c''4 ( d''4 c''4 d''4) bes'4 ( d''4 c''4 d''4) a'4 ( bes'4) c''4 ( g'4) bes'4. a'4 ( bes'4 c''4) g'4 ( bes'4 a'4 g'4) g'4 \divisioMaior
 g'4 ( \once \tweak #'font-size #-4 f' ) g'4 g'4 bes'4 ( a'4)  \forceBreak
 bes'4 ( c''4) c''4 ( bes'4) c''4 ( a'4) ~ a'4 ( g'4) \divisioMinima
 bes'4. c''4 ( d''4 c''4) f'4 ( g'4) bes'4 ( g'4) bes'4. a'4 ( bes'4 f'4) bes'4 ( bes'4) ~ bes'4 ( g'4 a'\prall bes'4 g'4) \finalis

}

altoMusic = {
d'2 ~ d'2 ~ d'2*3/2 ~ d'2 ~ d'4 \divisioMinima
f'2 ~ f'2 d'2*3/2 ~ d'2 ~ d'4 \divisioMinima
g'2*3/4 f'2*3/2 ~ f'2 ~ f'2 ees'2*3/4 c'2*3/2 d'2 c'2*3/2 bes2 \finalis
d'2*3/2 ~ d'2 ~ d'2*5/2 f'2*4/2 ~ f'2 ~ f'4 ~ \divisioMinima
f'2*4/2 ~ f'2*4/2 ~ f'2*4/2 d'2*3/4 ~ d'2*3/2 c'2*4/2 d'4 \divisioMaior
c'2 d'2 ees'2 f'2 ees'2*3/2 d'2*3/2 ~ \divisioMinima
d'2*13/4 ~ d'2 ees'2*3/4 f'2*3/2 ~ f'2 ees'2*3/2 d'2 \finalis
}

tenorMusic = {
bes2 ~ bes2 a2*3/2 c'2 bes4 ~ \divisioMinima
bes2 d'2 ~ d'2*3/2 c'2 bes4 ~ \divisioMinima
bes2*3/4 ~ bes2*3/2 a2 g2 ~ g2*3/4 f2*3/2 ~ f2 d2*3/2 ~ d2 \finalis
bes2*3/2 ~ bes2 ~ bes2*5/2 ~ bes2*4/2 g2 a4 ~ \divisioMinima
a2*4/2 bes2*4/2 d'2*4/2 ~ d'2*3/4 c'2*3/2 a2*4/2 bes4 \divisioMaior
r2*6/2 f2 g2*3/2 ~ g2*3/2 ~ \divisioMinima
g2*3/4 a2*5/2 g2 ~ g2*3/4 f2*3/2 g2 ~ g4 bes2 ~ bes2 \finalis
}

bassMusic = {
r2 g2 ~ g2*3/2 ~ g2 ~ g4 \divisioMinima
d2 ~ d2 g2*3/2 ~ g2 ~ g4 \divisioMinima
ees2*3/4 d2*3/2 ~ d2 ~ d2 c2*3/4 d2*3/2 bes,2 a,2*3/2 g,2 \finalis
r2*3/2 a2 g2*5/2 d2*4/2 f2 ~ f4 \divisioMinima
d2*4/2 ~ d2*4/2 ~ d2*4/2 g2*3/4 ~ g2*3/2 ~ g2*4/2 ~ g4 \divisioMaior
a2 g2 ~ g2 d2 c2*3/2 bes,2*3/2 \divisioMinima
g,2*13/4 ~ g,2 c2*3/4 d2*3/2 g2 c2*3/2 g2 \finalis
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
