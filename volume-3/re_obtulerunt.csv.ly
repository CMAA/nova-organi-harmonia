\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.66
%(volume.page)

global = {
 \key fis \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Obtulerunt" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Obtulerunt"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Obtulerunt" }
    \line {}
  }
}

chantText = \lyricmode {
Ob -- tu -- lé -- runt 
\set stanza = " * " pro e -- o Dó -- mi -- no 
par _ _ túr -- tu -- _ rum, 
aut du -- os pul -- _ los co -- _ lum _ bá -- rum: 
\set stanza = " * " 
Sic -- ut scri -- ptum est _ _ _ 
in le -- ge _ _ Dó -- mi -- _ ni. ℣. 
Post -- quam au -- _ tem im -- plé -- ti sunt di -- es pur -- ga -- ti -- ó -- nis Ma -- rí -- æ, 
se -- cún -- dum le -- gem Mó -- y -- si, 
tu -- lé -- runt Je -- sum in Je -- rú -- sa -- lem, 
ut sí -- ste -- rent e -- um Dó -- _ mi -- no. 
\set stanza = " * " 
Sic -- ut. 
Gló -- _ ri -- a Pa -- tri, et Fí -- li -- o, 
et Spi -- rí -- tu -- i _ San -- cto. 
\set stanza = " * " 
Sic -- ut. }

chantMusic = {
\tieDown   cis'4 cis'4 e'4 ( fis'4 gis'4) fis'4 \divisioMinima
 fis'4 fis'4 a'4 a'4 ( gis'4 a'4) fis'4 ( gis'4) fis'4 ( e'4) \divisioMaior
 fis'4 ( gis'\prall a'4) b'4 ( gis'4) a'4 ( gis'4) fis'4 fis'4 ( gis'4) a'4 ( gis'4 fis'4 gis'4) gis'4 ( fis'4) \divisioMaior
 a'4 a'4 ( a'4 gis'4) b'4 a'4 ( b'4 gis'4) a'4 ( gis'4 fis'4 gis'4) gis'4 ( fis'4) \divisioMinima
 fis'4 ( gis'4) a'4 ( gis'4 fis'4 e'4) fis'4 ( a'4 gis'4) a'4 ( b'4 a'4) a'4 ( gis'4 fis'4 gis'4) fis'4 ( e'4) \divisioMaxima
 e'4 fis'4 fis'4 ( a'4 fis'4 gis'\prall a'4) e'4  cis'4 ( dis'4.) cis'4 ( e'4 dis'4 cis'4) dis'4 ( cis'4 b4) cis'4 ( b4) \divisioMaior
 fis'4 fis'4 ( a'4 gis'4 e'4) fis'4 ( gis'\prall a'4) b'4 ( gis'4) a'4 ( gis'4) fis'4 fis'4 ( gis'4) a'4 ( gis'4 fis'4 gis'4) gis'4 ( fis'4) \finalis
 fis'4 fis'4 e'4 ( fis'4) a'4 ( a'4 b'4) a'4 \divisioMinima
 a'4 b'4 ( cis''4) b'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 ( b'4) a'4 \divisioMaior
 a'4 a'4 a'4 ( gis'4) a'4 ( b'4) gis'4 ( a'4) fis'4 fis'4 ( gis'\prall a'4 gis'4) gis'4 ( fis'4) \divisioMaxima
 fis'4 e'4 ( fis'4) fis'4 fis'4 fis'4 fis'4 e'4 fis'4 ( gis'4) fis'4 fis'4 \divisioMaior
 fis'4 fis'4 fis'4 fis'4 fis'4 ( gis'\prall a'4 gis'4 fis'4 e'4) fis'4 a'4 ( gis'4) a'4 ( b'4 a'4) a'4 ( gis'4 fis'4 gis'4) fis'4 e'4 \finalis
 e'4 fis'4 \finalis
 e'4 ( fis'4) a'4 ( a'4 b'4) a'4 a'4 a'4 ( gis'4) a'4 ( b'4) gis'4 ( a'4) fis'4 fis'4 ( gis'\prall a'4 gis'4) gis'4 ( fis'4) \divisioMaxima
 fis'4 e'4 ( fis'4) fis'4 ( gis'\prall a'4 gis'4 fis'4 e'4) fis'4 a'4 ( gis'4) a'4 ( b'4 a'4) a'4 ( gis'4 fis'4 gis'4) fis'4 ( e'4) \finalis
 e'4 fis'4 \finalis

}

altoMusic = {
r4 cis'4 ~ cis'2*3/2 ~ cis'4 ~ \divisioMinima
cis'4 d'2 e'2*3/2 d'2 r2 \divisioMaior
d'2*3/2 e'2 d'2 cis'4 ~ cis'2 ~ cis'2*4/2 ~ cis'2 ~ \divisioMaior
cis'4 ~ cis'2*3/2 b4 cis'2*3/2 ~ cis'2*4/2 ~ cis'2 \divisioMinima
fis'2 e'2*3/2 ~ e'4 d'2*3/2 cis'2*3/2 d'2*4/2 b2 \divisioMaxima
cis'2 ~ cis'2 ~ cis'2*3/2 b2 a2*3/4 ~ a2*4/2 b2*3/2 r2 \divisioMaior
cis'4 ~ cis'2 ~ cis'2 ~ cis'2*3/2 ~ cis'2 ~ cis'2 d'4 ~ d'2 cis'2*4/2 ~ cis'2 \finalis
d'2 e'2 fis'2*4/2 ~ \divisioMinima
fis'4 e'2*4/2 ~ e'2*3/2 d'2 cis'2 ~ cis'4 ~ cis'2*3/2 ~ \divisioMaior
cis'4 d'4 e'2 fis'2 e'2 ~ e'4 d'2*4/2 cis'2 \divisioMaxima
d'4 cis'2*3/2 ~ cis'2 b2 ~ b2 ~ b4 a4 ~ \divisioMaior
a4 b2*3/2 cis'2*6/2 ~ cis'4 ~ cis'2 d'2*3/2 ~ d'2*4/2 b2 \finalis
cis'2 ~ \finalis
cis'2 d'2*3/2 e'2 ~ e'2*4/2 ~ e'2 d'4 cis'2*4/2 ~ cis'2 ~ \divisioMaxima
cis'4 b2 cis'2*6/2 ~ cis'4 ~ cis'2 fis'2*3/2 e'2*4/2 cis'2 ~ \finalis
cis'2 \finalis
}

tenorMusic = {
r2*6/2 \divisioMinima
r4 b2 cis'2*3/2 b2 cis'2 ~ \divisioMaior
cis'2*3/2 b2 ~ b2 ~ b4 a2 gis2*4/2 a2 \divisioMaior
fis4 ~ fis2*3/2 ~ fis4 ~ fis2*3/2 ~ fis2*4/2 a2 ~ \divisioMinima
a2 ~ a2*4/2 ~ a2*3/2 ~ a2*3/2 ~ a2*4/2 gis2 \divisioMaxima
a2 ~ a2 ~ a2*3/2 gis2 fis2*3/4 ~ fis2*4/2 ~ fis2*3/2 gis2 \divisioMaior
fis4 ~ fis2 b2 a2*3/2 gis2 fis2 ~ fis4 b2 cis'2*4/2 b4 a4 \finalis
b2 cis'2 d'2*4/2 ~ \divisioMinima
d'4 ~ d'2*4/2 cis'2*3/2 b2 a2 ~ a4 ~ a2*3/2 ~ \divisioMaior
a4 t4 cis'2 d'2 cis'2 r2*7/2 \divisioMaxima
b4 ~ b2*3/2 a2 gis2 fis2 ~ fis2 ~ \divisioMaior
fis4 gis2*3/2 a2*6/2 ~ a4 ~ a2 ~ a2*3/2 b2*4/2 a4 gis4 \finalis
a2 \finalis
r2 b2*3/2 cis'2 ~ cis'2*4/2 ~ cis'2 b4 ~ b2*4/2 a2 ~ \divisioMaxima
a4 ~ a2 ~ a2*6/2 ~ a4 ~ a2 ~ a2*3/2 ~ a2*4/2 gis2 \finalis
a2 \finalis
}

bassMusic = {
cis'2 b2*3/2 a4 ~ \divisioMinima
a4 ~ a2 ~ a2*3/2 b2 cis'2 \divisioMaior
a2*3/2 gis2 fis2 ~ fis4 ~ fis2 ~ fis2*4/2 ~ fis2 ~ \divisioMaior
fis4 e2*3/2 d4 e2*3/2 fis2*4/2 ~ fis2 \divisioMinima
d2 cis2*4/2 b,2*3/2 a,2*3/2 b,2*4/2 e2 \divisioMaxima
r2 gis2 fis2*3/2 ~ fis2 ~ fis2*3/4 e2*4/2 d2*3/2 e2 ~ \divisioMaior
e4 fis2 ~ fis2 ~ fis2*3/2 ~ fis2 ~ fis2 b,4 ~ b,2 fis2*4/2 ~ fis2 \finalis
r2*8/2 \divisioMinima
r2*12/2 gis4 fis2*3/2 \divisioMaior
r4 b4 ~ b2 ~ b2 ~ b2 ~ b4 ~ b2*4/2 a2 \divisioMaxima
r2*12/2 \divisioMaior
r2*10/2 gis4 fis2 b,2*3/2 ~ b,2*4/2 e2 \finalis
r2 \finalis
r2 a2*3/2 ~ a2 b2*4/2 cis'2 r2*7/2 \divisioMaxima
r2*9/2 gis4 fis2 d2*3/2 cis2*4/2 ~ cis2 \finalis
r2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        ""
        ""
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
