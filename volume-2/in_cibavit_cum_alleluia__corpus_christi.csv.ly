\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.114
%(volume.page)

global = {
 \key fis \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Cibavit cum Alleluia" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Cibavit cum Alleluia"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Cibavit cum Alleluia" }
    \line {}
  }
}

chantText = \lyricmode {
Ci -- bá -- vit e -- os 
\set stanza = " * " ex á -- di -- pe fru -- mén -- _ ti, al -- le -- lú -- ia: 
et de pe -- tra, mel -- le _ sa -- tu -- rá -- vit e -- os, 
al -- le -- lú -- ia, al -- le -- lú -- _ ia, al -- le -- _ _ lú -- ia. Ps. 
Ex -- sul -- tá -- te De -- o ad -- ju -- tó -- ri no -- stro: 
\set stanza = " * " 
ju -- bi -- lá -- te De -- o Ja -- cob. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   cis'4 e'4 ( fis'4 e'4) fis'4 fis'4 ( a'4 fis'4) e'4 ( fis'4 e'4) \divisioMinima
 fis'4 a'4 a'4 ( a'4 a'4) fis'4 e'4 e'4 ( gis'4 fis'4) gis'4 ( e'4) cis'4 \divisioMinima \forceBreak

 e'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( gis'4 a'4 fis'4) fis'4 ( gis'4 fis'4) fis'4 \divisioMaxima
 e'4 fis'4 a'4 ( a'4) a'4 ( \once \tweak #'font-size #-4 b' ) b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4 a'4 a'4) fis'4 ( gis'4 fis'4) \divisioMinima \forceBreak

 fis'4 fis'4 ( b'4) b'4 ( a'4) a'4 ( b'4 cis''4) b'4 ( a'4) a'4 \divisioMaior
 a'4 ( \once \tweak #'font-size #-4 b' ) b'4 b'4 ( a'4 b'4) fis'4 \divisioMinima
 gis'4 ( a'\prall b'4) b'4 ( a'4) a'4 ( fis'4) gis'4 ( \tiny fis' e' 4) fis'4 ( e'4) \divisioMinima \forceBreak

 fis'4 ( gis'\prall a'4) a'4 ( gis'4 fis'4 gis'\prall a'4) b'4 ( gis'4) a'4 ( gis'4) fis'4 ( gis'4 a'4 gis'4 fis'4 gis'4) gis'4 ( fis'4) \finalis
 e'4 fis'4 ( e'4) e'4 ( a'4) a'4 a'4 a'4 a'4 \forceBreak
 a'4 ( gis'4) a'4 ( b'4) b'4 a'4 ( b'4) a'4 \divisioMaxima
 a'4 ( fis'4) fis'4 ( a'4) a'4 b'4 a'4 ( fis'4) a'4 gis'4 ( e'4) fis'4 ( gis'4 fis'4) \finalis
  e'4 fis'4 ( e'4) e'4 a'4 \forceBreak
 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 ( gis'4) a'4 ( b'4) b'4 a'4 ( b'4) a'4 \divisioMaxima
 a'4 ( fis'4) fis'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima \forceBreak

 a'4 ( gis'4) a'4 ( b'4) b'4 a'4 ( b'4) a'4 \divisioMaxima
 a'4 ( fis'4) fis'4 ( a'4) a'4 a'4 a'4 a'4 b'4 a'4 ( fis'4) a'4 gis'4 ( e'4) fis'4 ( gis'4 fis'4) \finalis

}

altoMusic = {
e'4 ~ e'2*4/2 cis'2*3/2 b2*3/2 \divisioMinima
cis'4 d'4 cis'2*5/2 ~ cis'2*3/2 ~ cis'2 ~ cis'4 \divisioMinima
b2 a2*4/2 b2*3/2 a4 \divisioMaxima
cis'2 e'2 fis'2 e'2 d'2*4/2 cis'2*3/2 ~ \divisioMinima
cis'4 d'2 cis'2 fis'2*3/2 e'2*3/2 ~ \divisioMaior
e'2*3/2 d'2*4/2 \divisioMinima
b2*3/2 e'2 cis'2 ~ cis'2*3/2 ~ cis'2 ~ \divisioMinima
cis'2*3/2 ~ cis'2 ~ cis'2*3/2 b2 ~ b2 a2 b2*4/2 ~ b4 a4 \finalis
r4 cis'2 ~ cis'2*3/2 ~ cis'2*3/2 ~ cis'2 fis'2*3/2 e'2 ~ e'4 \divisioMaxima
cis'2 d'2 cis'2 e'2*3/2 ~ e'2 cis'2 ~ cis'4 ~ cis'4 ~ cis'2 ~ cis'2 ~ cis'2*3/2 d'2*3/2 \divisioMinima
e'2 cis'2 fis'2 d'4 ~ d'2 cis'4 ~ \divisioMaxima
cis'2 d'2 cis'2*4/2 fis'2*3/2 \divisioMinima
e'2 ~ e'2 d'4 ~ d'2 cis'4 ~ \divisioMaxima
cis'2 d'2 cis'2*3/2 ~ cis'2 d'2*3/2 b2 ~ b2 a4 \finalis
}

tenorMusic = {
r4 a2*4/2 ~ a2*3/2 gis2*3/2 \divisioMinima
a2 ~ a2*5/2 gis2*3/2 e2*3/2 ~ \divisioMinima
e2 cis2*4/2 ~ cis2*3/2 ~ cis4 \divisioMaxima
a2 ~ a2 ~ a2 e2 fis2*4/2 ~ fis2*4/2 ~ fis2 ~ fis2 ~ fis2*3/2 a2*3/2 \divisioMaior
fis2*3/2 ~ fis2*4/2 \divisioMinima
e2*3/2 ~ e2 fis2 a2*3/2 gis2 \divisioMinima
a2*3/2 fis2 ~ fis2*3/2 ~ fis2 e2 ~ e2 d2*4/2 cis2 \finalis
r4 a2 ~ a2*3/2 ~ a2*3/2 fis2 ~ fis2*3/2 a2 ~ a4 ~ \divisioMaxima
a2 b2 a2 cis'2*3/2 b2 ~ b2 a4 r4 a2 gis2 fis2*3/2 ~ fis2*3/2 \divisioMinima
e2 fis2 ~ fis2 ~ fis4 e2 ~ e4 \divisioMaxima
fis2 ~ fis2 ~ fis2*4/2 ~ fis2*3/2 ~ \divisioMinima
fis2 ~ fis2 ~ fis4 ~ fis2 ~ fis4 ~ \divisioMaxima
fis2 ~ fis2 ~ fis2*3/2 ~ fis2 ~ fis2*3/2 e2 cis2 ~ cis4 \finalis
}

bassMusic = {
r4 r2*4/2 fis2*3/2 gis2*3/2 \divisioMinima
fis2 ~ fis2*5/2 cis2*3/2 ~ cis2*3/2 ~ \divisioMinima
cis2 fis,2*4/2 ~ fis,2*3/2 ~ fis,4 \divisioMaxima
a,2 cis2 d2 cis2 b,2*4/2 a,2*3/2 ~ \divisioMinima
a,4 b,2 fis2 d2*3/2 cis2*3/2 ~ \divisioMaior
cis2*3/2 b,2*4/2 \divisioMinima
e2*3/2 cis2 a,2 ~ a,2*3/2 cis2 \divisioMinima
fis2*3/2 ~ fis2 e2*3/2 d2 cis2 fis,2 ~ fis,2*4/2 ~ fis,2 \finalis
a4 ~ a2 gis2*3/2 fis2*3/2 e2 d2*3/2 ~ d2 cis4 \divisioMaxima
fis2 ~ fis2 ~ fis2 cis2*3/2 ~ cis2 fis2 ~ fis4 a,4 ~ a,2 ~ a,2 ~ a,2*3/2 b,2*3/2 \divisioMinima
cis2 fis2 d2 ~ d4 a,2 ~ a,4 \divisioMaxima
fis,2 b,2 fis2*4/2 d2*3/2 \divisioMinima
cis2 b,2 ~ b,4 fis,2 ~ fis,4 ~ \divisioMaxima
fis,2 b,2 fis,2*3/2 a,2 b,2*3/2 cis2 fis,2 ~ fis,4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Introit"
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
