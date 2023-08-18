\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.246
%(volume.page)

global = {
 \key fis \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"In exitu Israel" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "In exitu Israel"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "In exitu Israel" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ _ _ lú -- ia, 
\set stanza = " * " 
al -- le -- _ _ _ lú -- ia. 
_ _ _ _ _ _ _ _ 
_ _ _ _ _ _ _ _ ℣. 
In _ éx -- i -- tu Is -- _ ra -- _ el 
ex Æ -- gý -- pto, _ _ 
do -- _ mus Ja -- _ cob 
de pó -- _ _ _ _ pu -- lo 
\set stanza = " * " bár -- ba -- ro. _ _ _ _ _ _ _ _ 
_ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   e'4 ( fis'4 \once \tweak #'font-size #-4 gis' ) gis'4. a'4 ( b'4 gis'4) a'4 ( fis'4) ~ fis'4 ( e'4) fis'4 ( \once \tweak #'font-size #-4 gis' ) gis'4 \divisioMaior
 e'4 ( fis'4 \once \tweak #'font-size #-4 gis' ) gis'4. a'4 ( b'4 gis'4) a'4 ( fis'4) ~ fis'4 ( e'4) fis'4 ( \once \tweak #'font-size #-4 gis' ) gis'4 \divisioMaior \forceBreak

 fis'4 ( b'4 a'4 fis'4 gis'4.) fis'4 a'4 ( a'4) \divisioMinima
 fis'4 ( gis'\prall a'4 b'4 a'4 fis'4 gis'4.) fis'4 a'4 ( a'4) \divisioMinima
 gis'4 ( a'\prall b'4 cis''4 b'4 a'4) b'4 ( a'4 fis'4) gis'4 ( fis'4) ~ fis'4 ( e'4) \divisioMaior \forceBreak

 e'4 ( fis'4) a'4 ( fis'4) ~ fis'4 ( e'4.) gis'4 ( b'4 a'4) ~ a'4 ( a'4) ~ a'4 ( gis'4 fis'4 e'4.) gis'4 ( a'4 gis'4) ~ gis'4 ( fis'4) \finalis
 e'4 ( fis'\prall gis'4) ~ gis'4 ( fis'4) fis'4 ( gis'\prall a'4) gis'4 ( fis'4) fis'4 a'4 ( cis''4) ~ cis''4 ( b'4 \forceBreak
) gis'4 ( fis'4) a'4 ( fis'4 e'4 gis'4) gis'4 \divisioMaior
  fis'4 ( cis''4 b'4 cis''\prall dis''4 cis''4 b'4 cis''4) gis'4 ( fis'4 a'4) e'4 ( fis'4 a'4) gis'4. a'4 ( b'4 gis'4 fis'4) a'4 ( gis'4 e'4 fis'4) \divisioMaxima \forceBreak

 fis'4 ( gis'4) a'4 ( b'4) b'4 ( gis'4) a'4 ( b'4 gis'4 fis'4) a'4 ( a'4 gis'4) gis'4 \divisioMaior
 e'4 ( gis'4) b'4 ( gis'4) b'4 ( cis''4 b'4 gis'4.) e'4 ( gis'4 fis'4) b'4 ( gis'4 fis'4) a'4 ( a'4 gis'4) e'4 ( fis'4) fis'4 \divisioMinima \forceBreak

 e'4 ( fis'4 \once \tweak #'font-size #-4 gis' ) gis'4 gis'4. fis'4 ( b'4 a'4 fis'4 gis'4.) fis'4 ( a'4 a'4) \divisioMinima
 fis'4 ( gis'\prall a'4 b'4 a'4 fis'4 gis'4.) fis'4 a'4 ( a'4) \divisioMinima
 gis'4 ( a'\prall b'4 cis''4 b'4 a'4) b'4 ( a'4 fis'4) gis'4 ( fis'4) ~ fis'4 ( e'4) \divisioMaior \forceBreak

 e'4 ( fis'4) a'4 ( fis'4) ~ fis'4 ( e'4.) gis'4 ( b'4 a'4) ~ a'4 ( a'4) ~ a'4 ( gis'4 fis'4 e'4.) gis'4 ( a'4 gis'4) ~ gis'4 ( fis'4) \finalis

}

altoMusic = {
e'2*3/2 ~ e'2*3/4 ~ e'2*7/2 cis'2 e'4 ~ \divisioMaior
e'2*3/2 ~ e'2*3/4 ~ e'2*4/2 cis'2*3/2 ~ cis'2 e'4 \divisioMaior
fis'2*4/2 cis'2*5/4 ~ cis'2 \divisioMinima
fis'2*3/2 ~ fis'2*3/2 cis'2*5/4 ~ cis'2 ~ \divisioMinima
cis'2*3/2 ~ cis'2*3/2 fis'2*4/2 cis'2*3/2 ~ \divisioMaior
cis'2*3/2 b2*7/4 cis'2*3/2 d'2 e'2*3/2 ~ e'2*3/4 ~ e'2 cis'2 ~ cis'4 \finalis
e'2 ~ e'2*3/2 cis'2*3/2 ~ cis'2*4/2 fis'2*3/2 ~ fis'2 e'2*5/2 fis'2 ~ fis'2 d'2*4/2 cis'2*6/2 ~ cis'2*3/4 e'2 ~ e'2 cis'2 ~ cis'2 \divisioMaxima
d'2*4/2 e'2 ~ e'2 ~ e'2 ~ e'2*4/2 ~ \divisioMaior
e'2 ~ e'2 ~ e'2*3/2 ~ e'2*3/4 ~ e'2*3/2 ~ e'2*3/2 cis'2*3/2 ~ cis'2 ~ cis'4 ~ \divisioMinima
cis'2*4/2 ~ cis'2*3/4 fis'2*4/2 cis'2*3/4 ~ cis'2*3/2 ~ \divisioMinima
cis'2*3/2 b2*3/2 cis'2*9/4 ~ \divisioMinima
cis'2*3/2 ~ cis'2*3/2 fis'2*4/2 cis'2*3/2 ~ \divisioMaior
cis'2*3/2 b2*7/4 cis'2*3/2 d'2 e'2*3/2 cis'2*3/4 b2 ~ b2 a4 \finalis
}

tenorMusic = {
cis'2*3/2 ~ cis'2*3/4 ~ cis'2*4/2 b2*3/2 a2 b4 \divisioMaior
cis'2*3/2 b2*3/4 a2*4/2 gis2*3/2 a2 b4 ~ \divisioMaior
b2*4/2 ~ b2*5/4 a2 \divisioMinima
d'2*3/2 cis'2*3/2 b2*5/4 a2 \divisioMinima
r2*3/2 gis2*3/2 fis2*4/2 gis2*3/2 \divisioMaior
a2*3/2 gis2*7/4 fis2*3/2 ~ fis2 e2*3/2 gis2*3/4 b2 ~ b2 a4 \finalis
cis'2 b2*3/2 ~ b2*3/2 a2*4/2 d'2*3/2 b2 ~ b2*5/2 a2 fis2 ~ fis2*4/2 ~ fis2*6/2 e2*3/4 cis'2 b2 ~ b2 ~ b4 a4 ~ \divisioMaxima
a2*4/2 gis2 fis2 a2 b2*4/2 \divisioMaior
cis'2 b2 gis2*3/2 b2*3/4 cis'2*3/2 b2*3/2 ~ b2*3/2 gis2 a4 \divisioMinima
gis2*4/2 ~ gis2*3/4 b2*4/2 ~ b2*3/4 a2*3/2 ~ \divisioMinima
a2*3/2 fis2*3/2 ~ fis2*9/4 \divisioMinima
e2*3/2 gis2*3/2 fis2*4/2 gis2*3/2 \divisioMaior
a2*3/2 gis2*7/4 fis2*3/2 ~ fis2 e2*3/2 gis2*3/4 e2 cis2 ~ cis4 \finalis
}

bassMusic = {
r2*3/2 b2*3/4 a2*4/2 gis2*3/2 fis2 e4 \divisioMaior
cis2*3/2 ~ cis2*3/4 ~ cis2*4/2 ~ cis2*3/2 fis2 e4 \divisioMaior
d2*4/2 fis2*5/4 ~ fis2 ~ \divisioMinima
fis2*3/2 ~ fis2*3/2 ~ fis2*5/4 ~ fis2 \divisioMinima
e2*3/2 ~ e2*3/2 d2*4/2 cis2*3/2 \divisioMaior
a,2*3/2 ~ a,2*7/4 ~ a,2*3/2 b,2 cis2*3/2 ~ cis2*3/4 ~ cis2 fis2 ~ fis4 \finalis
cis2 ~ cis2*3/2 fis2*3/2 ~ fis2*4/2 d2*3/2 ~ d2 e2*5/2 ~ e2 d2 b,2*4/2 a,2*6/2 cis2*3/4 ~ cis2 ~ cis2 fis2 ~ fis2 \divisioMaxima
b,2*4/2 cis2 fis2 ~ fis2 e2*4/2 ~ \divisioMaior
e2 ~ e2 ~ e2*3/2 ~ e2*3/4 a2*3/2 gis2*3/2 fis2*3/2 ~ fis2 ~ fis4 \divisioMinima
cis2*4/2 e2*3/4 d2*4/2 fis2*3/4 ~ fis2*3/2 \divisioMinima
d2*3/2 ~ d2*3/2 a,2*9/4 \divisioMinima
cis2*3/2 e2*3/2 d2*4/2 cis2*3/2 \divisioMaior
a,2*3/2 ~ a,2*7/4 ~ a,2*3/2 b,2 cis2*3/2 ~ cis2*3/4 ~ cis2 fis,2 ~ fis,4 \finalis
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
