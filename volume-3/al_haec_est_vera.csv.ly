\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.176
%(volume.page)

global = {
 \key e \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Haec est vera" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Haec est vera"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Haec est vera" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- _ ia, 
\set stanza = " * " 
al -- le -- lú -- _ ia. 
_ _ _ _ _ _ _ _ _ ℣. 
Hæc est ve -- _ ra fra -- tér -- _ ni -- tas, 
quæ _ _ vi -- cit mun -- di _ crí -- _ mi -- na: 
Chri -- _ stum se -- cú -- _ ta _ est, 
ín -- cly -- _ ta te -- nens re -- gna 
\set stanza = " * " cœ -- lés -- sti -- _ a. 
_ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   e'4 ( fis'4) e'4 e'4 ( a'4 gis'4) a'4 ( b'4 a'4 gis'4 fis'4 fis'4) e'4 \divisioMaior
  e'4 ( fis'4) e'4 e'4 ( a'4 gis'4) a'4 ( b'4 a'4 gis'4 fis'4 fis'4) e'4 \divisioMaior
 e'4 ( a'4 b'4 cis''4) ~ cis''4 ( cis''4 b'4 gis'4) b'4 ( a'4 fis'4 e'4) \divisioMinima
 e'4 ( a'4 b'4 cis''4) ~ cis''4 ( cis''4 b'4 gis'4) b'4 ( a'4 fis'4 e'4.) fis'4 ( a'4 fis'4) gis'4 ( fis'4) ~ fis'4 ( e'4) \finalis
 e'4 ( fis'4) e'4 e'4 ( a'4 gis'4) a'4 ( b'4 a'4 gis'4 fis'4 fis'4) e'4 gis'4 gis'4 ( fis'4) gis'4 ( a'4 gis'4 gis'4) fis'4 ( e'4) e'4 \divisioMaior
 e'4 ( a'4 b'4 cis''4) ~ cis''4 ( cis''4 b'4 gis'4) b'4 ( a'4 fis'4 e'4) fis'4 ( a'4 fis'4 gis'4) fis'4 ( e'4) \divisioMinima
 a'4 ( \once \tweak #'font-size #-4 gis' ) fis'4 b'4 ( b'4 a'4 fis'4) a'4 ( gis'4) a'4 ( b'4) fis'4 ( gis'\prall a'4 gis'4 fis'4 e'4 fis'4) fis'4 ( e'4) \divisioMaxima
 e'4 ( d'4 cis'4 d'4) e'4 ( fis'4 e'4) e'4 b'4 a'4 ( b'4) ~ b'4 ( e'4) fis'4 ( gis'4 fis'4) ~ fis'4 ( e'4) e'4 \divisioMaior
 e'4 ( fis'4) e'4 ( a'4 gis'4) a'4 ( b'4 a'4 gis'4 fis'4 fis'4) e'4 gis'4 fis'4 ( a'4 gis'4 gis'4) fis'4 ( fis'4) e'4 \divisioMinima
 e'4 ( fis'4) e'4 e'4 ( a'4 gis'4) a'4 ( b'4 a'4 gis'4 fis'4 fis'4) e'4 \divisioMaior
 e'4 ( a'4 b'4 cis''4) ~ cis''4 ( cis''4 b'4 gis'4) b'4 ( a'4 fis'4 e'4) \divisioMinima
 e'4 ( a'4 b'4 cis''4) ~ cis''4 ( cis''4 b'4 gis'4) b'4 ( a'4 fis'4 e'4.) fis'4 ( a'4 fis'4) gis'4 ( fis'4) ~ fis'4 ( e'4) \finalis

}

altoMusic = {
cis'2*3/2 d'2*3/2 e'2*6/2 ~ e'4 cis'2*3/2 ~ cis'2*3/2 ~ cis'2*6/2 ~ cis'4 \divisioMaior
e'2*4/2 fis'2*4/2 cis'2 b2 \divisioMinima
cis'2*4/2 d'2*4/2 e'2*3/2 ~ e'2*3/4 d'2*4/2 b2 ~ b4 \finalis
cis'2*3/2 d'2*3/2 e'2*6/2 ~ e'4 cis'4 ~ cis'2 ~ cis'2*4/2 b2 ~ b4 \divisioMaior
e'2*4/2 ~ e'2*4/2 cis'2*4/2 ~ cis'2*4/2 b2 \divisioMinima
cis'2*3/2 e'2*4/2 d'2*4/2 ~ d'2*4/2 ~ d'2*3/2 b2 \divisioMaxima
e'4 r2*3/2 b2*3/2 ~ b4 ~ b2 ~ b2*5/2 ~ b2*3/2 ~ b4 \divisioMaior
cis'2 ~ cis'2*3/2 ~ cis'2*6/2 e'4 cis'4 ~ cis'2*4/2 b2*3/2 \divisioMinima
cis'2 ~ cis'4 d'2*3/2 e'2*4/2 d'2 b4 \divisioMaior
e'2*4/2 fis'2*4/2 cis'2 b2 \divisioMinima
cis'2*4/2 d'2*4/2 e'2*3/2 ~ e'2*3/4 d'2*4/2 b2 ~ b4 \finalis
}

tenorMusic = {
r2*13/2 a2*3/2 ~ a2*3/2 ~ a2*6/2 gis4 \divisioMaior
a2*4/2 ~ a2*4/2 fis2 gis2 \divisioMinima
a2*4/2 ~ a2*4/2 ~ a2*9/4 ~ a2*4/2 ~ a2 gis4 \finalis
a2*3/2 b2*3/2 cis'2*6/2 ~ cis'4 b4 a2 ~ a2*4/2 gis2 ~ gis4 \divisioMaior
fis2*4/2 gis2*4/2 ~ gis2*4/2 a2*4/2 b2 \divisioMinima
a2*3/2 ~ a2*4/2 ~ a2*4/2 b2*4/2 a2*3/2 ~ a4 gis4 \divisioMaxima
a2*4/2 ~ a2*3/2 gis4 fis2 gis2*5/2 a2*3/2 gis4 \divisioMaior
a2 ~ a2*3/2 ~ a2*6/2 b4 ~ b4 ~ b2*4/2 ~ b2*3/2 \divisioMinima
a2 ~ a4 ~ a2*3/2 ~ a2*4/2 ~ a2 gis4 \divisioMaior
a2*4/2 ~ a2*4/2 fis2 gis2 \divisioMinima
a2*4/2 ~ a2*4/2 ~ a2*9/4 ~ a2*4/2 ~ a2 gis4 \finalis
}

bassMusic = {
a2*3/2 b2*3/2 cis2*6/2 cis'4 r2*3/2 gis2*3/2 fis2*6/2 cis4 ~ \divisioMaior
cis2*4/2 d2*4/2 e2 ~ e2 \divisioMinima
a,2*4/2 b,2*4/2 cis2*9/4 d2*4/2 e2 ~ e4 \finalis
r2*16/2 gis2*4/2 ~ gis2 e4 ~ \divisioMaior
e2*4/2 ~ e2*4/2 fis2*4/2 ~ fis2*4/2 gis2 \divisioMinima
fis2*3/2 cis2*4/2 b,2*4/2 ~ b,2*4/2 ~ b,2*3/2 e2 \divisioMaxima
fis2*4/2 e2*3/2 ~ e4 ~ e2 ~ e2*5/2 ~ e2*3/2 ~ e4 \divisioMaior
a2 gis2*3/2 fis2*6/2 gis4 e4 fis2*4/2 gis2*3/2 \divisioMinima
a2 a,4 b,2*3/2 cis2*4/2 d2 e4 \divisioMaior
cis2*4/2 d2*4/2 e2 ~ e2 \divisioMinima
a,2*4/2 b,2*4/2 cis2*9/4 d2*4/2 e2 ~ e4 \finalis
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
        "VIII"
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
