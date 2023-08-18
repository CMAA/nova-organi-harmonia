\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.249
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"In salutari" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "In salutari"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "In salutari" }
    \line {}
  }
}

chantText = \lyricmode {
In sa -- lu -- tá -- ri tu -- o 
\set stanza = " * " á -- ni -- ma me -- a, 
et in ver -- bum tu -- um spe -- rá -- vi: 
quan -- do fá -- ci -- es de per -- se -- quén -- ti -- bus me ju -- dí -- ci -- um? 
in -- í -- qui per -- se -- cú -- ti sunt me, 
ád -- ju -- va -- me, Dó -- mi -- ne _ De -- us me -- us. }

chantMusic = {
\tieDown   e'4 e'4 ( g'4) g'4 ( fis'4) g'4 a'4 a'4 a'4 \divisioMinima
 fis'4 g'4 fis'4 ( g'4) e'4 ( fis'4 e'4) e'4 \divisioMaior \forceBreak

 d'4 e'4 g'4 g'4 ( \once \tweak #'font-size #-4 fis' ) a'4 ( b'4 a'4) b'4 a'4 ( b'4 a'4) g'4 ( a'4 b'4 a'4 g'4 a'4) a'4 ( g'4) \divisioMaxima
 b'4 b'4 b'4 a'4 ( b'4 \forceBreak
) b'4 b'4 b'4 a'4 b'4 a'4 g'4 ( fis'4) a'4 ( b'4) \divisioMinima
 g'4 ( fis'4) e'4 e'4 ( fis'\prall g'4 fis'4 e'4 fis'4) fis'4 ( e'4) \divisioMaxima
 g'4 a'4 ( b'4 \forceBreak
) b'4 b'4 b'4 b'4 ( d''4) b'4 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 \divisioMaior
 b'4 b'4 a'4 a'4 b'4 a'4 ( g'4) g'4 ( a'4 fis'4) ~ fis'4 ( e'4) \divisioMinima \forceBreak

 e'4 ( fis'\prall g'4 a'4 b'4) g'4 ( fis'4) e'4 ( fis'4 g'4 fis'4 e'4 fis'4) fis'4 ( e'4) \finalis

}

altoMusic = {
r4 b2 ~ b2 d'2 ~ d'2 ~ \divisioMinima
d'2 ~ d'2 b2*3/2 ~ b4 ~ \divisioMaior
b2 ~ b4 d'2 ~ d'2*4/2 ~ d'2*3/2 e'2 ~ e'2*4/2 d'2 \divisioMaxima
fis'2 e'4 ~ e'2 d'2*4/2 ~ d'2 ~ d'2 fis'2 \divisioMinima
e'2 d'4 c'2 ~ c'2*4/2 b2 \divisioMaxima
r4 d'2 ~ d'2*3/2 ~ d'2*3/2 e'2 d'4 ~ \divisioMaior
d'2*3/2 ~ d'2 c'2*4/2 b2*3/2 \divisioMinima
e'2*5/2 d'2 c'2 ~ c'2*4/2 b2 \finalis
}

tenorMusic = {
r4 g2 ~ g2 ~ g2 fis2 \divisioMinima
a2 ~ a2 ~ a2*3/2 g4 \divisioMaior
fis2 e4 b2 a2*4/2 b2*3/2 ~ b2 c'2*4/2 b2 ~ \divisioMaxima
b2 ~ b4 fis2 ~ fis2*4/2 g2 b2 ~ b2 ~ \divisioMinima
b2*3/2 ~ b2 a2*4/2 g2 \divisioMaxima
r4 fis2 ~ fis2*3/2 g2*3/2 ~ g2 ~ g4 ~ \divisioMaior
g2*3/2 e2 ~ e2*4/2 ~ e2*3/2 ~ \divisioMinima
e2*5/2 g2 ~ g2 a2*4/2 ~ a4 g4 \finalis
}

bassMusic = {
r4 r2 e2 d2 ~ d2 ~ \divisioMinima
d2 b,2 e2*3/2 ~ e4 ~ \divisioMaior
e2 ~ e4 ~ e2 fis2*4/2 g2*3/2 ~ g2 ~ g2*4/2 ~ g2 \divisioMaxima
d2 c4 ~ c2 b,2*4/2 ~ b,2 ~ b,2 d2 \divisioMinima
e2*3/2 ~ e2 ~ e2*4/2 ~ e2 \divisioMaxima
r4 d2 b,2*3/2 ~ b,2*3/2 c2 b,4 \divisioMaior
g,2*3/2 a,2 ~ a,2*4/2 g,2*3/2 \divisioMinima
c2*5/2 b,2 ~ b,2 g,2*4/2 e2 \finalis
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
