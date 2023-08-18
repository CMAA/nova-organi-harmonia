\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.330
%(volume.page)

global = {
 \key e \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Erubescant et revereantur" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Erubescant et revereantur"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Erubescant et revereantur" }
    \line {}
  }
}

chantText = \lyricmode {
E -- ru -- bé -- scant 
\set stanza = " * " et re -- ve -- re -- án -- tur si -- _ mul, 
qui gra -- tu -- lán -- tur ma -- lis me -- is: 
in -- du -- án -- tur pu -- dó -- re et re -- ve -- rén -- ti -- a, _ 
qui ma -- lí -- gna lo -- quún -- tur ad -- vér -- sum me. _ _ _ _ }

chantMusic = {
\tieDown   a'4 ( gis'4) a'4 b'4 ( cis''\prall d''4 cis''4) cis''4 ( b'4) \divisioMinima
 b'4. a'4 a'4 ( gis'4) fis'4 a'4 e'4 a'4 ( gis'4) a'4 ( b'4 a'4) a'4 ( gis'4) \divisioMaior \forceBreak

 e'4 fis'4 e'4 ( d'4) e'4 ( \once \tweak #'font-size #-4 fis' ) fis'4 b'4 a'4 ( a'4 gis'4) e'4 ( fis'4 gis'4 fis'4 e'4 fis'4) fis'4 ( e'4) \divisioMaxima
 a'4 ( \once \tweak #'font-size #-4 gis' ) a'4 b'4 ( cis''4) b'4 \forceBreak
 a'4 a'4 ( gis'4) fis'4 \divisioMinima
 gis'4 e'4 fis'4 a'4 ( b'4) a'4 a'4 ( b'4 cis''\prall d''4 cis''4 b'4) cis''4 ( b'4) \divisioMaior
 gis'4 a'4 cis''4 b'4 gis'4 \forceBreak
 a'4 fis'4 ( gis'\prall a'4 gis'4 e'4) \divisioMinima
 gis'4 e'4 fis'4 ( \once \tweak #'font-size #-4 a' ) a'4. gis'4 ( a'4 b'4 a'4 fis'4) ~ fis'4 ( d'4.) fis'4 ( a'4) ~ a'4 ( a'4 e'4) \finalis

}

altoMusic = {
e'2*3/2 fis'2*4/2 e'2 ~ \divisioMinima
e'2*5/4 ~ e'2*3/2 ~ e'2 ~ e'2 ~ e'2*3/2 ~ e'2 ~ \divisioMaior
e'4 r2*5/2 fis'4 ~ fis'4 e'2*3/2 b2*6/2 ~ b2 \divisioMaxima
e'2*3/2 fis'2*3/2 ~ fis'4 e'2 cis'4 ~ \divisioMinima
cis'2*3/2 b2*3/2 e'2*3/2 d'2*3/2 e'2 ~ \divisioMaior
e'2 ~ e'2*3/2 ~ e'4 b2*4/2 ~ b4 ~ \divisioMinima
b4 e'4 ~ e'2 ~ e'2*3/4 ~ e'2*4/2 d'2 ~ d'2*3/4 b2 ~ b2 ~ b4 \finalis
}

tenorMusic = {
a2*3/2 ~ a2*4/2 gis2 \divisioMinima
a2*5/4 b2*3/2 ~ b2 ~ b2 a2*3/2 b2 ~ \divisioMaior
b2 a2 gis2 a4 ~ a4 b2*3/2 a2*6/2 gis2 \divisioMaxima
a2*3/2 ~ a2*3/2 b4 ~ b2 ~ b4 \divisioMinima
a2*3/2 fis2*3/2 ~ fis2*3/2 ~ fis2*3/2 gis2 ~ \divisioMaior
gis2 a2*3/2 b4 a2*4/2 gis4 \divisioMinima
e4 gis4 a2 b2*3/4 a2*4/2 ~ a2*7/4 ~ a2 ~ a2 gis4 \finalis
}

bassMusic = {
cis2*3/2 d2*4/2 e2 ~ \divisioMinima
e2*5/4 ~ e2*3/2 d2 cis2 ~ cis2*3/2 e2 \divisioMaior
gis2 fis2 e2 ~ e4 d4 cis2*3/2 e2*6/2 ~ e2 \divisioMaxima
cis2*3/2 d2*3/2 ~ d4 cis2 fis4 ~ \divisioMinima
fis2*3/2 d2*3/2 cis2*3/2 b,2*3/2 e2 \divisioMaior
cis2 ~ cis2*3/2 ~ cis4 e2*4/2 ~ e4 ~ \divisioMinima
e4 ~ e4 d2 cis2*3/4 ~ cis2*4/2 b,2*7/4 e2 ~ e2 ~ e4 \finalis
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
