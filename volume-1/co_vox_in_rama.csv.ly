\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.77
%(volume.page)

global = {
 \key d \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Vox in Rama" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Vox in Rama"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Vox in Rama" }
    \line {}
  }
}

chantText = \lyricmode {
Vox in Ra -- ma 
\set stanza = " * " au -- dí -- ta est, 
pló -- ra -- tus et u -- lu -- lá -- tus: 
Ra -- chel plo -- rans fí -- li -- os su -- os, 
nó -- lu -- it con -- _ so -- lá -- ri, 
qui -- _ _ a non sunt. }

chantMusic = {
\tieDown  a'4 ( a'4) g'4 g'4 ( a'4) a'4  a'4 ( \once \tweak #'font-size #-4 g' ) a'4 ( b'4) b'4 a'4 \divisioMaior
 a'4 a'4 ( a'4 g'4) fis'4 g'4 a'4 fis'4 ( g'4 \forceBreak
) fis'4 ( g'4) fis'4 \divisioMaxima
 a'4 a'4 ( g'4 a'\prall b'4 a'4) fis'4 ( a'4 fis'4 g'4) g'4 ( fis'4) a'4 g'4 fis'4 ( g'4) e'4 ( fis'4 d'4) d'4 \divisioMaxima
 fis'4 ( fis'4 g'4) e'4 ( fis'\prall g'4 \forceBreak
) g'4 ( d'4) g'4 ( g'4) ~ g'4 ( \once \tweak #'font-size #-4 e' ) g'4 g'4 ( a'4) fis'4 \divisioMaior
 a'4 ( a'4 g'4) a'4 ( g'4 fis'4) g'4 ( e'4 fis'\prall g'4 a'4) fis'4 d'4 ( e'4 \once \tweak #'font-size #-4 d' ) d'4 \finalis

}

altoMusic = {
d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'2 ~ d'2 ~ \divisioMaior
d'4 b2*6/2 d'2 ~ d'2*3/2 ~ \divisioMaxima
d'2*6/2 ~ d'2*4/2 ~ d'2 ~ d'2 ~ d'2 a2*3/2 ~ a4 \divisioMaxima
c'2*3/2 ~ c'2*3/2 d'2 c'2 b2*3/2 d'2 ~ d'4 ~ \divisioMaior
d'2*3/2 ~ d'2*3/2 ~ d'2*6/2 a2*3/2 ~ a4 \finalis
}

tenorMusic = {
fis2*3/2 g2*3/2 e2 g2 fis2 ~ \divisioMaior
fis4 g2*6/2 a2 b2*3/2 \divisioMaxima
fis4 g2*5/2 a2*4/2 fis2 ~ fis2 a2 g2*3/2 fis4 \divisioMaxima
a2*3/2 g2*3/2 ~ g2 ~ g2 ~ g2*3/2 ~ g2 a4 \divisioMaior
fis2*3/2 g2*3/2 a2*6/2 g2*3/2 fis4 \finalis
}

bassMusic = {
d2*3/2 b,2*3/2 d2 ~ d2 ~ d2 ~ \divisioMaior
d4 e2*6/2 b,2 ~ b,2*3/2 ~ \divisioMaxima
b,2*6/2 ~ b,2*4/2 d2 ~ d2 ~ d2 ~ d2*3/2 ~ d4 \divisioMaxima
a,2*3/2 ~ a,2*3/2 b,2 e2 ~ e2*3/2 d2 ~ d4 ~ \divisioMaior
d2*3/2 ~ d2*3/2 ~ d2*6/2 ~ d2*3/2 ~ d4 \finalis
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
        "VII"
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
