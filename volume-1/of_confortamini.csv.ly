\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.20
%(volume.page)

global = {
 \key fis \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Confortamini" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Confortamini"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Confortamini" }
    \line {}
  }
}

chantText = \lyricmode {
Con -- for -- tá -- mi -- _ ni, _ 
\set stanza = " * " 
et jam no -- lí -- _ _ _ te ti -- mé -- re: 
ec -- ce e -- nim _ De -- us no -- _ ster _ _ 
re -- trí -- _ bu -- et ju -- dí -- ci -- um: 
ip -- se vé -- _ ni -- et, 
et sal -- vos nos _ _ _ fá -- ci -- et. }

chantMusic = {
\tieDown  d'4 ( e'4) e'4 ( g'4) fis'4 ( g'4 a'4 g'4 fis'4) g'4 ( g'4) ~ g'4 ( fis'4 e'4) g'4 ( e'4) fis'4 ( g'4 fis'4) \divisioMaior
 g'4 e'4 ( g'4 fis'4) g'4  a'4 ( g'4) ~ g'4 ( fis'4) g'4 ( a'4 \forceBreak
) b'4 ( c''4 a'4) g'4 ( b'4) a'4 ( b'4 g'4 fis'4) fis'4 ( a'4 g'4 fis'4) fis'4 \divisioMaxima
 e'4 ( g'4 a'\prall b'4) a'4  c''4 ( b'4 a'4) a'4 ( b'4 a'4 a'4) fis'4 ( g'4 fis'4) \divisioMinima
 fis'4 ( g'4 a'4 \forceBreak
) b'4 ( a'4 a'4) fis'4 ( g'4 a'4 g'4 fis'4) g'4 ( fis'4 e'4) e'4 g'4 ( e'4) fis'4 ( g'4 fis'4) \divisioMaior
 e'4 g'4. ~ g'4 ( g'4 g'4) g'4 ( fis'4) e'4 ( g'4 fis'4) g'4 ( a'4) a'4 a'4 ( g'4 a'\prall b'4 a'4 b'4) b'4 ( a'4) \divisioMaxima \forceBreak

 a'4 b'4  b'4 ( d''4 b'4) c''4 ( d''4) a'4 g'4 ( a'4 g'4 fis'4 e'4 fis'\prall g'4) \divisioMaior
 d'4 ( e'4) e'4 ( a'4 g'4) g'4 ( g'4 g'4) g'4 ( a'4) b'4 ( a'4) ~ a'4 ( g'4) a'4 ( b'4 a'4) fis'4 fis'4 ( a'4 g'4 g'4) g'4 ( fis'4) \finalis

}

altoMusic = {
a2 b2 d2*5/2 b2 c'2*3/2 b2 d'2*3/2 \divisioMaior
b4 ~ b2*5/2 d'2*5/2 c'2*5/2 d'2*4/2 ~ d'2*4/2 ~ d'4 \divisioMaxima
e'2*5/2 c'2*3/2 d'2*4/2 ~ d'2*3/2 ~ \divisioMinima
d'2*3/2 ~ d'2*3/2 ~ d'2*5/2 b2*3/2 ~ b2*3/2 d'2*3/2 ~ \divisioMaior
d'2*5/4 b2*3/2 ~ b2*5/2 ~ b2 d'4 ~ d'2*3/2 ~ d'2*3/2 ~ d'2 ~ \divisioMaxima
d'2 ~ d'2*6/2 b2*6/2 ~ b4 ~ \divisioMaior
b2 c'2*3/2 d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*4/2 ~ d'2*4/2 ~ d'2 \finalis
}

tenorMusic = {
a2 g2 a2*5/2 g2*5/2 ~ g2 b2*3/2 ~ \divisioMaior
b4 g2*5/2 ~ g2*5/2 ~ g2*5/2 ~ g2*4/2 a2*4/2 b4 \divisioMaxima
g2*5/2 ~ g2*3/2 fis2*4/2 a2*3/2 ~ \divisioMinima
a2*3/2 g2*3/2 a2*5/2 b2*3/2 g2*3/2 b2*3/2 ~ \divisioMaior
b2*5/4 ~ b2*3/2 a2*5/2 g2 ~ g4 a2*3/2 g2*3/2 fis2 ~ \divisioMaxima
fis2 g2*6/2 ~ g2*4/2 a2 g4 ~ \divisioMaior
g2 ~ g2*3/2 ~ g2*3/2 d2*3/2 e2*3/2 fis2*3/2 g4 a2*4/2 b2 \finalis
}

bassMusic = {
fis2 e2 d2*5/2 e2*5/2 ~ e2 b2*3/2 \divisioMaior
e4 ~ e2*5/2 b,2*5/2 a,2*5/2 b,2*4/2 ~ b,2*4/2 ~ b,4 \divisioMaxima
c2*5/2 a,2*3/2 d2*4/2 ~ d2*3/2 \divisioMinima
b,2*3/2 ~ b,2*3/2 ~ b,2*5/2 e2*3/2 ~ e2*3/2 b2*3/2 \divisioMaior
r2*5/4 e2*3/2 ~ e2*5/2 ~ e2 b,4 ~ b,2*3/2 ~ b,2*3/2 d2 \divisioMaxima
b,2 ~ b,2*6/2 e2*6/2 ~ e4 ~ \divisioMaior
e2 a,2*3/2 b,2*3/2 ~ b,2*3/2 ~ b,2*3/2 ~ b,2*4/2 ~ b,2*4/2 ~ b,2 \finalis
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
