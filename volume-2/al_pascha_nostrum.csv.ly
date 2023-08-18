\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.4
%(volume.page)

global = {
 \key e \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Pascha nostrum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Pascha nostrum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Pascha nostrum" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- _ _ ia, 
\set stanza = " * " 
al -- le -- lú -- _ _ ia. 
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ℣. 
Pas -- cha no -- strum _ _ _ _ _ _ 
im -- mo -- lá -- _ _ _ _ 
_ _ _ _ _ _ _ _ _ _ _ _ tus _ _ est 
\set stanza = " * " 
Chri -- _ stus. _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   e'4 e'4 e'4 ( fis'4 a'4.) fis'4 ( b'4) gis'4 ( \once \tweak #'font-size #-4 b' ) b'4 ( b'4) \divisioMaior
  e'4 e'4 e'4 ( fis'4 a'4.) fis'4 ( b'4) gis'4 ( \once \tweak #'font-size #-4 b' ) b'4 ( b'4) \divisioMaior
 gis'4 ( b'\prall cis''4 b'4 cis''4. \forceBreak
) b'4 ( cis''4 b'4) a'4 ( b'4 a'4 fis'4) ~ fis'4 ( e'4) \divisioMinima
 b'4. cis''4 ( b'4) cis''4 ( b'4) cis''4 ( b'4 gis'4.) a'4 ( b'4 a'4) b'4 ( a'4 fis'4) ~ fis'4 ( e'4) \divisioMinima
 b'4. e'4 ( fis'4.) e'4 ( fis'4 d'4. \forceBreak
) fis'4 ( a'4 fis'4) gis'4 ( fis'4) ~ fis'4 ( e'4) \finalis
 a'4 gis'4 b'4 ( cis''4 b'4 cis''4) b'4 ( cis''4 b'4) cis''4 ( gis'4.) a'4 ( b'4) cis''4 ( b'4) cis''4 ( gis'4) a'4 ( b'4 a'4) ~ a'4 ( gis'4) \divisioMaior \forceBreak

 a'4 b'4 b'4 ( e''4) fis''4 ( e''4 d''4) e''4 ( d''4 cis''4) d''4 ( d''4) ~ d''4 ( b'4) \divisioMaior
 e''4. fis''4 ( e''4 d''4) e''4 ( d''4 cis''4) d''4 ( d''4) ~ d''4 ( b'4.) cis''4 ( b'4 a'4) ~ a'4 ( a'4 fis'4 \forceBreak
) gis'4 ( a'4 b'4) \divisioMinima
 cis''4 ( d''4 b'4 a'4) b'4 ( a'4 fis'4) ~ fis'4 ( e'4) \divisioMinima
 gis'4 ( a'\prall b'4 gis'4 b'4) ~ b'4 ( gis'4 b'4) gis'4 ( b'4 gis'4 fis'4 e'4) gis'4 ( fis'4 e'4) fis'4 ( e'4) e'4 \divisioMaior \forceBreak

 e'4 ( fis'4 a'4.) fis'4 ( b'4 gis'4 b'4) b'4 ( b'4 e'4) \divisioMinima
 b'4 cis''4 ( b'4 a'4) b'4 ( a'4 fis'4) ~ fis'4 ( e'4) \divisioMinima
 b'4. e'4 ( fis'4.) e'4 ( fis'4 d'4.) fis'4 ( a'4 fis'4) gis'4 ( fis'4) ~ fis'4 ( e'4) \finalis

}

altoMusic = {
r2 e'2*7/4 d'2 fis'2 e'2 cis'2 ~ cis'2*7/4 d'2 fis'2 e'2 \divisioMaior
fis'2 ~ fis'2 e'2*3/4 cis'2*3/2 ~ cis'2*3/2 b2*3/2 \divisioMinima
e'2*7/4 fis'2 e'2*7/4 ~ e'2*3/2 ~ e'2 cis'2*3/2 \divisioMinima
b2*3/4 ~ b2*5/4 a2*7/4 d'2 ~ d'2 b2 ~ b4 \finalis
r4 gis'4 ~ gis'2*4/2 ~ gis'2*4/2 ~ gis'2*3/4 e'2 ~ e'2*4/2 ~ e'2 ~ e'2 ~ e'4 \divisioMaior
a'2 gis'2 a'2*3/2 ~ a'2*3/2 ~ a'2 ~ a'2 ~ \divisioMaior
a'2*3/4 ~ a'2*6/2 ~ a'2 fis'2*5/4 ~ fis'2*3/2 ~ fis'2 ~ fis'4 e'2*3/2 \divisioMinima
d'2*4/2 ~ d'2 r2 e'4 ~ \divisioMinima
e'2*4/2 ~ e'2*4/2 cis'2*5/2 ~ cis'2*3/2 b2 ~ b4 \divisioMaior
cis'2*7/4 d'2*4/2 e'2*4/2 ~ e'2*3/2 ~ e'2 cis'2*3/2 \divisioMinima
b2*3/4 ~ b2*5/4 a2*7/4 d'2 ~ d'2 b2 ~ b4 \finalis
}

tenorMusic = {
cis'2 ~ cis'2*7/4 b2 ~ b2 gis2 r2 a2*7/4 ~ a2 b2 gis2 \divisioMaior
b2 gis2 ~ gis2*3/4 ~ gis2*3/2 fis2*3/2 gis2*3/2 ~ \divisioMinima
gis2*7/4 ~ gis2 ~ gis2*7/4 e2*3/2 fis2 gis2*3/2 ~ \divisioMinima
gis2*3/4 cis2*5/4 d2*7/4 ~ d2 a2 ~ a2 gis4 \finalis
e'2*6/2 ~ e'2*11/4 cis'2 ~ cis'2*4/2 ~ cis'2 ~ cis'2 ~ cis'4 \divisioMaior
e'2 ~ e'2 d'2*3/2 ~ d'2*3/2 fis'2 e'2 ~ \divisioMaior
e'2*3/4 d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'2*5/4 ~ d'2*3/2 cis'2*3/2 ~ cis'2*3/2 \divisioMinima
b2*4/2 ~ b2 ~ b2*3/2 ~ \divisioMinima
b2*4/2 ~ b2*4/2 e2 ~ e2*3/2 ~ e2*3/2 ~ e2 ~ e4 ~ \divisioMaior
e4 a2*5/4 ~ a2*4/2 gis2*3/2 ~ \divisioMinima
gis4 a2*3/2 fis2 gis2*3/2 ~ \divisioMinima
gis2*3/4 cis2*5/4 d2*7/4 ~ d2 a2 ~ a2 gis4 \finalis
}

bassMusic = {
r2 a2*7/4 ~ a2 e2 ~ e2 a,2 ~ a,2*7/4 b,2 e2 ~ e2 \divisioMaior
d2 ~ d2 cis2*3/4 e2*3/2 fis2*3/2 r2*3/2 \divisioMinima
e2*7/4 d2 cis2*7/4 ~ cis2*3/2 ~ cis2 ~ cis2*3/2 \divisioMinima
gis,2*3/4 ~ gis,2*5/4 fis,2*7/4 b,2 ~ b,2 e2 ~ e4 \finalis
r2*6/2 cis'2*11/4 ~ cis'2 a2*4/2 fis2 cis'2 ~ cis'4 ~ \divisioMaior
cis'2 ~ cis'2 ~ cis'2*3/2 b2*3/2 ~ b2 e'2 \divisioMaior
cis'2*3/4 d'2*3/2 cis'2*3/2 b2 ~ b2*5/4 gis2*3/2 fis2*3/2 cis'2*3/2 \divisioMinima
r2*4/2 a2 gis2*3/2 \divisioMinima
e2*4/2 cis2*4/2 ~ cis2 b,2*3/2 a,2*3/2 ~ a,2 gis,4 \divisioMaior
a,2*7/4 b,2*4/2 cis2*4/2 ~ cis2*3/2 ~ cis2 ~ cis2*3/2 \divisioMinima
gis,2*3/4 ~ gis,2*5/4 fis,2*7/4 b,2 ~ b,2 e2 ~ e4 \finalis
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
