\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.84
%(volume.page)

global = {
 \key e \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Factus est (cum alleluia)" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Factus est (cum alleluia)"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Factus est (cum alleluia)" }
    \line {}
  }
}

chantText = \lyricmode {
Fa -- ctus est 
\set stanza = " * " re -- pén -- te de cœ -- lo so -- nus ad -- ve -- ni -- én -- tis spí -- ri -- tus ve -- he -- mén -- tis, 
u -- bi e -- rant se -- dén -- tes, al -- le -- _ lú -- ia: 
et re -- plé -- ti sunt om -- nes Spí -- ri -- tu San -- cto, 
lo -- quén -- _ tes ma -- gná -- _ li -- a De -- i, 
al -- le -- lú -- ia, al -- le -- _ lú -- ia. }

chantMusic = {
\tieDown   e'4 e'4 ( b'4) b'4  b'4 b'4 e'4 b'4 b'4 a'4 d''4 ( cis''4 d''4 b'4) b'4 \divisioMinima
 b'4 b'4 \forceBreak
 b'4 ( cis''4) cis''4 ( \once \tweak #'font-size #-4 b' ) cis''4 ( b'4) a'4 ( cis''4) b'4 a'4 a'4 fis'4 ( gis'\prall a'4) a'4 ( \once \tweak #'font-size #-4 b' ) a'4 \divisioMaior
 a'4 ( gis'4) a'4 b'4 ( cis''4 b'4) a'4 ( b'4 a'4 \forceBreak
) a'4 ( gis'4) fis'4 ( a'4 \tiny gis' e' 4) fis'4 ( e'4) \divisioMinima
 e'4 ( \once \tweak #'font-size #-4 gis' ) gis'4. fis'4 ( a'4 gis'4) e'4 ( fis'4 e'4) e'4 \divisioMaxima
 e'4 fis'4 a'4 ( b'4 cis''4) b'4 b'4 b'4 ( \once \tweak #'font-size #-4 cis'' ) b'4 \forceBreak
 cis''4 b'4 a'4 b'4 ( \once \tweak #'font-size #-4 cis'' ) cis''4 \divisioMaior
 b'4 a'4 ( gis'4) a'4 ( b'4 \once \tweak #'font-size #-4 a' ) fis'4 e'4 ( \once \tweak #'font-size #-4 gis' ) gis'4 ( a'4 gis'4.) e'4 ( fis'4 gis'4) fis'4 ( d'4) fis'4 \forceBreak
 e'4 ( fis'4 e'4) e'4 \divisioMaior
 e'4 ( \once \tweak #'font-size #-4 gis' ) gis'4 a'4 ( b'4 a'4) fis'4 \divisioMinima
 e'4 ( \once \tweak #'font-size #-4 gis' ) gis'4. fis'4 ( a'4 gis'4) e'4 ( fis'4 e'4) e'4 \finalis

}

altoMusic = {
e'4 ~ e'2*3/2 fis'4 e'2 ~ e'4 fis'2 ~ fis'2*4/2 ~ fis'4 ~ \divisioMinima
fis'2 e'2 ~ e'2*4/2 ~ e'2*5/2 d'2*3/2 cis'2*3/2 ~ \divisioMaior
cis'2*3/2 fis'2*3/2 e'2*3/2 d'2 cis'2*4/2 b2 ~ \divisioMinima
b2 cis'2*3/4 ~ cis'2*3/2 b2*3/2 ~ b4 \divisioMaxima
cis'2 ~ cis'2*3/2 fis'2 gis'2*3/2 fis'2*3/2 ~ fis'2 e'4 ~ \divisioMaior
e'4 d'2 e'2*4/2 ~ e'2 cis'2*7/4 ~ cis'2*3/2 d'2*3/2 b2*3/2 ~ b4 \divisioMaior
cis'2*3/2 ~ cis'2*3/2 ~ cis'4 ~ \divisioMinima
cis'2 ~ cis'2*3/4 ~ cis'2*3/2 a2*3/2 b4 \finalis
}

tenorMusic = {
r2*12/2 e'2 d'4 \divisioMinima
b2 ~ b2 a2*4/2 ~ a2*5/2 ~ a2*3/2 ~ a2*3/2 \divisioMaior
fis2*3/2 ~ fis2*3/2 ~ fis2*3/2 ~ fis2 ~ fis2*4/2 gis2 ~ \divisioMinima
gis2 ~ gis2*3/4 a2*3/2 ~ a2*3/2 gis4 \divisioMaxima
a2 ~ a2*3/2 gis2 ~ gis2*3/2 b2*3/2 gis2 ~ gis4 ~ \divisioMaior
gis4 a2 ~ a2*4/2 gis2 ~ gis2*7/4 b2*3/2 ~ b2*3/2 ~ b2*3/2 ~ b4 ~ \divisioMaior
b2*3/2 ~ b2*3/2 a4 \divisioMinima
gis2 e2*3/4 ~ e2*3/2 ~ e2*3/2 ~ e4 \finalis
}

bassMusic = {
r2*4/2 b4 e'2 gis4 cis'2 b2 ~ b2 ~ b4 \divisioMinima
gis2 ~ gis2 fis2*4/2 cis2*5/2 b,2*3/2 fis2*3/2 \divisioMaior
e2*3/2 d2*3/2 cis2*3/2 b,2 a,2*4/2 gis,2 \divisioMinima
cis2 a,2*3/4 ~ a,2*3/2 e2*3/2 ~ e4 \divisioMaxima
r2 fis2*3/2 ~ fis2 e2*3/2 d2*3/2 ~ d2 cis4 ~ \divisioMaior
cis4 b,2 cis2*4/2 ~ cis2 e2*7/4 gis2*3/2 a2*3/2 ~ a2*3/2 gis4 ~ \divisioMaior
gis2*3/2 fis2*3/2 ~ fis4 \divisioMinima
cis2 b,2*3/4 a,2*3/2 e,2*3/2 ~ e,4 \finalis
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
        "VII"
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
