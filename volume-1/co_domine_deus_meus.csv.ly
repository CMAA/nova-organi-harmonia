\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.201
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Domine Deus meus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Domine Deus meus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Domine Deus meus" }
    \line {}
  }
}

chantText = \lyricmode {
Do -- mi -- ne 
\set stanza = " * " De -- us me -- us, in te spe -- rá -- vi: _ 
lí -- be -- ra me ab ó -- mni -- bus per -- se -- quén -- ti -- bus me, 
et é -- ri -- pe me. }

chantMusic = {
\tieDown   bes'4 bes'4 ( bes'4 bes'4) g'4  bes'4 a'4 ( \once \tweak #'font-size #-4 f' ) g'4 g'4 ( a'\prall bes'4) \divisioMinima
 f'4 ( g'4) bes'4 bes'4 ( a'4) bes'4 ( c''4) c''4 ( bes'4 a'4) bes'4 ( g'4) \divisioMaxima \forceBreak

 bes'4 ( d''4) d''4 c''4 bes'4 ( a'4) \divisioMinima
 c''4 bes'4 ( c''4) g'4 ( a'4 g'4 f'4 g'4) g'4 ( f'4) g'4 bes'4 bes'4 ( \once \tweak #'font-size #-4 c'' ) bes'4 bes'4 bes'4 ( g'4 a'4 f'4 d'4) \divisioMaior \forceBreak

 d'4 f'4 ( g'4) bes'4 ( c''4 bes'4) a'4 ( f'4 g'4 a'\prall bes'4 a'4 g'4 a'4) a'4 ( g'4) \finalis

}

altoMusic = {
r4 d'2*4/2 f'2 \tiny f' \normalsize4 d'4 ~ d'2*3/2 ~ \divisioMinima
d'2 ~ d'4 ~ d'2 g'2 f'2*3/2 d'2 \divisioMaxima
f'2*4/2 ~ f'2 ~ \divisioMinima
f'4 g'2 d'2*5/2 ~ d'2 ~ d'2 ~ d'2*4/2 ~ d'2*5/2 ~ \divisioMaior
d'4 ~ d'2*5/2 ~ d'2 ~ d'2*6/2 ~ d'2 \finalis
}

tenorMusic = {
bes4 ~ bes2*4/2 ~ bes4 c'2 ~ c'4 bes2*3/2 \divisioMinima
a2 g4 ~ g2 ~ g2 ~ g2*3/2 a4 bes4 ~ \divisioMaxima
bes2*4/2 d'2 ~ \divisioMinima
d'4 ~ d'2 c'2*5/2 bes2 a2 g2*4/2 f2*5/2 \divisioMaior
a4 bes2*5/2 c'2 a2*6/2 bes2 \finalis
}

bassMusic = {
r4 g2*4/2 d4 ~ d2 g4 ~ g2*3/2 ~ \divisioMinima
g2 ~ g4 f2 e2 d2*3/2 g2 \divisioMaxima
d2*4/2 ~ d2 ~ \divisioMinima
d4 g2 ~ g2*5/2 ~ g2 ~ g2 ~ g2*4/2 d2*5/2 ~ \divisioMaior
d4 g2*5/2 ~ g2 ~ g2*6/2 ~ g2 \finalis
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
