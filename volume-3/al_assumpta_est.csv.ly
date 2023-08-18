\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.322
%(volume.page)

global = {
 \key d \major
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Assumpta est" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Assumpta est"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Assumpta est" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ lú -- _ _ ia. 
\set stanza = " * " 
Al -- le -- _ lú -- _ _ ia. 
_ _ _ _ _ _ _ _ _ ℣. 
As -- súm -- pta est _ _ Ma -- _ rí -- a in cœ -- lum: 
gau -- _ _ _ _ _ det ex -- ér -- _ ci -- _ _ tus 
\set stanza = " * " 
An -- ge -- ló -- _ _ _ rum. _ _ _ _ }

chantMusic = {
\tieDown   d'4 ( e'4) fis'4 ( g'4 a'4 b'4) ~ b'4 ( a'4) a'4 ( cis''4) d''4 ( b'4) cis''4 ( b'4 a'4) a'4 \divisioMaior
 d'4 ( e'4) fis'4 ( g'4 a'4 b'4) ~ b'4 ( a'4) a'4 ( cis''4) d''4 ( b'4) cis''4 ( b'4 a'4) a'4 \divisioMaior
 a'4 ( b'4) cis''4 ( d''4 b'4.) d''4 ( cis''4 b'4 a'4.) g'4 ( b'4 g'4 a'4.) fis'4 ( a'4 g'4 fis'4 e'4 d'4) \divisioMinima
 d'4 ( e'4 fis'4 g'4 a'4 b'4) ~ b'4 ( a'4 g'4 e'4) fis'4 ( e'4) ~ e'4 ( d'4) \finalis
 d'4 ( e'4) g'4 ( \once \tweak #'font-size #-4 fis' ) g'4 ( a'4) a'4 ( g'4 fis'4 e'4) g'4 ( a'4 b'4) ~ b'4 ( a'4) \divisioMinima
 a'4 b'4 ( b'4 a'4) g'4 ( fis'4 e'4) e'4 e'4 ( a'4 g'4 fis'4) d'4 ( e'4 d'4) d'4 \divisioMaxima
 a'4 b'4 ( a'4) d''4 ( \once \tweak #'font-size #-4 d'' ) cis''4 ( d''4 b'4) ~ b'4 ( a'4 fis'4) g'4 ( \once \tweak #'font-size #-4 a' ) a'4 \divisioMinima
 d'4 ( e'4) fis'4 ( g'4 a'4 b'4) ~ b'4 ( a'4) a'4 ( cis''4) d''4 ( b'4) cis''4 ( b'4 a'4) a'4 \divisioMaior
 e'4 e'4 a'4 ( b'4) cis''4 ( d''4 b'4.) d''4 ( cis''4 b'4 a'4.) g'4 ( b'4 g'4 a'4) fis'4 ( a'4 g'4 fis'4 e'4 d'4) \divisioMinima
 d'4 ( e'4 fis'4 g'4 a'4 b'4) ~ b'4 ( a'4 g'4 e'4) fis'4 ( e'4) ~ e'4 ( d'4) \finalis

}

altoMusic = {
r2 fis'2*3/2 e'2*3/2 d'2*4/2 e'2*3/2 ~ e'4 \divisioMaior
r2 fis'2*3/2 e'2*3/2 d'2*4/2 ~ d'2*3/2 cis'4 \divisioMaior
d'2 ~ d'2*7/4 ~ d'2*9/4 ~ d'2*3/2 ~ d'2*7/4 ~ d'2*4/2 ~ \divisioMinima
d'2*5/2 ~ d'2*6/2 a2 ~ a4 \finalis
r2 d'2*4/2 ~ d'2*6/2 ~ d'2*3/2 ~ \divisioMinima
d'4 ~ d'2*3/2 ~ d'2*4/2 ~ d'2*4/2 a2*3/2 ~ a4 \divisioMaxima
fis'4 ~ fis'2 ~ fis'2*4/2 e'2*4/2 d'2 e'4 \divisioMinima
d'4 e'4 fis'2*3/2 e'2*3/2 d'2*4/2 ~ d'2*3/2 cis'4 \divisioMaior
e'4 ~ e'4 ~ e'2 ~ e'2*7/4 d'2*9/4 ~ d'2*4/2 cis'2*5/2 d'4 \divisioMinima
cis'2*5/2 b2*3/2 ~ b2*3/2 a2 ~ a4 \finalis
}

tenorMusic = {
d'2 ~ d'2*3/2 cis'2*3/2 d'2*4/2 ~ d'2*3/2 cis'4 \divisioMaior
r2 a2*3/2 ~ a2*3/2 ~ a2*4/2 ~ a2*3/2 e4 \divisioMaior
fis2 g2*7/4 a2*9/4 ~ a2*3/2 ~ a2*7/4 b2*4/2 \divisioMinima
a2*5/2 g2*6/2 ~ g2 fis4 \finalis
b2 ~ b2*4/2 ~ b2*6/2 a2*3/2 ~ \divisioMinima
a4 fis2*3/2 a2*4/2 g2*4/2 ~ g2*3/2 fis4 \divisioMaxima
d'4 ~ d'2 ~ d'2*4/2 cis'2*4/2 b2 cis'4 \divisioMinima
a2 ~ a2*3/2 ~ a2*3/2 ~ a2*4/2 ~ a2*3/2 e4 \divisioMaior
a2 e2 fis2*7/4 ~ fis2*9/4 e2*4/2 fis2*5/2 ~ fis4 ~ \divisioMinima
fis2*5/2 d2*3/2 e2*3/2 g2 fis4 \finalis
}

bassMusic = {
r2*8/2 b2*4/2 a2*3/2 ~ a4 \divisioMaior
d2 ~ d2*3/2 cis2*3/2 b,2*4/2 a,2*3/2 ~ a,4 \divisioMaior
d2 e2*7/4 fis2*9/4 e2*3/2 fis2*7/4 b,2*4/2 ~ \divisioMinima
b,2*5/2 ~ b,2*6/2 d2 ~ d4 \finalis
r2 a2*4/2 g2*6/2 fis2*3/2 ~ \divisioMinima
fis4 b,2*3/2 b2*4/2 b,2*4/2 d2*3/2 ~ d4 \divisioMaxima
r4 cis'2 b2*4/2 ~ b2*4/2 ~ b2 a4 \divisioMinima
fis2 d2*3/2 cis2*3/2 b,2*4/2 a,2*3/2 ~ a,4 \divisioMaior
cis2 ~ cis2 b,2*7/4 ~ b,2*9/4 ~ b,2*4/2 a,2*5/2 b,4 \divisioMinima
a,2*5/2 g,2*3/2 ~ g,2*3/2 d2 ~ d4 \finalis
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
        "V"
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
