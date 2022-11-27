\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.376a
%(volume.page)

global = {
 \key e \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"In me gratia" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "In me gratia"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "In me gratia" }
    \line {}
  }
}

chantText = \lyricmode {
In me _ 
\set stanza = " * " grá -- _ _ ti -- _ a 
o -- _ mnis vi -- _ _ _ _ _ æ et ve -- ri -- tá -- _ tis, _ 
in me _ o -- _ mnis _ spes _ vi -- tæ et _ _ vir -- _ _ _ tú -- _ _ _ tis: _ 
e -- go qua -- _ si ro -- _ _ sa _ plan -- tá -- _ ta 
su -- per ri -- vos a -- quá -- _ _ rum _ 
fru -- cti -- fi -- cá -- _ _ _ _ vi. _ _ }

chantMusic = {
\tieDown   b4 ( d'4) cis'4 ( d'4 e'4 fis'4) ~ fis'4 ( e'4) \divisioMinima
 fis'4. a'4 ( b'4 a'4) b'4 ( a'4 gis'4) a'4 ( a'4) ~ a'4 ( fis'4) fis'4 ( e'4) \divisioMaior
 fis'4 ( e'4) ~ e'4 ( \once \tweak #'font-size #-4 d' ) d'4 fis'4 ( e'4) a'4 ( a'4) ~ a'4 ( fis'4.) a'4 ( b'4 a'4 gis'4) a'4 ( a'4) ~ a'4 ( fis'4) fis'4 ( e'4 fis'4) \divisioMinima
 fis'4 fis'4 ( gis'4) fis'4 ( e'4) e'4 ( a'4 gis'4 fis'4) ~ fis'4 ( e'4) e'4 ( fis'4 e'4) ~ e'4 ( d'4) \divisioMaxima
 fis'4 ( a'4) a'4 ( a'4 a'4) ~ a'4 ( b'4 a'4) a'4 ( a'4) ~ a'4 ( b'4 a'4) a'4 ( b'4 a'4) ~ a'4 ( e'4 fis'4) e'4 ( gis'4 fis'4) ~ fis'4 ( e'4) e'4 ( fis'4 a'4 gis'4) a'4 \divisioMinima
 a'4 ( a'4) ~ a'4 ( e'4 fis'4) a'4 ( b'4 a'4) a'4 ( a'4) ~ a'4 ( e'4) fis'4 ( a'4) b'4 ( cis''4 a'4) a'4 ( a'4) ~ a'4 ( e'4.) a'4 ( gis'4 fis'4) ~ fis'4 ( e'4) e'4 ( fis'4 e'4) ~ e'4 ( d'4) \divisioMaxima
 d'4 ( fis'4) fis'4 ( a'4 gis'4 fis'4) e'4 ( a'4) ~ a'4 ( a'4) a'4 a'4 ( a'4) ~ a'4 ( b'4) a'4 ( cis''4 b'4) b'4 ( cis''4 a'4) ~ a'4 ( fis'4) \divisioMinima
 fis'4 ( \once \tweak #'font-size #-4 e' ) e'4 ( a'4 gis'4 e'4) fis'4 ( e'4 d'4) d'4 \divisioMaior
 d'4 d'4 d'4 ( fis'4 e'4) e'4 e'4 e'4 a'4 ( a'4) ~ a'4 ( a'4 a'4) fis'4 ( gis'\prall a'4 gis'4 fis'4 e'4) fis'4 ( gis'4 fis'4) \divisioMaior
 e'4 ( d'4) e'4 ( fis'4) fis'4 ( e'4) fis'4 a'4 ( b'4 a'4) ~ a'4 ( fis'4.) a'4 ( a'4 fis'4) a'4 ( a'4 fis'4 e'4) e'4 fis'4 ( gis'4 fis'4) ~ fis'4 ( e'4) \finalis

}

altoMusic = {
fis2 a2*3/2 ~ a2*3/2 ~ \divisioMinima
a2*3/4 cis'2*3/2 ~ cis'2*3/2 ~ cis'2 ~ cis'2 ~ cis'2 ~ \divisioMaior
cis'4 a2*4/2 b2 cis'2 d'2*5/4 e'2*4/2 ~ e'2 ~ e'2 d'2*3/2 ~ \divisioMinima
d'4 b2*4/2 e'2*3/2 cis'2*3/2 ~ cis'2 b2*3/2 \divisioMaxima
d'2 ~ d'2*3/2 cis'2*3/2 ~ cis'2 d'2*3/2 ~ d'2 e'2*4/2 cis'2 ~ cis'2*3/2 ~ cis'2*4/2 ~ cis'4 ~ \divisioMinima
cis'2*5/2 ~ cis'2*3/2 d'2 cis'2*4/2 fis'2*3/2 e'2 d'2*9/4 cis'2*3/2 ~ cis'2 b2*3/2 \divisioMaxima
d'2 ~ d'2*4/2 e'2 ~ e'2*3/2 ~ e'2 ~ e'2 ~ e'2*3/2 ~ e'2 cis'2*3/2 ~ \divisioMinima
cis'2 ~ cis'2*4/2 d'2*3/2 a4 \divisioMaior
b2 d'2*6/2 e'2 ~ e'2*3/2 cis'2*6/2 ~ cis'2*3/2 \divisioMaior
b2*4/2 ~ b2 cis'2*3/2 ~ cis'2*7/4 ~ cis'2*3/2 ~ cis'2*4/2 b2*3/2 ~ b2 ~ b4 \finalis
}

tenorMusic = {
d2 e2*3/2 cis2*3/2 ~ \divisioMinima
cis2*3/4 fis2*3/2 gis2*3/2 fis2 a2 gis2 \divisioMaior
fis4 ~ fis2*4/2 a2 ~ a2 ~ a2*5/4 ~ a2*4/2 cis'2 b2 a2*3/2 ~ \divisioMinima
a4 gis2*4/2 a2*3/2 ~ a2*3/2 gis2 fis2*3/2 \divisioMaxima
d2 e2*3/2 ~ e2*3/2 fis2 ~ fis2*3/2 a2 ~ a2*4/2 gis2 b2*3/2 ~ b2*4/2 a4 ~ \divisioMinima
a2 ~ a2*3/2 ~ a2*3/2 ~ a2 ~ a2*4/2 ~ a2*3/2 ~ a2 ~ a2*9/4 ~ a2*3/2 gis2 fis2*3/2 \divisioMaxima
b2 a2*4/2 ~ a2 e2*3/2 fis2 gis2 a2*3/2 gis2 a2*3/2 ~ \divisioMinima
a2 ~ a2*4/2 ~ a2*3/2 fis4 ~ \divisioMaior
fis2 a2*6/2 ~ a2 b2*3/2 ~ b2*6/2 a2*3/2 ~ \divisioMaior
a2*4/2 gis2 a4 cis'2 b2*7/4 a2*3/2 fis2*4/2 ~ fis4 a2 ~ a2 gis4 \finalis
}

bassMusic = {
b,2 a,2*3/2 ~ a,2*3/2 \divisioMinima
fis,2*3/4 ~ fis,2*3/2 ~ fis,2*3/2 ~ fis,2 ~ fis,2 cis2 ~ \divisioMaior
cis4 d2*4/2 a,2 ~ a,2 b,2*5/4 cis2*4/2 ~ cis2 ~ cis2 d2*3/2 ~ \divisioMinima
d4 e2*4/2 cis2*3/2 a,2*3/2 ~ a,2 b,2*3/2 ~ \divisioMaxima
b,2 a,2*3/2 ~ a,2*3/2 ~ a,2 b,2*3/2 ~ b,2 cis2*4/2 ~ cis2 ~ cis2*3/2 fis2*4/2 ~ fis4 \divisioMinima
a2 gis2*3/2 fis2*3/2 ~ fis2 e2*4/2 d2*3/2 cis2 b,2*9/4 a,2*3/2 ~ a,2 b,2*3/2 ~ \divisioMaxima
b,2 ~ b,2*4/2 cis2 ~ cis2*3/2 ~ cis2 ~ cis2 ~ cis2*3/2 e2 fis2*3/2 \divisioMinima
gis2 a2*4/2 d2*3/2 ~ d4 \divisioMaior
b,2 ~ b,2*6/2 cis2 ~ cis2*3/2 fis2*6/2 ~ fis2*3/2 ~ \divisioMaior
fis2*4/2 ~ fis2 ~ fis2*3/2 ~ fis2*7/4 ~ fis2*3/2 d2*4/2 ~ d4 ~ d2 e2 ~ e4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Offertory"
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
