\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.97
%(volume.page)

global = {
 \key fis \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Lauda anima" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Lauda anima"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Lauda anima" }
    \line {}
  }
}

chantText = \lyricmode {
Lau -- _ _ _ da _ 
\set stanza = " * " á -- ni -- ma me -- _ a _ Dó -- mi -- num: 
lau -- dá -- bo Dó -- _ mi -- num 
in vi -- _ ta me -- _ _ a: _ 
psal -- _ lam _ De -- _ o me -- o, 
quám -- di -- _ u e -- ro, _ 
al -- _ le -- _ _ _ _ _ _ lú -- ia. }

chantMusic = {
\tieDown   d'4 ( fis'4) a'4 ( fis'4) a'4 ( b'4 a'4 g'4) ~ g'4 ( fis'4 e'4) g'4 ( e'4) fis'4 ( g'4 fis'4) \divisioMinima
 g'4 ( e'4) g'4 ( fis'4) g'4 b'4 ( a'4) ~ a'4 ( fis'4 \forceBreak
) g'4 ( b'4 a'4 g'4) a'4 ( b'4 a'4) fis'4 fis'4 ( a'4 g'4 g'4) fis'4 ( fis'4 g'4) \divisioMaxima
 fis'4 ( \once \tweak #'font-size #-4 e' ) a'4 ( b'4 a'4) b'4  b'4 ( d''4 b'4) c''4 ( d''4) a'4 \forceBreak
 g'4 ( a'4 g'4 fis'4) \divisioMaior
 g'4 g'4 ( fis'4) g'4 ( a'\prall b'4) b'4 ( b'4 a'4) a'4 ( fis'4) a'4 ( b'4 g'4) ~ g'4 ( fis'4) fis'4 ( g'4 fis'4 e'4) fis'4 ( fis'4 g'4) \divisioMaxima \forceBreak

 d'4 ( fis'4) a'4 ( g'4) g'4 ( g'4 g'4) ~ g'4 ( d'4) e'4 ( fis'\prall g'4) a'4 ( g'4 fis'4) g'4  g'4 ( b'4 c''4 b'4 a'4) a'4 ( b'4) \divisioMaior
 g'4  fis'4 ( g'4) b'4 ( c''4 a'4) a'4 ( g'4 \forceBreak
) g'4 e'4 ( fis'\prall g'4) ~ g'4 ( fis'4 e'4) \divisioMaior
 d'4 ( fis'4) a'4 ( g'4) g'4 ( g'4 g'4) ~ g'4 ( d'4) g'4 ( g'4) ~ g'4 ( fis'4.) b'4 ( a'4) b'4 ( g'4) ~ g'4 ( fis'4) fis'4 ( a'4 g'4 fis'4) fis'4 \finalis

}

altoMusic = {
d'2 ~ d'2 ~ d'2*3/2 ~ d'2*4/2 ~ d'2*5/2 \divisioMinima
b2 d'2*4/2 ~ d'2*3/2 ~ d'2*4/2 ~ d'2*3/2 ~ d'4 ~ d'2 ~ d'2 b2 ~ b4 \divisioMaxima
r2 d'2*4/2 e'2*3/2 ~ e'2*3/2 d'2*5/2 ~ d'2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2 b2 ~ b2*3/2 d'2*4/2 ~ d'2 ~ d'4 \divisioMaxima
d2 d'2 ~ d'2*3/2 ~ d'2 b2*3/2 ~ b2*4/2 e'2 ~ e'2*3/2 ~ e'2 ~ \divisioMaior
e'4 ~ e'2 ~ e'2*3/2 d'2 ~ d'4 b2 ~ b2*3/2 ~ b4 \divisioMaior
d'2*4/2 ~ d'2*3/2 ~ d'2 ~ d'2 ~ d'2*5/4 ~ d'2*3/2 ~ d'2*3/2 b2*4/2 d'4 \finalis
}

tenorMusic = {
fis2 ~ fis2 g2*3/2 b2*4/2 a2*5/2 \divisioMinima
g2 ~ g2*4/2 fis2*3/2 e2*4/2 fis2*3/2 a4 ~ a2 b2 a2 g4 ~ \divisioMaxima
g2 fis2*4/2 g2*3/2 a2*3/2 b2*4/2 ~ \divisioMaior
b4 a2 g2*3/2 ~ g2*3/2 fis2 ~ fis2 g2*3/2 a2*4/2 ~ a2 b4 \divisioMaxima
'a2 fis2 d2*3/2 g2 ~ g2*3/2 fis2*4/2 e2 a2*3/2 g2 \divisioMaior
b4 ~ b2 a2*3/2 b2 g4 ~ g2 a2*3/2 g4 \divisioMaior
fis2*4/2 g2*3/2 a2 b2 a2*5/4 g2*3/2 a2*3/2 g2*4/2 b4 \finalis
}

bassMusic = {
d2 c2 b,2*3/2 ~ b,2*4/2 d2*5/2 \divisioMinima
e2 b,2*4/2 d2*3/2 ~ d2*4/2 ~ d2*3/2 ~ d4 b,2 ~ b,2 e2 ~ e4 \divisioMaxima
d2 ~ d2*4/2 c2*3/2 ~ c2*3/2 b,2*5/2 ~ b,2 ~ b,2*3/2 ~ b,2*3/2 d2 e2 ~ e2*3/2 d2*4/2 g2 ~ g4 \divisioMaxima
d2 ~ d2 b,2*3/2 ~ b,2 e2*3/2 ~ e2*4/2 ~ e2 ~ e2*3/2 ~ e2 ~ \divisioMaior
e4 d2 c2*3/2 b,2 ~ b,4 e2 ~ e2*3/2 ~ e4 \divisioMaior
b,2*4/2 ~ b,2*3/2 ~ b,2 ~ b,2 ~ b,2*5/4 ~ b,2*3/2 d2*3/2 e2*4/2 b,4 \finalis
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
