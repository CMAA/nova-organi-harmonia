\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.303
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Cum angelis" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Cum angelis"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Cum angelis" }
    \line {}
  }
}

chantText = \lyricmode {
Cum An -- ge -- lis et pú -- e -- ris 
\set stanza = " * " fi -- dé -- les in -- ve -- ni -- á -- mur, 
tri -- um -- pha -- tó -- ri mor -- tis cla -- mán -- tes: Ho -- sán -- na in ex -- cél -- sis. }

chantMusic = {
\tieDown   a'4 ( bes'4) c''4 bes'4 a'4 bes'4 d''4 ( c''4) bes'4 ( c''4) c''4 \divisioMinima
 a'4 c''4 ( d''4) c''4 bes'4 \forceBreak
 bes'4 ( a'4) g'4 ( bes'4) bes'4 ( a'4) f'4 \divisioMaior
 f'4 f'4 f'4 g'4 f'4 g'4 f'4 ees'4 f'4 ( \once \tweak #'font-size #-4 g' ) g'4 \divisioMinima \forceBreak

 g'4 bes'4 ( \once \tweak #'font-size #-4 c'' ) c''4 ( c''4 bes'4 g'4) a'4 g'4 f'4 f'4 \finalis

}

altoMusic = {
r2 g'2 r2 g'2 ~ g'2 ~ g'4 \divisioMinima
f'4 g'2 r2 f'2 r2 ees'2 d'4 \divisioMaior
c'2*3/2 d'2 ~ d'2 ees'4 ~ ees'2 ~ ees'4 \divisioMinima
g'4 f'2 ees'2*4/2 d'2 c'2 \finalis
}

tenorMusic = {
f'2 ees'2 f'2 ees'2 ~ ees'2 ~ ees'4 \divisioMinima
r4 ees'2 f'2 d'2 ~ d'2 c'2 r4 \divisioMaior
r2*3/2 bes2 ~ bes2*3/2 ~ bes2 ~ bes4 ~ \divisioMinima
bes4 ~ bes2 ~ bes2*4/2 ~ bes2 ~ bes4 a4 \finalis
}

bassMusic = {
r2 c'2 d'2 ees'2 d'2 c'4 \divisioMinima
d'4 ~ d'2 ~ d'2 c'2 bes2 ~ bes2 ~ bes4 \divisioMaior
a2*3/2 ~ a2 g2*3/2 f2 ees4 ~ \divisioMinima
ees4 d2 c2*4/2 ees2 f2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Antiphon"
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
