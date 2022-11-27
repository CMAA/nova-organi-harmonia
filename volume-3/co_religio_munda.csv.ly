\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.279
%(volume.page)

global = {
 \key d \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Religio munda" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Religio munda"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Religio munda" }
    \line {}
  }
}

chantText = \lyricmode {
Re -- lí -- gi -- o mun -- da 
\set stanza = " * " et im -- ma -- cu -- lá -- ta a -- pud De -- um et Pa -- _ trem, hæc est: 
vi -- si -- tá -- re pu -- píl -- los et ví -- du -- as in tri -- bu -- la -- ti -- ó -- ne e -- ó -- rum, 
et im -- ma -- cu -- lá -- tum se cu -- sto -- dí -- re ab hoc sǽ -- cu -- lo. }

chantMusic = {
\tieDown   f'4 f'4 ( a'4) g'4 g'4 bes'4 ( \once \tweak #'font-size #-4 a' ) g'4 \divisioMinima
 f'4 bes'4 bes'4 ( g'4) a'4 g'4 ( f'4) f'4 \divisioMinima
 f'4 g'4 a'4 g'4 f'4 ( g'4) bes'4 ( a'4) bes'4 ( c''4 bes'4) g'4 ( f'4) ees'4 ( f'4 g'4) g'4 ( f'4) \divisioMaxima
 f'4 ( c''4 d''4) c''4 c''4 ( bes'4 c''4) c''4 c''4 c''4 c''4 bes'4 c''4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 ( f'4) g'4 bes'4 a'4 ( c''4 bes'4 bes'4) bes'4 ( a'4) \divisioMaxima
 g'4 g'4 bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) f'4 g'4 f'4 ( ees'4) f'4 ( g'4) f'4 \divisioMinima
 f'4 ( ees'4) c'4 ( ees'4) d'4 d'4 ( f'4 ees'4 ees'4) ees'4 ( d'4) \finalis

}

altoMusic = {
r4 f'2*4/2 ~ f'2*3/2 ~ \divisioMinima
f'2 ees'2*3/2 d'2*3/2 ~ \divisioMinima
d'2 ~ d'2*4/2 ~ d'2*5/2 c'2 ~ c'2*3/2 ~ c'2 \divisioMaxima
f'2*4/2 ~ f'2*5/2 ~ f'2*3/2 ~ f'2*3/2 ~ \divisioMinima
f'4 ees'2*4/2 f'2*4/2 ~ f'2*4/2 ~ f'2 \divisioMaxima
d'2*4/2 ees'2*5/2 d'2 c'2 bes2*3/2 ~ \divisioMinima
bes2*5/2 ~ bes2 ~ bes2 ~ bes2 \finalis
}

tenorMusic = {
a4 c'2*4/2 bes2*3/2 ~ \divisioMinima
bes2 ~ bes2*3/2 a2*3/2 ~ \divisioMinima
a2 ~ a2*4/2 g2*5/2 a2 bes2*3/2 a2 \divisioMaxima
bes2*4/2 a2*5/2 g2*3/2 f2*3/2 ~ \divisioMinima
f4 g2*4/2 bes2*4/2 c'2*4/2 d'2 \divisioMaxima
g2*4/2 ~ g2*5/2 ~ g2 f2 ~ f2*3/2 \divisioMinima
g2*5/2 f2 g2 f2 \finalis
}

bassMusic = {
d4 ~ d2*4/2 ~ d2*3/2 ~ \divisioMinima
d2 c2*3/2 d2*3/2 ~ \divisioMinima
d2 f2*4/2 ~ f2*5/2 ~ f2 ~ f2*3/2 ~ f2 \divisioMaxima
d2*4/2 ~ d2*5/2 ~ d2*3/2 ~ d2*3/2 ~ \divisioMinima
d4 c2*4/2 d2*4/2 ~ d2*4/2 ~ d2 \divisioMaxima
bes,2*4/2 c2*5/2 ~ c2 d2 ~ d2*3/2 \divisioMinima
ees2*5/2 bes,2 ~ bes,2 ~ bes,2 \finalis
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
