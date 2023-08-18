\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.246
%(volume.page)

global = {
 \key e \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Qui biberit" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Qui biberit"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Qui biberit" }
    \line {}
  }
}

chantText = \lyricmode {
Qui bí -- be -- rit a -- quam, 
\set stanza = " * " quam e -- go da -- _ _ bo e -- i, 
di -- cit _ _ Dó -- mi -- nus, 
fi -- et in e -- o fons a -- quæ sa -- li -- én -- _ _ tis 
in vi -- _ tam æ -- _ tér -- nam. }

chantMusic = {
\tieDown   e'4 g'4 f'4 e'4 g'4 ( a'4) f'4 ( g'4 f'4 f'4) \divisioMinima
 e'4 g'4 ( a'4 b'4) a'4 a'4 ( g'4) a'4 ( b'\prall c''4 b'4 \forceBreak
) c''4 ( d''4 c''4) a'4 g'4 ( f'4 g'\prall a'4 g'4 a'4) a'4 ( g'4) \divisioMaior
 a'4  g'4 ( bes'4 a'4 g'4) a'4 ( f'4) ~ f'4 ( e'4) e'4 e'4 ( g'4 f'4 f'4) e'4 ( e'4 f'4) \divisioMaxima \forceBreak

 d'4 ( g'4 a'4 b'4) a'4 a'4 a'4 a'4 ( g'4) \divisioMinima
 a'4 ( b'\prall c''4) g'4 ( a'4 g'4) e'4 ( f'4 e'4 f'4) d'4 e'4  g'4 ( a'4) c''4 ( a'4 g'4 f'4 g'\prall a'4 \forceBreak
) bes'4 ( a'4 g'4) a'4 ( g'4) \divisioMaior
 g'4 g'4 ( e'4) f'4 ( g'\prall a'4) a'4  a'4 ( bes'4 g'4 f'4) g'4 ( a'4 g'4) e'4 ( g'4 f'4 f'4) f'4 ( e'4) \finalis

}

altoMusic = {
r4 e'2*3/2 ~ e'2 d'2*4/2 ~ \divisioMinima
d'4 e'2*4/2 ~ e'2 ~ e'2*4/2 ~ e'2*4/2 d'2*6/2 e'2 ~ \divisioMaior
e'4 f'2*5/2 d'2*3/2 c'4 ~ c'2*4/2 ~ c'2*3/2 \divisioMaxima
d'2*4/2 ~ d'2 e'4 ~ e'2 ~ \divisioMinima
e'2*3/2 ~ e'2*3/2 c'2*4/2 d'2 c'2 ~ c'2*3/2 d'2*3/2 ~ d'2*3/2 c'2 ~ \divisioMaior
c'4 d'2*5/2 ~ d'4 c'2*4/2 ~ c'2*3/2 ~ c'2*4/2 ~ c'2 \finalis
}

tenorMusic = {
r4 g2*3/2 c'2 a2*4/2 ~ \divisioMinima
a4 c'2*4/2 b2 a2*4/2 ~ a2*4/2 ~ a2*6/2 c'2 ~ \divisioMaior
c'4 bes2*5/2 a2*3/2 ~ a4 ~ a2*4/2 f2*3/2 \divisioMaxima
d2*4/2 e2 ~ e4 a2 \divisioMinima
b2*3/2 a2*3/2 g2*4/2 ~ g2 ~ g2 f2*3/2 ~ f2*3/2 g2*3/2 e2 ~ \divisioMaior
e4 g2*5/2 f4 ~ f2*4/2 e2*3/2 g2*4/2 a2 \finalis
}

bassMusic = {
c4 ~ c2*3/2 ~ c2 d2*4/2 ~ \divisioMinima
d4 c2*4/2 ~ c2 ~ c2*4/2 a,2*4/2 d2*6/2 c2 ~ \divisioMaior
c4 d2*5/2 ~ d2*3/2 ~ d4 a,2*4/2 ~ a,2*3/2 \divisioMaxima
b,2*4/2 ~ b,2 c4 ~ c2 ~ \divisioMinima
c2*3/2 ~ c2*3/2 ~ c2*4/2 b,2 a,2 ~ a,2*3/2 bes,2*3/2 b,2*3/2 c2 ~ \divisioMaior
c4 bes,2*5/2 b,4 a,2*4/2 ~ a,2*3/2 ~ a,2*4/2 ~ a,2 \finalis
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
