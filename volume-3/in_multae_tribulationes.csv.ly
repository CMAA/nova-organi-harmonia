\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.211
%(volume.page)

global = {
 \key fis \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Multae tribulationes" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Multae tribulationes"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Multae tribulationes" }
    \line {}
  }
}

chantText = \lyricmode {
Mul -- tæ 
\set stanza = " * " tri -- bu -- la -- ti -- ó -- nes ju -- stó -- rum, 
et de his ó -- mni -- bus li -- be -- rá -- vit e -- os Dó -- mi -- nus: 
Dó -- mi -- nus cu -- stó -- dit ó -- mni -- a os -- sa e -- ó -- rum: 
u -- num ex his non con -- te -- ré -- tur. Ps. 
Be -- ne -- dí -- cam Dó -- mi -- num in o -- mni tém -- po -- re: 
\set stanza = " * " 
sem -- per laus e -- jus in o -- re me -- o. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   fis'4 e'4 ( fis'4 e'4 cis'4)  e'4 fis'4 a'4 ( a'4) a'4 a'4 ( b'4 a'4) a'4 ( a'4 a'4) a'4 ( a'4) e'4 ( gis'4 fis'4) fis'4 \divisioMaior
 fis'4 fis'4 ( b'4) b'4 b'4 ( cis''4) b'4 ( a'4) a'4 \divisioMinima
 a'4 a'4 a'4 ( b'4 a'4) a'4 ( a'4 a'4) e'4 e'4 ( a'4 gis'4 a'4) fis'4 fis'4 ( gis'4 fis'4) fis'4 \divisioMaxima
 fis'4 ( b'4) b'4 b'4 ( cis''4 b'4) a'4 a'4 ( cis''4 b'4) b'4 \divisioMinima
 b'4 ( cis''4) a'4 ( fis'4) fis'4 fis'4 ( b'4) b'4 ( cis''4 a'4) a'4 ( fis'4) a'4 ( fis'4 gis'4 e'4) e'4 ( \divisioMaxima
 fis'4 ( gis'4 fis'4) fis'4 ( e'4) fis'4 ( gis'\prall a'4) a'4 ( a'4 e'4) \divisioMinima
 fis'4 e'4 d'4 ( fis'4 e'4 fis'4) fis'4 ( gis'4 fis'4) fis'4 \finalis
 e'4 fis'4 ( e'4) e'4 ( a'4) a'4 a'4 a'4 a'4 a'4 ( gis'4) a'4 ( b'4) b'4 a'4 ( b'4) a'4 a'4 \divisioMaxima
 a'4 ( \once \tweak #'font-size #-4 fis' ) fis'4 ( a'4) a'4 a'4 a'4 b'4 a'4 ( fis'4) a'4 gis'4 ( e'4) fis'4 ( gis'4 fis'4) \finalis
  e'4 fis'4 ( e'4) e'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 ( gis'4) a'4 ( b'4) b'4 a'4 ( b'4) a'4 \divisioMaxima
 a'4 ( fis'4) fis'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 ( gis'4) a'4 ( b'4) b'4 a'4 ( b'4) a'4 \divisioMaxima
 a'4 ( fis'4) fis'4 ( a'4) a'4 a'4 a'4 a'4 b'4 a'4 ( fis'4) a'4 gis'4 ( e'4) fis'4 ( gis'4 fis'4) \finalis

}

altoMusic = {
r4 b2*6/2 cis'2*3/2 fis'2*3/2 e'2*3/2 ~ e'2 ~ e'2*3/2 cis'4 ~ \divisioMaior
cis'4 fis'2*3/2 ~ fis'2*5/2 ~ \divisioMinima
fis'2 e'2*3/2 ~ e'2*3/2 ~ e'4 ~ e'2*4/2 cis'4 ~ cis'2*3/2 ~ cis'4 \divisioMaxima
fis'2*3/2 ~ fis'2*4/2 e'2*3/2 ~ e'4 ~ \divisioMinima
e'2*5/2 d'2 fis'2*3/2 cis'2 b2*4/2 ~ b4 \divisioMaxima
cis'2*5/2 ~ cis'2*3/2 a2*3/2 ~ \divisioMinima
a2 d'2 ~ d'2 cis'2*3/2 ~ cis'4 \finalis
r4 cis'2 d'2*3/2 e'2*5/2 fis'2*3/2 ~ fis'2*4/2 \divisioMaxima
b2 cis'2*3/2 d'2*3/2 e'2*3/2 ~ e'2 cis'2*3/2 ~ cis'4 b2 cis'2 d'2*3/2 e'2*3/2 ~ \divisioMinima
e'2 fis'2*5/2 e'2 ~ e'4 \divisioMaxima
cis'2 ~ cis'2 ~ cis'2*4/2 fis'2*3/2 ~ \divisioMinima
fis'2 d'2*3/2 e'2*3/2 \divisioMaxima
b2 cis'2 d'2*5/2 e'2*3/2 cis'2 ~ cis'2*3/2 \finalis
}

tenorMusic = {
r4 gis2*6/2 fis2*3/2 a2*3/2 ~ a2*3/2 cis'2 b2*3/2 a4 ~ \divisioMaior
a4 ~ a2*3/2 ~ a2*5/2 ~ \divisioMinima
a2 ~ a2*3/2 fis2*3/2 gis4 a2*4/2 ~ a4 b2*3/2 a4 \divisioMaxima
b2*3/2 a2*4/2 fis2*3/2 gis4 \divisioMinima
a2*5/2 ~ a2 ~ a2*3/2 ~ a2 ~ a2*4/2 gis4 \divisioMaxima
a2*3/2 ~ a2 ~ a2*3/2 e2*3/2 ~ \divisioMinima
e2 fis2 b2 ~ b2*3/2 a4 \finalis
r2*11/2 d'2*3/2 cis'2*4/2 \divisioMaxima
a2 ~ a2*3/2 ~ a2*3/2 ~ a2*3/2 b2 ~ b2 a4 r2*8/2 cis'2*3/2 ~ \divisioMinima
cis'2 d'2*5/2 ~ d'2 cis'4 ~ \divisioMaxima
cis'2 b2 a2*4/2 ~ a2*3/2 ~ \divisioMinima
a2 ~ a2*3/2 ~ a2*3/2 ~ \divisioMaxima
a2 ~ a2 ~ a2*5/2 b2*3/2 ~ b2 a2*3/2 \finalis
}

bassMusic = {
fis4 ~ fis2*6/2 ~ fis2*3/2 d2*3/2 cis2*3/2 ~ cis2 ~ cis2*3/2 fis4 ~ \divisioMaior
fis4 e2*3/2 d2*5/2 ~ \divisioMinima
d2 cis2*3/2 ~ cis2*3/2 ~ cis4 ~ cis2*4/2 fis4 ~ fis2*3/2 ~ fis4 \divisioMaxima
d2*3/2 ~ d2*4/2 e2*3/2 ~ e4 \divisioMinima
cis2*5/2 b,2 d2*3/2 ~ d2 e2*4/2 ~ e4 \divisioMaxima
r2*3/2 gis2 fis2*3/2 cis2*3/2 ~ \divisioMinima
cis2 b,2 ~ b,2 fis2*3/2 ~ fis4 \finalis
a4 ~ a2 b2*3/2 cis'2*5/2 b2*3/2 fis2*4/2 \divisioMaxima
d2 ~ d2*3/2 b,2*3/2 cis2*3/2 ~ cis2 fis2 ~ fis4 a4 ~ a2 ~ a2 b2*3/2 r2*3/2 \divisioMinima
r2*7/2 a2 ~ a4 \divisioMaxima
fis2 ~ fis2 ~ fis2*4/2 d2*3/2 ~ \divisioMinima
d2 b,2*3/2 cis2*3/2 \divisioMaxima
d2 ~ d2 fis2*5/2 e2*3/2 fis2 ~ fis2*3/2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Introit"
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
