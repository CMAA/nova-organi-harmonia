\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.221
%(volume.page)

global = {
 \key d \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Tu Domine servabis" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Tu Domine servabis"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Tu Domine servabis" }
    \line {}
  }
}

chantText = \lyricmode {
Tu Dó -- _ mi -- ne 
\set stanza = " * " ser -- vá -- bis nos, 
et cu -- stó -- _ di -- es nos _ 
a ge -- ne -- ra -- ti -- ó -- ne hac in æ -- _ _ tér -- num. }

chantMusic = {
\tieDown   f'4 bes'4 ( a'4) bes'4 ( c''4) g'4 ( a'\prall bes'4 a'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMinima
 f'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( ees'4) f'4 ( g'4) d'4 \divisioMaior
 f'4 f'4 a'4 ( g'4) a'4 ( bes'4 \forceBreak
) g'4 ( f'4) f'4 f'4 ( g'4 a'4) ~ a'4 ( g'4) \divisioMaior
 g'4 g'4 g'4 ( ees'4) f'4 ( g'4) g'4 ( f'4) f'4 ( g'4 ees'4 f'4) ees'4 d'4 ( ees'4 f'4) \divisioMinima \forceBreak

 f'4 g'4 ( f'4) ~ f'4 ( ees'4) f'4 ( g'4 f'4) d'4 ( f'4 ees'4 ees'4) ees'4 ( d'4) \finalis

}

altoMusic = {
d'4 ~ d'2 ~ d'2 ees'2*7/2 d'2 ~ \divisioMinima
d'2 c'2 d'2 ~ d'4 \divisioMaior
f'2 ~ f'2*4/2 ~ f'2 ~ f'4 d'2 ~ d'2 ~ d'4 \divisioMaior
bes2 bes'2 bes2 d'2 bes2*5/2 ~ bes2 ~ bes4 ~ \divisioMinima
bes2 ~ bes2*3/2 ~ bes2*3/2 ~ bes2*4/2 ~ bes2 \finalis
}

tenorMusic = {
bes4 ~ bes2 ~ bes2 ~ bes2*7/2 a2 ~ \divisioMinima
a2 g2 bes2*3/2 ~ \divisioMaior
bes2 c'2*4/2 bes2 a4 c'2 ~ c'2 bes4 \divisioMaior
ees2 ~ ees2 ~ ees2 d2 ~ d2*5/2 f2 d4 ~ \divisioMinima
d2 ~ d2*3/2 ees2*3/2 f2*4/2 g2 \finalis
}

bassMusic = {
r4 a2 g2 c2*7/2 d2 \divisioMinima
bes,2 ~ bes,2 ~ bes,2*3/2 \divisioMaior
d2 ~ d2*4/2 ~ d2 ~ d4 ~ d2 g2 ~ g4 \divisioMaior
r2 d2 c2 bes,2 ~ bes,2*5/2 ~ bes,2 ~ bes,4 \divisioMinima
a,2 g,2*3/2 ~ g,2*3/2 ~ g,2*4/2 ~ g,2 \finalis
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
