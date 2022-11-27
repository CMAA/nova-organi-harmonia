\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.286
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Redime me" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Redime me"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Redime me" }
    \line {}
  }
}

chantText = \lyricmode {
Re -- di -- me me, 
\set stanza = " * " De -- _ us _ _ Is -- ra -- el, _ 
ex ó -- _ _ mni -- bus an -- gú -- sti -- is me -- _ _ _ is. }

chantMusic = {
\tieDown   bes'4 a'4 ( bes'4) g'4 ( a'4) g'4 ( f'4) \divisioMinima
 f'4 ( g'4 a'4) ~ a'4 ( g'4 a'4) f'4 ( ees'4) f'4 ( g'4) ~ g'4 ( f'4) bes'4 ( a'4) bes'4 c''4 ( d''4 c''4 a'4. \forceBreak
) bes'4 ( c''4 bes'4 a'4 f'4 g'4) \divisioMaior
 g'4 ( bes'4 a'4) bes'4 ( c''4 bes'4 a'4 g'4.) bes'4 ( a'4) bes'4 ( c''4) bes'4 a'4 ( bes'4 g'4 f'4 g'4) \divisioMinima
 f'4 f'4 ( bes'4 a'4 g'4 bes'\prall c''4 bes'4 c''4 \forceBreak
) a'4 ( bes'4) g'4 f'4 ( g'4 f'4) g'4 bes'4 ( bes'4 g'4) ~ g'4 ( f'4) ~ f'4 ( ees'4 f'\prall g'4 a'4 g'4 f'4 g'4) g'4 ( f'4) \finalis

}

altoMusic = {
d'4 ~ d'2 ~ d'2 g'4 f'4 ~ \divisioMinima
f'2 ~ f'2*4/2 ~ f'4 r2 ees'2*3/2 f'2*3/2 ~ f'2*3/2 ~ f'2*3/4 d'2*5/2 ~ d'4 \divisioMaior
f'2*3/2 ees'2*11/4 f'2*5/2 ~ f'2 d'2 ~ d'4 ~ \divisioMinima
d'4 ~ d'2*3/2 ~ d'2*5/2 f'2*3/2 ~ f'4 r2*3/2 f'2 ees'2 d'2 ees'2*7/2 c'2 \finalis
}

tenorMusic = {
r4 c'2 bes2 c'2 \divisioMinima
bes2 c'2*4/2 bes2*3/2 ~ bes2*3/2 ~ bes2*3/2 g2*3/2 c'2*3/4 ~ c'2*5/2 bes4 ~ \divisioMaior
bes2*3/2 ~ bes2*11/4 ~ bes2*5/2 c'2 ~ c'2 bes4 ~ \divisioMinima
bes4 a2*3/2 bes2*5/2 c'2*3/2 bes2*4/2 ~ bes2 ~ bes2 ~ bes2 ~ bes2*7/2 ~ bes4 a4 \finalis
}

bassMusic = {
g4 ~ g2 ~ g2 a2 \divisioMinima
g2 f2*4/2 g2*3/2 c2*3/2 d2*3/2 f2*3/2 ~ f2*3/4 g2*5/2 ~ g4 \divisioMaior
d2*3/2 c2*11/4 d2*5/2 ~ d2 g2 ~ g4 ~ \divisioMinima
g4 ~ g2*3/2 ~ g2*5/2 f2*3/2 g2*4/2 d2 ees2 bes,2 c2*7/2 f2 \finalis
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
