\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.126
%(volume.page)

global = {
 \key e \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Ego autem cantabo" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Ego autem cantabo"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Ego autem cantabo" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- _ _ _ ia, _ 
\set stanza = " * " al -- le -- lú -- _ _ _ ia. _ _ _ _ ℣. 
E -- go _ au -- tem can -- tá -- _ _ bo 
for -- _ ti -- tú -- _ di -- nem tu -- am: 
et ex -- sul -- tá -- _ _ _ _ bo ma -- _ _ _ ne _ _ 
mi -- se -- ri -- cór -- _ _ di -- am 
\set stanza = " * " tu -- _ _ _ am. _ _ _ _ }

chantMusic = {
\tieDown   d'4 ( e'4) e'4 g'4 ( e'4) g'4 ( g'4) a'4 ( g'4) ~ g'4 ( a'4) a'4 ( b'4 g'4) ~ g'4 ( d'4) \divisioMinima
  d'4 ( e'4) e'4 g'4 ( e'4) g'4 ( g'4) a'4 ( g'4) ~ g'4 ( a'4) a'4 ( b'4 g'4) ~ g'4 ( d'4) \divisioMinima
 g'4 ( g'4) ~ g'4 ( b'4) d''4 ( a'4 g'4 fis'4 e'4 fis'\prall g'4 e'4) \finalis
 d'4 ( e'4) e'4 g'4 ( fis'4 g'4) e'4 ( a'4 g'4 fis'4 g'4) g'4 ( fis'4) e'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4 a'4 g'4 g'4) fis'4 ( g'4 a'4 g'4 fis'4) g'4 ( a'4) a'4 \divisioMaior
 b'4 ( a'4) b'4 ( c''4 a'4) g'4 g'4 ( b'4 a'4) g'4 ( g'4 e'4) e'4 e'4 ( fis'4 d'4 e'4) e'4 ( fis'\prall g'4 fis'4 g'4) fis'4 ( e'4) \divisioMaxima
 fis'4 d'4 e'4 g'4 ( b'4 a'4 g'4 g'4) e'4 ( a'4 g'4 fis'4 d'4 e'4.) g'4 ( e'4) g'4 ( e'4) g'4 ( d'4) d'4 \divisioMinima
 d'4 ( fis'4 e'4 d'4 e'4) g'4 ( g'4) ~ g'4 ( e'4.) a'4 ( b'4 g'4 g'4) fis'4 ( e'4) fis'4 ( e'4 d'4) e'4 ( d'4) \divisioMaior
 e'4 ( c'4) d'4 e'4 e'4 ( a'4 g'4) a'4 ( g'4) ~ g'4 ( \once \tweak #'font-size #-4 d' ) d'4 ( e'4) e'4 \divisioMinima
 g'4 ( e'4) g'4 ( g'4) a'4 ( g'4) ~ g'4 ( a'4) a'4 ( b'4 g'4) ~ g'4 ( d'4) \divisioMinima
 g'4 ( g'4) ~ g'4 ( b'4) d''4 ( a'4 g'4 fis'4 e'4 fis'\prall g'4 e'4) \finalis

}

altoMusic = {
r2 e'4 ~ e'2 d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'2 ~ d'4 b2*3/2 c'2 d'2*3/2 e'2*3/2 c'2 d'2 ~ d'4 \divisioMinima
e'2 d'2 ~ d'2*4/2 b2*4/2 ~ \finalis
b2 ~ b4 ~ b2*3/2 ~ b2*5/2 ~ b2 ~ b2 d'2*3/2 ~ d'2 ~ d'2*5/2 ~ d'2 ~ d'4 ~ \divisioMaior
d'2 c'2*4/2 d'2*3/2 e'2 ~ e'4 b4 ~ b2*4/2 c'2*5/2 b2 \divisioMaxima
r2*3/2 b2*5/2 ~ b2*5/2 ~ b2*3/4 ~ b2 c'2 d'4 ~ d'4 ~ d'4 ~ \divisioMinima
d'2*5/2 ~ d'2 c'2*5/4 d'2*4/2 ~ d'2 a2*3/2 ~ a2 \divisioMaior
c'2*4/2 ~ c'2*4/2 d'2 \tiny d' \normalsize4 c'2 ~ c'4 ~ \divisioMinima
c'2 d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'2*3/2 \divisioMinima
e'2 d'2 ~ d'2*4/2 b2*4/2 \finalis
}

tenorMusic = {
d'2*3/2 c'2 b2*3/2 ~ b2*3/2 a2 b2*3/2 g2*3/2 ~ g2 ~ g2*3/2 ~ g2*3/2 ~ g2 ~ g2*3/2 ~ \divisioMinima
g2 ~ g2 a2*4/2 g2*4/2 \finalis
b2 a4 g2*3/2 ~ g2*5/2 ~ g2 fis2 ~ fis2*3/2 g2 a2*5/2 e2 fis4 \divisioMaior
g2 ~ g2*4/2 ~ g2*3/2 ~ g2*3/2 ~ g4 a2*4/2 ~ a2*5/2 ~ a4 g4 \divisioMaxima
r4 a2 g2*5/2 fis2*5/2 g2*3/4 e2 ~ e2 d2 g4 \divisioMinima
a2*5/2 g2 ~ g2*5/4 ~ g2*4/2 a2 g2*3/2 fis2 \divisioMaior
g2*4/2 ~ g2*4/2 ~ g2*3/2 ~ g2 ~ g4 \divisioMinima
e2 d2*3/2 e2*3/2 fis2 g2*3/2 ~ \divisioMinima
g2 ~ g2 a2*4/2 g2*4/2 \finalis
}

bassMusic = {
r2*8/2 a2*3/2 g2 ~ g2*3/2 g,2*3/2 a,2 b,2*3/2 c2*3/2 a,2 b,2*3/2 \divisioMinima
c2 b,2 ~ b,2*4/2 e2*4/2 \finalis
r2*6/2 fis2*5/2 e2 ~ e2 d2*3/2 ~ d2 ~ d2*5/2 ~ d2 ~ d4 \divisioMaior
b,2 a,2*4/2 b,2*3/2 c2*3/2 e4 ~ e2*4/2 ~ e2*5/2 ~ e2 \divisioMaxima
r4 fis2 e2*5/2 ~ e2*5/2 ~ e2*3/4 d2 c2 b,2 ~ b,4 ~ \divisioMinima
b,2*5/2 ~ b,2 a,2*5/4 b,2*4/2 d2 ~ d2*3/2 ~ d2 \divisioMaior
c2*4/2 a,2*4/2 b,2*3/2 c2 a,4 ~ \divisioMinima
a,2 b,2*3/2 ~ b,2*3/2 ~ b,2 ~ b,2*3/2 \divisioMinima
c2 b,2 ~ b,2*4/2 e2*4/2 \finalis
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
        "II"
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
