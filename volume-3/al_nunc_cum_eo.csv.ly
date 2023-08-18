\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.451 (addenum pp6)
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Nunc cum eo" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Nunc cum eo"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Nunc cum eo" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- ia. _ _ 
\set stanza = " * " _ _ _ _ _ _ ℣. 
Nunc cum e -- _ o _ _ 
re -- _ _ _ _ _ _ gnas 
\set stanza = " * " 
in æ -- ter -- _ num. _ }

chantMusic = {
\tieDown   f'4 g'4 bes'4 ( \once \tweak #'font-size #-4 c'' ) c''4 ( bes'4) c''4 ( a'4) ~ a'4 ( g'4) \divisioMinima
 bes'4. c''4 ( d''4 c''4) f'4 ( g'4) bes'4 ( g'4.) bes'4. a'4 ( bes'4 f'4) bes'4 ( bes'4) ~ bes'4 ( g'4 a'\prall bes'4 g'4) \finalis
 bes'4 ( c''4) c''4 d''4 ( c''4) ~ c''4 ( bes'4 c''4) c''4. bes'4 ( bes'4) g'4 ( a'4 g'4) \divisioMaior
 g'4 bes'4 ( bes'4) c''4 ( d''4 bes'4 g'4) c''4 ( bes'4 a'4 f'4 g'4) bes'4 ( g'4 bes'4) ~ bes'4 ( g'4) a'4 ( f'4) f'4 \divisioMaior
 bes'4 ( bes'4) bes'4 ( c''4) c''4 ( bes'4) d''4 ( c''4 d''4) d''4 ( d''4 c''4 bes'4 a'4 f'4.) g'4 ( a'\prall bes'4 g'4) \finalis

}

altoMusic = {
d'2 ~ d'2 ~ d'2*3/2 ~ d'2 ~ d'4 \divisioMinima
f'2*3/4 ~ f'2*3/2 ~ f'2 ~ f'2*5/4 ees'2*3/4 d'2*3/2 ~ d'2 ees'2*3/2 d'2 \finalis
f'2*4/2 ~ f'2*4/2 d'2*3/4 ~ d'2 ~ d'2*3/2 \divisioMaior
g'4 ~ g'2 f'2*4/2 ~ f'2 ~ f'2*3/2 ~ f'2 ees'2*3/2 c'2 ~ c'4 \divisioMaior
f'2*4/2 g'2 f'2*3/2 d'2*4/2 ~ d'2*5/4 ~ d'2*4/2 \finalis
}

tenorMusic = {
r2*7/2 c'2 bes4 ~ \divisioMinima
bes2*3/4 a2*3/2 c'2 bes2*5/4 ~ bes2*3/4 ~ bes2*3/2 ~ bes2 ~ bes2*3/2 ~ bes2 ~ \finalis
bes2*4/2 a2*4/2 g2*3/4 a2 bes2*3/2 ~ \divisioMaior
bes4 ~ bes2 ~ bes2*4/2 a2 c'2*3/2 bes2 ~ bes2*3/2 ~ bes2 a4 \divisioMaior
bes2*4/2 ~ bes2 a2*3/2 ~ a2*4/2 c'2*5/4 bes2*4/2 \finalis
}

bassMusic = {
bes2 a2 g2*3/2 ~ g2 ~ g4 \divisioMinima
d2*3/4 ~ d2*3/2 ~ d2 ~ d2*5/4 c2*3/4 bes,2*3/2 a,2 g,2*3/2 ~ g,2 \finalis
d2*4/2 f2*4/2 g2*3/4 ~ g2 ~ g2*3/2 \divisioMaior
f4 ees2 d2*4/2 ~ d2 ~ d2*3/2 ~ d2 c2*3/2 f2 ~ f4 \divisioMaior
d2*4/2 ees2 f2*3/2 g2*4/2 ~ g2*5/4 ~ g2*4/2 \finalis
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
        "2"
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
