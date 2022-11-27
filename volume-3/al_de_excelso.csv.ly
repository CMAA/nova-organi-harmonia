\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.185
%(volume.page)

global = {
 \key fis \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"De excelso" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "De excelso"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "De excelso" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ _ lú -- ia, 
\set stanza = " * " al -- le -- _ _ lú -- ia. _ _ _ _ _ _ ℣. 
De ex -- cél -- so _ _ _ mi -- _ sit i -- gnem 
in ós -- si -- bus me -- _ is 
\set stanza = " * " 
et e -- ru -- _ dí -- vit me. _ _ _ _ _ _ }

chantMusic = {
\tieDown   e'4 e'4 ( g'4) a'4 ( g'4) fis'4 ( g'4 e'4)  g'4 ( a'\prall b'4 c''4 \tiny b' a' 4) a'4 ( b'4) \divisioMinima
 e'4 e'4 ( g'4) a'4 ( g'4) fis'4 ( g'4 e'4)  g'4 ( a'\prall b'4 c''4 \tiny b' a' 4) a'4 ( b'4) \divisioMinima
 e'4 g'4 ( g'4 fis'4) g'4 ( a'4 b'4 a'4 g'4.) a'4 ( b'4 a'4) b'4 ( g'4) a'4 ( g'4) ~ g'4 ( fis'4) \finalis
 b'4 b'4 b'4 ( \once \tweak #'font-size #-4 a' )  a'4 ( c''4 b'4) c''4 ( a'4 g'4) a'4 ( g'4) ~ g'4 ( fis'4) \divisioMinima
 g'4 ( e'4) fis'4 ( g'4 a'4 b'4) b'4  b'4 ( c''4 b'4 a'4 b'\prall c''4 b'4 c''4) c''4 ( b'4) \divisioMaior
 a'4 a'4 ( b'4) b'4 ( a'4) a'4 ( b'4 a'4 fis'4) g'4 ( a'\prall b'4 a'4 g'4 fis'4) g'4 ( fis'4 e'4 fis'\prall g'4 fis'4 g'4) fis'4 ( e'4) \divisioMaxima
 e'4 g'4 fis'4 ( g'4 a'4 g'4 fis'4) g'4 ( fis'4 e'4 fis'\prall g'4 fis'4 g'4) fis'4 ( e'4)  g'4 ( a'\prall b'4 c''4 \tiny b' a' 4) a'4 ( b'4) \divisioMinima
 e'4 g'4 ( g'4 fis'4) g'4 ( a'4 b'4 a'4 g'4.) a'4 ( b'4 a'4) b'4 ( g'4) a'4 ( g'4) ~ g'4 ( fis'4) \finalis

}

altoMusic = {
e'4 ~ e'2 ~ e'2*4/2 ~ e'4 d'2*3/2 e'2*3/2 fis'2 \divisioMinima
e'4 ~ e'2 d'2*5/2 c'2*6/2 e'2 ~ \divisioMinima
e'4 c'2*3/2 b2*4/2 ~ b2*3/4 e'2*3/2 d'2*3/2 cis'2 d'4 \finalis
e'2 ~ e'2 ~ e'2*3/2 ~ e'2*4/2 d'2*3/2 \divisioMinima
r2 d'2*4/2 e'4 ~ e'2*3/2 ~ e'2*5/2 g'2 \divisioMaior
e'4 ~ e'2 ~ e'2 d'2*4/2 e'2*4/2 d'2 c'2 b2*5/2 ~ b2 \divisioMaxima
e'4 ~ e'4 ~ e'2*5/2 d'2 b2*5/2 ~ b2 e'2*6/2 d'2 ~ \divisioMinima
d'4 c'2*3/2 b2*4/2 ~ b2*3/4 e'2*3/2 d'2*3/2 cis'2 d'4 \finalis
}

tenorMusic = {
e'4 d'2 c'2*5/2 ~ c'2*3/2 ~ c'2*3/2 d'2*3/2 g2 ~ g2*5/2 ~ g2*6/2 ~ g2 ~ \divisioMinima
g4 a2*3/2 g2*4/2 e2*3/4 ~ e2*3/2 ~ e2*3/2 ~ e2 fis4 \finalis
r2 d'2 c'2*3/2 ~ c'2*4/2 b2*3/2 \divisioMinima
c'2 b2*4/2 ~ b4 a2*3/2 c'2*5/2 d'2 \divisioMaior
c'4 b2 ~ b2 ~ b2*4/2 ~ b2*4/2 a2 ~ a2 ~ a2*5/2 g2 ~ \divisioMaxima
g2 a2*5/2 ~ a2 ~ a2*5/2 g2 ~ g2*6/2 fis2 \divisioMinima
e4 ~ e2*3/2 ~ e2*4/2 ~ e2*3/4 ~ e2*3/2 ~ e2*3/2 ~ e2 fis4 \finalis
}

bassMusic = {
r2*11/2 b2*3/2 ~ b2*3/2 c2 b,2*5/2 a,2*6/2 e2 ~ \divisioMinima
e4 ~ e2*3/2 ~ e2*4/2 d2*3/4 c2*3/2 b,2*3/2 ~ b,2 ~ b,4 \finalis
r2*7/2 b2*4/2 ~ b2*3/2 \divisioMinima
a2 ~ a2*4/2 g4 ~ g2*3/2 ~ g2*5/2 ~ g2 \divisioMaior
a4 ~ a2 g2 fis2*4/2 e2*4/2 ~ e2 ~ e2 ~ e2*5/2 ~ e2 \divisioMaxima
c2 ~ c2*5/2 d2 e2*5/2 ~ e2 c2*6/2 b,2 ~ \divisioMinima
b,4 a,2*3/2 e2*4/2 d2*3/4 c2*3/2 b,2*3/2 ~ b,2 ~ b,4 \finalis
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
