\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.385
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"In Deo salutare" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "In Deo salutare"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "In Deo salutare" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ _ lú -- ia. 
\set stanza = " * " _ _ _ 
_ _ _ _ _ 
_ _ _ _ ℣. 
In De -- o _ _ sa -- lu -- tá -- re me -- _ um, 
et gló -- ri -- a me -- _ _ _ a: _ 
De -- us au -- xí -- li -- i me -- i, 
et spes me -- _ _ a 
\set stanza = " * " 
in De -- _ _ o est. _ _ _ _ 
_ _ _ _ _ 
_ _ _ _ }

chantMusic = {
\tieDown   e'4 ( d'4 e'4) e'4. g'4 ( a'4 b'4 a'4) b'4 ( a'4 g'4 fis'4) e'4 ( fis'4 e'4) d'4 ( e'4) \divisioMinima
 e'4 ( fis'4 g'4) a'4 ( g'4) a'4 ( b'4) ~ b'4 ( e'4) \divisioMaior
  b'4 ( c''4 b'4 a'4 g'4) a'4 ( b'4.) g'4 ( fis'4) a'4 ( e'4.) fis'4 ( g'4 e'4 d'4 e'4) \divisioMaior
 e'4 ( fis'4 g'4 a'4) ~ a'4 ( g'4) b'4 ( a'4 fis'4) ~ fis'4 ( e'4 fis'\prall g'4 e'4) \finalis
 e'4 d'4 ( e'4) e'4 ( g'4 fis'4) g'4 ( a'4 fis'4 e'4) g'4 ( e'4) \divisioMinima
 g'4 ( a'4 g'4 fis'4) a'4 ( b'4) b'4 ( d''4 b'4) b'4 ( a'4) b'4 ( a'4) ~ a'4 ( g'4 a'4) a'4 ( g'4) \divisioMaior
 b'4 ( d''4) d''4 ( e''4) d''4 ( cis''4 b'4) b'4 b'4. g'4 ( a'4 fis'4) ~ fis'4 ( e'4) g'4 ( fis'4 d'4 e'4) e'4 ( g'4 e'4) ~ e'4 ( d'4) \divisioMaxima
 g'4 ( a'4) a'4 ( b'4 a'4 g'4) a'4 ( b'4) b'4 ( d''4) b'4 ( a'4) b'4 a'4 ( b'4 cis''\prall d''4) cis''4 ( b'4) \divisioMaior
 b'4 ( g'4) a'4 ( b'4) b'4 ( a'4) b'4 ( g'4.) a'4 ( g'4 e'4 d'4 e'4) e'4 \divisioMaior
 e'4 ( d'4) g'4 ( a'4) b'4 ( a'4 b'4) d''4 ( d''4 e''4) d''4 ( cis''4 b'4) b'4 ( d''4 b'4 a'4 b'4) \divisioMinima
 e'4 ( fis'4 g'4) a'4 ( g'4) a'4 ( b'4) ~ b'4 ( e'4) \divisioMaior
  b'4 ( c''4 b'4 a'4 g'4) a'4 ( b'4.) g'4 ( fis'4) a'4 ( e'4.) fis'4 ( g'4 e'4 d'4 e'4) \divisioMaior
 e'4 ( fis'4 g'4 a'4) ~ a'4 ( g'4) b'4 ( a'4 fis'4) ~ fis'4 ( e'4 fis'\prall g'4 e'4) \finalis

}

altoMusic = {
b2*3/2 ~ b2*3/4 d'2*4/2 ~ d'2 ~ d'2 b2*3/2 ~ b2 ~ \divisioMinima
b2*3/2 ~ b2*3/2 ~ b2*3/2 e'2*5/2 ~ e'2*5/4 d'2 ~ d'2*5/4 ~ d'2*3/2 ~ d'4 e'4 ~ \divisioMaior
e'2*3/2 ~ e'2*3/2 d'2 ~ d'2 b2*3/2 ~ b4 ~ \finalis
b2*3/2 ~ b2*3/2 ~ b2*4/2 ~ b2 \divisioMinima
d'2*4/2 ~ d'2 ~ d'2*3/2 e'2*3/2 ~ e'2*4/2 ~ e'2 \divisioMaior
g'2 a'2 ~ a'2*4/2 fis'2*3/4 d'2 ~ d'2*3/2 ~ d'2*4/2 ~ d'2 b2*3/2 \divisioMaxima
r2 e'2*4/2 g'2 fis'2 ~ fis'2*3/2 ~ fis'2*4/2 ~ fis'2 \divisioMaior
g'2 ~ g'2 e'2*9/4 ~ e'2 b2*3/2 ~ b4 ~ \divisioMaior
b2 ~ b2 e'2*3/2 fis'2*3/2 e'2*3/2 ~ e'2*4/2 d'4 \divisioMinima
e'2*3/2 ~ e'2*3/2 ~ e'2 ~ e'4 ~ e'2*5/2 ~ e'2*5/4 d'2 ~ d'2*5/4 ~ d'2*3/2 ~ d'2 ~ \divisioMaior
d'2*3/2 c'2*3/2 ~ c'2 d'2 b2 ~ b2 \finalis
}

tenorMusic = {
g2*3/2 ~ g2*3/4 ~ g2*4/2 fis2 a2 ~ a2*3/2 fis4 g4 ~ \divisioMinima
g2*3/2 ~ g2*3/2 ~ g2*3/2 ~ g2*5/2 ~ g2*5/4 ~ g2 fis2*5/4 a2*4/2 g4 \divisioMaior
a2*3/2 e2*3/2 fis2 a2 ~ a2*3/2 g4 \finalis
b4 a2 g2*3/2 fis2*4/2 a2 \divisioMinima
g2*4/2 e2 fis2*3/2 e2*3/2 a2*4/2 b2 \divisioMaior
d'2 ~ d'2 e'2*4/2 d'2*7/4 b2*3/2 a2*4/2 g2 fis2*3/2 \divisioMaxima
b2 ~ b2*4/2 e'2 ~ e'2 d'2*3/2 c'2*4/2 e'4 d'4 \divisioMaior
e'2 b2 c'2*9/4 b2 a2*3/2 g4 ~ \divisioMaior
g2 ~ g2 ~ g2*3/2 b2*3/2 ~ b2*3/2 fis2*4/2 ~ fis4 \divisioMinima
b2*3/2 a2*3/2 ~ a2 g4 ~ g2*5/2 ~ g2*5/4 ~ g2 fis2*5/4 a2*4/2 g4 \divisioMaior
e2*3/2 ~ e2*3/2 g2 a2 ~ a2 ~ a4 g4 \finalis
}

bassMusic = {
r2*3/2 e2*3/4 b,2*4/2 ~ b,2 ~ b,2 e2*3/2 ~ e2 \divisioMinima
g2*3/2 fis2*3/2 e2*3/2 d2*5/2 c2*5/4 b,2 ~ b,2*5/4 ~ b,2*4/2 c4 ~ \divisioMaior
c2*3/2 ~ c2*3/2 b,2 ~ b,2 e2*3/2 ~ e4 ~ \finalis
e4 ~ e2 ~ e2*3/2 ~ e2*4/2 ~ e2 \divisioMinima
b,2*4/2 ~ b,2 ~ b,2*3/2 c2*3/2 ~ c2*4/2 e2 ~ \divisioMaior
e2 fis2 ~ fis2*4/2 b2*7/4 b,2*3/2 ~ b,2*4/2 ~ b,2 ~ b,2*3/2 \divisioMaxima
e2 ~ e2*4/2 ~ e2 b2 ~ b2*3/2 ~ b2*4/2 ~ b2 \divisioMaior
e2 ~ e2 ~ e2*9/4 ~ e2 ~ e2*3/2 ~ e4 \divisioMaior
g2 fis2 e2*3/2 b,2*3/2 ~ b,2*3/2 ~ b,2*4/2 ~ b,4 \divisioMinima
c2*3/2 ~ c2*3/2 e2 ~ e4 d2*5/2 c2*5/4 b,2 ~ b,2*5/4 ~ b,2*4/2 c4 \divisioMaior
b,2*3/2 a,2*3/2 ~ a,2 b,2 e2 e,2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Alleluia"
        "1"
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
