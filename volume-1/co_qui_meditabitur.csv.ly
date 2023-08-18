\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.163
%(volume.page)

global = {
 \key d \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Qui meditabitur" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Qui meditabitur"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Qui meditabitur" }
    \line {}
  }
}

chantText = \lyricmode {
Qui me -- di -- tá -- bi -- tur 
\set stanza = " * " in le -- ge Dó -- mi -- ni di -- e ac _ _ no -- cte, 
da -- bit fru -- ctum su -- _ um _ in tém -- po -- re su -- o. }

chantMusic = {
\tieDown   d'4 ( c'4) f'4 ( g'4) f'4 g'4 ( bes'4) bes'4 bes'4 \divisioMinima
 bes'4 bes'4 a'4 ( g'4) a'4 ( bes'4 c''4 bes'4) bes'4 a'4 ( f'4) \divisioMinima
 g'4 f'4 ( ees'4)  ees'4 ( f'4 g'4 \forceBreak
) aes'4 ( f'4) g'4 ( f'4) d'4 ( f'4 ees'4 ees'4) ees'4 ( d'4) \divisioMaxima
 g'4 f'4 ( g'4 f'4) g'4 ( a'\prall bes'4) f'4 ( ees'4) d'4 ( ees'4 f'4 ees'4 d'4) ees'4 ( d'4 c'4) ees'4 ( c'4) d'4 ( ees'4 d'4 ees'4) \divisioMinima \forceBreak

 c'4 ( d'4) f'4 ( g'4) f'4 f'4 ( c'4 d'\prall ees'4) d'4 ( f'4 ees'4 ees'4) ees'4 ( d'4) \finalis

}

altoMusic = {
d'4 c'4 ~ c'2*3/2 d'2*3/2 ~ d'4 ~ \divisioMinima
d'2 ~ d'2 ~ d'2*4/2 ~ d'4 ~ d'2 \divisioMinima
ees'2*3/2 ~ ees'2*3/2 c'2*4/2 ~ c'2*4/2 bes2 \divisioMaxima
d'4 ~ d'2*3/2 ~ d'2*3/2 bes2 ~ bes2*5/2 c'2*5/2 ~ c'2*3/2 ~ c'4 ~ \divisioMinima
c'2 bes2*3/2 c'2*4/2 ~ c'2*4/2 bes2 \finalis
}

tenorMusic = {
r2*5/2 bes2*3/2 ~ bes4 \divisioMinima
c'2 bes2 a2*4/2 g4 a2 \divisioMinima
bes2*3/2 ~ bes2*3/2 ~ bes2*4/2 aes2*4/2 f2 \divisioMaxima
bes4 ~ bes2*3/2 ~ bes2*3/2 g2 ~ g2*5/2 ~ g2*5/2 f2*3/2 g4 ~ \divisioMinima
g2 f2*3/2 g2*4/2 f2*4/2 g2 \finalis
}

bassMusic = {
bes2 a2*3/2 ~ a2*3/2 g4 ~ \divisioMinima
g2 ~ g2 ~ g2*4/2 ~ g4 f2 \divisioMinima
ees2*3/2 c2*3/2 f2*4/2 ~ f2*4/2 bes,2 \divisioMaxima
r4 a2*3/2 g2*3/2 ~ g2 r2*5/2 c2*5/2 ~ c2*3/2 ~ c4 \divisioMinima
ees2 d2*3/2 c2*4/2 ~ c2*4/2 g,2 \finalis
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
        "III."
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
