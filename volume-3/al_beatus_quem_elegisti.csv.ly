\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.217
%(volume.page)

global = {
 \key fis \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Beatus quem elegisti" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Beatus quem elegisti"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Beatus quem elegisti" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- _ ia, 
\set stanza = " * " al -- le -- lú -- _ ia. _ _ 
_ _ _ _ _ _ _ _ _ ℣. 
Be -- á -- tus quem e -- le -- gí -- _ _ _ sti, 
et as -- sum -- _ psí -- _ _ sti: 
in -- ha -- bi -- tá -- _ _ bit 
in á -- tri -- is 
\set stanza = " * " tu -- _ is. _ _ 
_ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   d'4 ( fis'4) fis'4 ( e'4) e'4 a'4 ( b'4 a'4) a'4 ( a'4 b'4) \divisioMinima
  d'4 ( fis'4) fis'4 ( e'4) e'4 a'4 ( b'4 a'4) a'4 ( a'4 b'4) \divisioMinima
 a'4 ( d''4 cis''4 b'4 a'4 a'4.) fis'4 ( g'4 fis'4 e'4 d'4) \divisioMaior
 fis'4 ( g'4 e'4) fis'4 ( fis'4) d'4 ( fis'4) a'4 ( g'4 fis'4 e'4) \divisioMinima
 a'4 ( b'4 g'4) a'4 ( a'4 g'4 e'4) d'4 ( fis'4 e'4) \divisioMinima
 g'4 ( g'4 g'4) a'4 ( g'4 e'4 fis'4) \finalis
 d'4 ( a'4) a'4 ( g'4 fis'4) fis'4 ( e'4) \divisioMinima
 fis'4 ( g'4) fis'4 ( e'4) d'4 ( fis'4) a'4 ( a'4 g'4.) a'4 ( b'4 a'4 fis'4 e'4) g'4 ( g'4) fis'4 ( a'4 g'4 e'4 d'4 fis'4) fis'4 \divisioMaior
 a'4 b'4 ( a'4) a'4 d''4 ( d''4 d''4) cis''4. b'4 ( d''4 cis''4 a'4) b'4. a'4 ( b'4 cis''\prall d''4 a'4) a'4 \divisioMaxima
 a'4 ( b'4) b'4 ( a'4) g'4 ( b'4) a'4 ( g'4 e'4) fis'4. d'4 ( fis'4 e'4) fis'4 ( g'4 e'4) e'4 \divisioMaior
 d'4 d'4 ( fis'4) fis'4 ( e'4) e'4  e'4 a'4 ( b'4 a'4) a'4 ( a'4 b'4) \divisioMinima
 a'4 ( d''4 cis''4 b'4 a'4 a'4.) fis'4 ( g'4 fis'4 e'4 d'4) \divisioMaior
 fis'4 ( g'4 e'4) fis'4 ( fis'4) d'4 ( fis'4) a'4 ( g'4 fis'4 e'4) \divisioMinima
 a'4 ( b'4 g'4) a'4 ( a'4 g'4 e'4) d'4 ( fis'4 e'4) \divisioMinima
 g'4 ( g'4 g'4) a'4 ( g'4 e'4 fis'4) \finalis

}

altoMusic = {
d'2 ~ d'2*3/2 e'2*3/2 fis'2 ~ fis'4 d'2 ~ d'2*3/2 e'2*3/2 fis'2*3/2 \divisioMinima
d'2*4/2 ~ d'2*5/4 cis'2*4/2 d'4 ~ \divisioMaior
d'2*3/2 ~ d'2*4/2 ~ d'2*4/2 ~ \divisioMinima
d'2*3/2 ~ d'2*4/2 ~ d'2*3/2 ~ \divisioMinima
d'2*3/2 ~ d'2*3/2 ~ d'4 ~ \finalis
d'2 ~ d'2*3/2 ~ d'2 ~ \divisioMinima
d'2*6/2 ~ d'2*7/4 ~ d'2*5/2 ~ d'2 ~ d'2*3/2 ~ d'2*3/2 ~ d'4 ~ \divisioMaior
d'2*4/2 fis'2*3/2 ~ fis'2*3/4 ~ fis'2*4/2 g'2*3/4 ~ g'2*3/2 ~ g'2 fis'4 \divisioMaxima
d'2 ~ d'2*4/2 ~ d'2*3/2 ~ d'2*3/4 ~ d'2*3/2 b2*3/2 ~ b4 ~ \divisioMaior
b4 d'2 ~ d'2*4/2 e'2*3/2 fis'2*3/2 \divisioMinima
d'2*4/2 cis'2*5/4 b2*5/2 \divisioMaior
d'2*3/2 ~ d'2*4/2 ~ d'2*4/2 ~ \divisioMinima
d'2*3/2 ~ d'2*4/2 ~ d'2*3/2 ~ \divisioMinima
d'2*3/2 cis'2*3/2 d'4 \finalis
}

tenorMusic = {
r2*8/2 d'2 ~ d'4 fis2 a2*3/2 ~ a2*3/2 ~ a2*3/2 ~ \divisioMinima
a2*4/2 b2*5/4 cis'2*4/2 b4 ~ \divisioMaior
b2*3/2 ~ b2*4/2 ~ b2*4/2 ~ \divisioMinima
b2*3/2 ~ b2*4/2 a2*3/2 \divisioMinima
g2*3/2 b2*3/2 a4 \finalis
r2 b2*3/2 ~ b2 ~ \divisioMinima
b2*6/2 ~ b2*7/4 a2*5/2 b2 a2*3/2 g2*3/2 fis4 ~ \divisioMaior
fis2*4/2 d'2*3/2 e'2*3/4 d'2*4/2 ~ d'2*3/4 ~ d'2*3/2 ~ d'2 ~ d'4 \divisioMaxima
fis2 g2*4/2 e2*3/2 b2*3/4 a2*3/2 ~ a2*3/2 g4 ~ \divisioMaior
g4 fis2 a2*4/2 ~ a2*3/2 ~ a2*3/2 ~ \divisioMinima
a2*4/2 ~ a2*5/4 b2*5/2 ~ \divisioMaior
b2*3/2 a2*4/2 b2*4/2 ~ \divisioMinima
b2*3/2 ~ b2*4/2 a2*3/2 \divisioMinima
g2*3/2 ~ g2*3/2 a4 \finalis
}

bassMusic = {
d'2 b2*6/2 cis2 b4 ~ b2 b,2*3/2 cis2*3/2 d2*3/2 \divisioMinima
fis2*4/2 g2*5/4 a2*4/2 b4 ~ \divisioMaior
b2*3/2 a2*4/2 g2*4/2 \divisioMinima
fis2*3/2 e2*4/2 ~ e2*3/2 ~ \divisioMinima
e2*3/2 g2*3/2 d4 \finalis
r2*5/2 a2 \divisioMinima
g2*6/2 e2*7/4 fis2*5/2 b,2 ~ b,2*3/2 ~ b,2*3/2 ~ b,4 ~ \divisioMaior
b,2*4/2 b2*3/2 ~ b2*3/4 ~ b2*4/2 ~ b2*3/4 d'2*3/2 d2 ~ d4 \divisioMaxima
b,2 ~ b,2*4/2 ~ b,2*3/2 ~ b,2*3/4 ~ b,2*3/2 e2*3/2 ~ e4 ~ \divisioMaior
e4 b,2 ~ b,2*4/2 cis2*3/2 d2*3/2 \divisioMinima
fis2*4/2 ~ fis2*5/4 g2*5/2 ~ \divisioMaior
g2*3/2 ~ g2*4/2 ~ g2*4/2 \divisioMinima
fis2*3/2 e2*4/2 ~ e2*3/2 ~ \divisioMinima
e2*3/2 ~ e2*3/2 d4 \finalis
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
        "III."
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
