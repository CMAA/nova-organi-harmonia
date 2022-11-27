\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.203
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Ego vos elegi" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Ego vos elegi"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Ego vos elegi" }
    \line {}
  }
}

chantText = \lyricmode {
E -- go _ 
\set stanza = " * " vos e -- lé -- gi de mun -- do, 
ut e -- á -- tis, et fru -- ctum af -- fe -- rá -- tis: 
et fru -- _ ctus ve -- ster má -- ne -- at. }

chantMusic = {
\tieDown   a'4 c''4 ( a'4) ~ a'4 ( g'4) \divisioMinima
 b'4 ( a'4 b'\prall c''4) a'4 ( f'4) g'4 ( a'4) g'4 e'4 ( g'4) f'4 ( g'4 f'4 f'4) d'4 \divisioMaior
 f'4 ( e'4) f'4 ( g'4) g'4 ( a'4 f'4 g'4) d'4 \divisioMinima
 d'4 ( \once \tweak #'font-size #-4 f' ) f'4 ( e'4 f'4) d'4 ( \once \tweak #'font-size #-4 c' ) f'4 ( a'4) g'4 ( a'4) f'4 ( g'4 f'4) f'4 \divisioMaxima
 a'4 ( \once \tweak #'font-size #-4 g' )  g'4 ( a'4) bes'4 ( f'4) d'4 ( \once \tweak #'font-size #-4 f' ) f'4 ( e'4) c'4 ( \once \tweak #'font-size #-4 d' ) d'4 d'4 ( e'4 f'4 e'4 d'4 e'4) e'4 ( d'4) \finalis

}

altoMusic = {
c'2 b2*3/2 \divisioMinima
d'2*4/2 c'2 ~ c'2*3/2 ~ c'2 a2*4/2 ~ a4 \divisioMaior
c'2 ~ c'2 ~ c'2*4/2 a4 ~ \divisioMinima
a2 bes2*3/2 ~ bes2 c'2 d'2 ~ d'2*3/2 c'4 \divisioMaxima
r2 d'2*6/2 c'2 g2 a4 ~ a2*6/2 ~ a2 \finalis
}

tenorMusic = {
e2 ~ e2*3/2 ~ \divisioMinima
e2*4/2 f2 e2*3/2 g2 ~ g2*4/2 f4 \divisioMaior
g2 f2 e2*4/2 f4 ~ \divisioMinima
f2 d2*3/2 f2 ~ f2 ~ f2 g2*3/2 a4 \divisioMaxima
r2 g2*6/2 ~ g2 ~ g2 ~ g4 ~ g2*6/2 f2 \finalis
}

bassMusic = {
a,2 ~ a,2*3/2 ~ \divisioMinima
a,2*4/2 ~ a,2 ~ a,2*3/2 ~ a,2 d2*4/2 ~ d4 \divisioMaior
c2 ~ c2 ~ c2*4/2 d4 ~ \divisioMinima
d2 g,2*3/2 ~ g,2 a,2 bes,2 ~ bes,2*3/2 f4 \divisioMaxima
r2 bes,2*6/2 c2 e2 ~ e4 d2*6/2 ~ d2 \finalis
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
        "I."
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
