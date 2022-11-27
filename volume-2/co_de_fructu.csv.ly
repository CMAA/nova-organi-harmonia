\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.193
%(volume.page)

global = {
 \key g \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"De fructu" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "De fructu"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "De fructu" }
    \line {}
  }
}

chantText = \lyricmode {
De fru -- ctu 
\set stanza = " * " ó -- pe -- rum tu -- ó -- rum, Dó -- mi -- ne, sa -- ti -- á -- bi -- tur ter -- ra: 
ut e -- dú -- cas pa -- nem de ter -- ra, 
et vi -- _ num læ -- tí -- _ fi -- cet cor hó -- mi -- nis: 
ut ex -- hí -- la -- ret fá -- ci -- em in ó -- le -- o, 
et pa -- nis cor hó -- mi -- nis con -- fír -- met. }

chantMusic = {
\tieDown   g'4 a'4 ( b'4) b'4  b'4 a'4 a'4 a'4 b'4 a'4 ( \once \tweak #'font-size #-4 g' ) a'4 g'4 g'4 ( fis'4) \divisioMinima
 g'4 a'4 ( b'4 a'4 \forceBreak
) b'4 a'4 g'4 ( \once \tweak #'font-size #-4 fis' ) g'4 ( a'\prall b'4 a'4 b'4) a'4 ( g'4) \divisioMaxima
 g'4 g'4 a'4 ( b'4) g'4 a'4 g'4 fis'4 g'4 ( a'4) g'4 \divisioMaior \forceBreak

 g'4  g'4 ( a'4) c''4 ( b'4 c''4) b'4 b'4 d''4 ( b'4) ~ b'4 ( a'4 b'4) g'4 g'4 ( a'4 b'4) g'4 ( fis'4) e'4 e'4 ( fis'4 g'4 fis'4 e'4 fis'4) fis'4 ( e'4) \divisioMaxima \forceBreak

 g'4 ( a'4 b'4) b'4  d''4 ( b'4 c''4) a'4 ( b'4 a'4 g'4 a'4) a'4 ( g'4) \divisioMinima
 g'4 ( a'4) g'4 g'4 g'4 ( e'4) fis'4 ( g'4) e'4 ( fis'4 e'4 d'4 e'4) e'4 ( d'4) \divisioMaior \forceBreak

 fis'4 ( \once \tweak #'font-size #-4 d' ) e'4 ( fis'4 g'4) a'4 ( g'4 a'4) g'4 ( fis'4) g'4  a'4 ( c''4) b'4 ( c''4 a'4 g'4) g'4 fis'4 ( \once \tweak #'font-size #-4 g' ) g'4 \finalis

}

altoMusic = {
r4 fis'2 g'4 fis'2*3/2 ~ fis'2 e'2 d'2 ~ d'2 ~ \divisioMinima
d'4 ~ d'2*3/2 ~ d'2 ~ d'2 e'2 ~ e'2*3/2 d'2 \divisioMaxima
e'2 ~ e'2*3/2 ~ e'2*3/2 d'2 ~ d'4 ~ \divisioMaior
d'4 ~ d'2 c'2*3/2 e'2 ~ e'4 d'2*5/2 ~ d'2*3/2 ~ d'2 ~ d'4 c'2 ~ c'2*4/2 b2 \divisioMaxima
d'2*4/2 g'2*3/2 ~ g'2 fis'2*3/2 d'2 ~ \divisioMinima
d'2 e'2 d'2 ~ d'2 c'2*3/2 ~ c'2 a2 \divisioMaior
d'2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'4 c'2 e'2 ~ e'2*3/2 d'2 ~ d'4 \finalis
}

tenorMusic = {
e'4 d'2 ~ d'4 ~ d'2*3/2 ~ d'4 b4 ~ b2 ~ b2 a2 ~ \divisioMinima
a4 ~ a2*3/2 g2 b2 ~ b2 c'2*3/2 ~ c'4 b4 ~ \divisioMaxima
b2 g2*3/2 c'2*3/2 d'2 g4 ~ \divisioMaior
g4 e2 ~ e2*3/2 g2 ~ g4 fis2*5/2 g2*3/2 a2 b4 ~ b2 a2*4/2 g2 ~ \divisioMaxima
g2*4/2 ~ g2*3/2 d'2 ~ d'2*3/2 b2 ~ \divisioMinima
b2 ~ b2 ~ b2 a2 g2*3/2 ~ g2 fis2 \divisioMaior
a2 g2*3/2 fis2*3/2 g2 e4 ~ e2 a2 ~ a2*3/2 ~ a2 b4 \finalis
}

bassMusic = {
r2*3/2 g4 d2*3/2 ~ d2 e2 b,2 d2 \divisioMinima
e4 fis2*3/2 g2 e2 c2 ~ c2*3/2 g2 \divisioMaxima
e2 d2*3/2 c2*3/2 b,2 ~ b,4 ~ \divisioMaior
b,4 ~ b,2 a,2*3/2 e2 b,4 ~ b,2*5/2 ~ b,2*3/2 ~ b,2 e4 ~ e2 ~ e2*4/2 ~ e2 \divisioMaxima
b,2*4/2 e2*3/2 d2 ~ d2*3/2 g2 \divisioMinima
fis2 e2 b,2 ~ b,2 ~ b,2*3/2 a,2 d2 ~ \divisioMaior
d2 ~ d2*3/2 ~ d2*3/2 b,2 ~ b,4 a,2 ~ a,2 c2*3/2 d2 g,4 \finalis
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
