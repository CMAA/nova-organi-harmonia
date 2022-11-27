\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.150
%(volume.page)

global = {
 \key e \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Deus qui sedes" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Deus qui sedes"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Deus qui sedes" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- _ _ _ ia, 
\set stanza = " * " 
al -- le -- lú -- _ _ _ ia. 
_ _ _ _ _ _ _ ℣. 
De -- _ _ _ us, qui se -- _ _ _ des su -- per thro -- _ _ _ _ _ _ _ _ _ _ _ _ 
_ _ _ _ _ _ _ _ _ num, _ _ 
et jú -- di -- cas æ -- qui -- tá -- _ _ tem: _ _ 
e -- sto re -- fú -- gi -- um páu -- pe -- rum 
\set stanza = " * " 
in tri -- bu -- la -- ti -- ó -- _ _ _ ne. 
_ _ _ _ _ _ _ }

chantMusic = {
\tieDown   e'4 e'4 e'4 ( fis'4) a'4 ( fis'4) a'4 ( fis'4.) a'4 ( cis''4 a'4 b'4) b'4 \divisioMaior
 e'4 e'4 e'4 ( fis'4) a'4 ( fis'4) a'4 ( fis'4.) a'4 ( cis''4 a'4 b'4) b'4 \divisioMaior \forceBreak

 a'4 ( b'\prall cis''4 d''4 cis''4 b'4 a'4) b'4. gis'4 ( b'4 cis''4 b'4 a'4.) gis'4 ( a'4 fis'4 e'4) \divisioMinima
 gis'4 ( a'4 b'4 cis''4 b'4 a'4.) gis'4 ( a'4 fis'4 e'4) fis'4 ( gis'4 fis'4) ~ fis'4 ( e'4) \finalis \forceBreak

 e'4 ( fis'4) a'4 ( fis'4) a'4 ( fis'4.) a'4 ( cis''4 a'4 b'4) b'4 \divisioMinima
 e'4 ( b'4) b'4 ( cis''4.) a'4 ( d''4) cis''4 ( d''4 b'4) cis''4 ( cis''4 b'4) b'4 \divisioMinima
 b'4 gis'4 ( a'4 b'4 \forceBreak
) b'4 cis''4 ( gis'4) a'4 ( b'4.) cis''4 ( b'4) cis''4 ( gis'4) a'4 ( b'4) \divisioMinima
 d''4 ( d''4 a'4) cis''4 ( b'4) cis''4 ( a'4 fis'4 gis'\prall a'4 b'4.) gis'4 ( b'4 a'4 gis'4 e'4) \divisioMinima
 fis'4 ( a'4 gis'4 a'4.) fis'4 ( a'4. \forceBreak
) gis'4 ( a'4 fis'4 d'4) e'4. \divisioMaior
 b'4 ( cis''4 b'4 e'4) fis'4 ( e'4.) fis'4 ( gis'\prall a'4 b'4.) a'4 d''4 ( d''4 b'4) \divisioMinima
 d''4 ( cis''4) e''4 ( d''4) e''4 ( d''4 b'4.) d''4 ( cis''4) d''4 ( b'4 \forceBreak
 a'4 b'\prall cis''4) b'4 ( cis''4 a'4) b'4 ( a'4 gis'4) a'4 ( gis'4) \divisioMaior
 fis'4 ( b'4) b'4 ( cis''\prall d''4) b'4 ( a'4) a'4 a'4 a'4 ( b'4) b'4 ( a'4) b'4 ( a'4 fis'4.) b'4 ( a'4 b'4) b'4 ( cis''4 a'4 \forceBreak
) b'4 ( a'4 gis'4) a'4 ( gis'4) \divisioMaxima
 gis'4 ( a'4 b'4 cis''4) b'4 b'4 a'4 ( b'4) b'4 b'4 b'4 ( cis''4 a'4 gis'4 a'4) fis'4 ( gis'\prall a'4 gis'4 fis'4 e'4 fis'4) fis'4 ( e'4) \divisioMaior \forceBreak

 e'4 e'4 ( fis'4) e'4 e'4 e'4 e'4 ( fis'4) a'4 ( fis'4) a'4 ( fis'4.) a'4 ( cis''4 a'4 b'4) b'4 \divisioMaior
 a'4 ( b'\prall cis''4 d''4 cis''4 b'4 a'4 b'4. \forceBreak
) gis'4 ( b'4 cis''4 b'4 a'4.) gis'4 ( a'4 fis'4 e'4) \divisioMinima
 gis'4 ( a'4 b'4 cis''4 b'4 a'4.) gis'4 ( a'4 fis'4 e'4) fis'4 ( gis'4 fis'4) ~ fis'4 ( e'4) \finalis

}

altoMusic = {
cis'2 ~ cis'2 ~ cis'2 d'2*5/4 e'2*4/2 ~ e'4 \divisioMaior
cis'2 ~ cis'2 ~ cis'2 d'2*5/4 e'2 ~ e'2 ~ e'4 ~ \divisioMaior
e'2*3/2 ~ e'2*4/2 ~ e'2*3/4 ~ e'2*4/2 ~ e'2*9/4 ~ e'4 ~ \divisioMinima
e'2*3/2 ~ e'2 cis'2*3/4 ~ cis'2 ~ cis'2 d'2 b2 ~ b4 \finalis
cis'2*4/2 d'2*5/4 e'2*4/2 gis'4 \divisioMinima
e'2 fis'2*5/4 ~ fis'2 ~ fis'2*3/2 ~ fis'2*3/2 ~ fis'4 ~ \divisioMinima
fis'4 e'2*4/2 ~ e'2*9/4 ~ e'2*6/2 \divisioMinima
d'2*5/2 cis'2 ~ cis'2*3/2 b2*3/4 cis'2 ~ cis'2*3/2 \divisioMinima
d'2*9/4 ~ d'2*5/4 ~ d'2 ~ d'2 b2*3/4 \divisioMaior
e'2*4/2 ~ e'2*5/4 fis'2*3/2 ~ fis'2*5/4 ~ fis'2*3/2 ~ \divisioMinima
fis'2*4/2 ~ fis'2*7/4 ~ fis'2 ~ fis'2 e'2*3/2 ~ e'2*3/2 d'2*3/2 e'2 \divisioMaior
fis'2 ~ fis'2*3/2 ~ fis'2*4/2 ~ fis'2 ~ fis'2*11/4 ~ fis'2*3/2 ~ fis'2*3/2 ~ fis'2*3/2 e'2 ~ \divisioMaxima
e'2 ~ e'2 ~ e'2 ~ e'2 ~ e'2 ~ e'2*5/2 ~ e'2*4/2 d'2*3/2 b2 ~ \divisioMaior
b4 cis'2*5/2 ~ cis'2 ~ cis'2 d'2*5/4 e'2 ~ e'2 ~ e'4 ~ \divisioMaior
e'2*3/2 ~ e'2*4/2 ~ e'2*3/4 ~ e'2*4/2 ~ e'2*3/4 ~ e'2*3/2 ~ e'4 ~ \divisioMinima
e'2*3/2 ~ e'2 cis'2*3/4 ~ cis'2 ~ cis'2 d'2 b2 ~ b4 \finalis
}

tenorMusic = {
a2 ~ a2 ~ a2 ~ a2*5/4 ~ a2*4/2 gis4 \divisioMaior
a2 gis2 fis2 ~ fis2*5/4 e2 a2 gis4 \divisioMaior
a2*3/2 ~ a2*4/2 gis2*3/4 e2*4/2 a2*9/4 b4 ~ \divisioMinima
b2*3/2 gis2 a2*3/4 ~ a2 ~ a2 ~ a2 ~ a2 gis4 \finalis
a2*4/2 b2*5/4 cis'2*4/2 e'4 \divisioMinima
r2 d'2*5/4 ~ d'2 ~ d'2*3/2 e'2*3/2 d'4 ~ \divisioMinima
d'4 e'2*4/2 ~ e'2*9/4 gis2*6/2 \divisioMinima
fis2*5/2 ~ fis2 ~ fis2*3/2 ~ fis2*3/4 ~ fis2 e2*3/2 \divisioMinima
a2*9/4 ~ a2*5/4 fis2 a2 ~ a2*3/4 \divisioMaior
gis2*4/2 cis'2*5/4 ~ cis'2*3/2 d'2*5/4 ~ d'2*3/2 \divisioMinima
b2*4/2 ~ b2*7/4 a2 fis2 ~ fis2*3/2 ~ fis2*3/2 ~ fis2*3/2 e2 \divisioMaior
b2 d'2*3/2 cis'2*4/2 d'2 cis'2*11/4 b2*3/2 d'2*3/2 cis'2*3/2 b2 ~ \divisioMaxima
b2 a2 ~ a2 fis2 gis2 a2*5/2 ~ a2*4/2 ~ a2*3/2 ~ a4 gis4 ~ \divisioMaior
gis4 a2*5/2 b2 a2 fis2*5/4 e2 fis2 gis4 \divisioMaior
a2*3/2 ~ a2*4/2 gis2*3/4 ~ gis2*4/2 cis'2*3/4 ~ cis'2*3/2 b4 ~ \divisioMinima
b2*3/2 gis2 a2*3/4 ~ a2 ~ a2 ~ a2 ~ a2 gis4 \finalis
}

bassMusic = {
r2 gis2 fis2 ~ fis2*5/4 cis2*4/2 e4 \divisioMaior
a,2 ~ a,2 ~ a,2 b,2*5/4 cis2 ~ cis2 e4 \divisioMaior
cis2*3/2 a,2*4/2 e2*3/4 ~ e2*4/2 fis2*9/4 gis4 \divisioMinima
e2*3/2 ~ e2 fis2*3/4 e2 d2 b,2 e2 ~ e4 \finalis
r2*23/4 \divisioMinima
r2*9/4 cis'2 b2*3/2 ~ b2*3/2 ~ b4 \divisioMinima
r2*5/2 e2*9/4 ~ e2*6/2 \divisioMinima
b,2*5/2 a,2 d2*3/2 ~ d2*3/4 cis2 ~ cis2*3/2 ~ \divisioMinima
cis2*9/4 b,2*5/4 ~ b,2 ~ b,2 e2*3/4 ~ \divisioMaior
e2*4/2 a2*5/4 ~ a2*3/2 d'2*5/4 b2*3/2 ~ \divisioMinima
b2*4/2 b,2*7/4 fis2 ~ fis2 ~ fis2*3/2 b,2*3/2 ~ b,2*3/2 cis2 \divisioMaior
d2 ~ d2*3/2 fis2*4/2 ~ fis2 ~ fis2*11/4 d2*3/2 b,2*3/2 d2*3/2 e2 \divisioMaxima
cis2 ~ cis2 e2 ~ e2 ~ e2 cis2*5/2 d2*4/2 b,2*3/2 e2 ~ \divisioMaior
e4 a,2*5/2 gis,2 fis,2 b,2*5/4 cis2 ~ cis2 e4 \divisioMaior
cis2*3/2 a,2*4/2 e2*3/4 ~ e2*4/2 fis2*3/4 a2*3/2 gis4 \divisioMinima
e2*3/2 ~ e2 fis2*3/4 e2 d2 b,2 e2 ~ e4 \finalis
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
