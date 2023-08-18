\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.42
%(volume.page)

global = {
 \key fis \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Multitudo languentium" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Multitudo languentium"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Multitudo languentium" }
    \line {}
  }
}

chantText = \lyricmode {
Mul -- ti -- tú -- do 
\set stanza = " * " lan -- guén -- ti -- _ um, 
et qui ve -- xa -- bán -- tur _ 
a spi -- rí -- ti -- bus im -- mún -- _ dis, 
ve -- ni -- é -- bant _ ad e -- um: 
qui -- a vir -- tus de il -- lo ex -- í -- _ bat, 
et sa -- ná -- _ _ _ bat o -- mnes. }

chantMusic = {
\tieDown   fis'4 e'4 ( fis'4) fis'4 ( gis'\prall a'4 gis'4 fis'4) fis'4 ( gis'\prall a'4) \divisioMinima
 a'4 ( \once \tweak #'font-size #-4 fis' ) a'4 ( b'4) a'4 ( b'4) cis''4 ( b'4 a'4 b'4) b'4 ( a'4) \divisioMaior
 a'4 ( b'4) a'4 a'4 ( a'4 gis'4) fis'4 a'4 ( fis'4 gis'\prall a'4) a'4 ( a'4 a'4) b'4 ( a'4) \divisioMaior
 fis'4 fis'4 ( e'4) fis'4 ( gis'\prall a'4) a'4 ( a'4 a'4) gis'4 ( fis'4) fis'4 ( \once \tweak #'font-size #-4 e' ) fis'4 ( gis'\prall a'4 gis'4 fis'4) gis'4 ( \tiny fis' e' 4) fis'4 ( e'4) \divisioMaior
 fis'4 a'4 a'4 ( b'4 a'4) a'4 ( a'4) ~ a'4 ( \once \tweak #'font-size #-4 fis' ) gis'4 ( fis'4) e'4 ( gis'\prall a'4 gis'4 fis'4 gis'4) gis'4 ( fis'4) \divisioMaxima
 a'4 b'4  b'4 ( cis''\prall dis''4 \tiny cis'' b' 4) cis''4 ( b'4) a'4 ( gis'4) a'4 ( b'4) b'4 ( a'4) a'4 ( gis'4) e'4 ( gis'4) a'4 ( gis'4 fis'4) gis'4 ( fis'4) \divisioMaior
 fis'4 a'4 ( gis'4) a'4 ( a'4 gis'4 a'4) b'4 ( a'4) b'4 ( a'4) ~ a'4 ( fis'4 gis'4) fis'4 fis'4 ( gis'\prall a'4 gis'4 a'4) gis'4 ( fis'4) \finalis

}

altoMusic = {
cis'2*3/2 ~ cis'2*5/2 ~ cis'2*3/2 \divisioMinima
d'2 e'2 fis'2*6/2 e'2 \divisioMaior
cis'2*3/2 d'2*4/2 cis'2*4/2 e'2*5/2 \divisioMaior
cis'4 b2 cis'2*3/2 ~ cis'2*3/2 ~ cis'2 b2 cis'2*5/2 e'2*3/2 b2 \divisioMaior
fis'2 e'2*3/2 d'2 cis'2 ~ cis'2 b2 a2*4/2 b4 a4 \divisioMaxima
e'2 fis'2*5/2 e'2 ~ e'2 cis'2 e'2 ~ e'2 ~ e'2 d'2*3/2 cis'2 ~ \divisioMaior
cis'4 d'2 e'2*4/2 fis'2*3/2 cis'2*5/2 d'2*5/2 cis'2 \finalis
}

tenorMusic = {
a2*3/2 gis2*5/2 a2*3/2 ~ \divisioMinima
a2 ~ a2 ~ a2*6/2 ~ a2 ~ \divisioMaior
a2*3/2 b2*4/2 a2*4/2 ~ a2*5/2 ~ \divisioMaior
a4 gis2 a2*3/2 cis'2*3/2 a2 b2 a2*5/2 b2*3/2 gis2 \divisioMaior
a2 ~ a2*3/2 ~ a2 ~ a2 e2 ~ e2 cis2*4/2 ~ cis2 \divisioMaxima
a2 ~ a2*5/2 gis2 b2 a2 ~ a2 cis'2 b2 ~ b2*3/2 cis'2 \divisioMaior
a4 ~ a2 ~ a2*4/2 ~ a2*3/2 ~ a2*5/2 b2*5/2 a2 \finalis
}

bassMusic = {
fis2*3/2 ~ fis2*5/2 ~ fis2*3/2 \divisioMinima
b,2 cis2 d2*6/2 cis2 \divisioMaior
fis2*3/2 ~ fis2*4/2 ~ fis2*4/2 cis2*5/2 \divisioMaior
fis4 ~ fis2 ~ fis2*3/2 ~ fis2*3/2 a2 gis2 fis2*5/2 e2*3/2 ~ e2 \divisioMaior
d2 cis2*3/2 b,2 a,2 ~ a,2 gis,2 fis,2*4/2 ~ fis,2 \divisioMaxima
cis2 d2*5/2 e2 ~ e2 fis2 cis2 ~ cis2 ~ cis2 b,2*3/2 a,2 ~ \divisioMaior
a,4 b,2 cis2*4/2 d2*3/2 fis2*5/2 ~ fis2*5/2 ~ fis2 \finalis
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
        "II."
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
