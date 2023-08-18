\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.193
%(volume.page)

global = {
 \key cis \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Quam magna" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Quam magna"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Quam magna" }
    \line {}
  }
}

chantText = \lyricmode {
Quam ma -- gna _ _ 
\set stanza = " * " mul -- ti -- tú -- _ _ _ do 
dul -- cé -- di -- nis tu -- æ, Dó -- mi -- ne, 
quam abs -- con -- dí -- _ _ _ _ _ sti 
ti -- mén -- _ _ _ _ ti -- bus te! T.P. 
Al -- le -- _ _ lú -- ia. }

chantMusic = {
\tieDown   a'4 ( cis''4 b'4 cis''4) a'4 gis'4 ( fis'4 e'4) fis'4 ( a'4) ~ a'4 ( fis'4 a'4) \divisioMinima
 fis'4 fis'4 ( cis''4) cis''4 ( b'4) cis''4 ( a'4) ~ a'4 ( fis'4) a'4 ( cis''4 b'4) a'4 ( gis'4) \divisioMaior
 a'4 a'4 ( b'4) a'4 a'4 ( gis'4) a'4 ( gis'4 fis'4 e'4) fis'4 e'4 ( a'4 gis'4) a'4 ( gis'4) gis'4 \divisioMaxima
 gis'4 e'4 fis'4 ( \once \tweak #'font-size #-4 gis' ) gis'4 ( e'4) fis'4 a'4 ( a'4) b'4 ( cis''4 b'4 a'4) ~ a'4 ( gis'4 e'4 fis'4.) e'4 ( a'4 gis'4) a'4 ( a'4 gis'4) gis'4 \divisioMaior
 gis'4 gis'4 ( fis'4 e'4) fis'4 ( d'4) ~ d'4 ( d'4 b4.) d'4 ( e'4) fis'4 ( e'4 fis'4) e'4 cis'4 ( e'4 d'4 d'4) d'4 ( cis'4) \finalis
 d'4 ( d'4 d'4) b4 ( e'4 d'4 cis'4.) d'4 ( e'4) fis'4 ( e'4 fis'4) cis'4 ( e'4 d'4 d'4) d'4 ( cis'4) \finalis

}

altoMusic = {
e'2*5/2 ~ e'2*4/2 cis'2*3/2 ~ cis'4 ~ \divisioMinima
cis'4 ~ cis'2 fis'2*3/2 e'2*3/2 ~ e'2*3/2 ~ e'2 ~ \divisioMaior
e'4 cis'2*3/2 ~ cis'2 ~ cis'2*5/2 ~ cis'2*3/2 ~ cis'2 e'4 ~ \divisioMaxima
e'2*4/2 ~ e'2*3/2 ~ e'2 ~ e'2*3/2 cis'2*11/4 ~ cis'2*3/2 ~ cis'2*3/2 ~ cis'4 ~ \divisioMaior
cis'4 ~ cis'2*3/2 a2 fis2*7/4 a2*6/2 ~ a2*4/2 ~ a2 \finalis
fis2*3/2 ~ fis2*9/4 a2 ~ a2*3/2 ~ a2*4/2 ~ a2 \finalis
}

tenorMusic = {
a2*4/2 cis'4 b2*4/2 ~ b2*3/2 a4 ~ \divisioMinima
a4 ~ a2 ~ a2*3/2 ~ a2*3/2 cis'2*3/2 b2 ~ \divisioMaior
b4 a2*3/2 b2 a2*5/2 ~ a2*3/2 ~ a2 b4 \divisioMaxima
cis'2*4/2 b2*3/2 a2 gis2*3/2 a2*11/4 gis2*3/2 fis2*3/2 gis4 ~ \divisioMaior
gis4 e2*3/2 d2 ~ d2*7/4 ~ d2*6/2 e2*4/2 fis2 ~ \finalis
fis2*3/2 e2*9/4 d2 cis2*3/2 fis2*4/2 e2 \finalis
}

bassMusic = {
cis2*4/2 ~ cis4 ~ cis2*4/2 fis2*3/2 ~ fis4 ~ \divisioMinima
fis4 e2 d2*3/2 cis2*3/2 ~ cis2*3/2 ~ cis2 ~ \divisioMaior
cis4 fis2*3/2 ~ fis2 ~ fis2*5/2 gis2*3/2 fis2 e4 \divisioMaxima
cis2*4/2 ~ cis2*3/2 ~ cis2 e2*3/2 fis2*11/4 ~ fis2*3/2 ~ fis2*3/2 cis4 ~ \divisioMaior
cis4 ~ cis2*3/2 ~ cis2 b,2*7/4 fis,2*6/2 ~ fis,2*4/2 ~ fis,2 \finalis
b,2*3/2 ~ b,2*9/4 fis,2 ~ fis,2*3/2 d,2*4/2 a,2 \finalis
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
        "III"
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
