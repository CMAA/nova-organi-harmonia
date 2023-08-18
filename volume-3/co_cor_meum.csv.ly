\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.188
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Cor meum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Cor meum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Cor meum" }
    \line {}
  }
}

chantText = \lyricmode {
Cor me -- um 
\set stanza = " * " et ca -- ro me -- _ a _ 
ex -- sul -- ta -- vé -- _ _ runt in De -- _ _ um _ vi -- vum. T.P. 
Al -- le -- lú -- _ ia. }

chantMusic = {
\tieDown   f' ( g'4) g'4 ( f'4 f'4) d'4 ( e'4) \divisioMinima
 c'4 ( \once \tweak #'font-size #-4 d' ) d'4 ( f'4 g'4) g'4 ( a'4) a'4 ( c''4) ~ c''4 ( g'4) g'4 ( f'4) a'4 ( g'4 e'4) \divisioMaior
 f'4 ( g'4) f'4 g'4 ( a'4 g'4) a'4. f'4 ( a'4) c''4 ( c''4 a'4 g'4 e'4 f'4) f'4 \divisioMinima
 f'4 f'4 ( d'4) f'4 ( e'4 c'4.) f'4 ( a'4 g'4) g'4 ( a'4) f'4 ( e'4 f'4) d'4 ( e'4 d'4) d'4 \finalis
 f'4 e'4 ( f'4) d'4 c'4 ( d'4 e'\prall f'4) e'4 ( d'4) \finalis

}

altoMusic = {
d'4 c'2*3/2 ~ c'2 ~ \divisioMinima
c'2 ~ c'4 ~ c'2 d'2*3/2 c'2*3/2 ~ c'2 ~ c'2 ~ c'4 \divisioMaior
d'2*3/2 ~ d'2*3/2 ~ d'2*3/4 c'2 ~ c'2*6/2 ~ c'4 ~ \divisioMinima
c'4 ~ c'2 ~ c'2 ~ c'2*3/4 ~ c'2*3/2 d'2 ~ d'2*3/2 a2*3/2 ~ a4 ~ \finalis
a4 ~ a2 ~ a4 c'2*4/2 a2 \finalis
}

tenorMusic = {
r4 a2*3/2 ~ a2 ~ \divisioMinima
a2 ~ a4 ~ a2 g2*3/2 ~ g2*3/2 a2 ~ a2 ~ a4 ~ \divisioMaior
a2*3/2 ~ a2*3/2 ~ a2*3/4 ~ a2 g2*6/2 a4 ~ \divisioMinima
a4 ~ a2 g2 ~ g2*3/4 a2*3/2 ~ a2 ~ a2*3/2 g2*3/2 f4 \finalis
r4 e2 f4 g2*4/2 f2 \finalis
}

bassMusic = {
r2*8/2 g4 f2 ~ f2*3/2 e2*3/2 f2 g2 a4 \divisioMaior
d2*3/2 e2*3/2 f2*3/4 ~ f2 ~ f2*6/2 ~ f4 ~ \divisioMinima
f4 d2 ~ d2 e2*3/4 f2*3/2 e2 d2*3/2 ~ d2*3/2 ~ d4 ~ \finalis
d4 ~ d2 ~ d4 ~ d2*4/2 ~ d2 \finalis
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
        "1"
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
