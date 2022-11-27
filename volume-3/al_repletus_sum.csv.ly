\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.263
%(volume.page)

global = {
 \key fis \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Repletus sum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Repletus sum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Repletus sum" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- ia, 
\set stanza = " * " al -- le -- lú -- ia. _ _ _ _ _ _ _ ℣. 
Re -- plé -- tus _ sum con -- so -- la -- ti -- ó -- ne, _ _ 
su -- per -- a -- bún -- do gáu -- _ _ _ di -- o 
in o -- mni tri -- bu -- la -- ti -- ó -- ne 
\set stanza = " * " no -- stra. _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   fis'4 fis'4 ( e'4) fis'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( a'4 b'4) \divisioMinima
  fis'4 fis'4 ( e'4) fis'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( a'4 b'4) \divisioMinima
 a'4 ( b'4 cis''4.) b'4 ( cis''4 b'4) ~ b'4 ( fis'4) a'4 ( a'4 b'4) \divisioMinima
 a'4 ( b'4 cis''4.) b'4 ( cis''4 b'4 a'4 a'4) b'4 ( a'4 gis'4 fis'4 gis'\prall a'4 fis'4) \finalis
 fis'4 a'4 ( b'4) b'4 ( a'4) b'4 ( fis'4) fis'4 ( e'4) a'4 ( \once \tweak #'font-size #-4 b' ) a'4 a'4 a'4 ( gis'4) b'4 ( cis''4 b'4 cis''4) cis''4 ( b'4 a'4) gis'4 ( a'4 b'4) ~ b'4 ( a'4) \divisioMaior
 a'4 a'4 ( gis'4) b'4 a'4 ( \once \tweak #'font-size #-4 b' ) cis''4 ( b'4 cis''4) cis''4 ( b'4 a'4) b'4 ( cis''4 a'4) ~ a'4 ( gis'4 fis'4.) e'4 ( fis'4 gis'\prall a'4) gis'4 ( fis'4) fis'4 \divisioMaxima
 fis'4 ( gis'\prall a'4) a'4 ( a'4 \once \tweak #'font-size #-4 b' ) b'4 ( a'4 b'4) fis'4 fis'4 fis'4 ( b'4) b'4 ( a'4) fis'4 ( gis'\prall a'4 fis'4) fis'4 ( e'4)  fis'4 ( a'4) a'4 ( a'4 b'4) \divisioMinima
 a'4 ( b'4 cis''4.) b'4 ( cis''4 b'4) ~ b'4 ( fis'4) a'4 ( a'4 b'4) \divisioMinima
 a'4 ( b'4 cis''4.) b'4 ( cis''4 b'4 a'4 a'4) b'4 ( a'4 gis'4 fis'4 gis'\prall a'4 fis'4) \finalis

}

altoMusic = {
cis'4 ~ cis'2 ~ cis'2 fis'2*3/2 d'4 b2 ~ b2 e'2 ~ e'4 ~ \divisioMinima
e'2*11/4 fis'2*3/2 e'2 ~ e'4 ~ \divisioMinima
e'2*7/4 d'2*5/2 cis'2*3/2 ~ cis'2 ~ cis'2 \finalis
r4 cis'2 ~ cis'2*4/2 ~ cis'2 ~ cis'2*4/2 ~ cis'2 fis'2*4/2 e'2*5/2 ~ e'2*3/2 ~ \divisioMaior
e'4 fis'2*3/2 ~ fis'2 e'2*3/2 cis'2*5/2 ~ cis'2*9/4 ~ cis'2*6/2 ~ cis'4 \divisioMaxima
fis'2*3/2 e'2*3/2 fis'2*3/2 e'2 d'2 ~ d'2 cis'2*4/2 ~ cis'2 ~ cis'2 fis'2*3/2 \divisioMinima
e'2*11/4 fis'2*3/2 e'2 ~ e'4 ~ \divisioMinima
e'2*7/4 d'2*5/2 cis'2*3/2 ~ cis'2 ~ cis'2 \finalis
}

tenorMusic = {
a4 ~ a2 ~ a2 ~ a2*3/2 ~ a4 ~ a2 ~ a2 fis2 gis4 \divisioMinima
a2*11/4 ~ a2*3/2 fis2 gis4 \divisioMinima
a2*7/4 ~ a2*5/2 ~ a2*3/2 b2 a2 \finalis
r2*3/2 gis2*4/2 b2 a2*4/2 ~ a2 ~ a2*4/2 ~ a2*5/2 gis2 a4 ~ \divisioMaior
a4 ~ a2*3/2 fis2 gis2*3/2 ~ gis2*5/2 a2*9/4 b2*6/2 a4 \divisioMaxima
d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 cis'2 ~ cis'2 b2 ~ b2*4/2 a2 ~ a2 ~ a2*3/2 ~ \divisioMinima
a2*11/4 ~ a2*3/2 fis2 gis4 \divisioMinima
a2*7/4 ~ a2*5/2 ~ a2*3/2 b2 a2 \finalis
}

bassMusic = {
r4 gis2 fis2 d2*3/2 ~ d4 ~ d2 e2 ~ e2 ~ e4 \divisioMinima
cis2*11/4 d2*3/2 e2 ~ e4 \divisioMinima
fis2*7/4 ~ fis2*5/2 ~ fis2*3/2 ~ fis2 ~ fis2 ~ \finalis
fis2*3/2 ~ fis2*4/2 ~ fis2 ~ fis2*4/2 e2 d2*4/2 cis2*5/2 ~ cis2 ~ cis4 ~ \divisioMaior
cis4 d2*3/2 ~ d2 e2*3/2 fis2*5/2 ~ fis2*9/4 ~ fis2*6/2 ~ fis4 \divisioMaxima
r2*21/2 fis2 d2*3/2 \divisioMinima
cis2*11/4 d2*3/2 e2 ~ e4 \divisioMinima
fis2*7/4 ~ fis2*5/2 ~ fis2*3/2 ~ fis2 ~ fis2 \finalis
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
