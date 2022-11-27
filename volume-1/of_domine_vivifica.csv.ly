\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.166
%(volume.page)

global = {
 \key d \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Domine vivifica" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Domine vivifica"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Domine vivifica" }
    \line {}
  }
}

chantText = \lyricmode {
Do -- mi -- ne, _ _ _ 
\set stanza = " * " vi -- ví -- fi -- ca _ _ me 
se -- cún -- dum e -- ló -- qui -- _ um tu -- um: _ 
ut sci -- _ am te -- _ sti -- mó -- ni -- a _ _ _ tu -- a. }

chantMusic = {
\tieDown   bes'4 g'4 g'4 ( a'\prall bes'4 c''4 bes'4) ~ bes'4 ( bes'4 g'4) ~ g'4 ( f'4) a'4 ( c''4 a'4) \divisioMinima
 d'4 ( f'4 d'4) f'4 ( g'4) f'4 g'4 ( bes'4 g'4) ~ g'4 ( f'4 \forceBreak
) g'4 ( a'\prall bes'4 a'4 bes'4) bes'4 ( a'4) \divisioMaior
 a'4 ( c''4 bes'4) bes'4 ( bes'4 bes'4) g'4 ( f'4) f'4 ( g'4 d'4) f'4 f'4 ( a'4 g'4) ~ g'4 ( f'4) f'4 ees'4 ees'4 ( f'4 ees'4 ees'4) c'4 ( d'4 c'4) \divisioMaxima \forceBreak

 f'4 g'4 ( f'4) g'4 ( a'\prall bes'4 a'4) bes'4 \divisioMinima
 bes'4 ( bes'4) ~ bes'4 ( bes'4) f'4 g'4 ( ees'4) f'4 f'4 bes'4 ( bes'4 g'4) a'4 ( f'4) g'4 ( f'4) d'4 ( f'4 ees'4 ees'4) ees'4 ( d'4) \finalis

}

altoMusic = {
d'2 ees'2*5/2 f'2 ~ f'2*3/2 ~ f'2*3/2 ~ \divisioMinima
f'2*3/2 ~ f'2*5/2 d'2*3/2 ~ d'2*5/2 f'2 ~ \divisioMaior
f'2*3/2 ~ f'2*3/2 d'2 ~ d'2*3/2 ~ d'4 ~ d'2 ~ d'2*3/2 ~ d'4 ~ d'4 c'2*4/2 bes2 c'4 \divisioMaxima
d'4 ~ d'2 ~ d'2*5/2 \divisioMinima
ees'2 bes2*3/2 ~ bes2 ~ bes2 d'2*3/2 bes2 ~ bes2 ~ bes2*4/2 ~ bes2 \finalis
}

tenorMusic = {
g2 ~ g2*5/2 ~ g2 bes2*3/2 c'2*3/2 \divisioMinima
d'2*3/2 c'2*5/2 ~ c'2*3/2 bes2*5/2 c'2 \divisioMaior
d'2*3/2 g2*3/2 a2 bes2*3/2 a4 g2 a2*3/2 g4 ~ g4 ~ g2*4/2 f2 ees4 \divisioMaxima
bes4 a2 g2*5/2 ~ \divisioMinima
g2 f2*3/2 ees2 d2 f2*3/2 d2 ees2 f2*4/2 g2 \finalis
}

bassMusic = {
r2 c2*5/2 d2 ~ d2*3/2 ~ d2*3/2 ~ \divisioMinima
d2*3/2 ~ d2*5/2 g2*3/2 ~ g2*5/2 f2 \divisioMaior
d2*3/2 ~ d2*3/2 ~ d2 bes,2*3/2 ~ bes,4 ~ bes,2 ~ bes,2*3/2 ~ bes,4 c4 ~ c2*4/2 ~ c2 ~ c4 \divisioMaxima
bes,4 ~ bes,2 ~ bes,2*5/2 \divisioMinima
c2 d2*3/2 ees2 r2 g,2*3/2 ~ g,2 ~ g,2 ~ g,2*4/2 ~ g,2 \finalis
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
