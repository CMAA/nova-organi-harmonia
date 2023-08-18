\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.423
%(volume.page)

global = {
 \key g \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Sedebit Dominus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Sedebit Dominus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Sedebit Dominus" }
    \line {}
  }
}

chantText = \lyricmode {
Se -- dé -- bit 
\set stanza = " * " Dó -- mi -- nus Rex in æ -- tér -- num: 
Dó -- mi -- nus be -- ne -- dí -- cet pó -- pu -- lo su -- o _ in _ pa -- ce. }

chantMusic = {
\tieDown   d'4 ( e'4) g'4 e'4 ( d'4)  g'4 ( a'4) b'4 a'4 ( g'4) g'4 ( a'4 g'4) g'4 ( fis'4)  a'4 ( c''4 a'4 b'\prall c''4) g'4 ( a'4 g'4) g'4 \divisioMaior
 g'4 ( a'4) g'4 g'4 g'4 g'4  g'4 ( a'\prall b'4 c''4) b'4  b'4 ( d''4) a'4 g'4 ( a'4) a'4 ( g'4) g'4 ( a'4 g'4 g'4) e'4 ( fis'4 e'4) \divisioMinima
 g'4 ( fis'4) a'4 ( a'4 b'4) g'4 ( a'4 g'4) g'4 \finalis

}

altoMusic = {
r2 b2*3/2 ~ b2*5/2 c'2*3/2 d'2 e'2 ~ e'2*3/2 d'2*3/2 ~ d'4 \divisioMaior
c'2*6/2 d'2*5/2 ~ d'2*5/2 b2*6/2 ~ b2*3/2 ~ \divisioMinima
b2 e'2*3/2 ~ e'2*3/2 d'4 \finalis
}

tenorMusic = {
g2*3/2 ~ g2 ~ g2*5/2 ~ g2*3/2 a2 ~ a2 g2*3/2 ~ g2*3/2 ~ g4 ~ \divisioMaior
g2*6/2 ~ g2*5/2 fis2*5/2 e2 a2*4/2 g2*3/2 ~ \divisioMinima
g2 ~ g2*3/2 a2*3/2 b4 \finalis
}

bassMusic = {
r2*3/2 fis2 e2*5/2 ~ e2*3/2 d2 c2 ~ c2*3/2 ~ c2*3/2 b,4 \divisioMaior
a,2*6/2 b,2*5/2 ~ b,2*5/2 e2 ~ e2*4/2 ~ e2*3/2 \divisioMinima
d2 c2*3/2 ~ c2*3/2 g,4 \finalis
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
        "6"
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
