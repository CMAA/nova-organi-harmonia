\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.341
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Sinite parvulos" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Sinite parvulos"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Sinite parvulos" }
    \line {}
  }
}

chantText = \lyricmode {
Si -- ni -- te 
\set stanza = " * " pár -- vu -- los ve -- ní -- re ad me, 
et ne pro -- hi -- bu -- é -- ri -- tis e -- _ os: 
tá -- li -- um est e -- nim re -- _ _ gnum De -- i. }

chantMusic = {
\tieDown   ees'4 ( f'4 g'4) f'4 f'4  g'4 f'4 f'4 ( g'4 f'4) ees'4  g'4 ( aes'4) g'4 f'4 f'4 ( g'4 f'4) \divisioMaior
 g'4 ( bes'4 \tiny a' g' 4) bes'4 ( c''4) c''4 c''4 bes'4 c''4 bes'4 bes'4 bes'4 ( bes'4 g'4) a'4 ( f'4) f'4 \divisioMaxima
 f'4 ( c''4) c''4 c''4 c''4 ( d''4) bes'4 ( a'4 g'4) g'4 ( f'4 g'4) \divisioMinima
 f'4 ( d'4) ~ d'4 ( c'4) f'4 ( d'4 f'4) f'4 f'4 ( g'4 f'4) f'4 \finalis

}

altoMusic = {
bes2*5/2 ees'2 c'2*4/2 ees'2*4/2 d'2*3/2 ~ \divisioMaior
d'2*4/2 g'2*5/2 f'2*3/2 c'2*3/2 ~ c'2 ~ c'4 \divisioMaxima
f'2*4/2 ~ f'2 ~ f'2*3/2 d'2*3/2 ~ \divisioMinima
d'4 bes2*3/2 ~ bes2*4/2 g2*3/2 a4 \finalis
}

tenorMusic = {
bes2*5/2 ~ bes2 c'2*4/2 ~ c'2*4/2 d'2*3/2 \divisioMaior
bes2*4/2 ~ bes2*5/2 ~ bes2*3/2 ~ bes2*3/2 ~ bes2 a4 ~ \divisioMaxima
a2*4/2 ~ a2 bes2*3/2 a2*3/2 ~ \divisioMinima
a4 g2*3/2 f2*4/2 d2*3/2 c4 \finalis
}

bassMusic = {
g2*5/2 ~ g2 aes2*4/2 a2*4/2 bes2*3/2 \divisioMaior
g2*4/2 ees2*5/2 d2*3/2 ees2*3/2 f2 ~ f4 ~ \divisioMaxima
f2*4/2 d2 ~ d2*3/2 ~ d2*3/2 ~ \divisioMinima
d4 ees2*3/2 d2*4/2 bes,2*3/2 f,4 \finalis
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
