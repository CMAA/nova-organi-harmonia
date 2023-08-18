\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.27
%(volume.page)

global = {
 \key g \locrian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Gaudete justi" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Gaudete justi"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Gaudete justi" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- _ le -- lú -- _ ia, _ 
\set stanza = " * " 
al -- _ le -- lú -- _ ia. _ 
_ _ _ _ _ _ _ ℣. 
Gau -- _ dé -- _ _ te ju -- sti in Dó -- mi -- no: _ 
re -- _ _ _ ctos de -- _ _ _ _ _ _ _ _ _ cet 
\set stanza = " * " 
col -- lau -- dá -- ti -- o. _ 
_ _ _ _ _ _ _ }

chantMusic = {
\tieDown   fis'4 a'4 ( a'4) gis'4 ( a'4) b'4 ( cis''4 b'4 a'4) b'4 ( b'4 cis''4) cis''4 ( e''4 cis''4 b'4) ~ b'4 ( a'4) \divisioMaior
  fis'4 a'4 ( a'4) gis'4 ( a'4) b'4 ( cis''4 b'4 a'4) b'4 ( b'4 cis''4) cis''4 ( e''4 cis''4 b'4) ~ b'4 ( a'4) \divisioMaior
 b'4 ( cis''4 b'4) cis''4 ( b'4 a'4) ~ a'4 ( fis'4.) b'4 ( cis''4 b'4 a'4.) b'4 ( a'4) b'4 ( a'4) ~ a'4 ( gis'4) \finalis
 a'4 ( a'4) ~ a'4 ( \once \tweak #'font-size #-4 b' )  fis'4 ( b'4) cis''4 ( b'4) cis''4 ( dis''4) cis''4 cis''4 ( cis''4 b'4 cis''4) gis'4 \divisioMinima
 a'4 ( b'\prall cis''4 \once \tweak #'font-size #-4 b' ) cis''4 ( cis''4 b'4) cis''4 ( b'4 cis''4) a'4 ( b'4 a'4) b'4. fis'4 ( gis'4 fis'4) \divisioMaxima
 fis'4 a'4 ( a'4 fis'4) a'4 ( a'4 fis'4.) ~ fis'4 ( gis'4 a'4 b'4 cis''4) b'4 ( cis''4 b'4) \divisioMinima
 cis''4 ( a'4) b'4 ( a'4) a'4. e'4 ( gis'4) b'4. cis''4 ( b'4) ~ b'4 ( b'4) ~ b'4 ( b'4) ~ b'4 ( gis'4.) a'4 ( gis'4) a'4 ( gis'4 fis'4) a'4 ( b'4 a'4 b'4) a'4 ( gis'4) \divisioMaior
 gis'4 ( a'\prall b'4 cis''4) b'4 ( \once \tweak #'font-size #-4 cis'' ) cis''4 ( b'4 a'4) b'4 ( cis''4 b'4) cis''4 ( e''4 cis''4 b'4) ~ b'4 ( a'4) \divisioMaior
 b'4 ( cis''4 b'4) cis''4 ( b'4 a'4) ~ a'4 ( fis'4.) b'4 ( cis''4 b'4 a'4.) b'4 ( a'4) b'4 ( a'4) ~ a'4 ( gis'4) \finalis

}

altoMusic = {
fis'4 ~ fis'2*4/2 e'2*4/2 ~ e'2*3/2 ~ e'2*3/2 fis'2*3/2 r4 cis'2*4/2 e'2*4/2 ~ e'2*3/2 ~ e'2*3/2 ~ e'2*3/2 ~ \divisioMaior
e'2*5/2 fis'2 ~ fis'2*3/4 e'2*9/4 ~ e'2*3/2 ~ e'2*3/2 ~ \finalis
e'2 fis'2 ~ fis'2*4/2 ~ fis'2*3/2 e'2*4/2 ~ e'4 ~ \divisioMinima
e'2*4/2 ~ e'2*3/2 ~ e'2*3/2 ~ e'2*3/2 d'2*3/4 cis'2*3/2 ~ \divisioMaxima
cis'4 d'2*3/2 e'2*7/4 fis'2*5/2 e'2*3/2 ~ \divisioMinima
e'2*4/2 ~ e'2*7/4 ~ e'2*3/4 ~ e'2 fis'2 e'2 cis'2*5/4 ~ cis'2 ~ cis'2*3/2 ~ cis'2*4/2 e'2 ~ \divisioMaior
e'2*6/2 ~ e'2*3/2 fis'2*3/2 e'2*3/2 ~ e'2*3/2 ~ \divisioMaior
e'2*5/2 cis'2*7/4 fis'2*9/4 e'2*3/2 ~ e'2*3/2 \finalis
}

tenorMusic = {
r2*12/2 b2*3/2 cis'2*3/2 r4 a2*4/2 gis2*4/2 ~ gis2*3/2 a2*3/2 cis'2*3/2 \divisioMaior
a2*5/2 ~ a2*7/4 ~ a2*9/4 fis2*3/2 cis'2*3/2 \finalis
a2 ~ a2 b2*4/2 a2*3/2 gis2*4/2 b4 ~ \divisioMinima
b2*4/2 a2*3/2 gis2*3/2 fis2*3/2 ~ fis2*3/4 ~ fis2*3/2 \divisioMaxima
a4 ~ a2*3/2 ~ a2*7/4 ~ a2*5/2 gis2*3/2 \divisioMinima
a2*4/2 cis'2*7/4 b2*3/4 a2 ~ a2 gis2 fis2*5/4 ~ fis2 b2*3/2 a2*4/2 cis'2 \divisioMaior
b2*6/2 a2*3/2 ~ a2*3/2 ~ a2*3/2 cis'2*3/2 \divisioMaior
gis2*5/2 a2*7/4 ~ a2*9/4 ~ a2*3/2 cis'2*3/2 \finalis
}

bassMusic = {
fis4 ~ fis2*4/2 gis2*4/2 a2*3/2 gis2*3/2 fis2*3/2 ~ fis4 ~ fis2*4/2 ~ fis2*4/2 e2*3/2 cis2*3/2 ~ cis2*3/2 ~ \divisioMaior
cis2*5/2 d2*7/4 cis2*9/4 ~ cis2*3/2 ~ cis2*3/2 ~ \finalis
cis2 d2 ~ d2*4/2 ~ d2*3/2 e2*4/2 ~ e4 \divisioMinima
cis2*4/2 ~ cis2*3/2 ~ cis2*3/2 ~ cis2*3/2 b,2*3/4 a,2*3/2 ~ \divisioMaxima
a,4 b,2*3/2 cis2*7/4 d2*5/2 e2*3/2 \divisioMinima
cis2*4/2 ~ cis2*7/4 ~ cis2*3/4 ~ cis2 d2 e2 ~ e2*5/4 fis2 ~ fis2*3/2 ~ fis2*4/2 cis2 ~ \divisioMaior
cis2*6/2 ~ cis2*3/2 d2*3/2 cis2*3/2 ~ cis2*3/2 \divisioMaior
e2*5/2 fis2*7/4 d2*9/4 cis2*3/2 ~ cis2*3/2 \finalis
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
        "IV"
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
