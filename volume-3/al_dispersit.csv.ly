\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.277
%(volume.page)

global = {
 \key e \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Dispersit" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Dispersit"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Dispersit" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ lú -- ia, 
\set stanza = " * " al -- le -- _ lú -- ia. _ _ _ _ _ _ _ _ _ ℣. 
Di -- spér -- _ _ _ _ _ _ sit, 
de -- dit pau -- pé -- _ ri -- bus: 
ju -- stí -- ti -- a e -- _ _ jus 
ma -- net in sǽ -- cu -- lum 
\set stanza = " * " sǽ -- cu -- li. _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   e'4 e'4 ( fis'4 e'4) ~ e'4 ( d'4 e'4) d'4 ( fis'4 a'4) gis'4 ( fis'4) \divisioMinima
  e'4 e'4 ( fis'4 e'4) ~ e'4 ( d'4 e'4) d'4 ( fis'4 a'4) gis'4 ( fis'4) \divisioMinima
 a'4 ( b'4 a'4 fis'4 e'4.) fis'4 ( a'4 e'4) ~ e'4 ( d'4 e'4) \divisioMinima
 e'4 ( fis'4 e'4) fis'4 ( fis'4) cis'4 ( d'4 e'4.) fis'4 ( a'4 fis'4) gis'4 ( e'4) fis'4 ( fis'4 e'4) \finalis
 e'4 e'4 ( fis'4 e'4) ~ e'4 ( d'4 e'4.) d'4 ( fis'4) a'4. fis'4 ( a'4 b'4 a'4 gis'4 fis'4 e'4.) fis'4 ( a'4 fis'4) gis'4 ( e'4) fis'4 ( e'4) e'4 \divisioMaior
 e'4 ( b4) e'4. e'4 e'4 ( \once \tweak #'font-size #-4 fis' ) fis'4 ( gis'4 fis'4 e'4.) fis'4 ( gis'\prall a'4 fis'4 e'4 fis'4) d'4 ( e'4) e'4 \divisioMaxima
 d'4 fis'4 ( a'4) a'4 a'4 ( a'4 a'4) fis'4 ( gis'\prall a'4) b'4 ( a'4) ~ a'4 ( gis'4 fis'4 e'4) e'4 \divisioMaior
 d'4 ( e'4) e'4 e'4 e'4 ( fis'4) e'4 e'4 ( d'4 e'4) \divisioMinima
 d'4 ( fis'4 a'4) gis'4 ( fis'4) a'4 ( b'4 a'4 fis'4 e'4.) fis'4 ( a'4 e'4) ~ e'4 ( d'4 e'4) \divisioMinima
 e'4 ( fis'4 e'4) fis'4 ( fis'4) cis'4 ( d'4 e'4.) fis'4 ( a'4 fis'4) gis'4 ( e'4) fis'4 ( fis'4 e'4) \finalis

}

altoMusic = {
r4 a2 b2*4/2 ~ b2*3/2 cis'2 ~ cis'4 ~ cis'2 ~ cis'2*4/2 d'2*3/2 ~ d'2 \divisioMinima
e'2*11/4 d'2 b2*4/2 \divisioMinima
cis'2*3/2 ~ cis'2 ~ cis'2*7/4 d'2*3/2 e'2 b2*3/2 \finalis
r4 cis'2 ~ cis'2*9/4 d'2 b2*5/4 cis'2*13/4 d'2*3/2 e'2 b2 ~ b4 ~ \divisioMaior
b2 cis'2*5/4 ~ cis'2 ~ cis'2*9/4 b2 cis'2*4/2 a2 b4 \divisioMaxima
d'4 ~ d'2*3/2 b2*3/2 cis'2*4/2 d'2*5/2 e'4 \divisioMaior
d'2*4/2 cis'2*3/2 ~ cis'2*3/2 \divisioMinima
d'2*5/2 cis'2*11/4 d'2 r'2*4/2 \divisioMinima
d'2*3/2 cis'2 ~ cis'2*7/4 d'2*3/2 e'2 b2 ~ b4 \finalis
}

tenorMusic = {
r4 e2 fis2*4/2 a2*3/2 ~ a2 ~ a4 ~ a2 fis2*4/2 ~ fis2*3/2 a2 ~ \divisioMinima
a2*11/4 ~ a2 ~ a2*3/2 gis4 \divisioMinima
a2*3/2 ~ a2 ~ a2*7/4 ~ a2*3/2 b2 a2 gis4 \finalis
r4 a2 ~ a2*9/4 ~ a2 ~ a2*5/4 ~ a2*13/4 ~ a2*3/2 b2 a2 gis4 ~ \divisioMaior
gis2 a2*5/4 ~ a2 gis2*9/4 ~ gis2 fis2*4/2 a2 gis4 \divisioMaxima
a2*4/2 ~ a2*3/2 ~ a2*4/2 ~ a2*5/2 b4 ~ \divisioMaior
b2*4/2 a2*3/2 ~ a2*3/2 ~ \divisioMinima
a2*5/2 ~ a2*11/4 ~ a2 ~ a2*4/2 ~ \divisioMinima
a2*3/2 ~ a2 ~ a2*7/4 ~ a2*3/2 b2 a2 gis4 \finalis
}

bassMusic = {
r4 cis2 b,2*4/2 fis2*3/2 ~ fis2 r4 a,2 ~ a,2*4/2 b,2*3/2 ~ b,2 \divisioMinima
cis2*11/4 d2 e2*3/2 ~ e4 \divisioMinima
a2*3/2 gis2 fis2*7/4 ~ fis2*3/2 e2 ~ e2 ~ e4 \finalis
r4 r2 gis2*9/4 fis2 ~ fis2*5/4 ~ fis2*13/4 ~ fis2*3/2 e2 ~ e2 ~ e4 \divisioMaior
gis2 ~ gis2*5/4 fis2 ~ fis2*9/4 ~ fis2 ~ fis2*4/2 ~ fis2 e4 \divisioMaxima
fis2*4/2 ~ fis2*3/2 ~ fis2*4/2 ~ fis2*5/2 gis4 \divisioMaior
a2*4/2 ~ a2*3/2 gis2*3/2 \divisioMinima
fis2*5/2 ~ fis2*11/4 d2 cis2*4/2 \divisioMinima
b,2*3/2 a,2 gis,2*7/4 fis,2*3/2 e,2 ~ e,2 ~ e,4 \finalis
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
