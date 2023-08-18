\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.42
%(volume.page)

global = {
 \key e \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Quinque prudentes" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Quinque prudentes"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Quinque prudentes" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ _ lú -- ia, 
\set stanza = " * " al -- le -- _ _ lú -- ia. _ _ _ 
_ _ _ _ _ _ _ ℣. 
Quin -- que pru -- _ dén -- tes vír -- gi -- nes 
ac -- ce -- pé -- runt ó -- _ _ _ le -- um 
in va -- sis su -- is cum lam -- pá -- _ di -- bus: 
mé -- di -- a au -- tem no -- _ cte 
cla -- mor _ _ _ _ _ _ fa -- ctus est: 
Ec -- ce spon -- sus ve -- _ nit: 
ex -- í -- te ób -- _ _ _ vi -- am 
Chri -- sto 
\set stanza = " * " Dó -- _ mi -- no. _ _ _ 
_ _ _ _ _ _ _ }

chantMusic = {
\tieDown   e'4 ( fis'4) e'4. d'4 ( fis'4) a'4 ( gis'4 fis'4) a'4 ( b'4) b'4 \divisioMinima
  e'4 ( fis'4) e'4. d'4 ( fis'4) a'4 ( gis'4 fis'4) a'4 ( b'4) b'4 \divisioMinima
 cis''4 ( b'4 a'4) ~ a'4 ( gis'4 fis'4 e'4.) fis'4 ( gis'4 fis'4 e'4) \divisioMaior
 d'4 ( fis'4) a'4 ( gis'4 fis'4) a'4 ( b'4.) cis''4 ( b'4 a'4) ~ a'4 ( gis'4 fis'4 e'4.) d'4 fis'4 ( gis'4 fis'4) ~ fis'4 ( e'4) \finalis
 e'4 ( fis'4) e'4 d'4 ( fis'4) a'4 ( gis'4 fis'4) a'4 ( b'4) b'4 b'4 ( cis''4 b'4) a'4 ( b'4) b'4 \divisioMaior
 b'4 b'4 ( cis''4 b'4 a'4) a'4 a'4 ( fis'4) gis'4 ( fis'4) gis'4 ( fis'4 e'4.) fis'4 ( a'4 gis'4 fis'4 e'4) fis'4 ( e'4) d'4 ( e'4) e'4 \divisioMaior
 e'4 ( fis'4 e'4) d'4 fis'4 ( a'4) a'4 a'4 ( fis'4) \divisioMinima
 gis'4 fis'4 ( gis'4) e'4 ( fis'4 gis'4 fis'4 e'4) fis'4 ( e'4) d'4 ( e'4) e'4 \divisioMaxima
 fis'4 e'4 d'4 e'4 fis'4 a'4 ( b'4) a'4 ( cis''4 b'4) b'4 \divisioMaior
 a'4 ( b'4 d''4) d''4 ( d''4 cis''4 b'4) cis''4 ( b'4 a'4 b'4) \divisioMinima
 a'4 ( b'4) d''4 ( d''4 cis''4 b'4) cis''4 ( b'4 a'4 b'4) \divisioMinima
 cis''4 ( b'4 a'4) ~ a'4 ( gis'4 fis'4 e'4) fis'4 ( e'4) d'4 ( e'4) e'4 \divisioMaxima
 fis'4 e'4 ( d'4) e'4 fis'4 a'4 ( b'4) a'4 ( cis''4 b'4) b'4 \divisioMaior
 b'4 ( cis''4 b'4 a'4) a'4 a'4 ( fis'4) gis'4 ( fis'4) gis'4 ( fis'4 e'4.) fis'4 ( a'4 gis'4 fis'4 e'4) fis'4 ( e'4) d'4 ( e'4) e'4 \divisioMaior
 fis'4 e'4 ( fis'4 e'4 d'4)  d'4 ( fis'4) a'4 ( gis'4 fis'4) a'4 ( b'4) b'4 \divisioMinima
 cis''4 ( b'4 a'4) ~ a'4 ( gis'4 fis'4 e'4.) fis'4 ( gis'4 fis'4 e'4) \divisioMaior
 d'4 ( fis'4) a'4 ( gis'4 fis'4) a'4 ( b'4.) cis''4 ( b'4 a'4) ~ a'4 ( gis'4 fis'4 e'4.) d'4 fis'4 ( gis'4 fis'4) ~ fis'4 ( e'4) \finalis

}

altoMusic = {
cis'2*7/4 d'2*5/2 e'2 ~ e'4 cis'2 ~ cis'2*3/4 d'2*5/2 e'2 ~ e'4 ~ \divisioMinima
e'2 ~ e'2*4/2 ~ e'2*3/4 b2 ~ b2 \divisioMaior
d'2 cis'2*3/2 fis'2*5/4 e'2 ~ e'2*4/2 ~ e'2*3/4 d'4 b2 ~ b2*3/2 \finalis
cis'2*3/2 d'2*5/2 e'2 ~ e'4 ~ e'2*3/2 ~ e'2 ~ e'4 ~ \divisioMaior
e'4 fis'2*4/2 e'4 d'2 ~ d'2 ~ d'2 cis'2*3/4 ~ cis'2*7/2 b2 ~ b4 \divisioMaior
cis'2*3/2 d'2*4/2 cis'2 ~ \divisioMinima
cis'2*3/2 b2*7/2 d'4 e'4 b4 \divisioMaxima
d'2 ~ d'4 ~ d'2 e'2*5/2 ~ e'4 \divisioMaior
d'2*3/2 fis'2*4/2 ~ fis'2*4/2 \divisioMinima
e'2 d'2*4/2 fis'2*4/2 \divisioMinima
e'2 d'2*3/2 cis'2 a2 ~ a2 b4 \divisioMaxima
d'2 ~ d'4 e'2 d'2 e'2*3/2 ~ e'4 ~ \divisioMaior
e'2*4/2 ~ e'4 cis'2 ~ cis'2*11/4 ~ cis'2*7/2 b2 ~ b4 \divisioMaior
d'2*5/2 ~ d'2 ~ d'2*3/2 e'2 ~ e'4 ~ \divisioMinima
e'2 ~ e'2*4/2 ~ e'2*3/4 b2 ~ b2 \divisioMaior
d'2 cis'2*3/2 fis'2*9/4 e'2*4/2 ~ e'2*3/4 d'4 b2 ~ b2*3/2 \finalis
}

tenorMusic = {
r2*7/4 b2*5/2 cis'2 b4 a2 ~ a2*3/4 ~ a2*5/2 ~ a2 gis4 \divisioMinima
a2 cis'2*4/2 b2*3/4 ~ b2 a4 gis4 \divisioMaior
a2 ~ a2*3/2 ~ a2*5/4 ~ a2 cis'2*4/2 b2*3/4 ~ b4 a2 gis2*3/2 \finalis
a2*3/2 b2*5/2 ~ b2 ~ b4 a2*3/2 ~ a2 gis4 ~ \divisioMaior
gis4 a2*4/2 ~ a4 ~ a2 b2 a2 gis2*3/4 a2*7/2 ~ a2 gis4 \divisioMaior
a2*3/2 ~ a2*4/2 ~ a2 \divisioMinima
b2*3/2 ~ b2*7/2 a2 gis4 \divisioMaxima
a2*3/2 ~ a2 ~ a2*5/2 gis4 \divisioMaior
a2*3/2 b2*4/2 a2*4/2 ~ \divisioMinima
a2 ~ a2*4/2 ~ a2*4/2 ~ \divisioMinima
a2 ~ a2*3/2 gis2 fis2 ~ fis2 gis4 \divisioMaxima
a2*3/2 ~ a2 ~ a2 ~ a2*3/2 gis4 ~ \divisioMaior
gis2*4/2 a4 ~ a2 b2*11/4 a2*7/2 ~ a2 gis4 \divisioMaior
a2*5/2 ~ a2 ~ a2*3/2 ~ a2 gis4 ~ \divisioMinima
gis2 a2*4/2 b2*3/4 ~ b2 a4 gis4 \divisioMaior
a2 ~ a2*3/2 ~ a2*9/4 ~ a2*11/4 ~ a4 ~ a2 gis2*3/2 \finalis
}

bassMusic = {
a2*7/4 gis2*5/2 a2 gis4 r2 a,2*3/4 b2*5/2 cis2 e4 \divisioMinima
cis2 ~ cis2*4/2 ~ cis2*3/4 e2 ~ e2 \divisioMaior
fis2 ~ fis2*3/2 d2*5/4 cis2 ~ cis2*4/2 ~ cis2*3/4 b,4 ~ b,2 e2*3/2 \finalis
r2*8/2 a2 gis4 ~ gis2*3/2 fis2 e4 ~ \divisioMaior
e4 d2*4/2 cis4 b,2 ~ b,2 ~ b,2 cis2*3/4 fis2*7/2 ~ fis2 e4 \divisioMaior
r2*3/2 fis2*4/2 ~ fis2 ~ \divisioMinima
fis2*3/2 gis2*7/2 fis2 e4 \divisioMaxima
d2*3/2 ~ d2 cis2*5/2 e4 \divisioMaior
fis2*3/2 d2*4/2 ~ d2*4/2 \divisioMinima
cis2 b,2*4/2 d2*4/2 \divisioMinima
cis2 b,2*3/2 cis2 d2 e2 ~ e4 \divisioMaxima
d2*3/2 cis2 b,2 cis2*3/2 e4 \divisioMaior
cis2*4/2 ~ cis4 fis2 ~ fis2*11/4 ~ fis2*7/2 ~ fis2 e4 \divisioMaior
d2*5/2 cis2 b,2*3/2 cis2 e4 \divisioMinima
cis2 ~ cis2*4/2 ~ cis2*3/4 e2 ~ e2 \divisioMaior
fis2 ~ fis2*3/2 d2*9/4 cis2*11/4 b,4 e2 ~ e2*3/2 \finalis
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
        "VII."
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
