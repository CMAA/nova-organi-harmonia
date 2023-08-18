\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.152
%(volume.page)

global = {
 \key fis \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Illumina" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Illumina"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Illumina" }
    \line {}
  }
}

chantText = \lyricmode {
Il -- lú -- _ mi -- na 
\set stanza = " * " ó -- cu -- los me -- _ _ _ _ os, 
ne -- quán -- do ob -- dór -- _ mi -- _ am in mor -- _ _ _ _ _ te: 
ne -- _ quán -- do di -- cat _ _ in -- i -- mí -- _ _ cus me -- us: 
Præ -- vá -- _ lu -- i _ 
ad -- _ vér -- sus e -- _ _ _ _ um. }

chantMusic = {
\tieDown   g'4 ( g'4) g'4 ( b'4 a'4) b'4 ( g'4) e'4 ( a'4 g'4 fis'4) fis'4 \divisioMinima
 a'4 ( fis'4) a'4 ( b'4 a'4) b'4  b'4. a'4 ( c''4 b'4 \forceBreak
) c''4 ( a'4 g'4) ~ g'4 ( a'4 b'4 c''4 b'4 a'4) c''4 ( b'4) b'4 \divisioMaior
 d''4 ( d''4) a'4 ( b'4) g'4 ( g'4) fis'4 a'4 ( fis'4) a'4 ( b'4 a'4) a'4 ( g'4) ~ g'4 ( fis'4 e'4) fis'4 ( e'4) \divisioMinima \forceBreak

 g'4 ( \once \tweak #'font-size #-4 b' ) b'4 ( a'4) d''4 ( d''4) ~ d''4 ( a'4 fis'4.) a'4 ( g'4) a'4 ( b'4 a'4 g'4) a'4 ( g'4 fis'4) fis'4 \divisioMaxima
 fis'4 ( g'4) a'4 ( b'4 a'4) a'4 ( b'4) a'4 ( b'4 a'4 g'4 \forceBreak
) a'4 ( b'4) b'4 d''4 ( d''4) ~ d''4 ( cis''4 b'4) \divisioMinima
 b'4 a'4 ( b'4 a'4) b'4 d''4 ( d''4) ~ d''4 ( cis''4 b'4) a'4 ( b'4) fis'4 ( a'4 g'4 fis'4) g'4 ( g'4 g'4) \divisioMaior
 e'4 ( fis'4 d'4) g'4. ~ g'4 ( g'4 g'4 \forceBreak
) e'4 ( d'4) d'4 ( d'4 d'4) ~ d'4 ( b4) \divisioMaior
 d'4 ( g'4) e'4 ( \once \tweak #'font-size #-4 fis' ) fis'4 ( fis'4 g'4) e'4 ( fis'\prall g'4) g'4 ( g'4 g'4) a'4 ( b'4 a'4 e'4) g'4 ( g'4 g'4) b'4 ( a'4 g'4) a'4 ( g'4 fis'4) fis'4 \finalis

}

altoMusic = {
r2 e'2*3/2 ~ e'2 ~ e'2*4/2 d'4 \divisioMinima
fis'2*6/2 g'2*3/4 e'2*3/2 ~ e'2 ~ e'2*3/2 ~ e'2*4/2 d'2*3/2 ~ \divisioMaior
d'2 ~ d'2 ~ d'2*3/2 ~ d'2 ~ d'2*4/2 b2 ~ b2 ~ b2 \divisioMinima
e'2 fis'2*4/2 ~ fis'2 ~ fis'2*3/4 d'2 ~ d'2*4/2 b2*3/2 ~ b4 \divisioMaxima
d'2 ~ d'2*3/2 c'2 d'2*4/2 e'2*3/2 d'2 fis'2*3/2 ~ \divisioMinima
fis'4 ~ fis'2*3/2 ~ fis'4 ~ fis'2 ~ fis'2*3/2 e'2 d'2*4/2 e'2*3/2 \divisioMaior
b2*3/2 ~ b2*3/4 d'2*3/2 b2 g2*3/2 a2 \divisioMaior
d'2*4/2 ~ d'2*3/2 b2*3/2 ~ b2*3/2 e'2*3/2 ~ e'4 d'2*6/2 cis'2*3/2 d'4 \finalis
}

tenorMusic = {
r2*5/2 d'2 c'2*4/2 d'4 ~ \divisioMinima
d'2*6/2 ~ d'2*3/4 ~ d'2*3/2 c'2 b2*3/2 g2*4/2 ~ g2*3/2 \divisioMaior
a2 ~ a2 b2*3/2 fis2 ~ fis2*4/2 g2 a2 g2 \divisioMinima
b2 d'2*4/2 a2*7/4 fis2 ~ fis2*4/2 g2*3/2 a4 \divisioMaxima
d2 e2*3/2 ~ e2 ~ e2*4/2 ~ e2*3/2 fis2 b2*3/2 \divisioMinima
d'4 c'2*3/2 ~ c'4 b2 a2*3/2 c'2 b2*4/2 ~ b2*3/2 \divisioMaior
a2*3/2 g2*3/4 ~ g2*3/2 fis2 e2*3/2 d2 \divisioMaior
g2*4/2 a2*3/2 ~ a2*3/2 g2*3/2 ~ g2*4/2 ~ g2*6/2 e2*3/2 b4 \finalis
}

bassMusic = {
r2*12/2 \divisioMinima
d2*6/2 g2*3/4 a2*3/2 ~ a2 e2*3/2 ~ e2*4/2 g2*3/2 ~ \divisioMaior
g2 fis2 e2*3/2 d2 b,2*4/2 e2 ~ e2 ~ e2 ~ \divisioMinima
e2 d2*4/2 ~ d2*7/4 ~ d2 b,2*4/2 e2*3/2 d4 \divisioMaxima
b,2 a,2*3/2 ~ a,2 b,2*4/2 c2*3/2 b,2 ~ b,2*3/2 ~ \divisioMinima
b,4 fis2*3/2 d4 ~ d2 fis2*3/2 ~ fis2 b2*4/2 e2*3/2 ~ \divisioMaior
e2*3/2 ~ e2*3/4 b,2*3/2 ~ b,2 ~ b,2*3/2 ~ b,2 ~ \divisioMaior
b,2*4/2 d2*3/2 e2*3/2 ~ e2*3/2 c2*4/2 b,2*6/2 ~ b,2*3/2 ~ b,4 \finalis
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
        "IV"
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
