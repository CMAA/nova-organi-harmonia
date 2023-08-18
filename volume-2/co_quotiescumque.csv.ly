\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.127
%(volume.page)

global = {
 \key e \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Quotiescumque" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Quotiescumque"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Quotiescumque" }
    \line {}
  }
}

chantText = \lyricmode {
Quo -- ti -- es -- cúm -- que 
\set stanza = " * " man -- du -- cá -- bi -- tis pa -- nem hunc, et cá -- li -- cem bi -- bé -- tis, 
mor -- tem Dó -- mi -- ni an -- nun -- ti -- á -- bi -- tis, 
do -- nec vé -- ni -- at: 
í -- ta -- que qui -- cúm -- que man -- du -- cá -- ve -- rit pa -- nem, vel bí -- be -- rit cá -- li -- cem Dó -- mi -- ni in -- dí -- _ gne 
re -- us e -- rit cór -- po -- ris et sán -- gui -- nis Dó -- mi -- ni, 
al -- le -- _ lú -- ia. }

chantMusic = {
\tieDown   e'4 e'4 ( b'4) b'4 b'4 e'4 \divisioMinima
 b'4 a'4 d''4 ( cis''4 d''4 b'4) b'4 b'4 b'4 ( cis''4) b'4 b'4 \divisioMinima \forceBreak

 a'4 a'4 ( b'4 cis''4) cis''4 cis''4 ( \once \tweak #'font-size #-4 b' ) a'4 ( cis''4) b'4 ( a'4) a'4 \divisioMaior
 a'4 ( gis'4) fis'4 a'4 ( a'4 b'4) a'4 a'4 a'4 gis'4 a'4 \forceBreak
 b'4 a'4 a'4 \divisioMaior
 b'4 ( cis''\prall d''4 cis''4) b'4 ( cis''4 b'4) a'4 ( gis'4) fis'4 ( gis'\prall a'4 gis'4) fis'4 ( e'4) \divisioMaxima
 fis'4 ( gis'4) fis'4 fis'4 \divisioMinima
 a'4 ( gis'4 \forceBreak
) e'4 ( fis'4 e'4) e'4 e'4 fis'4 a'4 ( b'4 cis''4) b'4 b'4 cis''4 b'4 \divisioMinima
 b'4 cis''4 b'4 b'4 cis''4 b'4 a'4 \forceBreak
 b'4 ( d''4) b'4 cis''4 a'4 a'4 ( gis'4) a'4 ( b'4 a'4) fis'4 ( e'4) \divisioMaior
 fis'4 ( a'4) a'4 gis'4 ( e'4) e'4 fis'4 ( gis'4) fis'4 ( e'4) e'4 e'4 \forceBreak
 e'4 ( fis'4) e'4 e'4 fis'4 ( a'4 gis'4) a'4 ( b'4 a'4) fis'4 \divisioMaior
 e'4 ( \once \tweak #'font-size #-4 gis' ) gis'4. fis'4 ( a'4 gis'4) e'4 ( fis'4 e'4) e'4 \finalis

}

altoMusic = {
e'4 ~ e'2*3/2 ~ e'2 ~ \divisioMinima
e'2 fis'2*6/2 e'2*3/2 ~ e'4 ~ \divisioMinima
e'4 cis'2*4/2 fis'2*4/2 e'2*3/2 \divisioMaior
d'2*3/2 cis'2*5/2 d'2*3/2 e'2*3/2 \divisioMaior
fis'2*4/2 ~ fis'2*3/2 cis'2 ~ cis'2*4/2 ~ cis'2 ~ \divisioMaxima
cis'2*4/2 ~ \divisioMinima
cis'2 ~ cis'2*4/2 ~ cis'2 ~ cis'2*3/2 fis'2 ~ fis'2 ~ \divisioMinima
fis'4 e'2*3/2 ~ e'2*3/2 d'2 fis'2*3/2 cis'2*5/2 ~ cis'2 \divisioMaior
b2*3/2 cis'2*3/2 ~ cis'2*6/2 b2*4/2 ~ b2*3/2 ~ b2*3/2 a4 \divisioMaior
b2 cis'2*3/4 d'2*3/2 b2*3/2 ~ b4 \finalis
}

tenorMusic = {
r2*4/2 gis2 \divisioMinima
a2 ~ a2*6/2 ~ a2*3/2 gis4 ~ \divisioMinima
gis4 a2*4/2 ~ a2*4/2 ~ a2*3/2 \divisioMaior
fis2*3/2 ~ fis2*5/2 ~ fis2*3/2 ~ fis2*3/2 ~ \divisioMaior
fis2*4/2 b2*3/2 ~ b2 a2*4/2 gis2 \divisioMaxima
fis2*4/2 \divisioMinima
e2 gis2*4/2 a2 fis2*3/2 ~ fis2 b2 ~ \divisioMinima
b4 gis2*3/2 fis2*3/2 a2 fis2*3/2 a2*5/2 ~ a2 \divisioMaior
fis2*3/2 e2*3/2 ~ e2*6/2 cis2*4/2 d2*3/2 cis2*3/2 ~ cis4 \divisioMaior
e2 ~ e2*3/4 a2*3/2 ~ a2*3/2 gis4 \finalis
}

bassMusic = {
r2*4/2 e2 \divisioMinima
cis2 b,2*6/2 e2*3/2 ~ e4 ~ \divisioMinima
e4 fis2*4/2 d2*4/2 cis2*3/2 \divisioMaior
b,2*3/2 fis,2*5/2 b,2*3/2 cis2*3/2 \divisioMaior
d2*4/2 ~ d2*3/2 fis2 ~ fis2*4/2 cis2 \divisioMaxima
a,2*4/2 \divisioMinima
cis2 ~ cis2*4/2 fis2 e2*3/2 d2 ~ d2 ~ \divisioMinima
d4 e2*3/2 b,2*3/2 ~ b,2 d2*3/2 fis2*5/2 a2 \divisioMaior
d2*3/2 b,2*3/2 a,2*6/2 gis,2*4/2 fis,2*3/2 ~ fis,2*3/2 ~ fis,4 \divisioMaior
gis,2 a,2*3/4 b,2*3/2 e2*3/2 ~ e4 \finalis
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
