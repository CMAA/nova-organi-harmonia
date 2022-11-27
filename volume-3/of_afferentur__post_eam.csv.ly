\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.77
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Afferentur... post eam" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Afferentur... post eam"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Afferentur... post eam" }
    \line {}
  }
}

chantText = \lyricmode {
Af -- fe -- rén -- tur _ 
\set stanza = " * " re -- gi _ _ 
vír -- _ gi -- nes post e -- am: 
pró -- _ _ xi -- mæ _ e -- jus _ 
af -- fe -- rén -- _ _ _ tur ti -- bi. _ _ }

chantMusic = {
\tieDown   d'4 e'4 g'4 g'4 ( g'4 g'4) e'4 ( fis'4 e'4)  g'4 ( a'4) g'4 ( fis'4) g'4 ( a'4) ~ a'4 ( g'4) \divisioMaior
 g'4 ( a'4 g'4) ~ g'4 ( fis'4) e'4 ( fis'4 g'4 fis'4 e'4 fis'4) fis'4 ( e'4) e'4 ( a'4) a'4 ( g'4) g'4 \divisioMaxima
 b'4 ( g'4) a'4 ( b'4) d''4 ( d''4 b'4) a'4 g'4 ( a'4) ~ a'4 ( g'4) e'4 ( fis'\prall g'4 fis'4 e'4) e'4 ( d'4) e'4 ( fis'4 e'4) \divisioMaior
 d'4 e'4 g'4 ( g'4 e'4.) g'4 ( a'4 g'4) a'4 ( fis'4) g'4 ( a'4 e'4) e'4 ( d'4 \once \tweak #'font-size #-4 e' ) e'4 e'4 ( d'4) e'4 g'4 ( g'4 g'4 d'4.) g'4 ( fis'4 e'4 fis'\prall g'4 e'4) \finalis

}

altoMusic = {
d'2 ~ d'4 c'2*3/2 b2*3/2 d'2 ~ d'2*3/2 ~ d'2*3/2 ~ \divisioMaior
d'2 c'2*3/2 b2*6/2 ~ b2 c'2 d'2 ~ d'4 \divisioMaxima
e'2 ~ e'2 d'2*3/2 ~ d'2 e'2*3/2 b2*5/2 ~ b2 ~ b2*3/2 \divisioMaior
a2 b2*7/4 d'2*3/2 ~ d'2 ~ d'2*3/2 b2*3/2 ~ b4 ~ b2*3/2 d'2*3/2 ~ d'2*3/4 b2 ~ b2*4/2 \finalis
}

tenorMusic = {
r2 b4 a2*3/2 g2*3/2 ~ g2 a2*3/2 b2*3/2 ~ \divisioMaior
b2 a2*3/2 ~ a2*6/2 g2 a2 c'2 b4 ~ \divisioMaxima
b2 a2 ~ a2*3/2 b2 ~ b2*3/2 a2*5/2 fis2 g2*3/2 \divisioMaior
fis2 g2*7/4 ~ g2*3/2 fis2 e2*3/2 fis2*3/2 g4 a2*3/2 b2*3/2 a2*3/4 ~ a2 g2*4/2 \finalis
}

bassMusic = {
r2*9/2 b,2 ~ b,2*3/2 ~ b,2*3/2 \divisioMaior
e2 ~ e2*3/2 ~ e2*6/2 ~ e2 g2 ~ g2 ~ g4 ~ \divisioMaxima
g2 ~ g2 fis2*3/2 ~ fis2 e2*3/2 ~ e2*5/2 ~ e2 ~ e2*3/2 \divisioMaior
fis2 e2*7/4 d2*3/2 ~ d2 b,2*3/2 ~ b,2*3/2 ~ b,4 ~ b,2*3/2 ~ b,2*3/2 ~ b,2*3/4 e2 ~ e2*4/2 \finalis
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
