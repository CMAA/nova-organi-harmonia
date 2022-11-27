\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.73
%(volume.page)

global = {
 \key fis \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Exiit sermo" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Exiit sermo"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Exiit sermo" }
    \line {}
  }
}

chantText = \lyricmode {
Ex -- i -- it 
\set stanza = " * " ser -- mo in -- ter fra -- tres, 
quod di -- scí -- pu -- lus il -- le non mó -- ri -- tur: 
et non di -- xit Je -- sus: _ Non mó -- ri -- tur: 
sed: Sic e -- um vo -- lo ma -- né -- re, 
do -- nec vé -- ni -- am. }

chantMusic = {
\tieDown  a'4 a'4 ( a'4 a'4) fis'4  fis'4 ( \once \tweak #'font-size #-4 gis' ) e'4 fis'4 ( a'4) gis'4 ( \once \tweak #'font-size #-4 a' ) fis'4 ( gis'4 fis'4) fis'4 \divisioMaior
 e'4 fis'4 a'4 a'4 ( b'4) b'4 b'4 ( cis''4) b'4 ( a'4) \divisioMinima \forceBreak

 a'4 ( gis'4 a'4) fis'4 fis'4 ( gis'4 fis'4) e'4 ( fis'4 e'4) \divisioMaxima
 e'4 ( fis'4) fis'4 ( b'4) b'4 ( cis''4 b'4) a'4 ( b'4 a'4 gis'4) fis'4 a'4. b'4 ( cis''4 b'4 a'4) \divisioMinima
 a'4 ( gis'4 a'4) fis'4 fis'4 ( gis'4 fis'4 \forceBreak
) e'4 ( fis'4 e'4) \divisioMaxima
 e'4 fis'4 fis'4 ( b'4) b'4 b'4 ( cis''4) a'4 a'4 fis'4 ( gis'\prall a'4 gis'4 fis'4 e'4 fis'4) fis'4 ( e'4) \divisioMaior
 fis'4 ( e'4 fis'4) e'4 ( d'4 fis'4) fis'4 fis'4 ( gis'\prall a'4 fis'4) fis'4 \finalis

}

altoMusic = {
d'4 cis'2*4/2 b2*3/2 cis'2*4/2 ~ cis'2*3/2 ~ cis'4 \divisioMaior
e'2*3/2 d'2*3/2 fis'2*4/2 \divisioMinima
e'2*4/2 d'2*3/2 b2 ~ b4 \divisioMaxima
cis'2 d'2 fis'2*3/2 e'2*4/2 d'4 ~ d'2*3/4 cis'2*4/2 ~ \divisioMinima
cis'2*4/2 ~ cis'2*3/2 e'2*3/2 ~ \divisioMaxima
e'2 fis'2*3/2 ~ fis'2*4/2 d'2 cis'2*5/2 b2 \divisioMaior
d'2*3/2 ~ d'2*3/2 ~ d'4 cis'2*4/2 ~ cis'4 \finalis
}

tenorMusic = {
a2*5/2 gis2*3/2 a2*4/2 b2*3/2 a4 ~ \divisioMaior
a2*3/2 ~ a2*3/2 ~ a2*4/2 ~ \divisioMinima
a2*4/2 ~ a2*3/2 ~ a2 gis4 \divisioMaxima
a2 ~ a2 ~ a2*3/2 ~ a2*4/2 ~ a4 fis2*3/4 ~ fis2*4/2 \divisioMinima
gis2*3/2 a4 b2*3/2 ~ b2*3/2 ~ \divisioMaxima
b2 ~ b2*3/2 a2*4/2 ~ a2 ~ a2*5/2 gis2 \divisioMaior
fis2*3/2 a2*3/2 b4 ~ b2*4/2 a4 \finalis
}

bassMusic = {
fis2*5/2 ~ fis2*3/2 ~ fis2*4/2 ~ fis2*3/2 ~ fis4 \divisioMaior
cis2*3/2 b,2*3/2 d2*4/2 \divisioMinima
cis2*4/2 b,2*3/2 e2 ~ e4 \divisioMaxima
r2 fis2 d2*3/2 cis2*4/2 b,4 ~ b,2*3/4 fis2*4/2 ~ \divisioMinima
fis2*4/2 ~ fis2*3/2 gis2*3/2 \divisioMaxima
cis2 d2*3/2 ~ d2*4/2 fis2 ~ fis2*5/2 gis2 \divisioMaior
b,2*3/2 ~ b,2*3/2 ~ b,4 fis2*4/2 ~ fis4 \finalis
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
