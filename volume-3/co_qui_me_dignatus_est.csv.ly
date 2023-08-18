\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.78
%(volume.page)

global = {
 \key g \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Qui me dignatus est" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Qui me dignatus est"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Qui me dignatus est" }
    \line {}
  }
}

chantText = \lyricmode {
Qui me di -- gná -- tus est 
\set stanza = " * " ab o -- mni pla -- ga cu -- rá -- re, 
et ma -- míl -- lam me -- am me -- o pé -- cto -- ri re -- sti -- tú -- e -- re, 
i -- psum ín -- vo -- co _ De -- _ um vi -- vum. }

chantMusic = {
\tieDown   e'4 g'4 ( g'4) g'4 a'4 ( b'4 a'4 b'4) a'4 g'4 ( a'4 g'4 e'4) \divisioMinima
 e'4 g'4 ( \once \tweak #'font-size #-4 a' ) a'4 a'4 ( b'4) g'4 g'4 ( g'4) g'4 ( a'4 e'4 fis'\prall g'4 fis'4 e'4 d'4 e'4) e'4 ( d'4) \divisioMaior
 g'4 g'4 g'4 ( \once \tweak #'font-size #-4 a' ) g'4 g'4 ( a'4) g'4 \divisioMinima
 g'4 g'4 a'4 g'4 g'4 ( fis'4) a'4  c''4 ( a'4 b'\prall c''4) g'4 g'4 ( a'4 g'4) g'4 \divisioMaxima
 b'4 a'4 b'4 ( cis''\prall d''4) a'4 ( g'4) g'4 ( a'4 g'4 g'4) e'4 ( fis'4 e'4) \divisioMinima
 e'4 ( g'4) a'4 ( b'4) g'4 ( g'4) g'4 ( a'4 g'4) g'4 \finalis

}

altoMusic = {
e'4 ~ e'2*3/2 ~ e'2*4/2 ~ e'4 d'2*4/2 \divisioMinima
c'4 ~ c'2*3/2 d'2*3/2 e'2 b2 ~ b2*7/2 e'4 d'4 ~ \divisioMaior
d'2 e'2*3/2 ~ e'2*3/2 \divisioMinima
b2 d'2 ~ d'2 ~ d'4 e'2*4/2 d'4 c'2*3/2 b4 \divisioMaxima
d'2 ~ d'2*3/2 ~ d'2 ~ d'2*4/2 b2*3/2 \divisioMinima
e'2*4/2 d'2 c'2*3/2 b4 \finalis
}

tenorMusic = {
r4 e'2*3/2 d'2*4/2 c'4 b2*4/2 \divisioMinima
a4 ~ a2*3/2 ~ a2*3/2 b2 a2 g2*7/2 a2 \divisioMaior
b2 ~ b2*3/2 ~ b2*3/2 \divisioMinima
e2 ~ e2 a2 g4 ~ g2*4/2 ~ g4 ~ g2*3/2 ~ g4 \divisioMaxima
fis2 ~ fis2*3/2 ~ fis2 g2*4/2 ~ g2*3/2 ~ \divisioMinima
g2*4/2 ~ g2 ~ g2*3/2 ~ g4 \finalis
}

bassMusic = {
r2*13/2 \divisioMinima
r4 g2*3/2 fis2*3/2 e2 ~ e2 ~ e2*7/2 fis2 \divisioMaior
g2 fis2*3/2 e2*3/2 ~ \divisioMinima
e2 d2 ~ d2 ~ d4 c2*4/2 b,4 a,2*3/2 e4 \divisioMaxima
d2 c2*3/2 b,2 ~ b,2*4/2 e2*3/2 \divisioMinima
c2*4/2 b,2 a,2*3/2 g,4 \finalis
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
        "VI"
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
