\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.190
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Salvum fac servum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Salvum fac servum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Salvum fac servum" }
    \line {}
  }
}

chantText = \lyricmode {
Sal -- _ vum fac 
\set stanza = " * " ser -- _ vum tu -- _ _ _ _ um, 
De -- _ us me -- _ _ _ _ _ us, 
spe -- rán -- tem in te. _ _ _ _ _ ℣. 
Au -- ri -- bus pér -- _ _ _ _ _ _ _ _ ci -- pe 
Dó -- _ _ mi -- ne 
o -- ra -- ti -- ó -- nem 
\set stanza = " * " me -- _ am. _ _ _ }

chantMusic = {
\tieDown   d'4 ( e'4 fis'4) a'4 ( a'4 a'4) fis'4 ( e'4 d'4 e'\prall fis'4 g'4) fis'4 ( e'4) \divisioMinima
  d'4 ( g'4 a'4) c''4 ( b'4 c''4) a'4 ( b'4)  g'4 ( a'4) b'4 ( g'4) b'4 ( c''4 a'4 g'4 fis'4 \forceBreak
) g'4 ( a'4) ~ a'4 ( g'4) g'4 \divisioMaior
 g'4 ( b'4 a'4) d''4 ( d''4 b'4)  b'4 ( c''4)  b'4. a'4 ( b'4 c''4 a'4 g'4) a'4 ( b'4 g'4 e'4) g'4. ~ g'4 ( g'4) ~ g'4 ( e'4 \forceBreak
) fis'4 ( e'4 d'4 e'4) e'4 ( d'4) \divisioMaior
 e'4 g'4 g'4 ( fis'4) e'4 ( \once \tweak #'font-size #-4 d' ) g'4 ( a'4) b'4 ( a'4) d''4 ( d''4 b'4 a'4 g'4) ~ g'4 ( e'4) g'4 ( g'4 g'4) e'4 ( fis'4 e'4) \finalis \forceBreak

 e'4 ( b'4) b'4 b'4 ( a'4)  b'4. g'4 ( b'4 c''4 b'4 a'4) b'4. \divisioMinima
 g'4 ( a'4 b'4) d''4 ( cis''4 d''4.) b'4 d''4 ( d''4) ~ d''4 ( a'4 g'4 b'4. \forceBreak
) d''4 ( d''4 b'4) d''4 ( d''4 a'4) d''4 ( c''4) b'4 b'4 ( c''4 b'4) \divisioMaior
  b'4 ( a'4) b'4. g'4 ( b'4 c''4 a'4 g'4 fis'4.) g'4 ( a'\prall b'4 c''4 b'4 a'4) b'4 ( a'4) a'4 \divisioMaior
 a'4 \forceBreak
 a'4 a'4 a'4 a'4 ( b'4)   d''4 ( b'4 c''4 a'4 g'4) b'4 d''4 ( d''4 b'4 a'4) b'4 ( a'4 b'4 g'4 fis'4) g'4 ( a'4) \divisioMinima
 e'4 ( fis'\prall g'4 a'4.) g'4 ( b'4 a'4 g'4 fis'4 e'4 fis'\prall g'4 e'4) \finalis

}

altoMusic = {
d'2*3/2 c'2*3/2 b2 ~ b2*4/2 ~ b2 d'2*3/2 c'2*5/2 d'2*4/2 e'2*4/2 ~ e'2 ~ e'2*4/2 \divisioMaior
g'2*3/2 fis'2*3/2 e'2 fis'2*3/4 e'2*5/2 ~ e'2*4/2 ~ e'2*3/4 ~ e'2 b2 ~ b2*4/2 ~ b2 \divisioMaior
d'4 c'4 ~ c'2 b2 d'2*4/2 ~ d'2*4/2 ~ d'4 r2 c'2*3/2 b2 ~ b4 \finalis
e'2*3/2 fis'2 g'2*3/4 e'2*5/2 fis'2*3/4 \divisioMinima
e'2*3/2 fis'2*9/4 ~ fis'2 e'2*9/4 a'2*3/2 g'2*3/2 ~ g'2*3/2 fis'2 ~ fis'4 e'2*7/4 ~ e'2*5/2 ~ e'2*15/4 ~ e'2 fis'4 ~ \divisioMaior
fis'4 ~ fis'2 e'4 fis'2 g'2*6/2 fis'2*4/2 e'2*5/2 ~ e'2 ~ \divisioMinima
e'2*3/2 ~ e'2*3/4 d'2*3/2 ~ d'2 b2 ~ b2 \finalis
}

tenorMusic = {
b2*3/2 fis2*3/2 g2 ~ g2*4/2 ~ g2 ~ g2*3/2 ~ g2*5/2 ~ g2*4/2 ~ g2*4/2 a2 b2*4/2 ~ \divisioMaior
b2*3/2 a2*3/2 g2 ~ g2*3/4 ~ g2*5/2 c'2*4/2 b2*3/4 ~ b2 a2 g2*4/2 fis2 \divisioMaior
g4 ~ g4 a2 fis2 g2*4/2 fis2*4/2 g2*3/2 ~ g2*3/2 a2 g4 \finalis
r2*3/2 e'2 ~ e'2*3/4 d'2*5/2 ~ d'2*3/4 ~ \divisioMinima
d'2*3/2 b2*9/4 ~ b2 ~ b2*9/4 ~ b2*3/2 ~ b2*3/2 e'2*3/2 ~ e'2 d'4 c'2*7/4 ~ c'2*5/2 ~ c'2*15/4 d'2 ~ d'4 ~ \divisioMaior
d'4 ~ d'2 e'4 ~ e'2 d'2*6/2 b2*4/2 ~ b2*5/2 ~ b4 a4 ~ \divisioMinima
a2*3/2 fis2*3/4 g2*3/2 a2 ~ a2 g2 \finalis
}

bassMusic = {
r2*6/2 r2 fis2*4/2 e2 b,2*3/2 a,2*5/2 b,2*4/2 c2*4/2 ~ c2 e2*4/2 ~ \divisioMaior
e2*3/2 ~ e2*3/2 ~ e2 d2*3/4 c2*5/2 ~ c2*4/2 d2*3/4 e2 ~ e2 ~ e2*4/2 b,2 ~ \divisioMaior
b,4 a,4 ~ a,2 b,2 ~ b,2*4/2 ~ b,2*4/2 ~ b,2*3/2 a,2*3/2 e2 ~ e4 \finalis
r2*13/2 \divisioMinima
r2*15/4 a2 g2*9/4 fis2*3/2 e2*3/2 ~ e2*3/2 b2 ~ b4 r2*7/4 b2*5/2 a2*15/4 d'2 ~ d'4 \divisioMaior
r2*3/2 c'4 ~ c'2 b2*6/2 a2*4/2 g2*5/2 c2 ~ \divisioMinima
c2*3/2 ~ c2*3/4 b,2*3/2 ~ b,2 e2 ~ e2 \finalis
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
