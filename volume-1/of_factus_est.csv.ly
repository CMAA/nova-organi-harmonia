\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.271
%(volume.page)

global = {
 \key fis \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Factus est" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Factus est"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Factus est" }
    \line {}
  }
}

chantText = \lyricmode {
Fa -- _ _ ctus est 
\set stanza = " * " Dó -- _ mi -- _ _ nus 
fir -- _ ma -- _ mén -- _ tum _ _ me -- um, 
et _ re -- _ fú -- gi -- um me -- _ um, 
et li -- be -- rá -- _ _ _ _ tor me -- _ _ _ us: 
spe -- rá -- bo in e -- _ _ _ _ _ _ _ _ _ _ um. }

chantMusic = {
\tieDown   e'4 g'4 ( g'4 g'4) a'4 ( g'4 e'4) e'4 ( d'4) e'4 \divisioMinima
 e'4 ( d'4) g'4 ( a'\prall b'4 a'4 b'4) b'4 ( cis''\prall d''4) e''4 ( cis''4) d''4 ( b'4) b'4 ( a'4 b'4) \divisioMaior \forceBreak

 g'4 ( a'4 b'4) ~ b'4 ( \once \tweak #'font-size #-4 a' ) b'4 d''4 ( d''4 d''4) b'4 ( d''4 a'4) ~ a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4 b'4 d''4 b'4 a'4) b'4 ( d''4 b'4 a'4) ~ a'4 ( b'4 a'4) g'4 ( fis'4 g'\prall a'4 b'4) a'4 ( g'4) \divisioMaxima \forceBreak

 g'4 ( a'4) b'4 ( a'4 a'4) b'4 d''4 ( d''4 d''4) a'4 ( cis''\prall d''4 cis''4 b'4) a'4 ( fis'4) g'4 ( a'4) a'4 ( g'4) ~ g'4 ( fis'4 e'4) g'4 ( g'4) \divisioMaior
 g'4 ( \once \tweak #'font-size #-4 e' ) g'4 ( a'4 g'4) a'4 ( b'4 a'4 \forceBreak
) b'4 ( b'4 a'4) ~ a'4 ( g'4) ~ g'4 ( fis'4) g'4 ( a'\prall b'4) ~ b'4 ( a'4 b'4) a'4 ( \once \tweak #'font-size #-4 b' ) b'4. g'4 ( b'4 a'4) b'4 ( g'4) ~ g'4 ( fis'4 e'4) g'4 ( g'4) \divisioMaxima
 g'4 ( e'4) g'4 ( a'\prall b'4 a'4) b'4 \forceBreak
 b'4 ( a'4) b'4 ( b'4 a'4) ~ a'4 ( g'4) fis'4 ( g'4 e'4) ~ e'4 ( d'4 e'4) g'4 ( g'4) a'4 ( b'4 a'4 g'4) \divisioMinima
 b'4 ( d''4 a'4 g'4) ~ g'4 ( e'4) fis'4 ( g'4 a'4 g'4.) b'4 ( a'4 b'4 g'4) a'4 ( g'4 fis'4) fis'4 \finalis

}

altoMusic = {
r4 b2*3/2 ~ b2*3/2 ~ b2 ~ b4 ~ \divisioMinima
b2 ~ b2*5/2 e'2*3/2 g'2 fis'2 e'2 fis'4 \divisioMaior
r2 e'2*4/2 fis'2*3/2 g'2 e'2*3/2 ~ e'2*6/2 ~ e'2*3/2 ~ e'2*4/2 d'2*3/2 ~ d'2 ~ d'2 ~ \divisioMaxima
d'2 e'2*4/2 d'2*3/2 ~ d'2*5/2 ~ d'2*4/2 b4 ~ b2*4/2 ~ b2 \divisioMaior
d'2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'2 ~ d'2*3/2 ~ d'2 ~ d'2*4/2 ~ d'2 e'2*3/4 ~ e'2*4/2 b2*4/2 ~ b2 \divisioMaxima
e'2 ~ e'2*5/2 ~ e'2 d'2 ~ d'2*3/2 ~ d'2 ~ d'2*4/2 ~ d'2 ~ d'2*3/2 ~ d'4 ~ \divisioMinima
d'2*3/2 ~ d'2*3/2 ~ d'2*9/4 ~ d'2*4/2 ~ d'2*3/2 ~ d'4 \finalis
}

tenorMusic = {
r2*4/2 fis2*3/2 g2 ~ g4 ~ \divisioMinima
g2 ~ g2*5/2 ~ g2*3/2 b2 ~ b2 cis'2 d'4 ~ \divisioMaior
d'2 cis'2*4/2 d'2*3/2 ~ d'2 b2*3/2 ~ b2*6/2 fis2*3/2 e2*4/2 ~ e2*3/2 fis2 g2 \divisioMaxima
e2 fis2*4/2 g2*3/2 fis2*5/2 g2*4/2 ~ g4 a2*4/2 g2 ~ \divisioMaior
g2 e2*3/2 fis2*3/2 g2 a2 b2*3/2 a2 g2*4/2 fis2 g2*3/4 b2*4/2 a2*4/2 g2 \divisioMaxima
b2 ~ b2*5/2 e2 fis2 g2*3/2 a2 g2*4/2 e2 fis2*3/2 g4 ~ \divisioMinima
g2*3/2 ~ g2*3/2 a2*9/4 g2*4/2 fis2*3/2 b4 \finalis
}

bassMusic = {
e4 ~ e2*3/2 ~ e2*3/2 ~ e2 ~ e4 \divisioMinima
r2 fis2*5/2 e2*3/2 ~ e2 b2 ~ b2 ~ b4 ~ \divisioMaior
b2 ~ b2*4/2 ~ b2*3/2 e2 ~ e2*3/2 d2*6/2 cis2*3/2 ~ cis2*4/2 b,2*3/2 ~ b,2 ~ b,2 \divisioMaxima
d2 cis2*4/2 b,2*3/2 ~ b,2*5/2 ~ b,2*4/2 e4 ~ e2*4/2 ~ e2 \divisioMaior
b,2 ~ b,2*3/2 ~ b,2*3/2 ~ b,2 ~ b,2 ~ b,2*3/2 ~ b,2 ~ b,2*4/2 ~ b,2 e2*3/4 ~ e2*4/2 ~ e2*4/2 ~ e2 ~ \divisioMaxima
e2 d2*5/2 cis2 b,2 ~ b,2*3/2 ~ b,2 ~ b,2*4/2 ~ b,2 ~ b,2*3/2 ~ b,4 \divisioMinima
g,2*3/2 b,2*3/2 ~ b,2*9/4 ~ b,2*4/2 ~ b,2*3/2 ~ b,4 \finalis
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
