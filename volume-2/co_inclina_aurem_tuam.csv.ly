\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.165
%(volume.page)

global = {
 \key a \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Inclina aurem tuam" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Inclina aurem tuam"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Inclina aurem tuam" }
    \line {}
  }
}

chantText = \lyricmode {
In -- clí -- na 
\set stanza = " * " au -- rem tu -- _ am, 
ac -- cé -- le -- ra, ut é -- ru -- as _ nos. }

chantMusic = {
\tieDown   bes'4 bes'4 ( c''4 bes'4) bes'4 ( g'4)  bes'4 ( \once \tweak #'font-size #-4 a' ) bes'4 c''4 ( d''4 c''4 bes'4) c''4 ( d''4) d''4 \divisioMaxima
 bes'4 d''4 \forceBreak
 c''4 ( d''4 c''4 bes'4 a'4 bes'4) bes'4 ( a'4) \divisioMinima
 bes'4 c''4 ( d''4 c''4 bes'4) c''4 c''4 ( d''4 c''4 bes'4) c''4 ( d''4 c''4 bes'4) a'4 \finalis

}

altoMusic = {
r4 d'2*3/2 ~ d'2 f'2*3/2 ~ f'2*4/2 ~ f'2 ~ f'4 ~ \divisioMaxima
f'2 ~ f'2*4/2 ~ f'2 ~ f'2*3/2 ~ f'2 ~ f'2*3/2 ~ f'2*4/2 ~ f'2 e'2 f'4 \finalis
}

tenorMusic = {
r2*4/2 bes2 ~ bes2*3/2 ~ bes2*4/2 a2 ~ a4 \divisioMaxima
bes2 a2*4/2 d'2 c'2 ~ \divisioMinima
c'4 bes2 a2*3/2 ~ a2*4/2 bes2 ~ bes2 d'4 \finalis
}

bassMusic = {
g4 ~ g2*3/2 ~ g2 d2*3/2 f2*4/2 ~ f2 d4 ~ \divisioMaxima
d2 f2*4/2 ~ f2 ~ f2*3/2 ~ f2 ~ f2*3/2 d2*4/2 g2 ~ g2 d4 \finalis
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
        "IV"
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
