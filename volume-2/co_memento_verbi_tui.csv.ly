\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.242
%(volume.page)

global = {
 \key fis \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Memento verbi tui" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Memento verbi tui"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Memento verbi tui" }
    \line {}
  }
}

chantText = \lyricmode {
Me -- mén -- to 
\set stanza = " * " ver -- bi tu -- i ser -- vo tu -- o, Dó -- mi -- ne, 
in quo mi -- hi spem de -- dí -- sti: 
hæc me _ con -- so -- lá -- ta est 
in hu -- mi -- li -- tá -- te me -- a. }

chantMusic = {
\tieDown   g'4 a'4 ( b'4) b'4 ( a'4)  b'4 b'4 ( a'4) b'4 b'4 ( g'4) a'4 a'4 ( e'4) g'4 g'4. fis'4 fis'4 ( a'4 g'4 g'4 \forceBreak
) fis'4 ( fis'4 g'4) \divisioMaior
 e'4 g'4 ( b'4 a'4) b'4 a'4 ( g'4) a'4 ( b'4) a'4 fis'4 ( a'4 g'4 g'4) g'4 ( fis'4) \divisioMaxima
 a'4 a'4 ( b'4 cis''4) ~ cis''4 ( b'4) b'4 b'4 ( a'4) b'4 \forceBreak
 a'4 ( b'4 a'4 g'4 fis'4 g'4) g'4 ( fis'4) \divisioMaior
 fis'4 ( g'4 fis'4) e'4 fis'4 ( g'4 fis'4) e'4 fis'4 ( g'4 a'4) g'4 fis'4 ( a'4 g'4 g'4) g'4 ( fis'4) \finalis

}

altoMusic = {
r4 d'2 ~ d'2 ~ d'4 g'2 fis'4 e'2 ~ e'4 ~ e'2 ~ e'2*5/4 ~ e'4 d'2*4/2 b2 ~ b4 \divisioMaior
e'4 ~ e'2*3/2 ~ e'4 ~ e'2 ~ e'2*3/2 d'2*4/2 ~ d'2 \divisioMaxima
r4 c'2 fis'2*4/2 e'2 d'4 ~ d'2 ~ d'2*4/2 ~ d'2 \divisioMaior
b2*4/2 ~ b2*4/2 ~ b2*4/2 c'2*4/2 d'2 \finalis
}

tenorMusic = {
r2*3/2 a2 g4 ~ g2 ~ g4 ~ g2 ~ g4 c'2 b2*5/4 a4 ~ a2*4/2 ~ a2 g4 ~ \divisioMaior
g4 ~ g2*3/2 ~ g4 c'2 a2*3/2 ~ a2*4/2 b2 \divisioMaxima
fis4 ~ fis2 ~ fis2*4/2 ~ fis2 ~ fis4 g2 b2*4/2 a2 ~ \divisioMaior
a2*4/2 g2*4/2 d2*4/2 e2*4/2 b2 \finalis
}

bassMusic = {
g4 ~ g2 fis2 ~ fis4 e2 d4 ~ d2 c4 ~ c2 ~ c2*5/4 ~ c4 b,2*4/2 e2 ~ e4 ~ \divisioMaior
e4 d2*3/2 c4 ~ c2 ~ c2*3/2 d2*4/2 b,2 \divisioMaxima
r4 e2 d2*4/2 c2 b,4 ~ b,2 ~ b,2*4/2 d2 \divisioMaior
e2*4/2 ~ e2*4/2 b,2*4/2 ~ b,2*4/2 ~ b,2 \finalis
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
