\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.166
%(volume.page)

global = {
 \key e \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Jacob autem" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Jacob autem"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Jacob autem" }
    \line {}
  }
}

chantText = \lyricmode {
Ja -- cob au -- tem 
\set stanza = " * " gé -- nu -- it Jo -- seph 
vi -- rum Ma -- rí -- æ, 
de qua na -- tus est Je -- sus, qui vo -- cá -- tur 
\set stanza = " &dagger; " Chri -- stus, 
al -- le -- lú -- ia, al -- le -- lú -- _ ia. 

\set stanza = " Extra T.P. &dagger; " Chri -- stus. }

chantMusic = {
\tieDown   a'4 gis'4 ( a'4) fis'4 fis'4 ( e'4)  a'4 ( a'4) a'4 a'4 ( \once \tweak #'font-size #-4 b' ) b'4 a'4 ( gis'4 a'4) \divisioMaior
 a'4 ( gis'4) gis'4 ( fis'4) a'4 ( b'4 a'4) a'4 ( fis'4 gis'\prall a'4 gis'4 fis'4 e'4 fis'4) fis'4 ( e'4) \divisioMaxima
 a'4 ( b'4) a'4 b'4 ( d''4) cis''4 b'4 ( cis''4 gis'4) a'4 ( b'4 a'4 b'4) b'4 ( fis'4) \divisioMinima
 fis'4 a'4 ( gis'4) a'4 ( b'4 cis''4) b'4 ( \once \tweak #'font-size #-4 cis'' )  a'4 ( b'4 a'4 gis'4) gis'4 \divisioMaior
 a'4 ( cis''4) b'4 a'4 ( fis'4) fis'4 ( e'4) \divisioMinima
 e'4 ( fis'4) e'4 d'4 ( cis'4 b4.) e'4 ( cis'4 e'4) e'4 \finalis
  a'4 ( b'4 a'4 fis'4 gis'4) fis'4 ( e'4) \finalis

}

altoMusic = {
cis'2*3/2 b4 ~ b2 cis'2*3/2 fis'2 e'2*4/2 \divisioMaior
d'2 ~ d'2 e'2*3/2 cis'4 ~ cis'2*7/2 b2 \divisioMaxima
cis'2*3/2 fis'2*3/2 e'2*3/2 ~ e'2*4/2 d'2 ~ \divisioMinima
d'4 ~ d'2 e'2*3/2 ~ e'2 ~ e'2*4/2 ~ e'4 \divisioMaior
cis'2*3/2 ~ cis'2 b2 \divisioMinima
a2*3/2 ~ a2*7/4 ~ a2*3/2 gis4 e'2*5/2 b2 \finalis
}

tenorMusic = {
a2*3/2 ~ a4 gis2 a2*3/2 ~ a2 ~ a2*4/2 \divisioMaior
b2 a2 ~ a2*3/2 ~ a4 b2*7/2 ~ b2 \divisioMaxima
a2*3/2 ~ a2*3/2 ~ a2*3/2 e2*4/2 fis2 \divisioMinima
b4 a2 ~ a2*3/2 gis2 ~ gis2*4/2 e4 ~ \divisioMaior
e2*3/2 ~ e2 ~ e2 \divisioMinima
cis2*3/2 b,2*7/4 cis2*3/2 b,4 a2*5/2 ~ a4 gis4 \finalis
}

bassMusic = {
r2*6/2 fis2*3/2 d2 cis2*4/2 \divisioMaior
b,2 ~ b,2 cis2*3/2 fis4 ~ fis2*7/2 gis2 \divisioMaxima
fis2*3/2 d2*3/2 cis2*3/2 ~ cis2*4/2 b,2 ~ \divisioMinima
b,4 ~ b,2 cis2*3/2 ~ cis2 ~ cis2*4/2 ~ cis4 \divisioMaior
a,2*3/2 ~ a,2 gis,2 \divisioMinima
a,2*3/2 ~ a,2*7/4 ~ a,2*3/2 e,4 cis2*5/2 e2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Communion"
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
