\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.38
%(volume.page)

global = {
 \key d \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"In die resurrectionis" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "In die resurrectionis"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "In die resurrectionis" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- _ _ _ ia, 
\set stanza = " * " al -- le -- lú -- _ _ _ ia. _ _ 
_ _ _ _ _ _ ℣. 
In di -- e _ _ re -- sur -- re -- cti -- ó -- nis me -- æ, di -- cit Dó -- mi -- _ nus, 
præ -- _ _ cé -- _ _ _ _ _ dam vos 
\set stanza = " * " 
in Ga -- li -- lǽ -- _ _ _ am. _ _ 
_ _ _ _ _ _ }

chantMusic = {
\tieDown   d'4 d'4 d'4 ( e'4.) c'4 ( e'4) g'4 ( fis'4 e'4) g'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( d'4) \divisioMinima
 d'4 d'4 d'4 ( e'4.) c'4 ( e'4) g'4 ( fis'4 e'4 \forceBreak
) g'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( d'4) \divisioMinima
 e'4 ( fis'4 g'4 fis'4 e'4 d'4.) c'4 ( e'4 fis'4 e'4 d'4) \divisioMaior
 c'4 ( d'4 e'4.) fis'4 ( g'4 fis'4 e'4 d'4.) c'4 ( e'4 fis'4 e'4 d'4.) e'4 ( fis'4 e'4 \forceBreak
) fis'4 ( d'4) e'4 ( e'4 d'4) \finalis
 d'4 ( a'4) a'4 a'4 ( g'4) ~ g'4 ( e'4) g'4 ( a'4 d'4) \divisioMinima
 c'4 e'4 ( fis'\prall g'4) g'4 ( fis'4) e'4 ( d'4) e'4 ( fis'4) e'4 \forceBreak
 d'4 ( e'4 d'4) d'4 \divisioMinima
 c'4 ( b4) c'4 ( d'4) d'4 d'4 ( e'4) g'4 ( e'4 fis'4) e'4 ( d'4) \divisioMaxima
 a'4 c''4 ( b'4) c''4 ( d''4 c''4 b'4 a'4) a'4 c''4 ( b'4 \forceBreak
) c''4 ( d''4 c''4 b'4 a'4.) g'4 ( c''4) ~ c''4 ( b'4 g'4) a'4 ( g'4 e'4) g'4 ( \once \tweak #'font-size #-4 a' ) a'4 \divisioMaxima
 d'4 d'4 d'4 d'4 ( e'4.) c'4 ( e'4) g'4 ( fis'4 e'4) g'4 ( a'4) a'4 ( d'4) \divisioMinima \forceBreak

 e'4 ( fis'4 g'4 fis'4 e'4 d'4.) c'4 ( e'4 fis'4 e'4 d'4) \divisioMaior
 c'4 ( d'4 e'4.) fis'4 ( g'4 fis'4 e'4 d'4.) c'4 ( e'4 fis'4 e'4 d'4.) e'4 ( fis'4 e'4) fis'4 ( d'4) e'4 ( e'4 d'4) \finalis

}

altoMusic = {
b2 ~ b2*5/4 c'2 b2*3/2 d'2 ~ d'2 \divisioMinima
b2 ~ b2*5/4 c'2*5/2 d'2 ~ d'2 ~ \divisioMinima
d'2*5/2 ~ d'2*3/4 c'2 a2 ~ a4 \divisioMaior
c'2*7/4 d'2*4/2 ~ d'2*3/4 c'2 b2*7/4 a2*3/2 b2 a2 ~ a4 \finalis
d'2 ~ d'2 e'2 ~ e'4 d'2 ~ d'4 \divisioMinima
c'4 ~ c'2*3/2 b2 ~ b2 ~ b2*3/2 a2*3/2 ~ a4 ~ \divisioMinima
a2*4/2 ~ a4 b2 ~ b2*3/2 a2 \divisioMaxima
e'2*3/2 ~ e'2*5/2 g'2*3/2 ~ g'2*11/4 ~ g'2*5/2 e'2*3/2 ~ e'2 d'4 \divisioMaxima
b2*3/2 ~ b2*5/4 c'2 b2*3/2 d'2 ~ d'2 ~ \divisioMinima
d'2*5/2 ~ d'2*3/4 c'2 a2 ~ a4 \divisioMaior
c'2*7/4 d'2*4/2 ~ d'2*3/4 c'2 b2*7/4 a2*3/2 b2 a2 ~ a4 \finalis
}

tenorMusic = {
g2 ~ g2*5/4 ~ g2 ~ g2*3/2 e2 fis2 \divisioMinima
r2 g2*5/4 ~ g2*5/2 ~ g2 fis2 \divisioMinima
g2*13/4 ~ g2 ~ g2 fis4 \divisioMaior
g2*7/4 ~ g2*11/4 ~ g2 ~ g2*7/4 a2*3/2 g2 ~ g2 fis4 \finalis
a2 b2 ~ b2*3/2 ~ b2*3/2 ~ \divisioMinima
b4 a2*3/2 ~ a2 g2 ~ g2*3/2 ~ g2*3/2 fis4 \divisioMinima
g2*4/2 a4 g2 ~ g2*3/2 a2 \divisioMaxima
r4 e2 a2*5/2 ~ a4 g2 e'2*11/4 c'2*5/2 b2*3/2 e2 fis4 \divisioMaxima
g2*3/2 ~ g2*5/4 ~ g2 ~ g2*3/2 e2 fis2 \divisioMinima
g2*13/4 ~ g2 ~ g2 fis4 \divisioMaior
g2*7/4 ~ g2*11/4 ~ g2 ~ g2*7/4 a2*3/2 g2 ~ g2 fis4 \finalis
}

bassMusic = {
r2 fis2*5/4 e2 ~ e2*3/2 d2 ~ d2 \divisioMinima
g,2 ~ g,2*5/4 a,2*5/2 b,2 d2 \divisioMinima
b,2*13/4 a,2 d2 ~ d4 \divisioMaior
e2*7/4 b,2*11/4 a,2 g,2*7/4 fis,2*3/2 g,2 d2 ~ d4 \finalis
fis2 ~ fis2 e2*3/2 b2*3/2 \divisioMinima
r4 r2*3/2 e2 ~ e2 d2*3/2 ~ d2*3/2 ~ d4 \divisioMinima
e2*4/2 fis4 ~ fis2 e2*3/2 fis2 \divisioMaxima
c4 ~ c2 ~ c2*5/2 e2*3/2 ~ e2*11/4 ~ e2*5/2 ~ e2*3/2 d2 ~ d4 \divisioMaxima
r2*3/2 fis2*5/4 e2 ~ e2*3/2 d2 ~ d2 \divisioMinima
b,2*13/4 a,2 d2 ~ d4 \divisioMaior
e2*7/4 b,2*11/4 a,2 g,2*7/4 fis,2*3/2 g,2 d2 ~ d4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Alleluia"
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
