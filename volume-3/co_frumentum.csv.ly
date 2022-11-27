\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.61
%(volume.page)

global = {
 \key d \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Frumentum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Frumentum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Frumentum" }
    \line {}
  }
}

chantText = \lyricmode {
Fru -- mén -- tum Chri -- sti sum, 
\set stanza = " * " 
dén -- ti -- bus bes -- ti -- á -- rum mo -- _ lar, 
ut pa -- nis mun -- dus in -- vé -- ni -- ar. }

chantMusic = {
\tieDown   f'4 a'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 a'4 g'4 \divisioMaior
 f'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 bes'4 bes'4 bes'4 bes'4 ( g'4) a'4 f'4 ( g'4) a'4 ( g'4 f'4 g'4) g'4 ( f'4) \divisioMaior
 f'4 ( \once \tweak #'font-size #-4 c'' ) c''4 ( d''4) bes'4 ( a'4) bes'4 ( bes'4 bes'4) g'4 ( f'4) f'4 ( g'4 f'4) d'4 d'4 ( f'4 ees'4 ees'4) ees'4 ( d'4) \finalis

}

altoMusic = {
d'2 ~ d'2 ~ d'2*3/2 ~ \divisioMaior
d'2 ~ d'2 ~ d'2 f'2*3/2 c'2*6/2 ~ c'2 \divisioMaior
f'2 ~ f'2 ees'2 d'2*3/2 c'2 d'2*3/2 ~ d'4 ~ d'2 c'2 bes2 \finalis
}

tenorMusic = {
d'4 c'4 bes2 ~ bes2*3/2 ~ \divisioMaior
bes2 ~ bes2 ~ bes2 c'2*3/2 bes2*6/2 a2 ~ \divisioMaior
a2 bes2 ~ bes2 ~ bes2*3/2 c'2 bes2*3/2 a4 g2 ~ g2 f2 \finalis
}

bassMusic = {
r2*4/2 g2*3/2 \divisioMaior
bes2 a2 g2 f2*3/2 ~ f2*6/2 ~ f2 \divisioMaior
d2 ~ d2 c2 bes,2*3/2 a,2 bes,2*4/2 ~ bes,2 ~ bes,2 ~ bes,2 \finalis
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
        "III"
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
