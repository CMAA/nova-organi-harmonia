\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.118
%(volume.page)

global = {
 \key e \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Caro mea" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Caro mea"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Caro mea" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ lú -- _ ia, 
\set stanza = " * " 
al -- le -- _ lú -- _ ia. 
_ _ _ _ _ _ _ _ _ ℣. 
Ca -- ro _ me -- a ve -- re est ci -- _ bus, 
et san -- _ _ _ _ guis me -- us ve -- re est po -- _ _ tus: 
qui man -- dú -- _ _ _ cat 
me -- _ _ am car -- nem, _ 
et bi -- bit me -- _ _ _ um sán -- _ _ gui -- nem, 
in me _ ma -- _ net, 
et e -- go 
\set stanza = " * " in e -- o. _ _ _ _ _ _ }

chantMusic = {
\tieDown   d'4 e'4 ( fis'4 d'4 e'4) fis'4 ( fis'4 e'4) d'4 ( fis'4 a'4 gis'4 fis'4) a'4 ( a'4) e'4 \divisioMaior
 d'4 e'4 ( fis'4 d'4 e'4) fis'4 ( fis'4 e'4 \forceBreak
) d'4 ( fis'4 a'4 gis'4 fis'4) a'4 ( a'4) e'4 \divisioMaior
 a'4. b'4 ( cis''4 cis''4) a'4 b'4 ( b'4) e'4 ( fis'4 e'4 d'4) fis'4 ( fis'4 e'4) \divisioMinima
 a'4 b'4 ( gis'4) a'4 ( fis'4 e'4 d'4 cis'4 b4. \forceBreak
) e'4 ( fis'4 gis'\prall a'4) ~ a'4 ( gis'4 fis'4 e'4) fis'4 ( fis'4 e'4) \finalis
 e'4 ( a'4) a'4 ( gis'4) fis'4 ( gis'4 e'4) fis'4 ( e'4) e'4 \divisioMinima
 d'4 e'4 ( fis'4 e'4 fis'4) fis'4 \forceBreak
 a'4 ( gis'4 fis'4) gis'4 ( e'4) e'4 \divisioMaior
 e'4 ( b'4) b'4. cis''4 ( d''4 cis''4) ~ cis''4 ( b'4 a'4) cis''4 ( a'4) b'4 ( cis''4) b'4 b'4 ( cis''4) b'4 \divisioMinima
 b'4 ( cis''4) b'4 b'4 \forceBreak
 cis''4 ( d''\prall e''4 cis''4) d''4 ( cis''4 b'4) cis''4 ( b'4 a'4 b'4) b'4 \divisioMaxima
 b'4 ( cis''4) b'4 b'4 ( cis''4) d''4 ( e''4 cis''4) d''4 ( cis''4 b'4) cis''4 ( b'4 a'4 b'4) b'4 \divisioMaior \forceBreak

 e'4 ( b'4) cis''4 ( b'4 a'4) ~ a'4 ( gis'4 fis'4 e'4) fis'4 ( e'4) d'4 ( e'4) e'4 fis'4 ( fis'4 e'4) \divisioMaior
 e'4 e'4 ( a'4 gis'4) a'4 ( b'4) b'4 cis''4 ( d''4 cis''4) ~ cis''4 ( b'4 a'4 gis'4 \forceBreak
) a'4 ( b'4 a'4) b'4 \divisioMinima
 a'4. fis'4 ( a'4 gis'4 fis'4 e'4 d'4.) fis'4 ( gis'4) fis'4 ( e'4) e'4 \divisioMaior
 d'4 e'4 ( fis'4 d'4 e'4) fis'4 ( fis'4 e'4 \forceBreak
) d'4 ( fis'4 a'4 gis'4 fis'4) a'4 ( a'4) e'4 \divisioMaior
 a'4 b'4 ( cis''4 cis''4) a'4  b'4 b'4 e'4 ( fis'4 e'4 d'4) fis'4 ( fis'4 e'4) \divisioMinima \forceBreak

 a'4 b'4 ( gis'4) a'4 ( fis'4 e'4 d'4 cis'4 b4.) e'4 ( fis'4 gis'\prall a'4) ~ a'4 ( gis'4 fis'4 e'4) fis'4 ( fis'4 e'4) \finalis

}

altoMusic = {
r2*8/2 d'2*5/2 e'2 ~ e'4 \divisioMaior
r2*8/2 d'2*5/2 e'2 ~ e'4 \divisioMaior
cis'2*3/4 e'2*4/2 ~ e'2 b2 ~ b2 ~ b2 ~ b4 \divisioMinima
e'4 ~ e'2 cis'2*3/2 a2 b2*3/4 ~ b2*3/2 a2 ~ a2*3/2 ~ a2 gis4 \finalis
r2 cis'2*5/2 b2*3/2 ~ \divisioMinima
b4 ~ b2 ~ b2*3/2 cis'2*3/2 e'2 ~ e'4 \divisioMaior
b2 e'2*3/4 ~ e'2 ~ e'2*4/2 ~ e'2 d'2*3/2 e'2*3/2 \divisioMinima
fis'2 ~ fis'2 ~ fis'2*4/2 e'2*3/2 ~ e'2*4/2 d'4 \divisioMaxima
e'2*3/2 fis'2 ~ fis'2*3/2 ~ fis'2*3/2 e'2 ~ e'2 ~ e'4 ~ \divisioMaior
e'2*4/2 ~ e'2*4/2 ~ e'4 d'2 ~ d'4 r2 cis'2*3/2 \divisioMaior
e'4 ~ e'2*6/2 a'2 fis'2 ~ fis'2*3/2 e'2*3/2 ~ e'4 \divisioMinima
cis'2*3/4 ~ cis'2*3/2 d'2 ~ d'2*3/4 cis'2 ~ cis'2*3/2 \divisioMaior
d'4 ~ d'2*4/2 cis'2*3/2 d'2*5/2 e'2*3/2 \divisioMaior
r4 e'2*4/2 ~ e'2 b2 ~ b2 ~ b2 ~ b4 \divisioMinima
e'4 ~ e'2 cis'2*3/2 a2 b2*3/4 ~ b2*3/2 a2 ~ a2*3/2 ~ a2 gis4 \finalis
}

tenorMusic = {
r4 a2*4/2 ~ a2*3/2 ~ a2*5/2 ~ a2*3/2 \divisioMaior
d4 a2*4/2 ~ a2*3/2 ~ a2*5/2 ~ a2*3/2 \divisioMaior
e2*3/4 a2*4/2 gis2 ~ gis2 fis2 a2 gis4 \divisioMinima
cis4 e2 fis2*3/2 ~ fis2 ~ fis2*3/4 e2*3/2 cis2 ~ cis2*3/2 b,2 ~ b,4 \finalis
r2*10/2 \divisioMinima
r2*6/2 a2*3/2 b2*3/2 \divisioMaior
a2 gis2*3/4 a2 ~ a2*4/2 fis2 ~ fis2*3/2 gis2*3/2 \divisioMinima
b2 ~ b2 a2*4/2 ~ a2*3/2 fis2*4/2 ~ fis4 \divisioMaxima
gis2*3/2 b2 a2*3/2 ~ a2*3/2 gis2 fis2 gis4 ~ \divisioMaior
gis2*4/2 a2*5/2 ~ a2*5/2 gis2*3/2 \divisioMaior
cis'4 ~ cis'2*3/2 ~ cis'2*3/2 a2 ~ a2 ~ a2*3/2 ~ a2*3/2 gis4 \divisioMinima
a2*3/4 b2*3/2 a2*7/4 ~ a2 gis2*3/2 \divisioMaior
fis4 ~ fis2*4/2 a2*3/2 ~ a2*5/2 ~ a2*3/2 \divisioMaior
r4 a2*4/2 ~ a2 gis2 fis2 a2 gis4 \divisioMinima
r4 e2 fis2*3/2 ~ fis2 ~ fis2*3/4 e2*3/2 cis2 ~ cis2*3/2 b,2 ~ b,4 \finalis
}

bassMusic = {
d4 ~ d2*4/2 cis2*3/2 b,2*5/2 cis2*3/2 \divisioMaior
d4 ~ d2*4/2 cis2*3/2 b,2*5/2 cis2*3/2 \divisioMaior
a,2*3/4 ~ a,2*4/2 e2 ~ e2 ~ e2 ~ e2 ~ e4 \divisioMinima
cis4 ~ cis2 fis2*3/2 e2 d2*3/4 cis2*3/2 fis,2 a,2*3/2 e,2 ~ e,4 \finalis
a2 ~ a2*5/2 gis2*3/2 \divisioMinima
b4 a2 gis2*3/2 fis2*3/2 e2*3/2 ~ \divisioMaior
e2 ~ e2*3/4 a2 a,2*4/2 b,2 ~ b,2*3/2 e2*3/2 ~ \divisioMinima
e2 d2 fis2*4/2 ~ fis2*3/2 b,2*4/2 ~ b,4 \divisioMaxima
e2*3/2 d2 ~ d2*3/2 b,2*3/2 e2 ~ e2 ~ e4 ~ \divisioMaior
e2*4/2 cis2*5/2 b,2*5/2 cis2*3/2 \divisioMaior
r4 a2*3/2 gis2*3/2 fis2 e2 d2*3/2 cis2*3/2 ~ cis4 \divisioMinima
fis2*3/4 ~ fis2*3/2 ~ fis2*7/4 cis2 ~ cis2*3/2 ~ \divisioMaior
cis4 b,2*4/2 a,2*3/2 b,2*5/2 cis2*3/2 ~ \divisioMaior
cis4 a,2*4/2 e2 ~ e2 ~ e2 ~ e2 ~ e4 \divisioMinima
cis4 ~ cis2 fis2*3/2 e2 d2*3/4 cis2*3/2 fis,2 a,2*3/2 e,2 ~ e,4 \finalis
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
        "7"
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
