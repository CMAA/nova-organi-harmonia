\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.29
%(volume.page)

global = {
 \key e \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Dicite in gentibus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Dicite in gentibus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Dicite in gentibus" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- ia, _ 
\set stanza = " * " 
al -- le -- lú -- ia. _ 
_ _ _ _ _ _ _ _ _ ℣. 
Dí -- ci -- te _ _ in gén -- ti -- bus: 
qui -- a Dó -- _ _ mi -- nus re -- gná -- _ _ _ vit 
\set stanza = " * " 
a li -- gno. _ 
_ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   e'4 e'4 e'4 ( fis'4 a'4 \tiny gis' fis' 4) a'4 ( b'4 a'4 e'4.) fis'4 ( e'4 d'4 e'4) \divisioMaior
 e'4 e'4 e'4 ( fis'4 a'4 \tiny gis' fis' 4) a'4 ( b'4 a'4 e'4. \forceBreak
) fis'4 ( e'4 d'4 e'4) \divisioMaior
 b4 ( e'4) fis'4 ( e'4) ~ e'4 ( d'4.) fis'4 ( a'4 fis'4) gis'4 ( e'4) \divisioMinima
 b4 ( e'4) fis'4 ( e'4) ~ e'4 ( d'4.) fis'4 gis'4 ( a'4 e'4) \finalis
 e'4 ( e'4 e'4 \forceBreak
) e'4 ( gis'4) gis'4 ( a'4 gis'4 e'4.) fis'4 ( gis'4 fis'4) ~ fis'4 ( e'4) \divisioMinima
 e'4 ( fis'4) e'4 ( fis'4) e'4 ( fis'4 gis'4 fis'4 e'4 fis'4) fis'4 ( e'4) \divisioMaxima
 e'4 e'4 ( cis'4) d'4 ( e'4 d'4 cis'4 \forceBreak
) d'4 ( cis'4 b4) e'4 ( fis'4 gis'4) fis'4 ( e'4 fis'4) fis'4 ( a'4 e'4) \divisioMinima
 e'4 ( d'4 \once \tweak #'font-size #-4 fis' ) fis'4. e'4 ( a'4 fis'4) gis'4 ( fis'4.) e'4 ( a'4 fis'4 gis'4) fis'4 ( e'4) \divisioMaior \forceBreak

 e'4 e'4 ( fis'4 a'4 \tiny gis' fis' 4) a'4 ( b'4 a'4 e'4.) fis'4 ( e'4 d'4 e'4) \divisioMaior
 b4 ( e'4) fis'4 ( e'4) ~ e'4 ( d'4.) fis'4 a'4 ( fis'4) gis'4 ( e'4) \divisioMinima
 b4 ( e'4) fis'4 ( e'4) ~ e'4 ( d'4.) fis'4 gis'4 ( a'4 e'4) \finalis

}

altoMusic = {
r2 cis'2*5/2 d'2*9/4 ~ d'2 ~ d'4 e'4 \divisioMaior
cis'2 ~ cis'2*5/2 ~ cis'2*9/4 d'2 ~ d'4 b4 ~ \divisioMaior
b2*3/2 r2*9/4 cis'2 e'2 \divisioMinima
b2*3/2 r2 d'2*5/4 b2 ~ b4 \finalis
cis'2*3/2 e'2 ~ e'2*9/4 b2 ~ b2*3/2 \divisioMinima
cis'2 b2 ~ b2 ~ b2*4/2 ~ b2 \divisioMaxima
r4 r2 a2*4/2 ~ a2*3/2 ~ a2*3/2 ~ a2*3/2 ~ a2*3/2 \divisioMinima
b2*3/2 ~ b2*3/4 d'2*11/4 e'2*4/2 b2 ~ \divisioMaior
b4 cis'2*5/2 ~ cis'2*9/4 d'2*4/2 \divisioMaior
b2*3/2 r2*9/4 cis'2 e'2 \divisioMinima
b2*3/2 r2 d2*5/4 b2 ~ b4 \finalis
}

tenorMusic = {
b2 a2*5/2 b2*9/4 ~ b2*3/2 ~ b4 \divisioMaior
a2 ~ a2*5/2 ~ a2*9/4 ~ a2*3/2 gis4 ~ \divisioMaior
gis2*3/2 a2*9/4 ~ a2 b4 gis4 ~ \divisioMinima
gis2*3/2 a2*9/4 ~ a2 gis4 \finalis
a2*3/2 b2 ~ b2*9/4 a2 gis2*3/2 \divisioMinima
a2 ~ a2 gis2 r2*4/2 a4 gis4 \divisioMaxima
r4 gis2 fis2*4/2 ~ fis2*3/2 e2*3/2 d2*3/2 e2*3/2 \divisioMinima
fis2*3/2 ~ fis2*3/4 a2*11/4 ~ a2*4/2 ~ a4 gis4 ~ \divisioMaior
gis4 a2*5/2 ~ a2*9/4 ~ a2*4/2 \divisioMaior
gis2*3/2 a2*9/4 ~ a2 b4 a4 \divisioMinima
gis2*3/2 a2*9/4 ~ a2 gis4 \finalis
}

bassMusic = {
gis2 a2*5/2 ~ a2*9/4 ~ a2*3/2 gis4 \divisioMaior
r2 gis2*5/2 fis2*9/4 b,2*3/2 e4 ~ \divisioMaior
e2*3/2 fis2*9/4 ~ fis2 e2 \divisioMinima
cis2*3/2 fis2*9/4 e2 ~ e2*4/2 gis2 e2*9/4 ~ e2 ~ e2*3/2 \divisioMinima
r2*6/2 e2*4/2 ~ e2 ~ \divisioMaxima
e4 ~ e2 b,2*4/2 ~ b,2*3/2 cis2*3/2 d2*3/2 cis2*3/2 \divisioMinima
b,2*3/2 ~ b,2*3/4 ~ b,2*11/4 cis2*4/2 e2 ~ \divisioMaior
e4 a2*5/2 fis2*9/4 b,2*4/2 \divisioMaior
e2*3/2 fis2*9/4 ~ fis2 e2 \divisioMinima
cis2*3/2 fis2*9/4 e2 ~ e4 \finalis
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
