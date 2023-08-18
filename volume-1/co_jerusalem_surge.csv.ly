\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.13
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Jerusalem surge" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Jerusalem surge"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Jerusalem surge" }
    \line {}
  }
}

chantText = \lyricmode {
Je -- rú -- sa -- lem _ *zwj; sur -- ge, et sta in ex -- cél -- so: 
et vi -- _ _ de ju -- cun -- _ di -- tá -- tem, 
quæ vé -- ni -- et ti -- _ bi a De -- o _ tu -- o. }

chantMusic = {
\tieDown  g'4 ( a'4 f'4) g'4 ( bes'4) bes'4 ( a'4) bes'4. a'4 ( bes'4 g'4)  bes'4 ( d''4) c''4 \divisioMinima
 c''4 ( c''4 a'4) bes'4 ( c''4) c''4 ( d''4) c''4 bes'4 ( c''4) a'4 ( g'4.) \divisioMaxima \forceBreak

 bes'4 g'4. f'4 ( a'4 f'4) g'4 ( a'4) g'4 g'4 bes'4 ( g'4) ~ g'4 ( \once \tweak #'font-size #-4 f' ) g'4 bes'4 ( c''4 bes'4 c''4) bes'4 ( a'4.) \divisioMaior
 a'4 c''4 ( d''4) c''4 ( a'4) bes'4 ( c''4 a'4 bes'4 \forceBreak
) g'4. f'4 ( a'4 f'4 g'4) g'4 ( f'4 d'4.) \divisioMinima
 f'4 a'4 ( c''4 bes'4) bes'4. a'4 ( c''4 bes'4 a'4 bes'4) g'4 ( a'4 g'4) g'4 \finalis

}

altoMusic = {
c'2*3/2 d'2 ees'2 f'2*3/4 ~ f'2*3/2 ~ f'2 ~ f'4 ~ \divisioMinima
f'2*3/2 ~ f'2 ~ f'2*3/2 d'2 ~ d'2*5/4 \divisioMaxima
r4 d'2*3/4 ~ d'2*3/2 ~ d'2*3/2 ~ d'2 c'2*4/2 d'2*4/2 f'2*5/4 ~ \divisioMaior
f'2*3/2 ~ f'2 d'2*4/2 ~ d'2*3/4 ~ d'2*4/2 ~ d'2*7/4 ~ \divisioMinima
d'4 c'2*3/2 d'2*3/4 ~ d'2*5/2 c'2*3/2 d'4 \finalis
}

tenorMusic = {
r2*17/4 g2*3/2 ~ g2 a4 ~ \divisioMinima
a2*3/2 g2 a2*3/2 bes2 c'4 bes2*3/4 \divisioMaxima
r4 a2*3/4 ~ a2*3/2 bes2*3/2 d2 ~ d2*4/2 ~ d2*4/2 ~ d2*5/4 \divisioMaior
r4 f2 ~ f2 g2*4/2 a2*3/4 ~ a2*4/2 bes2*7/4 \divisioMinima
d4 ~ d2*3/2 ~ d2*3/4 g2*5/2 a2*3/2 bes4 \finalis
}

bassMusic = {
a,2*3/2 bes,2 c2 d'2*3/4 ~ d'2*3/2 f2 ~ f4 ~ \divisioMinima
f2*3/2 d'2 ~ d'2*3/2 g2 ~ g2*5/4 \divisioMaxima
r4 d'2*3/4 c2*3/2 bes,2*3/2 ~ bes,2 a,2*4/2 g,2*4/2 d'2*5/4 ~ \divisioMaior
d'4 ~ d'2 f2 ~ f2*4/2 d'2*3/4 c2*4/2 bes,2*7/4 ~ \divisioMinima
bes,4 a,2*3/2 g,2*3/4 ~ g,2*5/2 ~ g,2*3/2 ~ g,4 \finalis
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
