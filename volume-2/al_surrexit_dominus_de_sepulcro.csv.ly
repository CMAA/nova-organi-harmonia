\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.15
%(volume.page)

global = {
 \key fis \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Surrexit Dominus de sepulcro" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Surrexit Dominus de sepulcro"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Surrexit Dominus de sepulcro" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- _ ia, 
\set stanza = " * " al -- le -- lú -- _ ia. _ _ _ 
_ _ _ _ _ ℣. 
Sur -- ré -- xit _ _ _ _ _ _ _ _ _ Dó -- mi -- nus 
de se -- _ _ _ púl -- _ _ cro, 
qui pro no -- _ _ bis _ 
pe -- _ _ _ pén -- _ _ dit 
\set stanza = " * " 
in li -- gno. _ _ _ 
_ _ _ _ _ }

chantMusic = {
\tieDown   e'4 fis'4 gis'4 ( fis'4)  cis''4 ( d''4) cis''4 \divisioMinima
 e'4 fis'4 gis'4 ( fis'4)  cis''4 ( d''4) cis''4 \divisioMinima
 b'4 ( cis''4 b'4 a'4) cis''4. a'4 ( b'4 a'4 gis'4) b'4 ( a'4 gis'4 fis'4) \divisioMaior \forceBreak

 e'4 ( gis'4 b'4) ~ b'4 ( gis'4 a'4.) fis'4 ( gis'4 fis'4 e'4) \divisioMinima
 e'4 a'4 ( a'4) gis'4 ( b'4 cis''4 a'4 gis'4 e'4 gis'\prall a'4 fis'4 \finalis
) fis'4 ( cis''4) cis''4 cis''4 e''4 ( cis''4 b'4) cis''4 ( b'4 gis'4) a'4 ( b'4) \divisioMinima \forceBreak

  gis'4 ( b'4 d''4 cis''4 b'4) cis''4 ( a'4 fis'4) gis'4 \divisioMinima
 b'4 ( cis''4 a'4 gis'4) b'4 ( cis''4 a'4 a'4) ~ a'4 ( fis'4 a'4 gis'4 fis'4) a'4 ( b'4 cis''4) b'4 ( a'4 b'\prall cis''4 b'4 a'4 b'4) cis''4 ( b'4) b'4 \divisioMaior \forceBreak

 a'4 a'4 ( cis''4) ~ cis''4 ( b'4) cis''4 ( b'4 a'4) b'4 ( a'4 gis'4) fis'4 ( a'4 gis'4 a'4.) gis'4 ( a'4 cis''4 b'4 gis'4) a'4 ( fis'4) fis'4 \divisioMaxima
 e'4 fis'4 fis'4 ( a'4) ~ a'4 ( fis'4) a'4 gis'4 fis'4. ~ fis'4 ( gis'4 a'4 b'4 \forceBreak
) b'4 ( cis''4) ~ cis''4 ( b'4) \divisioMaior
 a'4 ( cis''4) ~ cis''4 ( b'4) cis''4 ( b'4 a'4) b'4 ( a'4 gis'4) fis'4 ( a'4 gis'4 a'4.) gis'4 ( a'4 cis''4 b'4 gis'4) a'4 ( fis'4) fis'4 \divisioMaxima
 e'4 ( fis'4) g'4 ( fis'4)  cis''4 ( d''4) cis''4 \divisioMinima \forceBreak

 b'4 ( cis''4 b'4 a'4) cis''4. a'4 ( b'4 a'4 gis'4) b'4 ( a'4 gis'4 fis'4) \divisioMaior
 e'4 ( gis'4 b'4) ~ b'4 ( gis'4 a'4.) fis'4 ( gis'4 fis'4 e'4) \divisioMinima
 e'4 a'4 ( a'4) gis'4 ( b'4 cis''4 a'4 gis'4 e'4 gis'\prall a'4 fis'4) \finalis

}

altoMusic = {
e'2 cis'2 fis'2 ~ fis'4 \divisioMinima
e'2 ~ e'2 fis'2 ~ fis'4 ~ \divisioMinima
fis'2*4/2 e'2*3/4 ~ e'2*4/2 cis'2*3/2 ~ cis'4 \divisioMaior
e'2 ~ e'2*3/2 ~ e'2*3/4 cis'2*4/2 ~ \divisioMinima
cis'4 e'2 ~ e'2*5/2 cis'2*3/2 ~ cis'4 \finalis
fis'2 e'2 ~ e'2*6/2 ~ e'2 fis'2*5/2 ~ fis'2 ~ fis'4 e'4 ~ \divisioMinima
e'2*4/2 ~ e'2*4/2 cis'2*5/2 fis'2*3/2 e'2*7/2 ~ e'2 ~ e'4 \divisioMaior
cis'2 e'2*3/2 fis'2*3/2 d'2*3/2 e'2*9/4 ~ e'2*5/2 cis'2 ~ cis'4 ~ \divisioMaxima
cis'2*3/2 ~ cis'2*3/2 ~ cis'2*7/4 ~ cis'2*4/2 e'4 ~ e'2*3/2 ~ \divisioMaior
e'4 ~ e'2*3/2 fis'2*3/2 d'2*3/2 e'2*9/4 ~ e'2*5/2 cis'2 ~ cis'4 \divisioMaxima
e'2 cis'2 fis'2 ~ fis'4 ~ \divisioMinima
fis'2*4/2 e'2*3/4 ~ e'2*4/2 cis'2*3/2 ~ cis'4 \divisioMaior
e'2 ~ e'2*3/2 ~ e'2*3/4 cis'2*4/2 ~ \divisioMinima
cis'4 e'2 ~ e'2*5/2 cis'2*3/2 ~ cis'4 \finalis
}

tenorMusic = {
b2 ~ b2 gis2 a4 \divisioMinima
gis2 b2 ~ b2 a4 ~ \divisioMinima
a2*4/2 ~ a2*3/4 b2*4/2 ~ b2*3/2 a4 \divisioMaior
b2 gis2*3/2 fis2*3/4 gis2*4/2 ~ \divisioMinima
gis4 a2 b2*5/2 ~ b2*3/2 a4 ~ \finalis
a2 ~ a2 gis2*6/2 fis4 gis4 b2*5/2 a2*3/2 b4 \divisioMinima
gis2*4/2 a2*4/2 ~ a2*5/2 ~ a2*3/2 ~ a2*7/2 fis2 gis4 \divisioMaior
a2 ~ a2*3/2 ~ a2*3/2 ~ a2*3/2 ~ a2*9/4 b2*5/2 ~ b2 a4 ~ \divisioMaxima
a2 ~ a4 ~ a2*3/2 b2*7/4 a2*4/2 ~ a4 gis2*3/2 ~ \divisioMaior
gis4 a2*3/2 ~ a2*3/2 ~ a2*3/2 ~ a2*9/4 b2*5/2 ~ b2 a4 \divisioMaxima
b2 ~ b2 gis2 a4 ~ \divisioMinima
a2*4/2 ~ a2*3/4 b2*4/2 ~ b2*3/2 a4 \divisioMaior
b2 gis2*3/2 fis2*3/4 gis2*4/2 ~ \divisioMinima
gis4 a2 b2*5/2 ~ b2*3/2 a4 \finalis
}

bassMusic = {
gis2 fis2 ~ fis2 ~ fis4 \divisioMinima
cis2 ~ cis2 fis2 ~ fis4 \divisioMinima
d2*4/2 cis2*3/4 ~ cis2*4/2 fis2*3/2 ~ fis4 \divisioMaior
cis2 ~ cis2*3/2 ~ cis2*3/4 ~ cis2*4/2 ~ \divisioMinima
cis4 ~ cis2 ~ cis2*5/2 fis2*3/2 ~ fis4 ~ \finalis
fis2 cis2 ~ cis2*6/2 e2 d2*5/2 fis2*3/2 cis4 ~ \divisioMinima
cis2*4/2 ~ cis2*4/2 fis2*5/2 d2*3/2 cis2*7/2 e2 ~ e4 \divisioMaior
fis2 cis2*3/2 d2*3/2 b,2*3/2 cis2*9/4 ~ cis2*5/2 fis2 ~ fis4 \divisioMaxima
r2 gis4 fis2*3/2 ~ fis2*7/4 ~ fis2*4/2 e4 ~ e2*3/2 ~ \divisioMaior
e4 cis2*3/2 d2*3/2 b,2*3/2 cis2*9/4 ~ cis2*5/2 fis2 ~ fis4 \divisioMaxima
gis2 fis2 ~ fis2 ~ fis4 \divisioMinima
d2*4/2 cis2*3/4 ~ cis2*4/2 fis2*3/2 ~ fis4 \divisioMaior
cis2 ~ cis2*3/2 ~ cis2*3/4 ~ cis2*4/2 ~ \divisioMinima
cis4 ~ cis2 ~ cis2*5/2 fis2*3/2 ~ fis4 \finalis
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
        "I"
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
