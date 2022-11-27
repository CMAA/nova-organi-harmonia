\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.248
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Si ambulem" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Si ambulem"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Si ambulem" }
    \line {}
  }
}

chantText = \lyricmode {
Si ám -- bu -- _ lem 
\set stanza = " * " in mé -- di -- o um -- _ bræ mor -- _ tis, _ _ _ 
non ti -- mé -- bo _ ma -- _ la: _ _ _ _ _ 
quó -- ni -- am tu me -- _ _ _ cum es, _ Dó -- mi -- ne. _ _ _ _ ℣. 
Vir -- _ _ ga tu -- _ _ _ _ _ _ _ a, 
et bá -- _ cu -- _ lus tu -- _ _ _ _ _ _ us, 
i -- _ _ psa, me _ _ _ _ 
\set stanza = " * " con -- so -- lá -- _ ta sunt. _ _ _ _ }

chantMusic = {
\tieDown   e'4 g'4 ( a'4) a'4 ( g'4 fis'4) g'4 ( fis'4 e'4 fis'4) fis'4 ( e'4) \divisioMinima
 g'4 a'4 ( b'4 a'4 b'4) b'4 ( d''4 b'4 a'4 g'4 a'\prall b'4 a'4 b'4) b'4 ( a'4) \divisioMinima \forceBreak

 b'4. g'4 ( a'4 b'4) a'4 g'4. e'4 ( g'4 fis'4) e'4 g'4 ( g'4 e'4) g'4 ( b'4) ~ b'4 ( a'4) \divisioMaior
 e'4 ( b'4) b'4 ( a'4) b'4 ( d''4 cis''4 d''4) b'4. g'4 ( b'4 d''4 b'4 a'4 g'4 a'4 \forceBreak
) g'4. e'4 ( g'4 fis'4) e'4 g'4 ( g'4 e'4) \divisioMinima
 g'4 ( a'4 fis'4) g'4 ( a'4 e'4) fis'4 ( e'4) ~ e'4 ( d'4) \divisioMaxima
 g'4 e'4 fis'4 g'4 a'4 ( b'4 a'4 b'4. \forceBreak
) a'4 ( b'4) d''4 ( d''4) ~ d''4 ( d''4 d''4) a'4 b'4 ( a'4) b'4 ( g'4 a'4) \divisioMinima
 e'4 e'4 e'4 ( d'4) e'4 g'4 ( g'4) a'4 ( b'4 a'4 fis'4) g'4 ( a'4 g'4 g'4) e'4 ( fis'4 e'4) \finalis \forceBreak

 b'4 ( g'4) b'4 ( b'4 a'4) ~ a'4 ( fis'4 g'4) e'4 e'4 ( d'4) e'4 g'4 ( g'4) a'4 ( b'4) d''4 ( d''4 a'4) \divisioMinima
  b'4 ( b'4 a'4) b'4 ( a'4 g'4) b'4 ( c''4 b'4 a'4 b'\prall c''4 b'4 a'4 \forceBreak
) b'4 ( c''4) b'4 \divisioMaior
 e'4 ( b'4) b'4 d''4 ( d''4 b'4) b'4 d''4 ( d''4 b'4) b'4 ( a'4) b'4 ( a'4) b'4 d''4 ( d''4) ~ d''4 ( a'4.) cis''4 ( b'4 a'4) ~ a'4 ( g'4 \forceBreak
) a'4 ( b'4) d''4 ( b'4 cis''\prall d''4 b'4) b'4 \divisioMaxima
 b'4 ( g'4) b'4 ( b'4 a'4) ~ a'4 ( fis'4 g'4) e'4 ( fis'4) e'4 ( d'4) e'4 ( fis'\prall g'4 a'4.) g'4 ( a'4 b'4 g'4 fis'4) g'4 ( a'4 b'4) ~ b'4 ( a'4) \divisioMinima \forceBreak

 a'4 a'4 ( b'4)  d''4 ( b'4 c''4 a'4 g'4) b'4 d''4 ( d''4 b'4 a'4 b'4) e'4 e'4 ( d'4) e'4 g'4 ( g'4) a'4 ( b'4 a'4 fis'4) g'4 ( a'4 g'4 g'4) e'4 ( fis'4 e'4) \finalis

}

altoMusic = {
e'4 ~ e'2 ~ e'2*3/2 b2*4/2 ~ b2 ~ \divisioMinima
b4 e'2*4/2 d'2*4/2 ~ d'2*5/2 ~ d'2 ~ \divisioMinima
d'2*3/4 ~ d'2*4/2 ~ d'2*3/4 ~ d'2*4/2 b2*4/2 d'2*3/2 \divisioMaior
e'2 ~ e'2 d'2*4/2 ~ d'2*3/4 ~ d'2*7/2 b2*3/4 ~ b2*4/2 ~ b2 ~ b4 \divisioMinima
d'2*3/2 c'2*4/2 a2 ~ a4 \divisioMaxima
d'2*4/2 e'2*9/4 ~ e'2 d'2 ~ d'2*4/2 ~ d'2 ~ d'2 ~ d'4 \divisioMinima
c'2 b2*3/2 ~ b2 e'2*4/2 ~ e'2*3/2 b2 ~ b2 \finalis
g'2 fis'2*3/2 e'2 d'2 c'2*3/2 e'2 ~ e'2 d'2*3/2 ~ d'2*3/2 e'2*3/2 ~ e'2*3/2 ~ e'2*5/2 ~ e'2 ~ e'4 ~ \divisioMaior
e'2 d'4 ~ d'2*3/2 ~ d'4 ~ d'2*3/2 c'2 d'2*3/2 ~ d'2 ~ d'2*9/4 ~ d'2*3/2 ~ d'2 ~ d'2*3/2 ~ d'2 ~ d'4 \divisioMaxima
e'2 d'2 ~ d'2*4/2 c'2 b2 c'2*9/4 d'2*5/2 ~ d'2 ~ d'2*3/2 ~ \divisioMinima
d'4 e'2 d'2*6/2 ~ d'2*5/2 ~ d'4 c'2*3/2 d'2 ~ d'2*4/2 ~ d'2*4/2 b2 ~ b4 \finalis
}

tenorMusic = {
r4 b2 a2*3/2 ~ a2*4/2 g2 ~ \divisioMinima
g4 fis2*4/2 ~ fis2*4/2 g2*5/2 fis2 ~ \divisioMinima
fis2*3/4 g2*4/2 a2*3/4 g2*4/2 ~ g2*4/2 fis2*3/2 \divisioMaior
e2 fis2 ~ fis2*4/2 g2*3/4 a2*7/2 ~ a2*3/4 g2*4/2 a2 g4 ~ \divisioMinima
g2*3/2 ~ g2*4/2 ~ g2 fis4 \divisioMaxima
g2*4/2 e2*9/4 fis2 ~ fis2 g2*4/2 fis2 e2 fis4 \divisioMinima
g2 ~ g2*3/2 e2 ~ e2*4/2 a2*3/2 ~ a2 g2 \finalis
e'2 d'2*3/2 c'2 b2 a2*3/2 b2 a2 ~ a2*3/2 g2*3/2 ~ g2*3/2 ~ g2*3/2 ~ g2*5/2 ~ g2 ~ g4 \divisioMaior
e2 fis4 ~ fis2*3/2 ~ fis4 g2*3/2 e2 fis2*3/2 g2 fis2*9/4 g2*3/2 b2 a2*3/2 g2 fis4 \divisioMaxima
g2 ~ g2 a2*4/2 g2 fis2 g2*9/4 a2*5/2 g2 fis2*3/2 ~ \divisioMinima
fis4 ~ fis2 g2*6/2 fis2*5/2 g4 ~ g2*3/2 ~ g2 fis2*4/2 a2*4/2 ~ a2 g4 \finalis
}

bassMusic = {
e4 ~ e2 c2*3/2 e2*4/2 ~ e2 ~ \divisioMinima
e4 c2*4/2 b,2*4/2 ~ b,2*5/2 d2 \divisioMinima
b,2*3/4 ~ b,2*4/2 ~ b,2*3/4 ~ b,2*4/2 e2*4/2 d2*3/2 \divisioMaior
cis2 c2 b,2*4/2 ~ b,2*3/4 ~ b,2*7/2 e2*3/4 ~ e2*4/2 ~ e2 ~ e4 \divisioMinima
b,2*3/2 a,2*4/2 d2 ~ d4 \divisioMaxima
b,2*4/2 cis2*9/4 c2 b,2 ~ b,2*4/2 d2 ~ d2 ~ d4 \divisioMinima
e2 ~ e2*3/2 d2 c2*4/2 ~ c2*3/2 e2 ~ e2 \finalis
r2*12/2 g2 ~ g2 fis2*3/2 r2*3/2 e2*3/2 d2*3/2 c2*5/2 a,2 e4 \divisioMaior
d2 ~ d4 cis2*3/2 b,4 ~ b,2*3/2 ~ b,2 ~ b,2*3/2 ~ b,2 ~ b,2*9/4 ~ b,2*3/2 ~ b,2 ~ b,2*3/2 ~ b,2 ~ b,4 \divisioMaxima
e2 b,2 ~ b,2*4/2 ~ b,2 ~ b,2 a,2*9/4 b,2*5/2 ~ b,2 d2*3/2 ~ \divisioMinima
d4 c2 b,2*6/2 ~ b,2*5/2 ~ b,4 a,2*3/2 b,2 ~ b,2*4/2 ~ b,2*4/2 e2 ~ e4 \finalis
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
