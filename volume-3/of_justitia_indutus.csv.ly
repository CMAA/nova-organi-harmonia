\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.407
%(volume.page)

global = {
 \key fis \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Justitia indutus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Justitia indutus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Justitia indutus" }
    \line {}
  }
}

chantText = \lyricmode {
Ju -- stí -- _ ti -- a 
\set stanza = " * " in -- _ _ dú -- tus sum, et ve -- stí -- _ vi me, _ 
sic -- ut ve -- sti -- mén -- _ to _ et _ di -- a -- dé -- ma -- te, _ 
ju -- _ dí -- ci -- o me -- o. 
O -- _ cu -- lus fu -- i cæ -- _ co, 
et pes clau -- _ _ do: 
pa -- _ ter _ _ e -- ram páu -- _ _ pe -- rum. _ _ }

chantMusic = {
\tieDown   d'4 d'4 ( e'4) g'4 ( fis'4 g'4) g'4 g'4 \divisioMinima
 g'4 ( g'4) ~ g'4 ( g'4) ~ g'4 ( e'4) d'4 ( e'4 g'4) g'4 ( fis'4) fis'4 ( a'4 g'4 g'4) \divisioMinima
 e'4 e'4 ( \once \tweak #'font-size #-4 a' ) a'4. g'4 ( b'4 d''4) a'4 ( fis'4) a'4 ( b'4 g'4 e'4) a'4 ( g'4 fis'4) \divisioMaior
 e'4 ( g'4 a'4) a'4 ( g'4 a'4) a'4 ( e'4) e'4 ( g'4)  fis'4 ( g'4) b'4 ( c''4 a'4) a'4 ( b'4 g'4) ~ g'4 ( fis'4) \divisioMinima
 g'4 ( g'4) ~ g'4 ( \once \tweak #'font-size #-4 e' ) g'4 fis'4 ( g'4) a'4 ( b'4) a'4 a'4. fis'4 ( g'4 e'4 d'4 e'4) \divisioMaior
 g'4 ( g'4) ~ g'4 ( e'4) g'4 a'4 ( g'4) g'4 ( a'4 g'4 g'4) e'4 g'4 ( g'4 e'4) e'4 ( fis'\prall g'4) \divisioMaxima
 d'4 ( e'4) g'4 ( fis'4 g'4) g'4 g'4 a'4 ( b'4) a'4 fis'4 ( g'4) a'4 ( g'4 a'\prall b'4 a'4 b'4) b'4 ( a'4) \divisioMaior
 g'4 fis'4 ( g'4 a'\prall b'4 a'4) a'4 ( fis'4) a'4 ( b'4 g'4) ~ g'4 ( fis'4) fis'4 \divisioMaxima
 d'4 ( fis'4) a'4 ( g'4 g'4) g'4. ~ g'4 ( g'4) ~ g'4 ( d'4) e'4 ( fis'\prall g'4 a'4 g'4 fis'4) g'4 \divisioMinima
 g'4 ( g'4 e'4.) g'4 ( b'4 a'4) b'4 ( g'4 a'4) fis'4 fis'4 ( a'4 g'4) a'4 ( g'4) ~ g'4 ( fis'4) \finalis

}

altoMusic = {
r4 b2*6/2 ~ b4 \divisioMinima
c'2 a2 b2 d'2*3/2 ~ d'2 ~ d'2*4/2 ~ \divisioMinima
d'4 e'2 ~ e'2*5/4 d'2*4/2 ~ d'2*4/2 ~ d'2*4/2 ~ d'2 ~ d'2*3/2 ~ d'2 c'2 ~ c'2*5/2 e'2 d'2*3/2 ~ \divisioMinima
d'2 ~ d'2*5/2 ~ d'2*3/2 b2*3/4 ~ b2*4/2 ~ b4 \divisioMaior
e'2 d'2 c'2*3/2 b2*5/2 ~ b2*3/2 ~ b2*3/2 \divisioMaxima
d'2*7/2 ~ d'2*3/2 ~ d'2 ~ d'2*6/2 ~ d'2 ~ \divisioMaior
d'4 ~ d'2*3/2 ~ d'2 b2*4/2 ~ b2*3/2 ~ b4 \divisioMaxima
d'2 ~ d'2*3/2 ~ d'2*3/4 ~ d'2 b2 a2*6/2 b4 \divisioMinima
c'2*7/4 d'2*3/2 ~ d'2*4/2 ~ d'2*4/2 c'2 d'4 \finalis
}

tenorMusic = {
r4 g2*6/2 ~ g4 ~ \divisioMinima
g2*4/2 ~ g2 ~ g2*3/2 a2 b2*4/2 ~ \divisioMinima
b4 ~ b2 a2*5/4 ~ a2*4/2 g2*4/2 fis2*3/2 ~ \divisioMaior
fis4 e2 d2*3/2 e2*4/2 a2*5/2 ~ a2 ~ a2*3/2 ~ \divisioMinima
a2 g2*5/2 fis2*3/2 ~ fis2*3/4 a2*4/2 g4 ~ \divisioMaior
g2*4/2 ~ g2*3/2 ~ g2*5/2 a2*3/2 g2*3/2 ~ \divisioMaxima
g2*7/2 fis2*3/2 b2 a2*3/2 g2*3/2 fis2 ~ \divisioMaior
fis4 a2*3/2 fis2 ~ fis2*4/2 e2*3/2 fis4 ~ \divisioMaxima
fis2 e2*3/2 d2*3/4 g2 ~ g2 ~ g2*6/2 ~ g4 ~ \divisioMinima
g2*7/4 ~ g2*3/2 fis2*4/2 b2*6/2 ~ b4 \finalis
}

bassMusic = {
r4 r2*6/2 e4 ~ \divisioMinima
e2*4/2 ~ e2 b,2*3/2 ~ b,2 ~ b,2*4/2 ~ \divisioMinima
b,4 c2 ~ c2*5/4 b,2*4/2 ~ b,2*4/2 ~ b,2*4/2 ~ b,2 ~ b,2*3/2 a,2*4/2 ~ a,2*5/2 c2 d2*3/2 \divisioMinima
b,2 ~ b,2*5/2 d2*3/2 e2*3/4 ~ e2*4/2 ~ e4 ~ \divisioMaior
e2*4/2 ~ e2*3/2 ~ e2*5/2 ~ e2*3/2 ~ e2*3/2 \divisioMaxima
b,2*7/2 ~ b,2*3/2 ~ b,2 ~ b,2*3/2 ~ b,2*3/2 d2 ~ \divisioMaior
d4 ~ d2*3/2 ~ d2 e2*4/2 ~ e2*3/2 b,4 ~ \divisioMaxima
b,2 ~ b,2*3/2 ~ b,2*3/4 ~ b,2 g,2 ~ g,2*6/2 ~ g,4 \divisioMinima
a,2*7/4 b,2*3/2 ~ b,2*4/2 ~ b,2*6/2 ~ b,4 \finalis
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
