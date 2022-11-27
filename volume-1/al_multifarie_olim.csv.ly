\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.86
%(volume.page)

global = {
 \key d \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Multifarie olim" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Multifarie olim"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Multifarie olim" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ _ _ lú -- _ _ ia, 
\set stanza = " * " al -- le -- _ _ _ lú -- _ _ ia. _ _ 
_ _ _ _ _ _ _ _ _ _ _ _ _ _ ℣ 
Mul -- ti -- _ _ _ fá -- _ ri -- e o -- _ lim 
De -- _ us lo -- quens in pro -- phé -- _ _ tis, 
no -- vís -- si -- me di -- é -- _ _ bus i -- _ _ stis 
lo -- cú -- tus est no -- _ _ _ _ _ _ bis 
in Fí -- li -- o _ _ _ 
\set stanza = " * " su -- _ _ o. _ _ 
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   d'4 ( e'4) d'4. c'4 ( e'4) g'4 ( d'4) e'4 ( d'4) c'4 ( e'4) g'4 ( fis'4 e'4) a'4 ( b'4) a'4 \divisioMinima
  d'4 ( e'4) d'4. c'4 ( e'4) g'4 ( d'4) e'4 ( d'4 \forceBreak
) c'4 ( e'4) g'4 ( fis'4 e'4) a'4 ( b'4) a'4 \divisioMinima
 a'4 ( g'4 fis'4 d'4) e'4 ( c'4 d'4) \divisioMaior
 d'4 ( a'4) b'4 ( a'4) b'4 ( a'4) b'4 ( a'4 g'4) a'4 ( b'4 d'4.) e'4 ( d'4 c'4) d'4 ( e'4 \forceBreak
) g'4 ( fis'4 e'4) fis'4 ( e'4 d'4) d'4 b4 \divisioMinima
 d'4 ( e'4) g'4. b'4 ( a'4 g'4 fis'4.) d'4 ( g'4 e'4) fis'4 ( e'4) ~ e'4 ( d'4) \finalis
 d'4 ( e'4) d'4. c'4 ( e'4) g'4 ( d'4) e'4 ( d'4 \forceBreak
) c'4 ( e'4) g'4 ( fis'4 e'4) a'4 b'4 ( a'4) a'4 \divisioMinima
 a'4 ( g'4 fis'4 d'4) e'4 ( c'4 d'4) d'4 \divisioMaior
 a'4 ( b'4) c''4 ( d''4 c''4 b'4 a'4 b'4) a'4 \divisioMinima
 a'4 ( b'4) a'4 \forceBreak
 a'4 ( b'4) g'4 ( a'4) a'4 ( c''4 d''4 c''4 a'4) c''4 ( b'4 a'4.) d''4 ( e''4 c''4 b'4 a'4) a'4 ( b'4 g'4 a'4) \divisioMaxima
 a'4 ( g'4) b'4 c''4 ( b'4) a'4 \divisioMinima
 a'4 \forceBreak
 a'4 ( g'4) c''4 ( c''4) d''4 ( c''4 a'4 b'4) a'4 g'4 ( a'4) c''4 ( b'4 a'4) c''4 ( c''4 a'4) a'4 \divisioMaxima
 d'4 ( e'4) e'4 ( a'4 b'4) a'4 a'4 \forceBreak
 b'4 ( a'4) b'4 ( b'4) ~ b'4 ( a'4) b'4 ( b'4) ~ b'4 ( g'4) \divisioMinima
 a'4 ( b'4 c''4 d''4 b'4 a'4.) g'4 ( c''4 b'4 a'4 b'4) b'4 ( a'4) \divisioMaior
 d'4 ( \once \tweak #'font-size #-4 c' ) d'4 ( e'4 d'4) c'4 ( d'4 \forceBreak
) d'4. c'4 ( e'4) g'4 ( d'4) e'4 ( d'4)  c'4 ( e'4) g'4 ( fis'4 e'4) a'4 ( b'4) a'4 \divisioMinima
 a'4 ( g'4 fis'4 d'4) e'4 ( c'4 d'4) \divisioMaior
 d'4 ( a'4) b'4 ( a'4) b'4 ( a'4 \forceBreak
) b'4 ( a'4 g'4) a'4 ( b'4 d'4.) e'4 ( d'4 c'4) d'4 ( e'4) g'4 ( fis'4 e'4) fis'4 ( e'4 d'4) ~ d'4 ( b4) \divisioMinima
 d'4 ( e'4) g'4. b'4 ( a'4 g'4 fis'4.) d'4 ( g'4 e'4) fis'4 ( e'4) ~ e'4 ( d'4) \finalis

}

altoMusic = {
r2 b2*3/4 c'2 b2*4/2 c'2 b2*3/2 d'2 ~ d'4 b2 a2*3/4 c'2 d'2*4/2 c'2 b2*3/2 d'2 ~ d'4 ~ \divisioMinima
d'2 ~ d'2 c'2 r4 \divisioMaior
d'2*6/2 ~ d'2*3/2 ~ d'2*7/4 c'2*5/2 d'2*5/2 ~ d'4 r2 \divisioMinima
d'2 b2*3/4 ~ b2 d'2*5/4 b2 a2 ~ a2 ~ a4 \finalis
r2 b2*3/4 c'2 b2*4/2 c'2 b2 e'2 ~ e'2 ~ e'4 \divisioMinima
d'2*4/2 a2*3/2 ~ a4 \divisioMaior
fis'2 g'2*3/2 fis'2*4/2 \divisioMinima
d'2*5/2 ~ d'2 e'2*5/2 ~ e'2*7/4 g'2 ~ g'2*3/2 ~ g'2 ~ g'4 fis'4 \divisioMaxima
e'2*3/2 ~ e'2 ~ e'4 ~ \divisioMinima
e'4 d'2 e'2 ~ e'2 d'2*3/2 g'2 ~ g'2*3/2 e'2*3/2 d'4 ~ \divisioMaxima
d'2 e'2*3/2 d'2 ~ d'2 ~ d'2 e'2 ~ e'2 ~ e'2 ~ \divisioMinima
e'2*3/2 d'2*7/4 c'2*5/2 d'2 ~ \divisioMaior
d'2 b2*3/2 a2 ~ a2*3/4 c'2 d'2*3/2 ~ d'4 c'2 d'2*3/2 ~ d'2 ~ d'4 ~ \divisioMinima
d'2*3/2 ~ d'4 c'2*3/2 \divisioMaior
d'2*4/2 ~ d'2 ~ d'2*3/2 ~ d'2*7/4 c'2*5/2 d'2*5/2 ~ d'4 r2 \divisioMinima
d'2 b2*3/4 ~ b2 d'2*5/4 b2 a2 ~ a2 ~ a4 \finalis
}

tenorMusic = {
r2 b2*3/4 a2 g2*4/2 ~ g2 ~ g2*3/2 ~ g2 fis4 r2*7/4 a2 g2*4/2 ~ g2 ~ g2*3/2 ~ g2 fis4 \divisioMinima
b2 a2 g2 fis4 \divisioMaior
a2*4/2 g2 ~ g2*3/2 ~ g2*7/4 ~ g2*5/2 ~ g2*5/2 fis2*3/2 \divisioMinima
a2 ~ a2*3/4 g2 a2*5/4 g2 ~ g2 ~ g2 fis4 \finalis
r2 b'2*3/4 a2 g2*4/2 ~ g2*6/2 ~ g2 ~ g4 ~ \divisioMinima
g2*4/2 ~ g2*3/2 fis4 \divisioMaior
d'2 e'2*3/2 d'2*4/2 ~ \divisioMinima
d'2*3/2 b2 ~ b2 c'2*5/2 a2*7/4 g2 c'2*3/2 d'2*3/2 ~ d'4 \divisioMaxima
b2 d'4 ~ d'2 c'4 ~ \divisioMinima
c'4 b2 a2 ~ a2 ~ a2*3/2 b2 g2*3/2 ~ g2*3/2 fis4 \divisioMaxima
b2 ~ b2*5/2 g2 ~ g2 fis2 g2 ~ g2 ~ \divisioMinima
g2*3/2 ~ g2*7/4 ~ g2*5/2 fis2 \divisioMaior
g2 ~ g2*3/2 ~ g2 fis2*3/4 g2 ~ g2*4/2 ~ g2 ~ g2*3/2 ~ g2 fis4 \divisioMinima
b2*4/2 a2*3/2 ~ \divisioMaior
a2*4/2 g2 ~ g2*3/2 ~ g2*7/4 ~ g2*5/2 ~ g2*5/2 fis2*3/2 \divisioMinima
a2 ~ a2*3/4 g2 a2*5/4 g2 ~ g2 ~ g2 fis4 \finalis
}

bassMusic = {
r2 g2*3/4 ~ g2 ~ g2*4/2 e2 ~ e2*3/2 d2 ~ d4 g,2 a,2*3/4 ~ a,2 b,2*4/2 e2 ~ e2*3/2 d2 ~ d4 \divisioMinima
b,2 ~ b,2 d2 ~ d4 \divisioMaior
fis2*4/2 ~ fis2 e2*3/2 b,2*7/4 a,2*5/2 b,2*5/2 ~ b,2*3/2 ~ \divisioMinima
b,2 e2*3/4 ~ e2 d2*5/4 e2 c2 d2 ~ d4 \finalis
r2 g2*3/4 ~ g2 ~ g2*4/2 e2*6/2 d2 c4 \divisioMinima
b,2*4/2 d2*3/2 ~ d4 ~ \divisioMaior
d2*5/2 ~ d2*4/2 \divisioMinima
fis2*3/2 ~ fis2 e2 c2*5/2 ~ c2*7/4 e2 ~ e2*3/2 d2*3/2 ~ d4 \divisioMaxima
e2 ~ e4 a2 ~ a4 ~ \divisioMinima
a4 ~ a2 ~ a2 g2 fis2*3/2 e2 ~ e2*3/2 d2*3/2 ~ d4 \divisioMaxima
g2 fis2*5/2 ~ fis2 e2 ~ e2 ~ e2 d2 \divisioMinima
c2*3/2 b,2*7/4 a,2*5/2 d2 \divisioMaior
e2 ~ e2*3/2 g2 r2*3/4 e2 b,2*4/2 a,2 b,2*3/2 d2 ~ d4 \divisioMinima
r2*4/2 g2*3/2 \divisioMaior
fis2*4/2 ~ fis2 e2*3/2 b,2*7/4 a,2*5/2 b,2*5/2 ~ b,2*3/2 ~ \divisioMinima
b,2 e2*3/4 ~ e2 d2*5/4 e2 c2 d2 ~ d4 \finalis
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
