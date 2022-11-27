\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.217
%(volume.page)

global = {
 \key d \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Salvum fac populum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Salvum fac populum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Salvum fac populum" }
    \line {}
  }
}

chantText = \lyricmode {
Sal -- _ _ vum _ fac 
\set stanza = " * " 
pó -- pu -- lum tu -- um, Dó -- mi -- ne: _ _ _ _ _ _ _ _ _ 
et _ bé -- ne -- dic _ _ _ _ _ _ _ _ _ _ 
hæ -- re -- di -- tá -- _ ti _ _ tu -- _ _ _ _ _ æ. _ _ _ _ _ _ _ _ ℣. 
Ad te Dó -- mi -- ne cla -- má -- _ vi: _ _ 
De -- us me -- us, _ _ _ ne sí -- _ le -- as _ a me, _ 
et e -- ro sí -- mi -- lis _ _ 
de -- scen -- dén -- _ _ _ _ _ _ _ ti -- bus _ _ _ _ 
\set stanza = " * " 
in la -- cum. _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   d'4 ( e'4 c'4) e'4 ( g'4 e'4) g'4 ( a'4 g'4) g'4 ( g'4) ~ g'4 ( e'4 d'4 c'4 d'\prall e'4 d'4 e'4) e'4 ( d'4) \divisioMaior
 d'4 d'4 ( g'4 fis'4) g'4 \forceBreak
 a'4 ( g'4 a'4) g'4 \divisioMinima
 a'4 ( b'4 a'4 b'4) a'4 ( g'4) g'4. fis'4 ( g'4 a'4) ~ a'4 ( g'4 a'4 a'4) \divisioMinima
 g'4 ( a'4) c''4 ( c''4) ~ c''4 ( a'4) c''4 ( c''4 b'4 a'4) b'4 ( g'4.) a'4 ( g'4 fis'4 \forceBreak
) g'4 ( fis'4) \divisioMaxima
 d'4 ( g'4 a'4) c''4 ( b'4 c''4) a'4 ( g'4 a'\prall b'4) a'4 ( g'4 a'4) a'4 ( fis'4) g'4 ( e'4 d'4) e'4 ( e'4 d'4) e'4 ( e'4) \divisioMinima
 d'4 ( e'4) g'4 ( g'4) ~ g'4 ( e'4 \forceBreak
) g'4 ( g'4 fis'4 e'4) g'4 ( d'4.) e'4 ( d'4 c'4) d'4 ( c'4) \divisioMaior
 c'4 d'4 e'4 g'4 ( a'4) c''4 ( b'4 a'4) a'4 ( fis'4) g'4 ( b'4 a'4 g'4) ~ g'4 ( d'4) e'4. \divisioMinima \forceBreak

 g'4. fis'4 ( a'4 g'4.) e'4 g'4 ( g'4 e'4 c'4) e'4 ( e'4) d'4 g'4 ( g'4 d'4) fis'4 ( e'4 d'4) g'4 ( e'4) g'4 ( g'4 e'4) a'4 ( g'4 fis'4 d'4) \divisioMinima
 e'4 ( fis'\prall g'4 fis'4) a'4 ( g'4 \forceBreak
) ~ g'4 ( g'4) ~ g'4 ( e'4 d'4) e'4 ( fis'4 e'4) ~ e'4 ( d'4) \finalis
 d'4 ( g'4) g'4 ( a'4 b'\prall c''4) c''4 ( d''4 c''4 a'4) a'4 ( g'4) g'4 ( g'4) \divisioMinima
 g'4 a'4 ( g'4) a'4 ( b'\prall c''4 b'4 a'4 g'4 \forceBreak
) g'4 ( a'4 g'4 fis'4) g'4 ( fis'4 e'4 d'4) e'4 ( d'4) \divisioMaxima
 e'4 g'4 g'4 g'4 ( g'4) ~ g'4 ( e'4) g'4 ( e'4) ~ e'4 ( c'4) \divisioMinima
 e'4 g'4 ( fis'4) g'4 ( a'4) e'4 \forceBreak
 e'4 ( fis'\prall g'4 fis'4 e'4 d'4) e'4 ( fis'4 e'4) c'4 c'4 ( e'4 fis'\prall g'4) g'4 fis'4 e'4 d'4 e'4 ( d'4) \divisioMaxima
 d'4 ( g'4) g'4 ( a'4 b'4) g'4 ( fis'4) g'4 ( a'4) a'4 \forceBreak
 a'4 ( c''4 a'4 b'\prall c''4) ~ c''4 ( b'4 a'4) b'4 ( a'4) \divisioMaior
 a'4 ( c''4 b'4 a'4) a'4 a'4 ( fis'4) g'4 ( a'4) c''4 ( c''4 a'4 g'4) a'4 ( b'4 g'4 e'4) g'4. ~ g'4 ( g'4) ~ g'4 ( e'4 d'4 c'4) \divisioMinima \forceBreak

 e'4 ( c'4) d'4 ( e'4 fis'\prall g'4 a'4) g'4 g'4 ( g'4) ~ g'4 ( e'4 c'4) e'4 ( e'4) d'4 g'4 ( g'4 d'4) fis'4 ( e'4 d'4) \divisioMaior
 d'4 ( e'4) d'4 ( e'4 fis'\prall g'4 a'4) a'4 ( b'4 a'4 g'4) ~ g'4 ( fis'4) g'4. \divisioMinima \forceBreak

 a'4 ( b'4 a'4 g'4) ~ g'4 ( fis'4) a'4. c''4 ( c''4) ~ c''4 ( g'4) a'4 ( b'4 a'4 fis'4.) g'4 ( a'4 fis'4) g'4 ( e'4 d'4) e'4 ( fis'4 e'4) ~ e'4 ( d'4) \finalis

}

altoMusic = {
r2*3/2 b2*3/2 e'2*3/2 d'2 ~ d'2*3/2 c'2*5/2 a2 \divisioMaior
d'2*5/2 ~ d'2*3/2 ~ d'4 \divisioMinima
e'2*4/2 ~ e'2 ~ e'2*7/4 ~ e'2*5/2 ~ \divisioMinima
e'2 ~ e'2 ~ e'2 ~ e'2*4/2 ~ e'2*5/4 d'2*3/2 ~ d'2 ~ \divisioMaxima
d'4 ~ d'2 c'2*3/2 d'2*4/2 e'2*3/2 ~ e'2 b2*3/2 ~ b2*3/2 ~ b2 ~ \divisioMinima
b2 ~ b2 ~ b2 a2*4/2 d'2*5/4 r2*5/2 \divisioMaior
c'2*3/2 e'2 ~ e'2*3/2 ~ e'2 ~ e'2*3/2 d'2*3/2 c'2*3/4 \divisioMinima
d'2*6/2 c'2*3/2 ~ c'4 b2*3/2 d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'2*3/2 ~ d'2*3/2 ~ d'4 \divisioMinima
e'2*4/2 ~ e'2 d'2 c'2*3/2 ~ c'2 a2 c'4 \finalis
d'2 e'2*4/2 ~ e'2*4/2 d'2 e'2 \divisioMinima
d'4 ~ d'2 e'2*6/2 ~ e'2*4/2 ~ e'2 ~ e'4 r2*3/2 \divisioMaxima
b2 ~ b4 ~ b2 ~ b2*3/2 a2*3/2 ~ \divisioMinima
a4 d'2*5/2 c'2*6/2 ~ c'2*4/2 ~ c'2*3/2 d'2*5/2 b2 \divisioMaxima
d'2 ~ d'4 ~ d'2*4/2 ~ d'2*3/2 e'2 ~ e'2 ~ e'2*4/2 d'2 \divisioMaior
e'2*4/2 ~ e'4 d'2 ~ d'2 e'2*4/2 d'2*4/2 ~ d'2*3/4 b2 c2*4/2 \divisioMinima
c'2 d'2*6/2 ~ d'2 c'2*3/2 ~ c'2*3/2 d'2*3/2 ~ d'2*5/2 ~ d'2*5/2 e'2*3/2 ~ e'2*3/2 ~ e'2*3/4 ~ \divisioMinima
e'2*6/2 ~ e'2*3/4 ~ e'2 ~ e'2 d'2*9/4 ~ d'2*3/2 c'2*3/2 ~ c'2 a2 ~ a4 \finalis
}

tenorMusic = {
g2*3/2 ~ g2*3/2 ~ g2*3/2 ~ g2 ~ g2*3/2 ~ g2*5/2 ~ g4 fis4 \divisioMaior
g4 a2*4/2 g2*3/2 fis4 ~ \divisioMinima
fis2*4/2 g2 a2*7/4 c'2*5/2 \divisioMinima
b2 a2 ~ a2 ~ a2*4/2 g2*5/4 ~ g2*3/2 b2 \divisioMaxima
r4 g2 ~ g2*3/2 ~ g2*4/2 ~ g2*3/2 a2 ~ a2*3/2 fis2*3/2 g2 \divisioMinima
fis2 e2 ~ e2 ~ e2*4/2 d2*5/4 g2*3/2 ~ g2 ~ \divisioMaior
g2*3/2 ~ g2 ~ g2*3/2 a2 b2*3/2 a2*3/2 g2*3/4 ~ \divisioMinima
g2*6/2 ~ g2*4/2 fis2*3/2 g2*3/2 a2*3/2 g2 a2*3/2 b2*4/2 ~ \divisioMinima
b2*4/2 ~ b2 a2 ~ a2*3/2 g2 ~ g2 fis4 \finalis
r2 c'2*4/2 ~ c'2*4/2 b2 c'2 ~ \divisioMinima
c'4 b2 c'2*6/2 ~ c'2*4/2 b2*4/2 a2 \divisioMaxima
g2 ~ g4 ~ g2 e2*3/2 ~ e2*3/2 ~ \divisioMinima
e4 ~ e2*5/2 ~ e2*6/2 a2*4/2 g2*3/2 ~ g2*5/2 fis2 \divisioMaxima
r2 b4 a2*4/2 g2*3/2 ~ g2 ~ g2 ~ g2*4/2 fis2 \divisioMaior
g2*4/2 a4 b2 g2 ~ g2*4/2 ~ g2*4/2 ~ g2*3/4 ~ g2 ~ g2*4/2 ~ \divisioMinima
g2 ~ g2*6/2 e2 ~ e2*3/2 g2*3/2 ~ g2*3/2 b2*5/2 a2*5/2 g2*3/2 a2*3/2 b2*3/4 ~ \divisioMinima
b2*3/2 a2*3/2 fis2*3/4 g2 a2 ~ a2*9/4 e2*3/2 ~ e2*3/2 g2 ~ g2 fis4 \finalis
}

bassMusic = {
e2*3/2 d2*3/2 c2*3/2 ~ c2 b,2*3/2 a,2*5/2 d2 \divisioMaior
b,2*5/2 ~ b,2*3/2 ~ b,4 \divisioMinima
c2*4/2 ~ c2 ~ c2*7/4 ~ c2*5/2 ~ \divisioMinima
c2 ~ c2 b,2 a,2*4/2 e2*5/4 b,2*3/2 ~ b,2 ~ \divisioMaxima
b,4 ~ b,2 a,2*3/2 b,2*4/2 c2*3/2 ~ c2 e2*3/2 ~ e2*3/2 ~ e2 ~ \divisioMinima
e2 ~ e2 d2 c2*4/2 b2*5/4 c2*3/2 e2 ~ \divisioMaior
e2*3/2 d2 c2*3/2 ~ c2 ~ c2*3/2 ~ c2*3/2 ~ c2*3/4 \divisioMinima
b,2*6/2 a2*4/2 b,2*3/2 ~ b,2*3/2 ~ b,2*3/2 ~ b,2 ~ b,2*3/2 ~ b,2*4/2 \divisioMinima
c2*4/2 ~ c2 b,2 a,2*3/2 ~ a,2 d2 ~ d4 \finalis
b2 ~ b2*4/2 a2*4/2 b2 r2 \divisioMinima
b4 ~ b2 ~ b2*6/2 a2*4/2 e2*4/2 fis2 \divisioMaxima
r2 fis4 e2 d2*3/2 c2*3/2 ~ \divisioMinima
c4 b,2*5/2 a,2*6/2 ~ a,2*4/2 ~ a,2*3/2 b,2*5/2 ~ b,2 ~ \divisioMaxima
b,2 ~ b,4 ~ b,2*4/2 ~ b,2*3/2 c2 b,2 a,2*4/2 d2 \divisioMaior
c2*4/2 ~ c4 b,2 ~ b,2 a,2*4/2 b,2*4/2 e2*3/4 ~ e2 ~ e2*4/2 \divisioMinima
c2 b,2*6/2 ~ b,2 a,2*3/2 ~ a,2*3/2 b,2*3/2 ~ b,2*5/2 ~ b,2*5/2 c2*3/2 ~ c2*3/2 e2*3/4 \divisioMinima
c2*3/2 ~ c2*3/2 ~ c2*3/4 ~ c2 ~ c2 b,2*9/4 ~ b,2*3/2 a,2*3/2 ~ a,2 d2 ~ d4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Gradual"
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
