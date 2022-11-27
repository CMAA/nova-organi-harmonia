\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.24
%(volume.page)

global = {
 \key fis \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Surrexit Christus qui" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Surrexit Christus qui"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Surrexit Christus qui" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ lú -- _ _ ia, 
\set stanza = " * " al -- le -- _ lú -- _ _ ia. _ _ _ _ _ ℣. 
Sur -- ré -- xit Chri -- stus, _ 
qui cre -- á -- vit _ _ ó -- mni -- a: 
et mi -- sér -- tus _ est 
hu -- _ má -- no 
\set stanza = " * " gé -- ne -- ri. _ _ _ _ _ }

chantMusic = {
\tieDown   cis'4 e'4 ( fis'4.) e'4 ( fis'4 e'4 fis'4) e'4 ( fis'4 gis'4) a'4 ( fis'4) ~ fis'4 ( \once \tweak #'font-size #-4 e' ) e'4 ( fis'4) \divisioMinima
 cis'4 e'4 ( fis'4.) e'4 ( fis'4 e'4 fis'4) e'4 ( fis'4 gis'4) a'4 ( fis'4) ~ fis'4 ( \once \tweak #'font-size #-4 e'  \forceBreak
) e'4 ( fis'4) \divisioMinima
 fis'4 ( gis'4 a'4 b'4.) gis'4 ( b'4 a'4 gis'4) fis'4. e'4 a'4 ( a'4) ~ a'4 ( gis'4 fis'4) gis'4 ( gis'4 fis'4) \finalis
 cis'4 e'4 ( fis'4) e'4 ( fis'4) fis'4 fis'4 ( a'4 fis'4) gis'4 ( fis'4 e'4) \divisioMaior \forceBreak

 a'4 a'4 a'4 gis'4 ( a'4) b'4 ( a'4) ~ a'4 ( gis'4) fis'4 fis'4 ( gis'\prall a'4 gis'4 a'4) gis'4 ( fis'4) \divisioMaxima
 fis'4 fis'4 ( b'4) b'4 a'4 ( gis'4) a'4 ( gis'4 fis'4 gis'4) gis'4 ( fis'4) \divisioMaior \forceBreak

 fis'4 ( gis'4 fis'4) ~ fis'4 ( e'4) a'4 gis'4 ( a'4 gis'4 gis'4)  fis'4 fis'4 ( gis'4 fis'4) fis'4 \divisioMinima
 fis'4 ( gis'4 a'4 b'4.) gis'4 ( b'4 a'4 gis'4 fis'4.) e'4 a'4 ( a'4) ~ a'4 ( gis'4 fis'4) gis'4 ( gis'4 fis'4) \finalis

}

altoMusic = {
r4 b2*5/4 ~ b2*4/2 e'2*4/2 cis'2*3/2 ~ cis'2 ~ \divisioMinima
cis'4 ~ cis'2*5/4 ~ cis'2*4/2 e'2*4/2 d'2*3/2 ~ d'4 cis'4 \divisioMinima
fis'2*9/4 e'2*4/2 ~ e'2*5/4 ~ e'2 cis'2*3/2 ~ cis'2 ~ cis'4 ~ \finalis
cis'4 ~ cis'2*4/2 ~ cis'4 ~ cis'2*3/2 e'2*3/2 ~ \divisioMaior
e'2 ~ e'2*4/2 ~ e'2*3/2 fis'4 ~ fis'2 cis'2*3/2 ~ cis'2 \divisioMaxima
fis'4 ~ fis'2 ~ fis'4 e'2 ~ e'2*4/2 cis'2 ~ \divisioMaior
cis'2 d'2*3/2 e'2*5/2 ~ e'4 cis'2*3/2 ~ cis'4 \divisioMinima
fis'2*9/4 e'2*13/4 ~ e'2 cis'2*3/2 ~ cis'2 ~ cis'4 \finalis
}

tenorMusic = {
a4 ~ a2*5/4 gis2*4/2 a2*4/2 b2*3/2 gis4 a4 ~ \divisioMinima
a4 gis2*5/4 a2*4/2 ~ a2*4/2 ~ a2*3/2 gis4 a4 ~ \divisioMinima
a2*9/4 b2*4/2 a2*5/4 ~ a2 ~ a2*3/2 b2 a4 ~ \finalis
a4 ~ a2*4/2 ~ a4 ~ a2*3/2 b2*3/2 \divisioMaior
a2 b2*4/2 cis'2*3/2 ~ cis'4 b2 ~ b2*3/2 a2 \divisioMaxima
fis4 ~ fis2 gis4 a2 b2*4/2 ~ b4 a4 ~ \divisioMaior
a2 ~ a2*3/2 ~ a4 b2*4/2 ~ b4 ~ b2*3/2 a4 ~ \divisioMinima
a2*9/4 b2*13/4 a2 ~ a2*3/2 b2 a4 \finalis
}

bassMusic = {
r2*15/4 fis2*4/2 ~ fis2*3/2 ~ fis2 ~ \divisioMinima
fis4 ~ fis2*5/4 ~ fis2*4/2 cis2*4/2 b,2*3/2 fis2 \divisioMinima
d2*9/4 cis2*4/2 ~ cis2*5/4 fis2 ~ fis2*3/2 ~ fis2 ~ fis4 \finalis
r2*5/2 gis4 fis2*3/2 e2*3/2 \divisioMaior
cis2 ~ cis2*4/2 ~ cis2*3/2 d4 ~ d2 fis2*3/2 ~ fis2 \divisioMaxima
r4 d2 ~ d4 cis2 ~ cis2*4/2 fis2 ~ \divisioMaior
fis2 b,2*3/2 cis4 ~ cis2*4/2 fis4 ~ fis2*3/2 ~ fis4 \divisioMinima
d2*9/4 cis2*13/4 ~ cis2 fis2*3/2 ~ fis2 ~ fis4 \finalis
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
        "II"
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
