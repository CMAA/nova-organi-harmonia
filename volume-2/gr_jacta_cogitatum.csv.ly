\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.145
%(volume.page)

global = {
 \key e \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Jacta cogitatum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Jacta cogitatum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Jacta cogitatum" }
    \line {}
  }
}

chantText = \lyricmode {
Ja -- cta 
\set stanza = " * " co -- gi -- tá -- tum tu -- _ _ _ um in Dó -- mi -- no, 
et i -- pse te _ _ _ _ _ _ _ _ _ _ _ _ 
e -- _ nú -- tri -- et. _ _ _ _ _ _ _ _ ℣. 
Dum cla -- má -- rem _ _ _ ad Dó -- mi -- num, _ _ _ 
ex -- au -- dí -- vit _ _ _ vo -- cem me -- _ _ _ am 
ab his _ _ _ _ _ 
qui ap -- pro -- pín -- quant 
\set stanza = " * " mi -- _ _ hi. _ _ _ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   e'4 ( a'4 fis'4) e'4 ( fis'4 e'4 d'4) \divisioMinima
 e'4 fis'4 ( a'4) a'4 a'4 ( \once \tweak #'font-size #-4 fis' ) a'4 ( b'4) d''4 ( d''4 b'4 gis'4) b'4 ( cis''4 a'4) ~ a'4 ( gis'4) a'4 \divisioMinima \forceBreak

 a'4 a'4 ( b'4 cis''4 d''4) cis''4 b'4 \divisioMaior
 a'4 b'4 a'4 a'4 ( gis'4) a'4 ( gis'4) a'4 ( cis''4 b'4 gis'4) a'4 ( fis'4 e'4) fis'4 ( fis'4 e'4) fis'4 ( fis'4) \divisioMinima \forceBreak

 e'4 ( fis'4) a'4 ( a'4) ~ a'4 ( fis'4) a'4 ( a'4 gis'4 fis'4) a'4 ( e'4.) fis'4 ( e'4 d'4) e'4 ( d'4) \divisioMaior
 e'4 ( fis'4 gis'\prall a'4 b'4 a'4 e'4.) fis'4 gis'4 ( e'4 fis'4) cis'4 ( d'4) e'4 \forceBreak
 e'4. b'4 ( a'4) b'4 ( e'4) \divisioMinima
 b'4 ( gis'4 b'4) cis''4 ( d''4 b'4 gis'4.) a'4 ( b'4 gis'4) a'4 ( fis'4 e'4) fis'4 ( gis'4 fis'4) ~ fis'4 ( e'4) \finalis
 e'4 a'4 ( a'4) a'4 ( b'4 \forceBreak
) a'4 ( a'4) b'4 ( gis'4) a'4 ( b'4 fis'4) ~ fis'4 ( e'4) \divisioMinima
 e'4 ( a'4) a'4 ( b'4) b'4 b'4 ( cis''4 b'4 a'4) e''4 ( d''4.) cis''4 ( e''4 d''4 d''4) b'4 ( cis''4 b'4) \divisioMaxima \forceBreak

 fis'4 a'4 ( a'4) a'4 ( b'4) a'4 ( a'4) b'4 ( gis'4) a'4 ( b'4 fis'4) ~ fis'4 ( e'4) \divisioMinima
 a'4 ( a'4) a'4 a'4. gis'4 ( a'4) b'4 ( a'4) b'4 ( cis''4) b'4 \divisioMaior
 b'4 \forceBreak
 b'4 ( d''4 cis''4) b'4 ( d''4 cis''4 b'4) ~ b'4 ( gis'4.) a'4 ( b'4 a'4) b'4 ( fis'4) ~ fis'4 ( e'4) \divisioMaior
 e'4 ( fis'4) e'4 e'4 ( fis'4) e'4 e'4 ( fis'4 a'4)  a'4. gis'4 ( a'4 \forceBreak
) b'4 ( a'4 b'4) b'4 ( e'4) \divisioMinima
 b'4 ( gis'4 b'4) cis''4 ( d''4 b'4.) cis''4 ( d''4 cis''4 b'4) cis''4 ( a'4) b'4 ~ b'4 ( gis'4.) a'4 ( b'4 gis'4) a'4 ( fis'4 e'4) fis'4 ( d'4 e'4) \divisioMinima \forceBreak

 a'4 ( a'4 fis'4 e'4) fis'4 ( d'4 b4.) e'4 ( a'4 fis'4) gis'4 ( fis'4) ~ fis'4 ( e'4) \finalis

}

altoMusic = {
cis'2*3/2 r2*4/2 \divisioMinima
r4 cis'2 ~ cis'4 d'2 e'2 d'2 e'2 ~ e'2 cis'2*3/2 ~ cis'4 ~ \divisioMinima
cis'4 fis'2*4/2 ~ fis'2 ~ \divisioMaior
fis'4 e'2 ~ e'2 ~ e'2 d'2*4/2 ~ d'2*3/2 cis'2*3/2 ~ cis'2 ~ \divisioMinima
cis'2 ~ cis'2 ~ cis'2 d'2*4/2 e'2*5/4 cis'2*3/2 b2 \divisioMaior
e'2*4/2 ~ e'2*9/4 cis'2*3/2 a2*3/2 b2*3/4 e'2 ~ e'2 ~ \divisioMinima
e'2*3/2 ~ e'2 ~ e'2*5/4 ~ e'2*3/2 ~ e'2 ~ e'4 d'2 b2 ~ b4 \finalis
e'4 ~ e'2 ~ e'2 ~ e'2*6/2 r2*3/2 \divisioMinima
e'2 fis'2*3/2 ~ fis'2*4/2 ~ fis'2*5/4 ~ fis'2*4/2 e'2 ~ e'4 \divisioMaxima
r4 cis'2 d'2 cis'2 ~ cis'2 ~ cis'2 ~ cis'2*3/2 ~ \divisioMinima
cis'2*3/2 ~ cis'2*7/4 fis'2*5/2 \divisioMaior
e'4 d'2*3/2 ~ d'2*3/2 e'2 ~ e'2*3/4 cis'2*4/2 ~ cis'2*3/2 \divisioMaior
b2*3/2 ~ b2 cis'4 ~ cis'2 ~ cis'4 e'2*7/4 ~ e'2*3/2 ~ e'2 ~ \divisioMinima
e'2*3/2 d'2*7/4 fis'2*4/2 d'2 e'2*7/4 ~ e'2*3/2 ~ e'2 ~ e'4 d'2*3/2 \divisioMinima
cis'2*4/2 a2*7/4 ~ a2 cis'2 b2 ~ b4 \finalis
}

tenorMusic = {
a2*3/2 ~ a2*4/2 \divisioMinima
r4 a2 fis4 ~ fis2 ~ fis2 ~ fis2 e2 gis2 a2*3/2 fis4 ~ \divisioMinima
fis4 ~ fis2*4/2 ~ fis2 ~ \divisioMaior
fis4 a2 e2 fis2 ~ fis2*4/2 b2*3/2 ~ b2*3/2 a2 \divisioMinima
gis2 fis2 ~ fis2 ~ fis2*4/2 e2*5/4 a2*3/2 fis2 \divisioMaior
a2*4/2 cis'2*9/4 b2*3/2 a2*3/2 ~ a2*3/4 ~ a2 gis2 ~ \divisioMinima
gis2*3/2 fis2 gis2*5/4 e2*3/2 fis2*3/2 a2 ~ a2 gis4 \finalis
r4 cis'2 d'2 cis'2*6/2 b2*3/2 \divisioMinima
cis'2 ~ cis'2*3/2 d'2*4/2 cis'2*5/4 b2*4/2 a2 gis4 \divisioMaxima
r2*3/2 a2 ~ a2 gis2 fis2 gis2*3/2 \divisioMinima
fis2*3/2 ~ fis2*7/4 ~ fis2*5/2 ~ \divisioMaior
fis4 ~ fis2*3/2 a2*3/2 gis2 b2*3/4 a2*4/2 ~ a2*3/2 \divisioMaior
b2*3/2 ~ b2 ~ b4 ~ b2 a4 ~ a2*7/4 ~ a2*3/2 gis2 ~ \divisioMinima
gis2*3/2 fis2*7/4 a2*4/2 fis2 gis2 e2*3/4 ~ e2*3/2 fis2*3/2 ~ fis2*3/2 ~ \divisioMinima
fis2*4/2 d2*7/4 e2 a2 ~ a2 gis4 \finalis
}

bassMusic = {
r2*3/2 fis2*4/2 ~ \divisioMinima
fis4 e2 ~ e4 d2 cis2 b,2 cis2 ~ cis2 fis2*3/2 ~ fis4 ~ \divisioMinima
fis4 e2*4/2 d2 ~ \divisioMaior
d4 cis2 ~ cis2 ~ cis2 b,2*4/2 ~ b,2*3/2 fis2*3/2 ~ fis2 ~ \divisioMinima
fis2 ~ fis2 e2 d2*4/2 cis2*5/4 a,2*3/2 b,2 \divisioMaior
cis2*4/2 ~ cis2*9/4 fis2*3/2 ~ fis2*3/2 e2*3/4 ~ e2 ~ e2 ~ \divisioMinima
e2*3/2 ~ e2 ~ e2*5/4 cis2*3/2 ~ cis2*3/2 b,2 e2 ~ e4 \finalis
r4 a2 ~ a2 ~ a2*6/2 gis2*3/2 ~ \divisioMinima
gis2 fis2*3/2 d2*4/2 ~ d2*5/4 ~ d2*4/2 e2 ~ e4 \divisioMaxima
fis'4 fis2 ~ fis2 ~ fis2 ~ fis2 ~ fis2 cis2*3/2 \divisioMinima
r2*3/2 e2*7/4 d2*5/2 \divisioMaior
cis4 b,2*3/2 ~ b,2*3/2 cis2 ~ cis2*3/4 fis2*4/2 a2*3/2 ~ \divisioMaior
a2*3/2 gis2 ~ gis4 fis2 ~ fis4 cis2*7/4 e2*3/2 ~ e2 ~ \divisioMinima
e2*3/2 b,2*7/4 ~ b,2*4/2 ~ b,2 e2 ~ e2*3/4 cis2*3/2 ~ cis2*3/2 b,2*3/2 \divisioMinima
fis,2*4/2 b,2*7/4 cis2 d2 e2 ~ e4 \finalis
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
