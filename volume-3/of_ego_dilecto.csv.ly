\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.16
%(volume.page)

global = {
 \key e \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Ego dilecto" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Ego dilecto"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Ego dilecto" }
    \line {}
  }
}

chantText = \lyricmode {
E -- go _ _ _ _ 
\set stanza = " * " di -- lé -- cto me -- _ _ o, 
et di -- lé -- ctus me -- _ us mi -- hi, _ 
qui pá -- _ sci -- tur in -- _ ter lí -- li -- a. _ _ _ _ _ _ }

chantMusic = {
\tieDown   c''4 ( c''4) a'4 ( b'\prall c''4) d''4 ( c''4 c''4) ~ c''4 ( a'4) ~ a'4 ( g'4.) b'4 ( d''4 b'4) \divisioMinima
 e'4 ( g'4 e'4) g'4 ( a'4) g'4 a'4 ( b'4 a'4) ~ a'4 ( g'4) a'4 ( b'\prall c''4 b'4 c''4) c''4 ( b'4) \divisioMaior
 c''4 b'4 ( d''4 c''4) c''4 ( c''4 c''4) a'4 ( g'4) g'4 ( b'4 a'4) ~ a'4 ( g'4) g'4 ( f'4) f'4 f'4 ( g'4 f'4 f'4) d'4 ( e'4 d'4) \divisioMaxima
 g'4 a'4 ( g'4) a'4 ( b'\prall c''4 b'4) c''4 c''4 c''4 ( c''4) ~ c''4 ( c''4) g'4 a'4 ( f'4) g'4 g'4 ( c''4 a'4 g'4 f'4) \divisioMinima
 f'4 ( f'4 f'4) a'4 ( g'4 f'4 e'4) f'4 ( e'4.) g'4 ( f'4) g'4 ( f'4) ~ f'4 ( e'4) \finalis

}

altoMusic = {
e'2 ~ e'2*3/2 ~ e'2*3/2 g'2 e'2*5/4 ~ e'2*3/2 \divisioMinima
c'2*3/2 ~ c'2*3/2 ~ c'2 d'2*3/2 e'2 ~ e'2*3/2 ~ e'2 ~ \divisioMaior
e'4 ~ e'2*3/2 ~ e'2*3/2 ~ e'2 ~ e'2 ~ e'2*3/2 c'2*3/2 ~ c'2*4/2 a2*3/2 \divisioMaxima
c'4 ~ c'2 ~ c'2*6/2 ~ c'2 ~ c'2*3/2 ~ c'2 ~ c'4 ~ c'2 ~ c'2*3/2 ~ \divisioMinima
c'2*3/2 ~ c'2*4/2 ~ c'2*5/4 ~ c'2*3/2 ~ c'2*3/2 \finalis
}

tenorMusic = {
c'2 b2*3/2 a2*3/2 ~ a2 b2*5/4 g2*3/2 ~ \divisioMinima
g2*3/2 e2*3/2 ~ e2 ~ e2*3/2 ~ e2 a2*3/2 g2 ~ \divisioMaior
g4 ~ g2*3/2 a2*3/2 b2 c'2 b2*3/2 a2*3/2 ~ a2*4/2 g2 f4 \divisioMaxima
e4 ~ e2 ~ e2*6/2 f2 e2*3/2 d2 e4 ~ e2 f2*3/2 \divisioMinima
a2*3/2 f2*4/2 g2*5/4 a2*3/2 g2*3/2 \finalis
}

bassMusic = {
r2*8/2 e2 ~ e2*5/4 d2*3/2 \divisioMinima
c2*3/2 ~ c2*3/2 a,2 b,2*3/2 c2 ~ c2*3/2 e2 \divisioMaior
c4 a,2*3/2 c2*3/2 ~ c2 ~ c2 e2*3/2 ~ e2*3/2 d2*4/2 ~ d2*3/2 \divisioMaxima
c4 b,2 a,2*6/2 ~ a,2 c2*3/2 ~ c2 ~ c4 a,2 ~ a,2*3/2 ~ \divisioMinima
a,2*3/2 ~ a,2*4/2 ~ a,2*5/4 ~ a,2*3/2 c2*3/2 \finalis
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
        "III"
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
