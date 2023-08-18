\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.325
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Pater si non potest" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Pater si non potest"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Pater si non potest" }
    \line {}
  }
}

chantText = \lyricmode {
Pa -- ter, 
\set stanza = " * " si non po -- test hic ca -- lix tran -- sí -- re, ni -- si bi -- bam il -- lum: 
fi -- at vo -- lún -- tas tu -- a. }

chantMusic = {
\tieDown   bes'4 ( bes'4) a'4 ( a'4 g'4) \divisioMinima
 f'4 ( a'4) a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 g'4 f'4 ees'4 ( g'4 f'4) f'4 f'4 g'4 ( a'4) a'4 ( f'4) \divisioMinima \forceBreak

 a'4 c''4 c''4 bes'4 a'4 ( c''4 bes'4) a'4 \divisioMaior
 bes'4 ( c''4 bes'4) bes'4 ( a'4 bes'4) g'4 a'4 ( bes'4 \once \tweak #'font-size #-4 g' ) a'4 f'4 f'4 \finalis

}

altoMusic = {
d'2 ~ d'2*3/2 ~ \divisioMinima
d'2 ~ d'2 ~ d'2*3/2 c'2*3/2 ~ c'2 d'2 f'2 ~ \divisioMinima
f'2 ~ f'2 ~ f'2*3/2 ~ f'4 \divisioMaior
d'2*3/2 ~ d'2*4/2 ees'2*4/2 c'2 \finalis
}

tenorMusic = {
g2 bes2*3/2 \divisioMinima
c'2 bes2 ~ bes2*3/2 ~ bes2*3/2 a2 ~ a2 ~ a2 \divisioMinima
c'2 d'2 ~ d'2*3/2 c'4 \divisioMaior
r2*3/2 bes2*4/2 ~ bes2*4/2 ~ bes4 a4 \finalis
}

bassMusic = {
r2*5/2 \divisioMinima
r2*4/2 a2*3/2 g2*3/2 ~ g2 f2 d2 ~ \divisioMinima
d2 ~ d2 f2*3/2 ~ f4 \divisioMaior
g2*3/2 ~ g2*4/2 c2*4/2 f2 \finalis
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
