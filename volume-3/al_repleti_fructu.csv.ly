\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.260
%(volume.page)

global = {
 \key fis \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Repleti fructu" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Repleti fructu"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Repleti fructu" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ _ lú -- _ ia, 
\set stanza = " * " 
al -- le -- _ _ lú -- _ ia. 
_ _ _ _ ℣. 
Re -- plé -- ti fru -- _ _ ctu ju -- stí -- ti -- æ 
per Je -- sum Chri -- stum, 
in gló -- _ _ ri -- am et lau -- _ dem 
\set stanza = " * " De -- _ _ i. _ _ }

chantMusic = {
\tieDown   e'4 ( fis'4 a'4) a'4 b'4 ( gis'4 fis'4) a'4. gis'4 ( a'4 fis'4) fis'4 ( e'4) gis'4 ( gis'4 \once \tweak #'font-size #-4 fis' ) fis'4 \divisioMaior
  e'4 ( fis'4 a'4) a'4 b'4 ( gis'4 fis'4) a'4. gis'4 ( a'4 fis'4) fis'4 ( e'4) gis'4 ( gis'4 \once \tweak #'font-size #-4 fis' ) fis'4 \divisioMaior
 a'4 ( b'4 cis''4 b'4 a'4) b'4 ( a'4 a'4) gis'4 ( a'\prall b'4) gis'4 ( a'4 fis'4 gis'\prall a'4 gis'4 e'4 gis'\prall a'4 fis'4) \finalis
 fis'4 ( cis''4) a'4 ( b'\prall cis''4 b'4) b'4 ( a'4) a'4. gis'4 ( a'\prall b'4) gis'4 ( a'4 fis'4) fis'4 fis'4 ( b'4) b'4 ( a'4 gis'4 fis'4 gis'\prall a'4 gis'4) fis'4 ( gis'4) fis'4 ( e'4) \divisioMaior
 fis'4 ( a'4 gis'4) a'4 ( b'4) gis'4 ( fis'4 gis'\prall a'4 gis'4) fis'4 ( gis'4 fis'4 e'4 fis'4) fis'4 \divisioMaxima
 e'4 ( fis'4 a'4) a'4. gis'4 ( a'4 fis'4) gis'4 ( fis'4) e'4 ( fis'4) fis'4 \divisioMinima
 fis'4 fis'4 ( e'4) gis'4 ( gis'4 \once \tweak #'font-size #-4 fis' ) fis'4  a'4 ( b'4 a'4) cis''4 ( b'4) ~ b'4 ( a'4) a'4. gis'4 ( a'\prall b'4) gis'4 ( a'4 fis'4 gis'\prall a'4 gis'4 e'4 gis'\prall a'4 fis'4) \finalis

}

altoMusic = {
e'2*3/2 d'2*4/2 e'2*9/4 cis'2 ~ cis'2*3/2 ~ cis'4 ~ cis'2*3/2 ~ cis'2*4/2 ~ cis'2*9/4 ~ cis'2 ~ cis'2*3/2 ~ cis'4 \divisioMaior
fis'2*5/2 e'2*3/2 d'2*5/2 e'2*4/2 ~ e'2 cis'2 \finalis
fis'2 ~ fis'2*4/2 ~ fis'2 e'2*3/4 ~ e'2*7/2 ~ e'2 d'2*3/2 ~ d'2*6/2 cis'2 ~ \divisioMaior
cis'2*3/2 ~ cis'2 ~ cis'2*5/2 ~ cis'2*5/2 ~ cis'4 \divisioMaxima
e'2*3/2 ~ e'2*9/4 ~ e'2*4/2 cis'4 ~ \divisioMinima
cis'4 ~ cis'2 ~ cis'2*4/2 ~ cis'2*4/2 fis'2*3/2 e'2*3/4 ~ e'2*5/2 ~ e'2*4/2 ~ e'2 cis'2 \finalis
}

tenorMusic = {
a2*3/2 ~ a2*4/2 ~ a2*9/4 gis2 b2*3/2 a4 ~ a2*3/2 e2*4/2 fis2*9/4 gis2 b2*3/2 a4 ~ \divisioMaior
a2*5/2 ~ a2*3/2 ~ a2*5/2 ~ a2*4/2 b2 ~ b4 a4 \finalis
fis2 ~ fis2*4/2 ~ fis2 ~ fis2*3/4 e2*7/2 fis2 ~ fis2*3/2 a2*6/2 gis2 \divisioMaior
a2*3/2 fis2 gis2*5/2 b2*5/2 a4 ~ \divisioMaxima
a2*3/2 cis'2*9/4 b2*4/2 ~ b4 ~ \divisioMinima
b4 a2 gis2*4/2 fis2*4/2 ~ fis2*3/2 ~ fis2*3/4 gis2*5/2 a2*4/2 b2 ~ b4 a4 \finalis
}

bassMusic = {
cis2*3/2 b,2*4/2 cis2*9/4 ~ cis2 ~ cis2*3/2 fis4 a,2*3/2 ~ a,2*4/2 ~ a,2*9/4 cis2 fis2*3/2 ~ fis4 \divisioMaior
d2*5/2 cis2*3/2 b,2*5/2 cis2*4/2 ~ cis2 fis2 \finalis
r2 e2*4/2 d2 cis2*3/4 ~ cis2*7/2 b,2 ~ b,2*3/2 ~ b,2*6/2 cis2 \divisioMaior
fis2*3/2 ~ fis2 ~ fis2*5/2 ~ fis2*5/2 ~ fis4 \divisioMaxima
cis2*3/2 ~ cis2*9/4 ~ cis2*4/2 fis4 ~ \divisioMinima
fis4 ~ fis2 ~ fis2*4/2 ~ fis2*4/2 d2*3/2 cis2*3/4 ~ cis2*5/2 ~ cis2*4/2 ~ cis2 fis2 \finalis
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
