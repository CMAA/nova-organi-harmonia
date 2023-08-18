\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.12
%(volume.page)

global = {
 \key d \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Domine quinque talenta" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Domine quinque talenta"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Domine quinque talenta" }
    \line {}
  }
}

chantText = \lyricmode {
Do -- mi -- ne, 
\set stanza = " * " quin -- que ta -- lén -- _ ta tra -- di -- dí -- sti mi -- hi: 
ec -- ce á -- li -- a quin -- que _ su -- per -- lu -- crá -- tus sum. 
Eu -- ge ser -- ve fi -- dé -- lis, 
qui -- a in pau -- ca fu -- í -- sti fi -- dé -- lis, 
su -- pra mul -- ta te _ con -- stí -- _ tu -- am, 
in -- tra in gáu -- _ di -- um Dó -- _ _ mi -- ni tu -- i. }

chantMusic = {
\tieDown   fis'4 ( fis'4 g'4) e'4 ( fis'\prall g'4) g'4 ( d'4) \divisioMinima
 fis'4 ( g'4) e'4 d'4 a'4 ( fis'4) a'4 ( b'4) a'4 \divisioMinima
 a'4 a'4 ( fis'4) a'4 ( b'4 a'4 b'4) a'4 fis'4 ( a'4 g'4 g'4) g'4 ( fis'4) \divisioMaior
 a'4 a'4 ( fis'4) a'4 ( b'4 a'4 b'4) a'4 ( g'4) g'4 g'4 ( a'4) g'4 ( fis'4) g'4 ( a'4 g'4) \divisioMinima
 g'4 g'4 ( fis'4) fis'4 ( d'4) fis'4 ( g'4 a'4) e'4 ( fis'\prall g'4 fis'4 e'4 d'4 e'4) e'4 ( d'4) \divisioMaxima
 a'4 ( c''4 \tiny b' a' 4) b'4 ( a'4) b'4 ( c''4) b'4 a'4 ( g'4) a'4 ( b'\prall c''4 b'4 a'4) a'4 ( b'\prall c''4) \divisioMaior
 g'4 g'4 a'4 ( \once \tweak #'font-size #-4 c'' ) c''4 c''4 ( b'4) a'4 b'4 ( c''4) b'4 a'4 ( g'4) a'4 ( b'\prall c''4 b'4 a'4 b'4) b'4 ( a'4) \divisioMaior
 a'4 ( b'4) a'4 a'4 ( \once \tweak #'font-size #-4 b' ) a'4 b'4 c''4 ( c''4 b'4) g'4 b'4 ( a'4) b'4 ( c''4 b'4) a'4 ( b'4 a'4 g'4 fis'4 g'4) g'4 ( fis'4) \divisioMaxima
 a'4 ( b'4) a'4 a'4 a'4 ( g'4) a'4 ( b'4) g'4 e'4 ( fis'\prall g'4 fis'4 d'4) \divisioMinima
 fis'4 g'4 ( g'4 e'4) fis'4 ( g'\prall a'4 b'4) a'4 a'4 ( fis'4 g'\prall a'4 g'4 fis'4 e'4 fis'\prall g'4 fis'4 e'4) d'4 ( e'4 fis'4 e'4 d'4 e'4) e'4 ( d'4) \finalis

}

altoMusic = {
d'2*6/2 ~ d'2 \divisioMinima
b2 e'4 d'4 ~ d'2*5/2 ~ \divisioMinima
d'4 ~ d'2 ~ d'2*5/2 b2*4/2 d'2 ~ \divisioMaior
d'4 ~ d'2 ~ d'2*4/2 ~ d'2*3/2 ~ d'2*7/2 ~ \divisioMinima
d'4 ~ d'2 ~ d'2 c'2*3/2 ~ c'2*7/2 a2 \divisioMaxima
e'2*6/2 d'2*3/2 ~ d'2 e'2*5/2 ~ e'2*3/2 \divisioMaior
d'2 c'2*3/2 ~ c'2*3/2 ~ c'2*3/2 d'2 e'2*6/2 d'2 ~ \divisioMaior
d'2*3/2 ~ d'2*4/2 ~ d'2*4/2 e'2*5/2 d'2*6/2 ~ d'2 ~ \divisioMaxima
d'2*4/2 ~ d'2*5/2 b2*3/2 ~ b2 ~ \divisioMinima
b4 ~ b2*3/2 c'2*5/2 d'2*6/2 c'2*5/2 a2*6/2 ~ a2 \finalis
}

tenorMusic = {
b2*6/2 g2 ~ \divisioMinima
g2 a2 fis2*5/2 ~ \divisioMinima
fis4 e2 fis2*5/2 g2*4/2 b2 ~ \divisioMaior
b4 ~ b2 fis2*4/2 g2*3/2 b2*7/2 ~ \divisioMinima
b4 g2 a2 ~ a2*3/2 g2*7/2 ~ g4 fis4 \divisioMaxima
g2*6/2 ~ g2*3/2 a2 ~ a2*5/2 g2*3/2 ~ \divisioMaior
g2 ~ g2*3/2 e2*3/2 g2*3/2 ~ g2 ~ g2*6/2 fis2 \divisioMaior
e2*3/2 fis2*4/2 g2*4/2 ~ g2*5/2 ~ g2*6/2 b2 \divisioMaxima
fis2*4/2 g2*5/2 ~ g2*3/2 a2 ~ \divisioMinima
a4 g2*3/2 a2*5/2 ~ a2*6/2 g2*5/2 ~ g2*6/2 fis2 \finalis
}

bassMusic = {
b,2*6/2 ~ b,2 \divisioMinima
e2 fis2 d2*5/2 ~ \divisioMinima
d4 ~ d2 ~ d2*5/2 e2*4/2 b2 \divisioMaior
r4 b,2 ~ b,2*4/2 ~ b,2*3/2 ~ b,2*7/2 ~ \divisioMinima
b,4 ~ b,2 ~ b,2 a,2*3/2 ~ a,2*7/2 d2 \divisioMaxima
c2*6/2 b,2*3/2 ~ b,2 c2*5/2 ~ c2*3/2 \divisioMaior
b,2 a,2*3/2 ~ a,2*3/2 ~ a,2*3/2 b,2 c2*6/2 d2 ~ \divisioMaior
d2*3/2 ~ d2*4/2 b,2*4/2 c2*5/2 b,2*6/2 ~ b,2 ~ \divisioMaxima
b,2*4/2 ~ b,2*5/2 e2*3/2 ~ e2 ~ \divisioMinima
e4 ~ e2*3/2 a,2*5/2 b,2*6/2 c2*5/2 d2*6/2 ~ d2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Communion"
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
