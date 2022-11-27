\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.422
%(volume.page)

global = {
 \key fis \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Postula a me" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Postula a me"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Postula a me" }
    \line {}
  }
}

chantText = \lyricmode {
Pó -- stu -- la 
\set stanza = " * " a _ me, _ et da -- bo ti -- bi _ _ gen -- _ tes 
he -- re -- di -- tá -- _ _ tem tu -- _ _ am, _ 
et pos -- ses -- _ si -- ó -- _ _ _ nem _ tu -- _ am _ _ 
tér -- mi -- nos ter -- _ ræ. _ _ }

chantMusic = {
\tieDown   d'4 e'4 ( g'4 fis'4) g'4  fis'4 ( g'4 a'4 g'4 fis'4) g'4 ( fis'4 e'4) g'4 ( e'4) fis'4 ( g'4 fis'4) \divisioMinima
 g'4 ( \once \tweak #'font-size #-4 e' ) e'4 ( g'4 fis'4) g'4 ( a'4) a'4 a'4 ( fis'4) g'4 ( fis'4 e'4.) a'4 ( g'4 fis'4) b'4 ( a'4 g'4) a'4 ( \tiny g' fis' 4) fis'4 \divisioMaior
 fis'4 fis'4 fis'4 fis'4 ( a'4 g'4) a'4 ( g'4) ~ g'4 ( g'4 e'4) e'4 ( a'4 g'4 fis'4) b'4 ( a'4 b'4 g'4) b'4 ( a'4) ~ a'4 ( e'4) e'4 ( a'4 g'4 fis'4) g'4 ( a'4 g'4 e'4) \divisioMaxima
 e'4 e'4 e'4 ( g'4) a'4 ( fis'4 g'4) g'4  g'4 ( g'4) b'4 ( c''4 b'4) c''4 ( b'4) ~ b'4 ( a'4) a'4 ( b'4) c''4 ( a'4 b'4) fis'4 ( g'4 a'\prall b'4) ~ b'4 ( a'4) a'4 ( g'4) a'4 ( b'4) ~ b'4 ( a'4) \divisioMaior
 a'4 ( e'4) e'4 ( a'4 g'4 fis'4) fis'4 fis'4 ( a'4 b'4 a'4 g'4) a'4 ( b'4 a'4) fis'4 ( a'4 g'4) a'4 ( g'4) ~ g'4 ( fis'4) \finalis

}

altoMusic = {
d'2*6/2 b2*4/2 ~ b2*3/2 c'2 d'2*3/2 ~ \divisioMinima
d'2 b2*5/2 c'4 d'2 ~ d'2*7/4 ~ d'2*3/2 ~ d'2*6/2 ~ d'4 ~ \divisioMaior
d'2*3/2 ~ d'2*5/2 ~ d'2*3/2 ~ d'2*4/2 ~ d'2*5/2 e'2*3/2 ~ e'2*4/2 b2*3/2 ~ b4 ~ \divisioMaxima
b2 c'2 ~ c'2*4/2 d'2 ~ d'2*4/2 e'2*3/2 ~ e'2*5/2 d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 \divisioMaior
b2 ~ b2*5/2 ~ b2 ~ b2*3/2 d'2*3/2 ~ d'2*4/2 c'2 d'4 \finalis
}

tenorMusic = {
g2*6/2 ~ g2*4/2 ~ g2*3/2 ~ g2 a2*3/2 ~ \divisioMinima
a2 g2*5/2 ~ g4 fis2 b2*7/4 a2*3/2 g2*3/2 fis2*3/2 b4 ~ \divisioMaior
b2*3/2 d2*5/2 e2*3/2 fis2*4/2 g2*5/2 ~ g2*3/2 a2*4/2 ~ a2*3/2 g4 ~ \divisioMaxima
g2 ~ g2 e2*4/2 d2 g2*4/2 ~ g2*3/2 a2*5/2 ~ a2*3/2 fis2*3/2 e2*3/2 fis2*3/2 ~ \divisioMaior
fis2 a2*5/2 fis2 g2*3/2 fis2*3/2 b2*4/2 ~ b2 ~ b4 \finalis
}

bassMusic = {
r2*6/2 fis2*4/2 e2*3/2 ~ e2 d2*3/2 ~ \divisioMinima
d2 e2*5/2 ~ e4 d2 b,2*7/4 ~ b,2*3/2 ~ b,2*3/2 ~ b,2*3/2 ~ b,4 ~ \divisioMaior
b,2*3/2 ~ b,2*5/2 ~ b,2*3/2 ~ b,2*4/2 ~ b,2*5/2 c2*3/2 ~ c2*4/2 e2*3/2 ~ e4 \divisioMaxima
a,2 ~ a,2 ~ a,2*4/2 b,2 ~ b,2*4/2 c2*3/2 ~ c2*5/2 d2*3/2 ~ d2*3/2 ~ d2*3/2 ~ d2*3/2 \divisioMaior
e2 ~ e2*5/2 ~ e2 ~ e2*3/2 b,2*3/2 ~ b,2*4/2 ~ b,2 ~ b,4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Offertory"
        "4"
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
