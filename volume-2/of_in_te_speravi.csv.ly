\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.199
%(volume.page)

global = {
 \key g \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"In te speravi" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "In te speravi"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "In te speravi" }
    \line {}
  }
}

chantText = \lyricmode {
In te spe -- rá -- _ vi _ _ 
\set stanza = " * " Dó -- mi -- ne: 
di -- xi: _ Tu es De -- us me -- _ _ us, 
in má -- _ ni -- bus tu -- _ is 
tém -- _ _ po -- ra me -- a. }

chantMusic = {
\tieDown   d'4 f'4 ( g'4 a'4) g'4 bes'4 ( g'4 a'\prall bes'4) c''4 ( bes'4) bes'4 ( bes'4) ~ bes'4 ( a'4 f'4) g'4 ( a'\prall bes'4 a'4 g'4) \divisioMinima
 g'4 g'4 ( a'\prall bes'4 a'4 bes'4) a'4 ( g'4) \divisioMaxima \forceBreak

 g'4 ( bes'4) bes'4 ( bes'4 bes'4) c''4 ( d''4) \divisioMinima
 bes'4 ( c''4 bes'4 g'4) g'4 g'4 ( a'\prall bes'4 a'4 g'4) f'4 ( g'4) g'4 ( a'\prall bes'4) c''4 ( bes'4) ~ bes'4 ( a'4 bes'4) bes'4 ( a'4) \divisioMaxima
 bes'4 ( bes'4) bes'4 ( c''4 \forceBreak
) d''4 ( c''4 d''4) bes'4 bes'4 ( bes'4 a'4 g'4) bes'4 ( bes'4) c''4 ( bes'4) bes'4 \divisioMaior
 bes'4 ( g'4) bes'4 ( bes'4 g'4 f'4 g'4) bes'4 ( bes'4 bes'4) g'4 ( f'4) f'4 ( a'4 g'4) g'4 ( a'4 g'4) g'4 \finalis

}

altoMusic = {
d'4 ~ d'2*4/2 ~ d'2*4/2 ees'2 f'2 ~ f'2 ~ f'4 d'2 ~ d'2*4/2 ~ d'2 ees'2*3/2 d'2 \divisioMaxima
ees'2 f'2*3/2 ~ f'2 ~ \divisioMinima
f'2*4/2 ees4 ees'2*5/2 d'2 ~ d'2*4/2 ~ d'2*4/2 ~ d'2 ~ \divisioMaxima
d'2 f'2 ~ f'2*4/2 ~ f'2*4/2 ees'2 g'2 f'4 ~ \divisioMaior
f'2 ees'2*5/2 d'2*3/2 c'2 ~ c'2*3/2 ~ c'2*3/2 bes4 \finalis
}

tenorMusic = {
bes4 c'2*4/2 bes2*4/2 ~ bes2 d'2 c'2*3/2 ~ c'2 bes2*3/2 ~ \divisioMinima
bes4 g2 ~ g2*3/2 ~ g2 \divisioMaxima
bes2 ~ bes2*3/2 a2 \divisioMinima
g2*5/2 ~ g2*5/2 a2 g2*4/2 ~ g2*4/2 f2 ~ \divisioMaxima
f2 ~ f2 bes2*4/2 ~ bes2*4/2 ~ bes2 ~ bes2 ~ bes4 \divisioMaior
g2 ~ g2*5/2 ~ g2*3/2 d2 ees2*3/2 d2*3/2 ~ d4 \finalis
}

bassMusic = {
r4 a2*4/2 g2*4/2 ~ g2 d2 ~ d2*3/2 g2 ~ g2*3/2 \divisioMinima
f4 ees2 c2*3/2 bes,2 \divisioMaxima
c2 d2*3/2 ~ d2 ~ \divisioMinima
d2*4/2 ~ d4 c2*5/2 ~ c2 bes,2*4/2 g,2*4/2 d2 \divisioMaxima
bes,2 d2 ~ d2*4/2 g2*4/2 ~ g2 ees2 d4 ~ \divisioMaior
d2 c2*5/2 bes,2*3/2 a,2 g,2*3/2 ~ g,2*3/2 ~ g,4 \finalis
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
