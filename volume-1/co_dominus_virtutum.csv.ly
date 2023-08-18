\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.284
%(volume.page)

global = {
 \key d \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Dominus virtutum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Dominus virtutum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Dominus virtutum" }
    \line {}
  }
}

chantText = \lyricmode {
Do -- mi -- nus _ _ 
\set stanza = " * " vir -- tú -- _ _ _ tum 
ip -- se est _ Rex _ _ _ _ _ gló -- _ _ _ _ ri -- æ. }

chantMusic = {
\tieDown   bes'4 ( d''4 c''4 d''4) bes'4 a'4 ( g'4 f'4) g'4 ( bes'4) ~ bes'4 ( g'4 bes'4) \divisioMinima
 g'4 ( \once \tweak #'font-size #-4 d'' ) d''4 ( c''4) d''4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( d''4 c''4) bes'4 ( a'4) \divisioMaior \forceBreak

 bes'4 ( c''4) bes'4 ( a'4 g'4 f'4 g'4) f'4 ( bes'4 a'4) bes'4 ( bes'4 a'4) \divisioMinima
 a'4 ( f'4) g'4 bes'4 ( bes'4) c''4 ( d''4 c''4 bes'4) ~ bes'4 ( a'4 f'4 g'4) \divisioMinima
 f'4 ( bes'4 a'4) bes'4 ( bes'4 a'4 \forceBreak
) a'4 ( g'4 f'4) g'4 ( ees'4) ~ ees'4 ( ees'4 c'4.) ees'4 ( f'4 g'4) ~ g'4 ( f'4) d'4 ( f'4 ees'4 ees'4) ees'4 ( d'4) \finalis

}

altoMusic = {
g'2*5/2 f'2*4/2 ~ f'2*4/2 \divisioMinima
g'2 ~ g'2*3/2 ~ g'2 ~ g'4 f'2*3/2 ~ f'2 ~ \divisioMaior
f'2 ees'2*5/2 f'2*3/2 ~ f'2*3/2 ~ \divisioMinima
f'2*3/2 ~ f'2 d'2*3/2 ~ d'2*4/2 ~ d'4 \divisioMinima
f'2*3/2 d'2*3/2 ~ d'2*3/2 ees'2 bes2*7/4 ~ bes2 ~ bes2*3/2 ~ bes2*4/2 ~ bes2 \finalis
}

tenorMusic = {
d'2*5/2 c'2*4/2 bes2*4/2 ~ \divisioMinima
bes2 c'2*3/2 d'2*3/2 ~ d'2*3/2 c'2 \divisioMaior
bes2 ~ bes2*5/2 ~ bes2*3/2 c'2*3/2 \divisioMinima
d'2*3/2 bes2 ~ bes2*3/2 c'2*4/2 bes4 ~ \divisioMinima
bes2*3/2 ~ bes2*3/2 c'2*3/2 bes2 g2*7/4 ~ g2 ees2*3/2 f2*4/2 g2 \finalis
}

bassMusic = {
g2*5/2 d2*4/2 ~ d2*4/2 \divisioMinima
g2 ~ g2*3/2 ~ g2*3/2 d2*3/2 ~ d2 ~ \divisioMaior
d2 c2*5/2 d2*3/2 f2*3/2 \divisioMinima
d2*3/2 ~ d2 g2*3/2 ~ g2*4/2 ~ g4 \divisioMinima
d2*3/2 g2*3/2 ~ g2*3/2 ~ g2 c2*7/4 g,2 ~ g,2*3/2 ~ g,2*4/2 ~ g,2 \finalis
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
