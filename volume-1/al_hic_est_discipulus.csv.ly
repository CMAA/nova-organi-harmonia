\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.72
%(volume.page)

global = {
 \key fis \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Hic est discipulus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Hic est discipulus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Hic est discipulus" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- ia, _ _ 
\set stanza = " * " al -- le -- lú -- ia. _ _ _ _ _ _ _ _ ℣. 
Hic _ _ _ est _ _ di -- scí -- pu -- lus il -- _ _ _ _ _ _ le, 
qui te -- sti -- mó -- ni -- um pér -- hi -- _ _ _ _ _ bet de _ his: 
et sci -- _ _ mus _ _ qui -- a ve -- _ _ _ _ _ _ rum est 
te -- sti -- mó -- ni -- um 
\set stanza = " * " e -- _ jus. _ }

chantMusic = {
\tieDown  e'4 fis'4 a'4 ( \once \tweak #'font-size #-4 b' ) b'4 ( a'4) b'4 ( gis'4) ~ gis'4 ( fis'4) \divisioMinima
 e'4 fis'4 a'4 ( \once \tweak #'font-size #-4 b' ) b'4 ( a'4) b'4 ( gis'4) ~ gis'4 ( fis'4) \divisioMinima
 a'4. b'4 ( cis''4 b'4 \forceBreak
) e'4 ( fis'4) a'4 ( fis'4) a'4. gis'4 ( a'4 e'4) a'4 ( a'4) ~ a'4 ( fis'4 gis'\prall a'4 fis'4) \finalis
 fis'4 ( e'4) fis'4 ( gis'\prall a'4 b'4) cis''4 ( b'4) ~ b'4 ( a'4 b'4) b'4. a'4 ( a'4) fis'4 ( gis'4 fis'4) \divisioMinima \forceBreak

 fis'4 fis'4 ( gis'4) fis'4 fis'4 fis'4 a'4 ( a'4) b'4 ( cis''4 a'4 fis'4) b'4 ( a'4 gis'4 e'4 fis'4.) a'4 ( fis'4 a'4) ~ a'4 ( fis'4) gis'4 ( e'4) e'4 \divisioMaxima
 fis'4 e'4 fis'4 \forceBreak
 fis'4 fis'4 fis'4 fis'4 fis'4 ( fis'4 e'4) fis'4 ( fis'4 e'4) fis'4 ( cis'4) \divisioMinima
 e'4 ( fis'4) a'4 ( a'4 fis'4 e'4) a'4 ( a'4 b'4) a'4 b'4 ( a'4 gis'4) a'4 ( fis'4) fis'4 \divisioMaxima \forceBreak

 fis'4 fis'4 ( a'4 b'4) cis''4 ( b'4) ~ b'4 ( a'4 b'4) b'4. a'4 ( a'4) fis'4 ( gis'4 fis'4) \divisioMinima
 fis'4 ( gis'4) fis'4 fis'4 a'4 ( a'4) b'4 ( cis''4 a'4 fis'4) b'4 ( a'4 gis'4 e'4 fis'4.) a'4 ( fis'4 \forceBreak
 a'4) ~ a'4 ( fis'4) gis'4 ( e'4) fis'4 e'4 \divisioMaior
 a'4 ( a'4) a'4 a'4 a'4 a'4 ( b'4)  a'4 ( gis'4) cis''4 ( b'4 cis''4) cis''4 ( cis''4 b'4 a'4 gis'4 e'4.) fis'4 ( gis'\prall a'4 fis'4) \finalis

}

altoMusic = {
cis'2 ~ cis'2 ~ cis'2*3/2 ~ cis'2 ~ cis'4 \divisioMinima
e'2 ~ e'2 d'2*3/2 cis'2 ~ cis'4 ~ \divisioMinima
cis'2*3/4 fis'2*3/2 e'2*4/2 d'2*9/4 e'2 cis'2*3/2 ~ cis'2 \finalis
b2 cis'2*5/2 fis'2*4/2 e'2*3/4 ~ e'2*3/2 ~ e'2 ~ \divisioMinima
e'4 d'2*5/2 ~ d'2*6/2 ~ d'2*4/2 ~ d'2*7/4 e'2*3/2 ~ e'2 ~ e'4 \divisioMaxima
cis'2*3/2 b2*3/2 cis'4 ~ cis'2*3/2 b2*3/2 cis'2 \divisioMinima
b2 cis'2*4/2 ~ cis'2*4/2 b2*3/2 cis'2 ~ cis'4 \divisioMaxima
fis'4 ~ fis'2*4/2 ~ fis'2*4/2 e'2*7/4 ~ e'2*3/2 \divisioMinima
d'2*3/2 ~ d'2*3/2 ~ d'2*4/2 ~ d'2*4/2 ~ d'2*7/4 e'2*3/2 ~ e'2 b2 \divisioMaior
e'2*3/2 d'2*4/2 fis'2*5/2 e'2*4/2 ~ e'2*5/4 cis'2 ~ cis'2 \finalis
}

tenorMusic = {
a2 ~ a2 ~ a2*3/2 b2 a4 ~ \divisioMinima
a2 fis2 ~ fis2*3/2 b2 a4 ~ \divisioMinima
a2*3/4 ~ a2*3/2 ~ a2*4/2 ~ a2*9/4 ~ a2 b2*3/2 a2 \finalis
gis2 a2*5/2 ~ a2*4/2 ~ a2*3/4 ~ a2*5/2 ~ \divisioMinima
a4 ~ a2*5/2 fis2*6/2 gis2*4/2 a2*7/4 ~ a2*3/2 b2 gis4 \divisioMaxima
a2*3/2 gis2*4/2 a2*3/2 gis2*3/2 a2 \divisioMinima
gis2 fis2*4/2 ~ fis2*4/2 ~ fis2*3/2 gis2 a4 \divisioMaxima
fis4 a2*4/2 gis2*4/2 ~ gis2*3/4 a2 ~ a2*3/2 ~ \divisioMinima
a2*3/2 ~ a2*3/2 gis2*4/2 fis2*4/2 a2*7/4 ~ a2*3/2 b2 a4 gis4 \divisioMaior
a2*3/2 ~ a2*4/2 ~ a2*5/2 ~ a2*4/2 b2*5/4 ~ b2 a2 \finalis
}

bassMusic = {
r2 gis2 fis2*3/2 ~ fis2 ~ fis4 \divisioMinima
cis2 ~ cis2 b,2*3/2 fis2 ~ fis4 ~ \divisioMinima
fis2*3/4 d2*3/2 cis2*4/2 b,2*9/4 cis2 fis2*3/2 ~ fis2 \finalis
gis2 fis2*5/2 d2*4/2 ~ d2*3/4 cis2*5/2 ~ \divisioMinima
cis4 b,2*5/2 ~ b,2*6/2 ~ b,2*4/2 ~ b,2*7/4 cis2*3/2 e2 ~ e4 \divisioMaxima
r2*7/2 fis2*3/2 ~ fis2*3/2 ~ fis2 ~ \divisioMinima
fis2 ~ fis2*4/2 e2*4/2 d2*3/2 fis2 ~ fis4 ~ \divisioMaxima
fis4 d2*4/2 ~ d2*4/2 cis2*7/4 ~ cis2*3/2 ~ \divisioMinima
cis2*3/2 b,2*3/2 ~ b,2*4/2 ~ b,2*4/2 ~ b,2*7/4 cis2*3/2 e2 ~ e2 \divisioMaior
cis2*3/2 b,2*4/2 d2*5/2 cis2*4/2 ~ cis2*5/4 fis2 ~ fis2 \finalis
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
