\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.126
%(volume.page)

global = {
 \key gis \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Sacerdotes Domini" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Sacerdotes Domini"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Sacerdotes Domini" }
    \line {}
  }
}

chantText = \lyricmode {
Sa -- cer -- dó -- tes 
\set stanza = " * " Dó -- _ _ mi -- ni _ _ 
in -- cén -- sum et pa -- _ _ nes óf -- fe -- _ runt _ De -- o: 
et _ íd -- e -- o san -- cti e -- runt 
De -- o su -- _ o, _ _ 
et _ non pól -- _ lu -- _ ent no -- _ men e -- jus, 
al -- le -- _ _ lú -- ia. _ _ }

chantMusic = {
\tieDown   a'4 fis'4 ( gis'\prall a'4) a'4 gis'4 ( a'4 b'4)   b'4 ( cis''4 a'4.) d''4 ( cis''4) d''4 ( b'4 cis''4) gis'4 gis'4 ( b'4 a'4) b'4 ( a'4) ~ a'4 ( gis'4) \divisioMaior \forceBreak

 a'4 a'4 ( b'4 a'4) a'4 ( a'4) fis'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( a'4 a'4) b'4 ( cis''4 b'4) ~ b'4 ( gis'4 a'4) gis'4 ( fis'4) \divisioMinima
 b'4 ( cis''4) b'4 e''4 ( e''4 e''4) cis''4 ( e''4 cis''4) ~ cis''4 ( b'4) b'4 ( cis''4 \forceBreak
) cis''4 ( b'4) \divisioMaxima
  b'4 ( d''4 cis''4) d''4 ( b'4 a'4) b'4 a'4 a'4 ( gis'4) \divisioMinima
 gis'4 ( a'4 \once \tweak #'font-size #-4 b' ) b'4  cis''4 ( d''4 b'4) b'4 ( cis''4 a'4 gis'4) \divisioMaior
 b'4 ( cis''4) b'4 ( e''4 cis''4 \forceBreak
) b'4 ( cis''4 a'4) b'4 ( cis''4 b'4) b'4 ( a'4 fis'4.) gis'4 ( a'4) b'4 ( a'4 b'4 fis'4) \divisioMaxima
 fis'4 ( a'4) b'4 ( gis'4 a'4) a'4  gis'4 ( a'4) cis''4 ( d''4 cis''4 b'4) cis''4 ( b'4) ~ b'4 ( a'4 b'4) b'4 ( fis'4) \divisioMinima \forceBreak

 fis'4 ( a'4) b'4 ( gis'4 a'4) a'4 a'4 ( b'4 a'4) a'4 \divisioMaior
 a'4 ( b'\prall cis''4 \once \tweak #'font-size #-4 b' )  cis''4 ( a'4) d''4 ( cis''4) d''4 ( b'4 cis''4) gis'4 gis'4 ( b'4 a'4) b'4 ( a'4) ~ a'4 ( gis'4) \finalis

}

altoMusic = {
cis'4 ~ cis'2*3/2 e'4 ~ e'2*3/2 fis'4 ~ fis'2*5/4 e'2 cis'2 e'2 cis'2*4/2 ~ cis'2*3/2 ~ \divisioMaior
cis'4 e'2*3/2 ~ e'2 ~ e'2 ~ e'2*3/2 ~ e'2 ~ e'2 ~ e'2 cis'2 \divisioMinima
e'2*3/2 ~ e'2*5/2 fis'2*3/2 d'2 e'2 d'2*3/2 fis'2*3/2 ~ fis'2 e'2 ~ \divisioMinima
e'2 ~ e'2 fis'2*3/2 e'2 ~ e'2 ~ \divisioMaior
e'2 ~ e'2*3/2 fis'2*6/2 e'2*11/4 d'2*4/2 \divisioMaxima
cis'2*6/2 fis'2 ~ fis'2*5/2 ~ fis'2*4/2 ~ fis'2 \divisioMinima
e'2 d'2*4/2 b2*3/2 e'4 ~ \divisioMaior
e'2*4/2 fis'2*4/2 ~ fis'2*3/2 ~ fis'4 e'2 ~ e'2 ~ e'2*3/2 \finalis
}

tenorMusic = {
r4 a2*3/2 ~ a4 e2*3/2 a4 ~ a2*5/4 gis2 a2 gis2 fis2*4/2 e2*3/2 ~ \divisioMaior
e4 ~ e2*3/2 a2 ~ a2 ~ a2*3/2 ~ a2 gis2 b2 ~ b4 a4 \divisioMinima
gis2*3/2 ~ gis2*5/2 a2*3/2 ~ a2 gis2 fis2*3/2 b2*3/2 ~ b2 ~ b2 ~ \divisioMinima
b2 gis2 a2*3/2 gis2 b2 \divisioMaior
a2 gis2*3/2 fis2*6/2 ~ fis2*11/4 ~ fis2*4/2 ~ \divisioMaxima
fis2*6/2 cis'2 a2*5/2 b2*4/2 fis2 ~ \divisioMinima
fis2 ~ fis2*4/2 ~ fis2*3/2 e4 \divisioMaior
a2*4/2 ~ a2*4/2 ~ a2*3/2 b4 ~ b2 fis2 cis'2*3/2 \finalis
}

bassMusic = {
fis4 ~ fis2*3/2 cis4 ~ cis2*3/2 d4 b,2*5/4 e2 ~ e2 ~ e2 fis2*4/2 cis2*3/2 ~ \divisioMaior
cis4 ~ cis2*3/2 ~ cis2 d2 cis2*3/2 e2 ~ e2 ~ e2 fis2 \divisioMinima
e2*3/2 cis2*5/2 d2*3/2 b,2 e2 b,2*3/2 ~ b,2*3/2 d2 e2 \divisioMinima
cis2 ~ cis2 b,2*3/2 e2 ~ e2 ~ \divisioMaior
e2 ~ e2*3/2 d2*6/2 cis2*11/4 b,2*4/2 \divisioMaxima
r2*6/2 e2 ~ e2*5/2 d2*4/2 ~ d2 \divisioMinima
cis2 b,2*4/2 d2*3/2 cis4 ~ \divisioMaior
cis2*4/2 e2*4/2 d2*3/2 ~ d4 cis2 ~ cis2 ~ cis2*3/2 \finalis
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
        "IV"
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
