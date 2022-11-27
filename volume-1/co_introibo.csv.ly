\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.144
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Introibo" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Introibo"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Introibo" }
    \line {}
  }
}

chantText = \lyricmode {
In -- tro -- í -- _ bo 
\set stanza = " * " ad _ al -- tá -- re De -- i, _ 
ad De -- um qui læ -- tí -- fi -- cat 
ju -- ven -- tú -- _ tem me -- am. }

chantMusic = {
\tieDown   f'4 ( bes'4) bes'4 bes'4 ( g'4) bes'4 ( a'4 f'4) f'4 \divisioMinima
 f'4 ( g'4) bes'4 ( a'4) a'4 a'4 ( bes'4 c''4) c''4 ( g'4) g'4 ( c''4 bes'4) a'4 ( c''4 bes'4 bes'4) f'4 ( g'4 f'4) \divisioMaxima \forceBreak

 f'4 f'4 ( g'4 a'\prall bes'4) bes'4 g'4 ( a'4) g'4 ( f'4) g'4 ( a'\prall bes'4) f'4 ( g'4 f'4 ees'4 f'4) f'4 ( ees'4) \divisioMaior
 f'4 g'4 ( f'4 g'4) f'4 ( g'4) a'4 ( g'4 a'\prall bes'4 \forceBreak
) g'4 ( a'4 g'4) f'4 ( g'4 a'4 g'4 f'4 g'4) g'4 ( f'4) \finalis

}

altoMusic = {
d'2*3/2 ~ d'2 f'2*3/2 ~ f'4 ~ \divisioMinima
f'2*5/2 ~ f'2*3/2 g'2 ~ g'2*3/2 d'2*4/2 c'2*3/2 ~ \divisioMaxima
c'4 bes2*4/2 ~ bes4 d'2*4/2 bes2*3/2 ~ bes2*5/2 c'2 ~ \divisioMaior
c'4 d'2*3/2 c'2 bes2*4/2 d'2*5/2 ~ d'2*4/2 c'2 \finalis
}

tenorMusic = {
bes2*3/2 ~ bes2 c'2*3/2 a4 \divisioMinima
bes2*4/2 d'4 ~ d'2*3/2 ~ d'2 c'2*3/2 bes2*4/2 c'2*3/2 \divisioMaxima
d4 ~ d2*4/2 g4 ~ g2*4/2 f2*3/2 g2*5/2 ~ g2 \divisioMaior
d4 ~ d2*3/2 ~ d2 ~ d2*4/2 ~ d2*3/2 a2 bes2*4/2 ~ bes4 a4 \finalis
}

bassMusic = {
r2*3/2 g2 f2*3/2 ~ f4 \divisioMinima
d2*4/2 ~ d4 f2*3/2 ees2 ~ ees2*3/2 g2*4/2 a2*3/2 \divisioMaxima
a,4 g,2*4/2 ~ g,4 bes,2*4/2 d2*3/2 ~ d2*5/2 c2 ~ \divisioMaior
c4 bes,2*3/2 a,2 g,2*4/2 bes,2*3/2 ~ bes,2 ~ bes,2*4/2 f2 \finalis
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
        "VIII"
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
