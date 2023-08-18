\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.150
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Non enim judicavi" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Non enim judicavi"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Non enim judicavi" }
    \line {}
  }
}

chantText = \lyricmode {
Non e -- nim 
\set stanza = " * " ju -- di -- cá -- _ vi 
me _ sci -- _ re á -- li -- quid in -- ter vos _ _ _ 
ni -- si Je -- sum Chri -- _ stum, _ 
et hunc cru -- ci -- fí -- _ _ xum. 
Al -- le -- _ _ _ _ _ _ lú -- _ ia. }

chantMusic = {
\tieDown   g'4 f'4 ( a'4 g'4) g'4  f'4 f'4 f'4 ( g'4) bes'4 ( a'4) a'4 \divisioMaior
 a'4 ( bes'4) c''4 ( bes'4) bes'4 ( bes'4 g'4) bes'4 ( a'4 f'4) f'4 g'4 f'4 g'4 ( bes'4 a'4) \divisioMinima
 bes'4 ( bes'4 bes'4) g'4 ( \once \tweak #'font-size #-4 f' ) f'4 bes'4 ( bes'4) ~ bes'4 ( a'4 g'4) a'4 ( f'4) \divisioMaior
 bes'4 a'4 ( bes'4) g'4 g'4 ( f'4) f'4 ( g'4) a'4 ( g'4 a'4 f'4) d'4 ( f'4 ees'4 ees'4) c'4 ( d'4 c'4) \divisioMaior
 c'4 ( f'4) f'4 f'4 f'4 ( g'4 f'4 ees'4 f'4) f'4 ( g'4 a'\prall bes'4 a'4 g'4) a'4 ( g'4) ~ g'4 ( f'4 g'4) g'4 ( f'4) \divisioMaxima
 g'4 ( \once \tweak #'font-size #-4 f' ) f'4 ( bes'4 f'4) g'4 ( f'4) ~ f'4 ( ees'4.) f'4 ( g'4 a'\prall bes'4) c''4 ( a'4) bes'4 ( a'4 g'4 a'\prall bes'4 a'4) g'4 ( a'4 g'4 f'4) f'4 ( g'4) bes'4 ( g'4 a'4) g'4 ( f'4) \finalis

}

altoMusic = {
d'4 ~ d'2*3/2 ~ d'4 ~ d'2 c'2 d'2 ~ d'4 ~ \divisioMaior
d'2 ~ d'2 ees'2*3/2 f'2*3/2 ~ f'4 ees'2*5/2 \divisioMinima
d'2*3/2 c'2 d'4 ~ d'2 ~ d'2*3/2 ~ d'2 ~ \divisioMaior
d'2*3/2 ~ d'4 c'2 ~ c'2 ~ c'2*4/2 bes2*4/2 g2*3/2 \divisioMaior
c'2 ~ c'2 bes2*3/2 ~ bes2 ~ bes2*3/2 ~ bes2*4/2 ~ bes2*4/2 a2 \divisioMaxima
bes2 ~ bes2*4/2 c'2*7/4 f'2*4/2 ees'2 ~ ees'2 ~ ees'2*4/2 d'2*4/2 c'2*5/2 ~ c'2 \finalis
}

tenorMusic = {
bes4 c'2*3/2 bes4 ~ bes2 a2 ~ a2 ~ a4 \divisioMaior
g2 ~ g2 ~ g2*3/2 f2*3/2 bes4 ~ bes2*5/2 ~ \divisioMinima
bes2*3/2 c'2 bes4 a2 g2*3/2 ~ g2 \divisioMaior
f2*3/2 g4 a2 g2 f2*4/2 g2*4/2 ees2*3/2 \divisioMaior
f2 c2 d2*3/2 c2 d2*3/2 ~ d2*4/2 ees2*4/2 c2 \divisioMaxima
r2 f2*4/2 g2*7/4 f2*4/2 g2 c'2 bes2*4/2 ~ bes2*4/2 ~ bes2*5/2 a2 \finalis
}

bassMusic = {
r2*9/2 g2 f4 \divisioMaior
g2 f2 ees2*3/2 d2*3/2 ~ d4 c2*5/2 \divisioMinima
bes,2*3/2 a,2 bes,4 ~ bes,2 ~ bes,2*3/2 d2 ~ \divisioMaior
d2*3/2 bes,4 a,2 ~ a,2 ~ a,2*4/2 g,2*4/2 c2*3/2 \divisioMaior
a,2 ~ a,2 bes,2*3/2 ~ bes,2 a,2*3/2 g,2*4/2 ees,2*4/2 f,2 \divisioMaxima
ees2 ~ ees2*4/2 ~ ees2*7/4 d2*4/2 c2 ~ c2 ~ c2*4/2 bes,2*4/2 f2*5/2 ~ f2 \finalis
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
