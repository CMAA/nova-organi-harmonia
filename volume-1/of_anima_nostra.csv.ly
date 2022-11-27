\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.76
%(volume.page)

global = {
 \key fis \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Anima nostra" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Anima nostra"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Anima nostra" }
    \line {}
  }
}

chantText = \lyricmode {
A -- ni -- ma 
\set stanza = " * " no -- _ _ _ _ _ _ _ stra, 
sic -- ut pas -- _ ser, e -- ré -- _ pta est _ 
de lá -- que -- o _ ve -- nán -- ti -- um: 
lá -- que -- _ us con -- trí -- tus _ est, 
et _ _ nos _ li -- be -- rá -- _ _ _ ti _ _ su -- mus. _ _ _ _ }

chantMusic = {
\tieDown  cis'4 ( e'4) e'4 ( fis'4) fis'4  fis'4 a'4 ( a'4) ~ a'4 ( fis'4) a'4 ( cis''4 b'4 a'4) b'4 ( a'4) ~ a'4 ( a'4) ~ a'4 ( fis'4 e'4) fis'4 ( gis'\prall a'4 fis'4) fis'4 \divisioMaior \forceBreak

 fis'4 ( a'4 fis'4 a'4) e'4 ( fis'4) fis'4 ( gis'\prall a'4) b'4 ( a'4) fis'4 ( a'4 fis'4 a'4) \divisioMinima
 e'4 ( fis'4) a'4 ( b'4) ~ b'4 ( cis''4)  a'4 ( cis''4) dis''4 ( cis''4) ~ cis''4 ( b'4) \divisioMaior
  a'4 ( b'4 cis''\prall dis''4 cis''4) cis''4 ( cis''4 b'4 \forceBreak
) b'4 ( a'4) a'4 ( b'\prall cis''4 b'4 a'4 a'4) fis'4 ( gis'4 fis'4) \divisioMinima
 a'4 ( a'4 b'4)  cis''4 ( dis''4 b'4 cis''4) a'4 ( fis'4) fis'4 ( a'4 fis'4 e'4 fis'4) \divisioMaxima
 fis'4 ( a'4) a'4 ( a'4 a'4) a'4. ~ a'4 ( a'4 a'4 \forceBreak
) fis'4 ( a'4) a'4 ( b'4 a'4) a'4 ( b'4)  b'4. cis''4 ( dis''4 b'4) a'4 \divisioMaior
 b'4. a'4 ( a'4) ~ a'4 ( b'4) b'4 ( cis''4 a'4 a'4) fis'4 ( gis'4 fis'4) \divisioMinima
 a'4 ( gis'4) gis'4 ( b'4 a'4 a'4 \forceBreak
) b'4. a'4 ( cis''4 b'4 a'4) ~ a'4 ( fis'4) a'4 ( b'4 a'4) a'4. ~ a'4 ( a'4 a'4) a'4. ~ a'4 ( a'4 a'4) \divisioMinima
 fis'4 fis'4 a'4 ( a'4) ~ a'4 ( fis'4) a'4 ( a'4 a'4) fis'4 ( gis'4 fis'4) \finalis

}

altoMusic = {
cis'2 b2*4/2 cis'2 ~ cis'2*6/2 e'2 cis'2 b2*3/2 cis'2*4/2 ~ cis'4 \divisioMaior
d'2*4/2 b2 cis'2*5/2 d'2*4/2 \divisioMinima
e'2 ~ e'2 ~ e'2 ~ e'2*3/2 ~ e'2*3/2 fis'2*5/2 ~ fis'2*3/2 e'2 cis'2*6/2 ~ cis'2*3/2 ~ \divisioMinima
cis'2*3/2 fis'2*4/2 e'2 cis'2*5/2 \divisioMaxima
d'2 e'2*3/2 fis'2*3/4 cis'2*3/2 b2 cis'2*3/2 e'2 fis'2*11/4 ~ \divisioMaior
fis'2*3/4 ~ fis'2 ~ fis'2 ~ fis'2*4/2 cis'2 ~ cis'4 \divisioMinima
e'2 ~ e'2*4/2 fis'2*9/4 e'2*6/2 d'2*3/4 e'2*3/2 b2*3/4 cis'2*3/2 \divisioMinima
d'2 cis'2 d'2 cis'2*3/2 b2 a4 \finalis
}

tenorMusic = {
a2 gis2*6/2 a2*6/2 ~ a2 ~ a2 gis2*3/2 b2*4/2 a4 ~ \divisioMaior
a2*4/2 gis2 a2*5/2 ~ a2*4/2 ~ \divisioMinima
a2 b2 a2 fis2*3/2 gis2*3/2 a2*5/2 gis2*3/2 a2 ~ a2*6/2 b2*3/2 \divisioMinima
a2*3/2 ~ a2*4/2 ~ a2 ~ a2*5/2 ~ \divisioMaxima
a2 ~ a2*3/2 ~ a2*3/4 ~ a2*3/2 ~ a2 ~ a2*3/2 ~ a2 ~ a2*11/4 \divisioMaior
d'2*3/4 cis'2 b2 cis'2*4/2 b2 a4 \divisioMinima
b2 a2*4/2 ~ a2*9/4 ~ a2*6/2 ~ a2*3/4 ~ a2*3/2 fis2*3/4 ~ fis2*3/2 ~ \divisioMinima
fis2 ~ fis2 ~ fis2 ~ fis2*3/2 cis2 ~ cis4 \finalis
}

bassMusic = {
r2*6/2 fis2 ~ fis2*6/2 cis2 fis2 ~ fis2*3/2 ~ fis2*4/2 ~ fis4 ~ \divisioMaior
fis2*4/2 ~ fis2 ~ fis2*5/2 b,2*4/2 \divisioMinima
cis2 ~ cis2 ~ cis2 e2*3/2 ~ e2*3/2 d2*5/2 ~ d2*3/2 cis2 fis2*6/2 ~ fis2*3/2 ~ \divisioMinima
fis2*3/2 d2*4/2 cis2 fis2*5/2 \divisioMaxima
b,2 cis2*3/2 d2*3/4 fis2*3/2 ~ fis2 ~ fis2*3/2 cis2 d2*11/4 ~ \divisioMaior
d2*3/4 ~ d2 ~ d2 fis2*4/2 ~ fis2 ~ fis4 \divisioMinima
cis2 ~ cis2*4/2 d2*9/4 cis2*6/2 b,2*3/4 cis2*3/2 d2*3/4 a,2*3/2 \divisioMinima
b,2 ~ b,2 ~ b,2 fis,2*3/2 ~ fis,2 ~ fis,4 \finalis
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
        "II"
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
