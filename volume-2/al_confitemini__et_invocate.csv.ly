\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.235
%(volume.page)

global = {
 \key e \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Confitemini... et invocate" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Confitemini... et invocate"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Confitemini... et invocate" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- _ _ _ ia, _ 
\set stanza = " * " al -- le -- lú -- _ _ _ ia. _ _ _ ℣. 
Con -- fi -- té -- mi -- ni _ _ Dó -- _ _ _ mi -- no, _ 
et in -- vo -- cá -- _ _ te no -- men e -- jus: 
an -- nun -- ti -- á -- _ _ _ _ te in -- ter gen -- _ _ _ tes _ _ 
\set stanza = " * " 
ó -- pe -- ra e -- _ _ _ jus. _ _ _ _ }

chantMusic = {
\tieDown   d'4 ( e'4) e'4 g'4 ( e'4) g'4 ( g'4) a'4 ( g'4) ~ g'4 ( a'4) a'4 ( b'4 g'4) ~ g'4 ( d'4) \divisioMinima
 d'4 ( e'4) e'4 g'4 ( e'4) g'4 ( g'4) a'4 ( g'4) ~ g'4 ( a'4 \forceBreak
) a'4 ( b'4 g'4) g'4 d'4 \divisioMinima
 g'4 ( g'4) ~ g'4 ( b'4) d''4 ( a'4 g'4 fis'4 e'4 fis'\prall g'4 e'4) \finalis
 e'4 g'4 ( g'4) a'4 g'4 g'4 ( b'4 a'4) g'4 ( g'4) e'4 ( fis'4 e'4) \divisioMinima \forceBreak

 g'4 ( e'4) g'4 ( g'4) a'4 ( g'4) ~ g'4 ( a'4) e'4 d'4 e'4 ( d'4 \divisioMaior
) e'4 ( c'4) d'4 e'4 e'4 ( a'4 g'4) a'4 ( fis'4) g'4 ( e'4) d'4 ( e'4 d'4) \divisioMinima \forceBreak

 e'4 e'4 ( fis'4 d'4 e'4) e'4 ( fis'\prall g'4 fis'4 g'4) fis'4 ( e'4) \divisioMaxima
 fis'4 d'4 e'4 g'4 ( b'4 a'4 g'4 g'4) e'4 ( a'4 g'4 fis'4 d'4 e'4. \forceBreak
) g'4 ( e'4) g'4 ( e'4) g'4 ( d'4) d'4 \divisioMinima
 d'4 d'4 d'4 ( fis'4 e'4 d'4 e'4) g'4 ( g'4) ~ g'4 ( e'4) a'4 ( b'4 g'4 g'4) fis'4 ( e'4) fis'4 ( e'4 d'4) e'4 ( d'4) \divisioMaior \forceBreak

 e'4 ( c'4) d'4 e'4 g'4 ( e'4) g'4 ( g'4) a'4 ( g'4) ~ g'4 ( a'4) a'4 ( b'4 g'4) ~ g'4 ( d'4) \divisioMinima
 g'4 ( g'4) ~ g'4 ( b'4) d''4 ( a'4 g'4 fis'4 e'4 fis'\prall g'4 e'4) \finalis

}

altoMusic = {
b2*3/2 ~ b2 ~ b2*3/2 ~ b2*3/2 e'2 d'2 ~ d'4 \divisioMinima
b2*3/2 ~ b2 ~ b2*3/2 c'2*3/2 e'2 d'2*3/2 ~ \divisioMinima
d'2 ~ d'2 ~ d'2 ~ d'2 b2*3/2 ~ b4 \finalis
e'4 ~ e'2 ~ e'2 d'2*3/2 ~ d'2 r2*3/2 \divisioMinima
r2 d'2*3/2 c'2*4/2 b2*3/2 \divisioMaior
r2*3/2 e'4 ~ e'2*3/2 d'2 ~ d'2 a2*3/2 ~ \divisioMinima
a4 b2*4/2 c'2 ~ c'2*3/2 b2 \divisioMaxima
d'2*3/2 ~ d'2*5/2 b2 ~ b2*9/4 ~ b2 c2 d'2*3/2 ~ \divisioMinima
d'4 r2*6/2 b2 ~ b2 d'2 ~ d'2 ~ d'2 a2*3/2 ~ a2 \divisioMaior
c'2*4/2 d'2 c'2*3/2 b2*3/2 e'2 d'2*3/2 ~ \divisioMinima
d'2 ~ d'2 ~ d'2 ~ d'2 b2*3/2 ~ b4 \finalis
}

tenorMusic = {
g2*3/2 ~ g2 ~ g2*3/2 e2*3/2 g2 ~ g2*3/2 ~ \divisioMinima
g2*3/2 fis2 e2*3/2 ~ e2*3/2 ~ e2 g2*3/2 ~ \divisioMinima
g2 b2 a2 ~ a2 ~ a2*3/2 g4 \finalis
r2*8/2 b2 ~ b2*3/2 \divisioMinima
e2 ~ e2*3/2 ~ e2*4/2 fis2*3/2 \divisioMaior
g2*4/2 ~ g2*3/2 fis2 e2 fis2*3/2 ~ \divisioMinima
fis4 ~ fis2*4/2 g2 a2*3/2 g2 \divisioMaxima
a2*3/2 g2*5/2 ~ g2 a2*9/4 g2 ~ g2 ~ g2*3/2 \divisioMinima
fis2 a2*5/2 ~ a2 g2 fis2 e2 d2 g2*3/2 fis2 \divisioMaior
g2*4/2 e2 ~ e2*3/2 ~ e2*3/2 g2 ~ g2*3/2 ~ \divisioMinima
g2 b2 a2 ~ a2 ~ a2*3/2 g4 \finalis
}

bassMusic = {
r2*3/2 fis2 e2*3/2 d2*3/2 c2 b,2*3/2 \divisioMinima
g,2*3/2 ~ g,2 ~ g,2*3/2 a,2*3/2 c2 b,2*3/2 \divisioMinima
e2 ~ e2 fis2 d2 e2*3/2 ~ e4 \finalis
r2*3/2 c'2 ~ c'2*3/2 b2 g2*3/2 \divisioMinima
r2 b,2*3/2 a,2*4/2 b,2*3/2 \divisioMaior
c2*4/2 d2*3/2 ~ d2 ~ d2 ~ d2*3/2 ~ \divisioMinima
d4 b,2*4/2 ~ b,2 a2*3/2 e2 \divisioMaxima
d2*3/2 b,2*5/2 e2 ~ e2*9/4 ~ e2 a,2 b,2*3/2 ~ \divisioMinima
b,2 ~ b,2*5/2 e2 ~ e2 d2 ~ d2 ~ d2 ~ d2*3/2 ~ d2 \divisioMaior
c2*4/2 b,2 a,2*3/2 d2*3/2 c2 b,2*3/2 \divisioMinima
e2 ~ e2 fis2 d2 e2*3/2 ~ e4 \finalis
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
