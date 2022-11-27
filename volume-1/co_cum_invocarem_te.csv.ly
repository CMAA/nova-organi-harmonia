\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.184
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Cum invocarem te" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Cum invocarem te"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Cum invocarem te" }
    \line {}
  }
}

chantText = \lyricmode {
Cum in -- vo -- cá -- rem te, 
\set stanza = " * " ex -- au -- dí -- sti me, 
De -- us _ ju -- stí -- ti -- æ me -- æ: 
in tri -- bu -- la -- ti -- ó -- ne 
di -- la -- tá -- sti me: _ _ 
mi -- se -- ré -- re mi -- hi Dó -- mi -- ne, 
et ex -- áu -- di o -- ra -- ti -- ó -- nem _ me -- am. }

chantMusic = {
\tieDown   g'4 g'4 ( a'\prall bes'4) bes'4 ( g'4) bes'4 c''4 ( d''4 \once \tweak #'font-size #-4 c'' ) d''4 \divisioMinima
 d''4 c''4 ( d''4 c''4 a'4) bes'4 ( c''4) c''4 bes'4 \divisioMaior
 bes'4 g'4 ( a'4 \forceBreak
 g'4) ~ g'4 ( f'4) g'4 bes'4 ( c''4) d''4 ( c''4) bes'4 ( a'4) g'4 ( a'4 bes'4 a'4 g'4 a'4) a'4 ( g'4) \divisioMaxima
 g'4 bes'4 c''4 ( d''4) c''4 c''4 c''4 ( bes'4 c''4) g'4 ( a'\prall bes'4) \divisioMaior \forceBreak

 bes'4 ( c''4 d''4) d''4 d''4 ( c''4 d''4) c''4 bes'4 ( a'4) bes'4 ( c''4) ~ c''4 ( bes'4) \divisioMaxima
 bes'4 c''4 ( d''4 c''4) d''4 c''4 ( a'4) c''4 bes'4 ( c''4) bes'4 g'4 ( a'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMaior \forceBreak

 g'4 g'4 ( f'4) g'4 ( a'4 f'4 g'4) f'4 ( g'4 f'4 d'4) \divisioMinima
 d'4 f'4 ( g'4) f'4 bes'4 ( bes'4) c''4 ( a'4) bes'4 ( a'4) g'4 ( a'4 bes'4 a'4 g'4 a'4) a'4 ( g'4) \finalis

}

altoMusic = {
r4 d'2*3/2 ~ d'2 ~ d'4 f'2*4/2 ~ \divisioMinima
f'4 ~ f'2*4/2 d'2 ~ d'2 ~ \divisioMaior
d'4 ees'2*3/2 d'2*3/2 ~ d'2*4/2 ~ d'2 ~ d'2*6/2 ~ d'2 \divisioMaxima
g'2 ~ g'2 ~ g'2 f'2*3/2 ees'2*3/2 \divisioMaior
f'2*4/2 ~ f'2*4/2 ~ f'2*3/2 g'2*3/2 \divisioMaxima
f'4 ~ f'2*3/2 ~ f'4 ~ f'2*3/2 ~ f'2 d'4 ~ d'2*5/2 c'2 ~ \divisioMaior
c'4 d'2 ~ d'2*4/2 ~ d'2*3/2 ~ d'4 ~ \divisioMinima
d'4 ~ d'2*3/2 f'2 ees'2 ~ ees'2 d'2*6/2 ~ d'2 \finalis
}

tenorMusic = {
r4 bes2*3/2 c'2 bes4 ~ bes2*4/2 ~ \divisioMinima
bes4 a2*4/2 g2 a2 \divisioMaior
bes4 ~ bes2*3/2 a2*3/2 g2*4/2 a2 bes2*6/2 c'4 bes4 ~ \divisioMaxima
bes2 g2 a2 bes2*3/2 ~ bes2*3/2 ~ \divisioMaior
bes2*4/2 ~ bes2*4/2 c'2*3/2 d'2*3/2 ~ \divisioMaxima
d'4 c'2*3/2 bes4 a2*3/2 g2 ~ g4 bes2*5/2 a2 ~ \divisioMaior
a4 bes2 ~ bes2*4/2 ~ bes2*4/2 ~ \divisioMinima
bes4 a2*3/2 g2 ~ g2 c'c2 c'2*6/2 bes2 \finalis
}

bassMusic = {
g4 ~ g2*3/2 ~ g2 ~ g4 d2*4/2 ~ \divisioMinima
d4 ~ d2*4/2 g2 ~ g2 ~ \divisioMaior
g4 c2*3/2 d2*3/2 g2*4/2 ~ g2 ~ g2*6/2 ~ g2 \divisioMaxima
ees2 ~ ees2 ~ ees2 d2*3/2 c2*3/2 \divisioMaior
d2*4/2 g2*4/2 ~ g2*3/2 ~ g2*3/2 \divisioMaxima
d4 ~ d2*3/2 ~ d4 ~ d2*3/2 ~ d2 g4 ~ g2*5/2 a2 \divisioMaior
a,4 r2 a2*4/2 g2*4/2 ~ \divisioMinima
g4 d2*3/2 ~ d2 c2*4/2 g2*6/2 ~ g2 \finalis
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
