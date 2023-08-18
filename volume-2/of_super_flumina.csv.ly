\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.241
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Super flumina" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Super flumina"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Super flumina" }
    \line {}
  }
}

chantText = \lyricmode {
Su -- per flú -- mi -- na _ _ _ _ _ _ 
\set stanza = " * " Ba -- by -- _ _ _ ló -- nis, 
il -- lic sé -- di -- mus, 
et _ flé -- vi -- _ mus, _ _ _ _ _ 
dum re -- cor -- da -- ré -- mur _ tu -- _ i, _ Si -- on. _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   g'4  a'4 ( b'4 c''4) b'4 b'4 ( a'4 b'4) b'4 ( g'4) a'4 ( b'4) d''4 ( b'4) d''4 ( a'4 g'4) ~ g'4 ( e'4) g'4 ( e'4) ~ e'4 ( d'4) \divisioMinima \forceBreak

 e'4 e'4 ( d'4) e'4 g'4 ( g'4) a'4 ( b'4 cis''\prall d''4 cis''4 b'4.) a'4 ( b'4 a'4 g'4) g'4 ( a'4 b'4 a'4 g'4 a'4) a'4 ( g'4) \divisioMaxima
 g'4 ( b'4) b'4 ( a'4) b'4 ( cis''\prall d''4 \forceBreak
) b'4 ( a'4 g'4)  a'4 ( b'\prall c''4 b'4) \divisioMaior
 b'4 ( a'4) b'4 ( a'4 fis'4) g'4 ( a'\prall b'4 a'4) a'4 ( g'4) ~ g'4 ( fis'4 e'4) e'4 g'4 ( g'4 e'4) g'4 ( a'4 fis'4) g'4 ( a'4 e'4) fis'4 ( e'4) ~ e'4 ( d'4) \divisioMaxima \forceBreak

 g'4 e'4 fis'4 g'4 a'4 ( b'4 a'4 b'4) d''4 ( b'4) d''4 ( d''4 b'4 a'4)  a'4 ( g'4) b'4 ( c''4 a'4 g'4) g'4 ( g'4) a'4 ( b'4 g'4 fis'4) \divisioMinima
 g'4 g'4 ( e'4. \forceBreak
) g'4 ( a'\prall b'4 a'4 b'4) d''4 ( b'4 a'4) b'4 ( g'4 e'4 g'4) \divisioMinima
 fis'4 ( a'\prall b'4 a'4 b'4) d''4 ( b'4 a'4) b'4 ( g'4 e'4.) g'4 ( a'4 g'4.) a'4 ( g'4) a'4 ( g'4 g'4) e'4 ( fis'4 e'4) \finalis

}

altoMusic = {
g'4 ~ g'2*3/2 ~ g'4 ~ g'2*3/2 ~ g'2*4/2 fis'2*4/2 e'2*4/2 ~ e'4 r2 \divisioMinima
r4 b2*3/2 ~ b2 d'2*3/2 ~ d'2*7/4 ~ d'2*4/2 e'2 ~ e'2*4/2 d'2 \divisioMaxima
e'2 ~ e'2 d'2*3/2 ~ d'2*3/2 e'2 ~ e'2 \divisioMaior
fis'2 ~ fis'2 ~ fis'4 e'2 ~ e'2*3/2 d'2*5/2 ~ d'2*3/2 c'2*3/2 ~ c'2 ~ c'2 a2 ~ a4 \divisioMaxima
d'2*4/2 ~ d'2*4/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2 c'2*4/2 d'2 ~ d'2 ~ d'2 \divisioMinima
b4 ~ b2*5/4 e'2 ~ e'2*3/2 d'2*3/2 ~ d'2*4/2 ~ \divisioMinima
d'2 e'2*3/2 ~ e'2*3/2 d'2*7/4 ~ d'2*7/4 c'2 ~ c'2*3/2 b2 ~ b4 \finalis
}

tenorMusic = {
r4 e'2*3/2 ~ e'4 d'2*3/2 ~ d'2*4/2 ~ d'2*4/2 b2*4/2 a2*3/2 ~ \divisioMinima
a4 ~ a2*3/2 g2 fis2*3/2 ~ fis2*7/4 g2*4/2 ~ g2 c'2*4/2 ~ c'4 b4 \divisioMaxima
r2 g2 fis2*3/2 g2*3/2 ~ g2 ~ g2 \divisioMaior
b2 ~ b2*3/2 e2 ~ e2*3/2 g2*5/2 e2*3/2 ~ e2*3/2 ~ e2 g2 ~ g2 fis4 \divisioMaxima
g2*4/2 ~ g2*4/2 fis2*3/2 ~ fis2*3/2 g2 ~ g2*4/2 ~ g2 fis2 a2 ~ \divisioMinima
a4 g2*5/4 b2 ~ b2*3/2 a2*3/2 g2*4/2 \divisioMinima
a2 fis2*3/2 g2*3/2 ~ g2*7/4 b2*7/4 ~ b2 a2*3/2 ~ a2 g4 \finalis
}

bassMusic = {
c'4 ~ c'2*3/2 g4 ~ g2*3/2 e2*4/2 d2*4/2 e2*4/2 fis2*3/2 ~ \divisioMinima
fis4 e2*3/2 ~ e2 d2*3/2 b,2*7/4 ~ b,2*4/2 c2 ~ c2*4/2 g2 \divisioMaxima
e2 ~ e2 b,2*3/2 ~ b,2*3/2 c2 e2 ~ \divisioMaior
e2 d2*3/2 ~ d2 c2*3/2 b,2*5/2 ~ b,2*3/2 ~ b,2*3/2 a,2 ~ a,2 d2 ~ d4 \divisioMaxima
b,2*4/2 d2*4/2 ~ d2*3/2 b,2*3/2 ~ b,2 a,2*4/2 b,2 d2 ~ d2 \divisioMinima
e4 ~ e2*5/4 ~ e2 g2*3/2 fis2*3/2 e2*4/2 \divisioMinima
d2 ~ d2*3/2 b,2*3/2 e2*7/4 ~ e2*7/4 ~ e2 ~ e2*3/2 ~ e2 ~ e4 \finalis
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
        "I"
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
