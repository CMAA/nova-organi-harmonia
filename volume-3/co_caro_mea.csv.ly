\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.466 (II addenum pp11)
%(volume.page)

global = {
 \key e \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Caro mea" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Caro mea"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Caro mea" }
    \line {}
  }
}

chantText = \lyricmode {
Ca -- ro me -- a 
\set stanza = " * " ve -- _ re est ci -- bus, 
et san -- guis me -- _ us ve -- re est po -- tus. 
Qui man -- dú -- cat me -- am car -- nem et bi -- bit me -- um sán -- gui -- _ nem, _ 
in me ma -- net et e -- go in il -- lo. }

chantMusic = {
\tieDown   d'4 d'4 ( e'\prall f'4) c'4 e'4 d'4 d'4 \divisioMinima
 d'4 f'4 ( g'4) g'4 ( a'4) a'4 g'4 ( a'4 e'4) e'4 \divisioMaior
 e'4 e'4 ( g'4 a'4 b'4) a'4 a'4 ( c''4) ~ c''4 ( a'4) a'4 ( g'4) g'4 f'4 ( g'4 a'4) g'4 ( a'4 f'4) e'4 ( g'4 f'4 f'4) f'4 ( e'4) \divisioMaxima
 e'4 e'4 g'4 a'4 b'4 ( a'4) a'4 ( b'\prall c''4) a'4 ( b'4 a'4 g'4 a'4) a'4 ( g'4) \divisioMinima
 g'4 a'4 ( g'4) g'4 ( f'4) g'4 ( a'4) f'4 e'4 e'4 ( f'4 g'4 f'4 e'4) f'4 ( e'4 d'4) f'4 ( d'4) e'4 ( f'4 e'4 f'4) \divisioMaior
 d'4 e'4 g'4 ( a'4) g'4 \divisioMinima
 g'4 g'4 g'4 ( d'4 e'\prall f'4) f'4 e'4 ( g'4 f'4 f'4) f'4 ( e'4) \finalis

}

altoMusic = {
r4 a2*3/2 ~ a2*3/2 ~ a4 ~ \divisioMinima
a4 c'2 ~ c'2*3/2 b2*3/2 c'4 ~ \divisioMaior
c'4 e'2 ~ e'2*3/2 g'2*4/2 e'2*3/2 c'2*3/2 ~ c'2*3/2 ~ c'2*4/2 ~ c'2 \divisioMaxima
r2 e'2 ~ e'2 ~ e'2*3/2 d'2*5/2 ~ d'2 ~ \divisioMinima
d'4 e'2 ~ e'2 d'2*3/2 ~ d'4 c'2*5/2 b2*3/2 c'2 ~ c'2*3/2 ~ c'4 ~ \divisioMaior
c'2 ~ c'2*3/2 ~ \divisioMinima
c'4 ~ c'4 ~ c'2*5/2 ~ c'2 b2 c'2 \finalis
}

tenorMusic = {
r4 f2*3/2 e2*3/2 f4 ~ \divisioMinima
f4 ~ f2 e2*3/2 d2*3/2 a4 ~ \divisioMaior
a4 b2 d'2*3/2 c'2*4/2 b2*3/2 a2*3/2 ~ a2*3/2 ~ a2*4/2 ~ a2 \divisioMaxima
c'2 d'2 ~ d'2 c'2*3/2 ~ c'2*5/2 b2 ~ \divisioMinima
b4 ~ b2 a2 ~ a2*3/2 ~ a4 ~ a2*5/2 ~ a2*3/2 ~ a2 g2*3/2 f4 ~ \divisioMaior
f2 e2*3/2 ~ \divisioMinima
e4 d4 f2*5/2 g2 ~ g2 a2 \finalis
}

bassMusic = {
d4 ~ d2*3/2 ~ d2*3/2 ~ d4 ~ \divisioMinima
d4 a,2 ~ a,2*3/2 ~ a,2*3/2 ~ a,4 ~ \divisioMaior
a,4 e2 ~ e2*3/2 ~ e2*4/2 ~ e2*3/2 ~ e2*3/2 f2*3/2 g2*4/2 a2 \divisioMaxima
r2 b2 a2 ~ a2*3/2 g2*5/2 ~ g2 ~ \divisioMinima
g4 c2 ~ c2 d2*3/2 a,4 ~ a,2*5/2 ~ a,2*3/2 ~ a,2 ~ a,2*3/2 ~ a,4 ~ \divisioMaior
a,2 ~ a,2*3/2 ~ \divisioMinima
a,4 ~ a,4 ~ a,2*5/2 ~ a,2 ~ a,2 ~ a,2 \finalis
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
