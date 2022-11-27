\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.70
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Psalite Domino" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Psalite Domino"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Psalite Domino" }
    \line {}
  }
}

chantText = \lyricmode {
Psál -- li -- te Dó -- mi -- _ no, 
\set stanza = " * " 
qui as -- cén -- dit su -- _ per cœ -- los cœ -- ló -- rum ad _ O -- ri -- én -- tem, 
al -- le -- _ _ _ _ _ lú -- ia. }

chantMusic = {
\tieDown   e'4 d'4 e'4 ( g'4 fis'4) g'4 ( a'4) a'4 ( g'4 fis'4) g'4 ( fis'4 e'4 fis'4) fis'4 ( e'4) \divisioMaior
 g'4 a'4 ( b'4) b'4 ( a'4 \once \tweak #'font-size #-4 b' ) b'4 \divisioMinima \forceBreak

 b'4 ( cis''\prall d''4 cis''4) d''4 ( e''4 d''4) b'4 ( \once \tweak #'font-size #-4 g' )  a'4 ( c''4 b'4 a'4) b'4 ( a'4) fis'4 ( g'4)  a'4 ( c''4 b'4 a'4) b'4 ( a'4) \divisioMinima
 g'4 ( a'4 fis'4) ~ fis'4 ( e'4) e'4 ( fis'\prall g'4 a'4 b'4 \forceBreak
) g'4 ( fis'4) e'4 ( \once \tweak #'font-size #-4 fis' ) d'4 \divisioMaior
 g'4 ( \once \tweak #'font-size #-4 a' ) fis'4 ( e'4) g'4 ( b'4.) a'4 ( b'4 a'4.) fis'4 ( g'4 a'4) b'4 ( g'4) a'4 ( g'4 fis'4) e'4 ( fis'\prall g'4 fis'4 g'4) fis'4 ( e'4) \finalis

}

altoMusic = {
a2 b2*3/2 ~ b2 ~ b2*3/2 ~ b2*4/2 ~ b2 \divisioMaior
d'2*3/2 e'2*3/2 ~ e'4 \divisioMinima
g'2*4/2 a'2*3/2 g'2 e'2*4/2 d'2 ~ d'2 c'2*4/2 d'2 ~ \divisioMinima
d'2 b2*3/2 ~ b2 d'2*3/2 c'2 a2 ~ a4 \divisioMaior
b2 ~ b2 ~ b2*5/4 d'2*7/4 ~ d'2*3/2 ~ d'2 ~ d'2*3/2 ~ d'2 ~ d'2*3/2 b2 \finalis
}

tenorMusic = {
fis2 g2*3/2 ~ g2 fis2*3/2 a2*4/2 ~ a4 g4 ~ \divisioMaior
g2*3/2 fis2*3/2 ~ fis4 \divisioMinima
e2*4/2 fis2*3/2 g2 ~ g2*4/2 a2 ~ a2 g2*4/2 fis2 \divisioMinima
a2 ~ a2*3/2 g2 ~ g2*3/2 ~ g2 ~ g2 fis4 \divisioMaior
r2 a2 g2*5/4 fis2*7/4 a2*3/2 g2 b2*3/2 ~ b2 a2*3/2 ~ a4 g4 \finalis
}

bassMusic = {
r2*5/2 e2 d2*3/2 ~ d2*4/2 e2 \divisioMaior
b,2*3/2 c2*3/2 d4 \divisioMinima
r2*13/2 fis2 e2 ~ e2*4/2 fis2 \divisioMinima
d2 e2*3/2 ~ e2 b,2*3/2 a,2 d2 ~ d4 \divisioMaior
e2 ~ e2 ~ e2*5/4 fis2*7/4 ~ fis2*3/2 g2 r2*3/2 b,2 ~ b,2*3/2 e2 \finalis
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
