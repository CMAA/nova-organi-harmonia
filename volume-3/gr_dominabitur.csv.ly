\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.416
%(volume.page)

global = {
 \key d \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Dominabitur" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Dominabitur"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Dominabitur" }
    \line {}
  }
}

chantText = \lyricmode {
Do -- mi -- ná -- _ _ bi -- tur 
\set stanza = " * " 
a ma -- ri us -- _ _ _ _ que ad ma -- re 
et _ a flú -- mi -- ne _ 
us -- que ad tér -- mi -- nos or -- _ bis ter -- rá -- rum. _ _ _ _ ℣. 
Et ad -- o -- rá -- bunt e -- um _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
o -- mnes re -- ges ter -- ræ _ _ _ _ 
om -- nes Gen -- _ _ _ tes 
sér -- _ vi -- ent _ 
\set stanza = " * " e -- _ i. _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   d'4 d'4 e'4 ( fis'4 e'4 fis'4) a'4 ( b'4 gis'4) a'4 ( fis'4 e'4 e'4) d'4 ( e'4) e'4 \divisioMaior
 d'4 e'4 ( fis'4 e'4) fis'4 fis'4 a'4 ( a'4 a'4) b'4 ( cis''4 a'4) ~ a'4 ( fis'4 e'4) gis'4 ( b'4 a'4 a'4) fis'4 fis'4 fis'4 ( gis'4 fis'4) fis'4 \divisioMaxima
 b'4 ( cis''4 b'4 a'4) b'4 ( a'4) fis'4 ( a'4) a'4 fis'4 ( e'4 a'4) a'4 ( b'4 gis'4) a'4 ( fis'4) \divisioMaior
 fis'4 ( a'4) a'4 gis'4 a'4 fis'4 d'4 \divisioMinima
 d'4 ( fis'4 e'4) a'4 ( gis'4 a'4) fis'4 e'4 d'4 ( e'4) d'4 ( e'\prall fis'4 e'4 fis'4) a'4 ( b'4 gis'4 a'4 fis'4.) d'4 ( fis'4 e'4) fis'4 ( e'4) ~ e'4 ( d'4) \finalis
 d'4 d'4 fis'4 ( e'4) e'4 ( a'4) a'4 a'4 ( b'4) b'4 ( a'4) ~ a'4 ( fis'4) a'4 ( b'4 a'4 gis'4.) a'4 ( b'4 fis'4 d'4) \divisioMinima
 fis'4 a'4 ( a'4 b'4) a'4 ( a'4 fis'4) a'4 ( b'4 a'4 gis'4) a'4 ( b'4 fis'4 d'4) \divisioMinima
 fis'4 ( d'4 fis'4 e'4 d'4.) fis'4 ( d'4) e'4 ( fis'4) a'4 ( a'4) b'4 ( gis'4) a'4 ( fis'4) a'4 ( b'4) d''4 ( d''4) ~ d''4 ( a'4) \divisioMaior
 fis'4 a'4 ( gis'4) a'4 ( b'4 a'4) a'4 ( fis'4) fis'4 ( fis'4 e'4)  e'4 ( fis'4 d'4.) fis'4 ( e'4) fis'4 ( g'4 fis'4 e'4 d'4 d'4) fis'4 ( e'4 d'4) e'4 ( d'4) \divisioMaxima
 fis'4 ( d'4 fis'4 e'4 d'4) d'4 fis'4 ( d'4) e'4 ( fis'4) a'4 ( a'4) b'4 ( cis''\prall d''4 b'4 a'4) a'4 ( b'4 a'4 fis'4) \divisioMaior
  g'4 ( g'4) ~ g'4 ( g'4) d'4 e'4 ( fis'4 e'4) fis'4 ( fis'4 e'4)  fis'4 ( a'4 gis'4 fis'4) a'4 ( a'4 a'4) a'4 ( a'4 fis'4) \divisioMinima
  g'4 ( fis'4) g'4 ( e'4 d'4) fis'4 ( g'4 e'4 d'4.) fis'4 ( e'4) a'4. ~ a'4 ( a'4) ~ a'4 ( fis'4 fis'4) d'4 ( fis'4 e'4) fis'4 ( e'4) ~ e'4 ( d'4) \finalis

}

altoMusic = {
b2 cis'2*4/2 ~ cis'2*3/2 ~ cis'2*4/2 b2 cis'4 \divisioMaior
d'4 ~ d'2*5/2 e'2*5/2 ~ e'2*4/2 ~ e'2*6/2 cis'2*3/2 ~ cis'4 \divisioMaxima
fis'2*4/2 e'2*4/2 d'4 ~ d'2*3/2 e'2*3/2 ~ e'2 \divisioMaior
cis'2*4/2 ~ cis'2*3/2 \divisioMinima
d'2*3/2 e'2*5/2 a2 d'2*5/2 cis'2*11/4 b2*4/2 a2 ~ a4 \finalis
r4 d'4 ~ d'2 e'2*3/2 ~ e'2*3/2 cis'2*3/2 ~ cis'2*9/4 b2*4/2 ~ \divisioMinima
b4 cis'2*3/2 fis'2*3/2 e'2*4/2 d'2*4/2 ~ \divisioMinima
d'2*11/4 b2*4/2 cis'2*4/2 ~ cis'2*4/2 fis'2 ~ fis'2 ~ \divisioMaior
fis'2*3/2 ~ fis'2*3/2 cis'2 ~ cis'2*3/2 b2*7/4 d'2 a2*6/2 ~ a2*3/2 ~ a2 \divisioMaxima
d'2*6/2 ~ d'2*4/2 e'2 fis'2*5/2 cis'2*4/2 d'2 ~ d'2*3/2 ~ d'2*3/2 cis'2*3/2 ~ cis'2*4/2 b2*3/2 cis'2*3/2 d'2*5/2 ~ d'2*9/4 ~ d'2 ~ d'2*3/4 b2 cis'2*3/2 b2*4/2 a2 ~ a4 \finalis
}

tenorMusic = {
a2 ~ a2*4/2 e2*3/2 fis2*4/2 ~ fis2 a4 ~ \divisioMaior
a4 ~ a2*5/2 ~ a2*5/2 cis'2*4/2 b2*6/2 ~ b2*3/2 a4 \divisioMaxima
fis2*4/2 ~ fis2*4/2 ~ fis4 a2*3/2 ~ a2*3/2 b2 ~ \divisioMaior
b2*4/2 a2*3/2 ~ \divisioMinima
a2*3/2 ~ a2*5/2 fis2 a2*5/2 ~ a2*11/4 g2*4/2 ~ g2 fis4 \finalis
b2*4/2 d'2*3/2 cis'2*3/2 a2*3/2 ~ a2*9/4 ~ a2*5/2 ~ a2*3/2 ~ a2*3/2 ~ a2*4/2 ~ a2*4/2 ~ \divisioMinima
a2*11/4 ~ a2*4/2 ~ a2*4/2 ~ a2*4/2 ~ a2 d'2 \divisioMaior
a4 b2 cis'2*3/2 b2 a2*3/2 g2*7/4 a2 ~ a2*6/2 g2*3/2 fis2 \divisioMaxima
b2*6/2 a2*4/2 ~ a2 ~ a2*5/2 ~ a2*4/2 b2 ~ b2*3/2 ~ b2*3/2 a2*3/2 ~ a2*4/2 ~ a2*3/2 ~ a2*3/2 b2*5/2 a2*9/4 g2 a2*7/4 ~ a2*3/2 g2*4/2 ~ g2 fis4 \finalis
}

bassMusic = {
r2 a,2*4/2 ~ a,2*3/2 ~ a,2*4/2 ~ a,2 ~ a,4 ~ \divisioMaior
a,4 b,2*5/2 cis2*5/2 ~ cis2*4/2 ~ cis2*6/2 fis2*3/2 ~ fis4 \divisioMaxima
d2*4/2 cis2*4/2 b,4 ~ b,2*3/2 cis2*3/2 ~ cis2 \divisioMaior
fis2*4/2 ~ fis2*3/2 \divisioMinima
b,2*3/2 cis2*5/2 d2 fis2*5/2 ~ fis2*11/4 g2*4/2 d2 ~ d4 \finalis
a2*4/2 ~ a2*3/2 ~ a2*3/2 g2*3/2 fis2*9/4 ~ fis2*5/2 ~ fis2*3/2 d2*3/2 cis2*4/2 b,2*4/2 \divisioMinima
d2*11/4 ~ d2*4/2 fis2*4/2 e2*4/2 d2 ~ d2 ~ \divisioMaior
d4 ~ d2 fis2*3/2 ~ fis2 ~ fis2*3/2 g2*7/4 d2 ~ d2*6/2 ~ d2*3/2 ~ d2 \divisioMaxima
b,2*6/2 ~ b,2*4/2 cis2 d2*5/2 fis2*4/2 b2 a2*3/2 g2*3/2 a2*3/2 fis2*4/2 ~ fis2*3/2 ~ fis2*3/2 e2*5/2 ~ e2*9/4 ~ e2 fis2*7/4 ~ fis2*3/2 g2*4/2 d2 ~ d4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Gradual"
        "5"
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
