\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.168
%(volume.page)

global = {
 \key d \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Tanto tempore" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Tanto tempore"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Tanto tempore" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- ia. 
\set stanza = " * " _ _ _ _ _ 
_ _ _ _ ℣. 
Tan -- to tém -- po -- re _ _ vo -- bis -- cum sum, 
et non co -- gno -- ví -- stis me? _ _ _ 
Phi -- líp -- pe, qui vi -- det me, _ _ 
\set stanza = " * " 
vi -- det et Pa -- trem. _ _ _ _ _ _ 
_ _ _ _ }

chantMusic = {
\tieDown   d'4 d'4 ( e'4) e'4 ( fis'4) d'4 \divisioMinima
 e'4 ( d'4) e'4 ( g'4 fis'4 d'4.) ~ d'4 ( d'4) e'4 ( d'4) e'4 ( d'4) e'4 ( g'4 fis'4 d'4) \divisioMaior
 fis'4 ( a'4 g'4 fis'4 e'4 d'4) e'4 ( d'4.) e'4 ( g'4 fis'4 e'4 d'4) e'4 ( e'4 d'4) \finalis
 d'4 ( d'4 d'4) d'4 ( g'4) g'4 g'4 ( fis'4) e'4 ( d'4) e'4 ( fis'4 e'4) ~ e'4 ( d'4) \divisioMinima
 d'4 d'4 ( a'4) a'4 ( g'4 fis'4 g'4) g'4 ( fis'4) \divisioMaior
 d'4 d'4 fis'4 ( \once \tweak #'font-size #-4 e' ) g'4 g'4 ( fis'4) e'4 ( d'4) d'4. e'4 ( g'4 fis'4) g'4 ( a'4 g'4) ~ g'4 ( fis'4) \divisioMaxima
 d'4 ( g'4) g'4 g'4 ( fis'4) e'4 ( d'4) e'4 ( fis'4) e'4 ( \once \tweak #'font-size #-4 d' ) d'4. e'4 ( fis'4 e'4) ~ e'4 ( d'4) \divisioMaior
 d'4 ( d'4 d'4) d'4 e'4 ( fis'4) fis'4 fis'4 ( d'4) \divisioMinima
 e'4 ( d'4) e'4 ( g'4 fis'4 d'4.) ~ d'4 ( d'4) e'4 ( d'4) e'4 ( d'4) e'4 ( g'4 fis'4 d'4) \divisioMaior
 fis'4 ( a'4 g'4 fis'4 e'4 d'4) e'4 ( d'4.) e'4 ( g'4 fis'4 e'4 d'4) e'4 ( e'4 d'4) \finalis

}

altoMusic = {
r4 b2 c'2 d'4 \divisioMinima
r2 c'2*3/2 d'2*3/4 b2 ~ b2*4/2 c'2 d'4 ~ d'4 ~ \divisioMaior
d'2*5/2 ~ d'4 b2*5/4 c'2*5/2 a2 ~ a4 \finalis
r2 d'4 ~ d'2 ~ d'4 c'2 b2*4/2 a2*3/2 \divisioMinima
d'4 ~ d'2 ~ d'2*4/2 ~ d'2 \divisioMaior
r2 b2*3/2 d'2 r2 b2*3/4 ~ b2*3/2 ~ b2 d'2*3/2 ~ \divisioMaxima
d'2 ~ d'4 c'2 ~ c'2 a2*4/2 ~ a2*7/4 ~ a2*3/2 \divisioMaior
b2*3/2 ~ b4 ~ b2 d'4 ~ d'2 \divisioMinima
r2 c'2*3/2 b2*3/4 ~ b2 ~ b2*4/2 c'2 d'4 ~ d'4 ~ \divisioMaior
d'2*5/2 ~ d'4 b2*5/4 c'2*5/2 a2 ~ a4 \finalis
}

tenorMusic = {
r2*3/2 a2 b4 ~ \divisioMinima
b2 a2*3/2 g2*3/4 ~ g2 ~ g2*4/2 a2 ~ a2 ~ \divisioMaior
a2*6/2 fis2*5/4 g2*5/2 ~ g2 fis4 \finalis
d'2*3/2 c'2 b4 a2 g2*4/2 fis2*3/2 ~ \divisioMinima
fis4 e2 fis2*4/2 a2 ~ \divisioMaior
a2 g2*3/2 a2 ~ a2 g2*3/4 ~ g2*3/2 ~ g2 b2*3/2 \divisioMaxima
d2 e4 ~ e2 g2 ~ g2*4/2 ~ g2*7/4 fis2*3/2 \divisioMaior
g2*3/2 ~ g4 ~ g2 a4 ~ a2 \divisioMinima
b2 a2*3/2 g2*3/4 ~ g2 ~ g2*4/2 a2 ~ a2 ~ \divisioMaior
a2*6/2 fis2*5/4 g2*5/2 ~ g2 fis4 \finalis
}

bassMusic = {
r2*6/2 \divisioMinima
g2 ~ g2*3/2 ~ g2*3/4 fis2 e2*4/2 ~ e2 fis2 \divisioMaior
b,2*6/2 ~ b,2*5/4 a,2*5/2 d2 ~ d4 \finalis
r2*15/2 \divisioMinima
d4 ~ d2 ~ d2*4/2 ~ d2 \divisioMaior
fis2 e2*3/2 d2 fis2 g2*3/4 fis2*3/2 e2 b,2*3/2 ~ \divisioMaxima
b,2 ~ b,4 a,2 ~ a,2 ~ a,2*4/2 d2*7/4 ~ d2*3/2 \divisioMaior
r2*3/2 fis4 e2 d4 fis2 \divisioMinima
g2 ~ g2*3/2 ~ g2*3/4 fis2 e2*4/2 ~ e2 fis2 \divisioMaior
b,2*6/2 ~ b,2*5/4 a,2*5/2 d2 ~ d4 \finalis
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
        "VIII"
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
