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
  title = \markup \center-column {"Spiritus qui" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Spiritus qui"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Spiritus qui" }
    \line {}
  }
}

chantText = \lyricmode {
Spí -- ri -- tus 
\set stanza = " * " qui a Pa -- tre pro -- cé -- dit, al -- le -- lú -- ia: 
il -- le me cla -- ri -- fi -- cá -- bit, 
al -- le -- lú -- ia, al -- le -- lú -- ia. }

chantMusic = {
\tieDown   ees'4 ees'4 ( f'4) f'4 \divisioMinima
 f'4 f'4 f'4 ees'4 g'4 f'4 ( bes'4) bes'4 a'4 bes'4 c''4 ( d''4) c''4 \divisioMaior \forceBreak

 d''4 c''4 bes'4 ( a'4) g'4 g'4 ( c''4) bes'4 bes'4 ( a'4) f'4 \divisioMaior
 f'4 f'4 ees'4 ( d'4) c'4 ees'4 f'4 ( g'4) f'4 f'4 \finalis

}

altoMusic = {
r2*4/2 \divisioMinima
c'2 bes2 ~ bes4 f'2 ~ f'4 d'2 f'2 ~ f'4 ~ \divisioMaior
f'2 ~ f'2*3/2 g'2*3/2 c'2 ~ c'4 \divisioMaior
bes2 c'2 ~ c'2 bes2 ~ bes4 a4 \finalis
}

tenorMusic = {
c'4 ~ c'2 ~ c'4 \divisioMinima
a2 g2 ~ g4 bes2 ~ bes4 ~ bes2 ~ bes2 a4 \divisioMaior
bes2 ~ bes2*3/2 ~ bes2*3/2 ~ bes2 a4 \divisioMaior
f2 g2 ees2 c2 ~ c2 \finalis
}

bassMusic = {
r4 bes2 a4 \divisioMinima
f2 g2 ees4 ~ ees2 d4 g2 f2 ~ f4 \divisioMaior
bes,2 d2*3/2 ees2*3/2 f2 ~ f4 \divisioMaior
d2 c2 ~ c2 ~ c2 f,2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Communion"
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
