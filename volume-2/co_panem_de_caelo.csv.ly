\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.200
%(volume.page)

global = {
 \key ees \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Panem de caelo" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Panem de caelo"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Panem de caelo" }
    \line {}
  }
}

chantText = \lyricmode {
Pa -- nem de cœ -- _ lo 
\set stanza = " * " de -- dí -- sti _ no -- bis, Dó -- mi -- _ ne, 
ha -- bén -- tem om -- ne de -- le -- cta -- mén -- _ tum, 
et o -- mnem sa -- pó -- _ rem su -- a -- vi -- tá -- tis. }

chantMusic = {
\tieDown   ees'4 ( ees'4 f'4) ees'4 ees'4 ( g'4) g'4 ( f'4) ~ f'4 ( ees'4 f'4) f'4 ( ees'4) \divisioMinima
 ees'4 f'4 ( g'4) bes'4 ( g'4) ~ g'4 ( f'4 \forceBreak
) bes'4 ( bes'4 c''4) bes'4 bes'4 ( d''4 c''4) c''4 ( bes'4) ~ bes'4 ( g'4) g'4 \divisioMaior
 g'4 bes'4 ( \once \tweak #'font-size #-4 c'' ) bes'4 bes'4 bes'4 ( bes'4 bes'4) g'4 ( a'4 bes'4) f'4 ( ees'4 \forceBreak
) g'4 ( ees'4 g'4) g'4 ( f'4) a'4 ( g'4) g'4 \divisioMaxima
 g'4 bes'4 ( \once \tweak #'font-size #-4 c'' ) c''4 c''4 ( bes'4) c''4 ( bes'4) c''4 ( bes'4 a'4 g'4 a'4) a'4 ( g'4) \divisioMinima
 g'4 ( bes'4 ees'4 \forceBreak
) ees'4 ( f'4 g'4)  g'4 ( bes'4 g'4 f'4 g'\prall aes'4 g'4 f'4) ees'4 ( f'4 g'4 f'4 ees'4 f'4) f'4 ( ees'4) \finalis

}

altoMusic = {
bes2*4/2 ~ bes2*3/2 ~ bes2*4/2 ~ bes2 \divisioMinima
ees'4 ~ ees'2*3/2 d'2*3/2 ees'2*4/2 f'2 ~ f'2 ees'2*3/2 d'4 ~ \divisioMaior
d'4 g'2 f'2 ees'2*3/2 d'2*3/2 c'2 ~ c'2*3/2 ~ c'2*4/2 bes4 \divisioMaxima
r4 d'2*3/2 ees'2 f'2 g'2 ees'2*3/2 d'2 ~ \divisioMinima
d'2*3/2 c'2*3/2 ~ c'2*3/2 ~ c'2*5/2 ~ c'2 d'2*4/2 bes2 \finalis
}

tenorMusic = {
g2*4/2 ~ g2*3/2 bes2*4/2 g2 ~ \divisioMinima
g4 bes2*3/2 ~ bes2*3/2 ~ bes2*4/2 ~ bes2 a2 c'2*3/2 bes4 ~ \divisioMaior
bes4 g2 ~ g2 ~ g2*3/2 ~ g2*3/2 ~ g2 ees2*3/2 d2*4/2 ~ d4 \divisioMaxima
r4 g2*3/2 ~ g2 ~ g2 ~ g2 ~ g2*3/2 ~ g2 \divisioMinima
bes2*3/2 g2*3/2 ees2*3/2 f2*5/2 g2 bes2*4/2 g2 \finalis
}

bassMusic = {
ees2*4/2 c2*3/2 d2*4/2 ees2 ~ \divisioMinima
ees4 g,2*3/2 bes,2*3/2 c2*4/2 d2 ~ d2 g2*3/2 ~ g4 \divisioMaior
f4 ees2 d2 c2*3/2 bes,2*3/2 c2 ~ c2*3/2 g,2*4/2 ~ g,4 \divisioMaxima
r4 g,2*3/2 c2 d2 ees2 c2*3/2 bes,2 ~ \divisioMinima
bes,2*3/2 c2*3/2 bes,2*3/2 aes,2*5/2 c2 bes,2*4/2 ees2 \finalis
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
        "V"
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
