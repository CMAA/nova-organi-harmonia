\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.208
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Meditabor sine Alleluia" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Meditabor sine Alleluia"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Meditabor sine Alleluia" }
    \line {}
  }
}

chantText = \lyricmode {
Me -- di -- tá -- _ _ bor 
\set stanza = " * " in man -- dá -- tis _ tu -- _ _ is, 
quæ di -- lé -- xi val -- de: 
et le -- vá -- bo _ ma -- _ nus me -- as _ _ _ _ ad man -- dá -- ta tu -- _ a, 
quæ di -- lé -- _ _ _ _ _ _ _ xi. _ _ }

chantMusic = {
\tieDown   d'4 f'4 ( g'4) g'4 bes'4 ( bes'4 f'4) a'4 ( g'4) g'4 \divisioMinima
 f'4 g'4 bes'4 ( c''4 bes'4) bes'4 ( bes'4) c''4 ( bes'4) bes'4 ( bes'4 \forceBreak
) c''4 ( bes'4) ~ bes'4 ( a'4 g'4) a'4 ( g'4) \divisioMaior
 bes'4 ( a'4) bes'4 bes'4 ( d''4 c''4) bes'4 ( d''4 c''4) bes'4 ( a'4 \once \tweak #'font-size #-4 g' ) g'4 \divisioMaxima
 f'4 g'4 bes'4 ( bes'4 c''4) bes'4 ~ bes'4 ( bes'4 bes'4) \divisioMinima \forceBreak

 g'4 ( bes'4) ~ bes'4 ( bes'4 bes'4) f'4 ( g'4) g'4 ( bes'4) bes'4 ( bes'4 bes'4) c''4 ( bes'4) c''4 ( bes'4) ~ bes'4 ( bes'4) ~ bes'4 ( g'4 f'4 g'4) \divisioMinima
 f'4 g'4 bes'4 ( c''4 bes'4) bes'4 ( c''4 a'4 bes'4 \forceBreak
) a'4 ( bes'4 a'4) ~ a'4 ( f'4) f'4 \divisioMaior
 bes'4 ( a'4) bes'4 bes'4 ( d''4 c''4 bes'4) ~ bes'4 ( g'4.) c''4 ( bes'4) c''4 ( bes'4) ~ bes'4 ( bes'4) ~ bes'4 ( g'4 f'4 ees'4) \divisioMinima
 f'4 ( g'4 f'4 ees'4 \forceBreak
) f'4 ( g'4 f'4 g'4) g'4 ( a'\prall bes'4) ~ bes'4 ( a'4 g'4 a'\prall bes'4) ~ bes'4 ( a'4 g'4) \finalis

}

altoMusic = {
d'4 ~ d'2 c'4 bes2*3/2 c'2 bes4 ~ \divisioMinima
bes2 d'2*3/2 ~ d'2*4/2 ees'2*3/2 f'2*4/2 d'2 \divisioMaior
g'2*3/2 f'2*3/2 ~ f'2*3/2 ~ f'2*3/2 d'4 ~ \divisioMaxima
d'2 ~ d'2*4/2 ~ d'2*3/2 \divisioMinima
ees'2 f'2*3/2 ~ f'2 ~ f'2 d'2*3/2 ~ d'2 ~ d'2 ~ d'2 ~ d'2 ~ d'2 \divisioMinima
f'2 g'2*3/2 f'2*4/2 ~ f'2 d'2*4/2 \divisioMaior
f'2*3/2 ees'2*3/2 d'2*7/4 ~ d'2*4/2 ~ d'2 ees'2*3/2 ~ ees'4 \divisioMinima
d'2*4/2 ~ d'2*4/2 ~ d'2 ~ d'2*3/2 c'2 ~ c'2*3/2 bes4 \finalis
}

tenorMusic = {
d2*4/2 ~ d2*3/2 ~ d2 ~ d4 ~ \divisioMinima
d2 g2*3/2 ~ g2*4/2 ~ g2*3/2 c'2*4/2 bes2 ~ \divisioMaior
bes2*3/2 ~ bes2*3/2 d'2*3/2 c'2*3/2 bes4 ~ \divisioMaxima
bes2 a2*4/2 g2*3/2 ~ \divisioMinima
g2 f2*3/2 c'2 bes2 ~ bes2*3/2 a2 bes2 ~ bes2 ~ bes2 d'2 ~ \divisioMinima
d'2 ~ d'2*3/2 ~ d'2*4/2 bes2 a2*4/2 \divisioMaior
f2*3/2 g2*3/2 ~ g2*7/4 ~ g2*4/2 ~ g2 ~ g2*4/2 ~ \divisioMinima
g2*4/2 a2*4/2 g2 ~ g2*3/2 a2 g2*3/2 d4 \finalis
}

bassMusic = {
r2*4/2 g,2*3/2 ~ g,2 ~ g,4 ~ \divisioMinima
g,2 ~ g,2*3/2 bes,2*4/2 c2*3/2 d2*4/2 g2 \divisioMaior
ees2*3/2 d2*3/2 ~ d2*3/2 ~ d2*3/2 g4 \divisioMaxima
bes,2 ~ bes,2*4/2 ~ bes,2*3/2 \divisioMinima
c2 d2*3/2 ~ d2 ~ d2 g2*3/2 ~ g2 ~ g2 a2 bes2 ~ bes2 \divisioMinima
a2 g2*3/2 d2*4/2 ~ d2 ~ d2*4/2 ~ \divisioMaior
d2*3/2 c2*3/2 g,2*7/4 a,2*4/2 bes,2 c2*4/2 \divisioMinima
bes,2*4/2 ~ bes,2*4/2 ~ bes,2 g,2*3/2 ~ g,2 ~ g,2*3/2 ~ g,4 \finalis
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
        "II"
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
