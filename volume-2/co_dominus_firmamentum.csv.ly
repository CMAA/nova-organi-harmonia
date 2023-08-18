\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.153
%(volume.page)

global = {
 \key g \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Dominus firmamentum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Dominus firmamentum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Dominus firmamentum" }
    \line {}
  }
}

chantText = \lyricmode {
Do -- mi -- nus 
\set stanza = " * " fir -- ma -- mén -- tum _ _ me -- um, 
et re -- fú -- gi -- um me -- _ um, 
et li -- be -- rá -- tor me -- _ us: 
De -- us me -- us _ 
ad -- jú -- tor _ _ me -- us. }

chantMusic = {
\tieDown   bes'4 a'4 ( bes'4) g'4 ( bes'4 f'4) \divisioMinima
 bes'4 ( \once \tweak #'font-size #-4 a' ) bes'4 ( c''4) c''4 ( c''4 bes'4) g'4 bes'4 ( bes'4 f'4) a'4 ( g'4) g'4 ( a'4 g'4) g'4 \divisioMaior
 f'4 g'4 \forceBreak
 g'4 ( a'\prall bes'4) f'4 f'4 ( \once \tweak #'font-size #-4 d' ) f'4 ( g'4) bes'4 ( a'4 g'4) g'4 ( a'\prall bes'4) \divisioMaior
 bes'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( c''4 bes'4) c''4 ( d''4 c''4) d''4 ( d''4 c''4) bes'4 ( c''4) bes'4 ( c''4) ~ c''4 ( bes'4) bes'4 \divisioMaxima \forceBreak

 d''4 c''4 ( d''4) bes'4 ( a'4 g'4) g'4 ( bes'4 g'4) ~ g'4 ( f'4) \divisioMaior
 a'4 ( bes'4 \once \tweak #'font-size #-4 c'' ) c''4 ( c''4 bes'4) g'4 bes'4 ( bes'4 f'4) a'4 ( g'4) g'4 ( a'4 g'4) g'4 \finalis

}

altoMusic = {
d'4 ~ d'2 ~ d'2*3/2 \divisioMinima
f'2 ~ f'2 g'2*3/2 ~ g'4 f'2*3/2 ~ f'2 d'2*3/2 ~ d'4 \divisioMaior
f'2 ~ f'2*4/2 ~ f'4 \tiny d' \normalsize4 d'2 ~ d'2*3/2 ~ d'2 ~ d'4 \divisioMaior
g'2 f'2*3/2 ees'2*3/2 d'2*3/2 ees'2*3/2 ~ ees'2*3/2 d'4 ~ \divisioMaxima
d'4 ~ d'2 ees'2*3/2 ~ ees'2 d'2*3/2 ~ \divisioMaior
d'2*3/2 ~ d'2*3/2 ees'4 d'2*3/2 c'2 ~ c'2*3/2 bes4 \finalis
}

tenorMusic = {
r2*6/2 \divisioMinima
d'2 ~ d'2 ~ d'2*4/2 ~ d'2*3/2 c'2 ~ c'2*3/2 bes4 ~ \divisioMaior
bes2 ~ bes2*4/2 ~ bes2 a2 f2*3/2 g2 ~ g4 ~ \divisioMaior
g2 ~ g2*3/2 ~ g2*3/2 ~ g2*3/2 ~ g2*3/2 f2*3/2 ~ f4 \divisioMaxima
bes4 a2 g2*3/2 bes2 a2*3/2 \divisioMaior
f2*3/2 g2*4/2 f2*3/2 ees2 d2*3/2 ~ d4 \finalis
}

bassMusic = {
g4 c'2 bes2*3/2 ~ \divisioMinima
bes2 a2 g2*4/2 d2*3/2 ~ d2 g2*3/2 ~ g4 \divisioMaior
d2 ees2*4/2 d2 ~ d2 c2*3/2 bes,2 g,4 \divisioMaior
ees2 d2*3/2 c2*3/2 bes,2*3/2 g,2*3/2 bes,2*3/2 ~ bes,4 ~ \divisioMaxima
bes,4 ~ bes,2 c2*3/2 ~ c2 d2*3/2 ~ \divisioMaior
d2*3/2 g,2*4/2 ~ g,2*3/2 ~ g,2 ~ g,2*3/2 ~ g,4 \finalis
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
