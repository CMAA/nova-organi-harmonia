\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.94
%(volume.page)

global = {
 \key f \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Pacem meam" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Pacem meam"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Pacem meam" }
    \line {}
  }
}

chantText = \lyricmode {
Pa -- cem me -- am 
\set stanza = " * " do vo -- bis, al -- le -- lú -- ia: 
pa -- cem re -- lín -- quo vo -- bis, 
al -- le -- lú -- ia, al -- le -- _ lú -- _ ia. }

chantMusic = {
\tieDown   c'4 c'4 c'4 ( b4) a4  c'4 c'4 ( b4) a4 \divisioMinima
 a4 g4  a4 ( bes4 a4) f4 \divisioMaxima
  bes4 bes4 ( bes4 bes4 \forceBreak
)  bes4 ( g4) a4 ( c'4) bes4  c'4 ( bes4) g4 \divisioMaior
  bes4 ( \once \tweak #'font-size #-4 d' ) d'4 d'4 ( c'4 d'4) a4 \divisioMinima
  bes4 g4. f4 ( g4 a4) a4 ( g4) ~ g4 ( f4 g4) g4 ( f4) \finalis

}

altoMusic = {
g'2 e'2*4/2 ~ e'2 ~ e'4 ~ \divisioMinima
e'2 f'2*3/2 c'4 r4 f'2*3/2 ~ f'2 ~ f'2*3/2 d'2 ~ d'4 f'2*3/2 ~ f'2*3/2 ~ f'4 ~ f'4 d'2*3/4 ~ d'2*4/2 ~ d'2*4/2 c'2 \finalis
}

tenorMusic = {
c'2 ~ c'2*4/2 d'2 c'4 ~ \divisioMinima
c'2 ~ c'2*3/2 a4 bes4 ~ bes2*3/2 d'2 c'2*3/2 ~ c'2 bes4 b2*3/2 a2*3/2 c'4 ~ c'4 bes2*3/4 a2*3/2 ~ a4 bes2*4/2 b4 a4 \finalis
}

bassMusic = {
e2 a2*4/2 ~ a2 ~ a4 \divisioMinima
c'2 f2*3/2 ~ f4 r4 d2*3/2 ~ d2 ~ d2*3/2 g2 ~ g4 d2*3/2 f2*3/2 ~ f4 ~ f4 g2*3/4 d2*3/2 bes,4 ~ bes,2*4/2 f2 \finalis
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
        "V"
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
