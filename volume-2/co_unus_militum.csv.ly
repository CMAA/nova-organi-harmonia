\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.143
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Unus militum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Unus militum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Unus militum" }
    \line {}
  }
}

chantText = \lyricmode {
U --- nus mí -- li -- tum 
\set stanza = " * " lán -- ce -- a la -- tus e -- jus a -- pé -- ru -- it, 
et con -- tí -- nu -- o ex -- í -- vit san -- guis et a -- _ qua. }

chantMusic = {
\tieDown   c''4 c''4 ( a'4) c''4 ( d''4) c''4 a'4 \divisioMinima
 bes'4 g'4 ( f'4) g'4 ( a'\prall bes'4) a'4 bes'4 c''4 ( d''4) c''4 c''4 ( d''4) bes'4 ( g'4) bes'4 a'4 \divisioMaior \forceBreak

 c''4 bes'4 c''4 ( d''4) c''4 ( bes'4) bes'4 bes'4 ( g'4) bes'4 ( c''4) c''4 c''4 ( d''4 c''4) a'4 bes'4 g'4 ( f'4) g'4 ( a'\prall bes'4 a'4 g'4 a'4) g'4 ( f'4) 
}

altoMusic = {
f'4 ~ f'2*6/2 ~ \divisioMinima
f'4 d'2 ~ d'2*3/2 ~ d'2 g'2*3/2 ~ g'2 ~ g'2*3/2 f'4 ~ \divisioMaior
f'2 ~ f'2*5/2 ~ f'2 ees'2*3/2 ~ ees'2*5/2 d'2 ~ d'2 ~ d'2 ~ d'2 c'2 \divisioMaior
}

tenorMusic = {
r4 c'2*6/2 ~ \divisioMinima
c'4 ~ c'2 bes2*3/2 g2 ~ g2*3/2 ees'2 d'2*3/2 c'4 \divisioMaior
a2 ~ a2*5/2 g2 ~ g2*3/2 ~ g2*5/2 ~ g2 ~ g2 ~ g2 bes2 ~ bes4 a4 \divisioMaior
}

bassMusic = {
r4 f2*6/2 \divisioMinima
d4 g2 ~ g2*3/2 f2 ees2*3/2 ~ ees2 ~ ees2*3/2 f4 ~ \divisioMaior
f2 d2*5/2 ~ d2 ~ d2*3/2 c2*5/2 ~ c2 bes,2 ees2 ~ ees2 f2 \divisioMaior
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
        "7"
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
