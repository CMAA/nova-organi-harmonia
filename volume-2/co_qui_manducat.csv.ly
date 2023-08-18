\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.175
%(volume.page)

global = {
 \key g \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Qui manducat" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Qui manducat"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Qui manducat" }
    \line {}
  }
}

chantText = \lyricmode {
Qui man -- dú -- cat 
\set stanza = " * " car -- nem me -- _ am, 
et bi -- bit sán -- gui -- nem me -- _ um, 
in me ma -- net, 
et e -- _ go in e -- o, 
di -- _ _ _ cit Dó -- mi -- nus. }

chantMusic = {
\tieDown   d'4 e'4 g'4 ( g'4) g'4  g'4 g'4 a'4 ( g'4) b'4 ( a'4 g'4) g'4 \divisioMaior
 g'4 g'4 ( a'4 b'4) b'4 ( a'4 \forceBreak
) b'4 ( d''4) d''4 d''4 d''4 ( b'4) d''4 ( cis''4 b'4) b'4 \divisioMaior
 b'4 ( \once \tweak #'font-size #-4 a' ) b'4 ( cis''\prall d''4) a'4 ( b'4 a'4 g'4 a'4) a'4 ( g'4) \divisioMaxima \forceBreak

 e'4 e'4 g'4 ( g'4 g'4) e'4 ( d'4) g'4 ( e'4 g'4) a'4 ( g'4 a'4) a'4 \divisioMaior
  c''4 ( c''4 b'4) c''4 ( b'4 a'4) b'4 ( a'4.) b'4 ( g'4 g'4) g'4 g'4 g'4 ( a'4 g'4) g'4 \finalis

}

altoMusic = {
b2 ~ b2*3/2 e'2 ~ e'2 ~ e'2*3/2 d'4 ~ \divisioMaior
d'4 e'2*3/2 g'2 fis'2 ~ fis'2 g'2 a'2*3/2 fis'4 \divisioMaior
e'2 d'2*3/2 ~ d'2*5/2 b2 \divisioMaxima
c'2 d'2*3/2 e'4 d'4 ~ d'2*3/2 ~ d'2*3/2 c'4 e'2*3/2 ~ e'2*3/2 d'2*5/4 ~ d'2*3/2 ~ d'4 c'4 ~ c'2*3/2 b4 \finalis
}

tenorMusic = {
g2 ~ g2*3/2 b2 c'2 g2*3/2 ~ g4 \divisioMaior
b4 ~ b2*3/2 ~ b2 ~ b2 ~ b2 ~ b2 a2*3/2 b4 \divisioMaior
fis2 ~ fis2*3/2 ~ fis2*5/2 g2 ~ \divisioMaxima
g2 ~ g2*3/2 ~ g2 e2*3/2 ~ e2*3/2 ~ e4 a2*3/2 g2*3/2 fis2*5/4 g2*3/2 e2 d2*3/2 ~ d4 \finalis
}

bassMusic = {
r2 e2*3/2 d2 c2 ~ c2*3/2 b,4 ~ \divisioMaior
b,4 e2*3/2 ~ e2 d2 b,2 e2 fis2*3/2 d4 \divisioMaior
c2 b,2*3/2 d2*5/2 e2 ~ \divisioMaxima
e2 b,2*3/2 c2 b,2*3/2 a,2*3/2 ~ a,4 ~ a,2*3/2 ~ a,2*3/2 d2*5/4 b,2*3/2 c2 g,2*3/2 ~ g,4 \finalis
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
