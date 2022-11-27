\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.432
%(volume.page)

global = {
 \key d \major
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Beatus vir sanctus Martinus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Beatus vir sanctus Martinus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Beatus vir sanctus Martinus" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- _ _ ia, 
\set stanza = " * " 
al -- le -- lú -- _ _ ia. 
_ _ _ _ _ _ _ _ _ _ _ _ _ ℣. 
Be -- á -- tus _ _ vir san -- _ ctus Mar -- tí -- nus, 
ur -- bis Tu -- ró -- nis, re -- qui -- é -- vit: 
quem su -- sce -- pé -- runt An -- _ ge -- li at -- que Ar -- chán -- _ ge -- li, 
Thro -- ni, Do -- mi -- na -- ti -- ó -- nes 
\set stanza = " * " et Vir -- tú -- tes. 
_ _ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   d'4 fis'4 ( g'4 a'4) b'4 ( a'4) b'4 ( cis''\prall d''4 cis''4 b'4) ~ b'4 ( \once \tweak #'font-size #-4 a' ) a'4 \divisioMaior
  d'4 fis'4 ( g'4 a'4) b'4 ( a'4) b'4 ( cis''\prall d''4 cis''4 b'4) ~ b'4 ( \once \tweak #'font-size #-4 a' ) a'4 \divisioMaior
 d'4 ( fis'4 g'4 a'4) b'4 ( a'4) b'4 ( cis''\prall d''4 cis''4 b'4 a'4.) d''4. ~ d''4 ( cis''4 b'4 a'4) cis''4 ( b'4 a'4) \divisioMinima
 d''4.  d''4 ( cis''4 b'4 a'4) cis''4 ( b'4 a'4.) fis'4 ( a'4 g'4 fis'4 e'4) fis'4 ( e'4 d'4) \divisioMinima
 d'4 ( e'4 fis'4 g'4 a'4) ~ a'4 ( g'4 e'4) fis'4 ( e'4) ~ e'4 ( d'4) \finalis
 d'4 fis'4 ( g'4 a'4) b'4 ( a'4) b'4 ( cis''\prall d''4 cis''4 b'4) ~ b'4 ( \once \tweak #'font-size #-4 a' ) a'4 \divisioMinima
 a'4 ( b'4 g'4 fis'4) g'4 ( a'4 g'4) a'4 a'4 ( b'4 cis''\prall d''4 cis''4 b'4 a'4) b'4 ( g'4 a'4) a'4 \divisioMaior
 a'4 ( \tiny g' e' 4) fis'4 g'4 fis'4 ( e'4) d'4 ( e'4 fis'4) \divisioMinima
 g'4 ( fis'4) e'4 ( fis'4 e'4) d'4 ( e'4 d'4) d'4 \divisioMaxima
 a'4 ( b'4 a'4 g'4 a'4) a'4 b'4 ( cis''\prall d''4) d''4 ( cis''4) b'4 ( a'4) fis'4 ( g'4) a'4 ( g'4 g'4) e'4 ( d'4) d'4 \divisioMinima
 d'4 e'4 fis'4 fis'4 ( e'4) fis'4 ( g'4 fis'4) d'4 ( e'4 d'4) d'4 \divisioMaior
 d'4 e'4 fis'4 g'4 a'4 b'4 ( cis''4 b'4) a'4 ( fis'4 g'4) a'4 \divisioMinima
 a'4 ( b'4 cis''\prall d''4 cis''4 b'4 a'4) b'4 ( cis''4 b'4) a'4 a'4 \divisioMaior
 d'4 ( fis'4 g'4 a'4 b'4 a'4) b'4 ( cis''\prall d''4 cis''4 b'4 a'4.) d''4. 4 d''4 ( cis''4 b'4 a'4) cis''4 ( b'4 a'4) \divisioMinima
 d''4.  d''4 ( cis''4 b'4 a'4) cis''4 ( b'4 a'4.) fis'4 ( a'4 g'4 fis'4 e'4) fis'4 ( e'4 d'4) \divisioMinima
 d'4 ( e'4 fis'4 g'4 a'4) ~ a'4 ( g'4 e'4) fis'4 ( e'4) ~ e'4 ( d'4) \finalis

}

altoMusic = {
r4 fis'2*3/2 ~ fis'2 ~ fis'2*4/2 e'2*3/2 ~ e'4 d'4 ~ d'2*3/2 ~ d'2 ~ d'2*4/2 ~ d'2*3/2 cis'4 \divisioMaior
d'2*6/2 fis'2*13/4 ~ fis'2*3/4 d'2*4/2 e'2*3/2 \divisioMinima
d'2*3/4 ~ d'2*4/2 ~ d'2*7/4 cis'2*5/2 b2*3/2 ~ \divisioMinima
b2*4/2 ~ b2*5/2 a2*3/2 \finalis
r4 fis'2*3/2 ~ fis'2 ~ fis'2*4/2 e'2*3/2 ~ e'4 \divisioMinima
d'2*4/2 ~ d'2*4/2 ~ d'2*7/2 ~ d'2*3/2 cis'4 \divisioMaior
b2*5/2 cis'2 d'2*3/2 ~ \divisioMinima
d'2 b2*3/2 a2*3/2 ~ a4 \divisioMaxima
d'2*6/2 fis'2*3/2 e'2*4/2 d'2 b2*3/2 ~ b2 a4 \divisioMinima
b2*3/2 cis'2*5/2 b2*4/2 \divisioMaior
d'2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'4 ~ \divisioMinima
d'2*3/2 ~ d'2*4/2 ~ d'2*3/2 ~ d'4 cis'4 \divisioMaior
d'2*6/2 ~ d'2*13/4 ~ d'2*5/4 ~ d'2*4/2 e'2*3/2 \divisioMinima
d'2*3/4 ~ d'2*4/2 ~ d'2*7/4 cis'2*5/2 b2*3/2 ~ \divisioMinima
b2*4/2 ~ b2*5/2 a2 ~ a4 \finalis
}

tenorMusic = {
r4 d'2*3/2 ~ d'2 ~ d'2*4/2 ~ d'2*3/2 cis'4 r4 a2*3/2 fis2 ~ fis2*4/2 g2*3/2 e4 \divisioMaior
a2*6/2 ~ a2*13/4 ~ a2*3/4 fis2*4/2 a2 ~ a4 \divisioMinima
fis2*3/4 d2*4/2 e2*7/4 fis2*5/2 g2*3/2 \divisioMinima
fis2*4/2 e2*5/2 g2 fis4 \finalis
r4 d'2*3/2 ~ d'2 ~ d'2*4/2 ~ d'2*3/2 cis'4 \divisioMinima
a2*4/2 ~ a2*4/2 fis2*7/2 e2*3/2 ~ e4 ~ \divisioMaior
e2*5/2 a2 fis2*3/2 \divisioMinima
d2 g2*3/2 ~ g2*3/2 fis4 \divisioMaxima
a2*6/2 ~ a2*3/2 ~ a2*4/2 ~ a2 ~ a2*3/2 g2 a4 \divisioMinima
g2*3/2 a2*5/2 b2*4/2 \divisioMaior
a2 ~ a2*3/2 fis2*3/2 e2*3/2 fis4 ~ \divisioMinima
fis2*3/2 ~ fis2*4/2 a2*3/2 e2 \divisioMaior
d2*6/2 fis2*13/4 e2*5/4 fis2*4/2 a2 ~ a4 \divisioMinima
fis2*3/4 d2*4/2 e2*7/4 fis2*5/2 g2*3/2 \divisioMinima
fis2*4/2 e2*5/2 g2 fis4 \finalis
}

bassMusic = {
r2*4/2 cis'2 b2*4/2 g2*3/2 a4 d4 ~ d2*3/2 cis2 b,2*4/2 g,2*3/2 a,4 \divisioMaior
fis2*6/2 d2*13/4 cis2*3/4 b,2*4/2 a,2 cis4 \divisioMinima
b,2*3/4 ~ b,2*4/2 a,2*7/4 ~ a,2*5/2 g,2*3/2 ~ \divisioMinima
g,2*4/2 ~ g,2*5/2 d,2 ~ d,4 \finalis
r2*4/2 cis'2 b2*4/2 g2*3/2 a4 \divisioMinima
fis2*4/2 e2*4/2 d2*7/2 a,2*3/2 ~ a,4 ~ \divisioMaior
a,2*5/2 ~ a,2 b,2*3/2 ~ \divisioMinima
b,2 g,2*3/2 d2*3/2 ~ d4 \divisioMaxima
fis2*6/2 d2*3/2 ~ d2*4/2 ~ d2 e2*3/2 ~ e2 fis4 \divisioMinima
r2*12/2 \divisioMaior
fis2 d2*3/2 ~ d2*3/2 ~ d2*3/2 ~ d4 \divisioMinima
cis2*3/2 b,2*4/2 a,2*3/2 ~ a,2 \divisioMaior
b,2*6/2 ~ b,2*13/4 ~ b,2*5/4 ~ b,2*4/2 a,2 cis4 \divisioMinima
b,2*3/4 ~ b,2*4/2 a,2*7/4 ~ a,2*5/2 g,2*3/2 ~ \divisioMinima
g,2*4/2 ~ g,2*5/2 d,2 ~ d,4 \finalis
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
