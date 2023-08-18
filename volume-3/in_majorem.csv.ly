\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.273
%(volume.page)

global = {
 \key e \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Majorem" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Majorem"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Majorem" }
    \line {}
  }
}

chantText = \lyricmode {
Ma -- jó -- rem hac _ 
\set stanza = " * " di -- le -- cti -- ó -- nem ne -- _ mo ha -- bet, 
ut á -- ni -- mam su -- am po -- _ _ nat quis pro a -- mí -- cis su -- _ is. Ps. 
Be -- á -- tus qui in -- tél -- li -- git su -- per e -- gé -- num et páu -- pe -- rem: 
\set stanza = " * " 
in di -- e ma -- la li -- be -- rá -- bit e -- um Dó -- mi -- nus. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. _ }

chantMusic = {
\tieDown    d'4 ( fis'4) fis'4 ( g'4) e'4 ( d'4) d'4 ( e'4 fis'4) ~ fis'4 ( e'4) \divisioMinima
 fis'4 d'4 fis'4 a'4 ( a'4 b'4) a'4 \divisioMinima
 b'4 ( a'4) ~ a'4 ( gis'4 fis'4) a'4 ( a'4) a'4 ( b'4 cis''4 b'4 a'4 b'4) b'4 ( a'4) \divisioMaxima
 a'4 ( fis'4) a'4 ( cis''4) b'4 a'4 a'4 ( b'4 a'4 fis'4) fis'4  d'4 ( e'4) fis'4 ( e'4) fis'4 ( g'4) fis'4 ( e'4) a'4 ( a'4) \divisioMinima
 d'4 e'4 ( fis'4) fis'4 ( a'4 a'4) fis'4 e'4 e'4 ( fis'4) a'4 ( fis'4 a'4) d'4 \finalis
 d'4 fis'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 b'4 b'4 a'4 a'4 \divisioMaxima
 fis'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 b'4 gis'4 a'4 fis'4 fis'4 \finalis
  d'4 fis'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 a'4 b'4 b'4 a'4 \divisioMaxima
 fis'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 b'4 b'4 a'4 \divisioMaxima
 fis'4 a'4 a'4 a'4 a'4 a'4 a'4 b'4 gis'4 a'4 fis'4 ( e'4) fis'4 ( e'4 d'4 e'4) \finalis

}

altoMusic = {
d'2 b2 ~ b2 d'2 cis'2*3/2 \divisioMinima
d'2*3/2 e'2*4/2 ~ \divisioMinima
e'4 cis'2*4/2 ~ cis'2 fis'2*6/2 e'2 \divisioMaxima
d'2 e'2*4/2 d'2*4/2 ~ d'4 ~ d'2*4/2 ~ d'2*4/2 ~ d'2 ~ \divisioMinima
d'4 b2*3/2 cis'2*4/2 ~ cis'2 d'2*3/2 a4 \finalis
r4 fis'2*4/2 ~ fis'2*6/2 ~ fis'2*3/2 ~ fis'2*3/2 \divisioMaxima
r4 e'2*6/2 d'2*4/2 e'2 d'4 r4 fis'2*5/2 e'2*3/2 ~ \divisioMinima
e'2 fis'2*3/2 ~ fis'2 \divisioMaxima
cis'2 ~ cis'2*4/2 ~ cis'2*3/2 ~ \divisioMinima
cis'4 gis'2 fis'2 ~ \divisioMaxima
fis'2 e'2*5/2 d'2 e'2*3/2 d'2*3/2 cis'4 \finalis
}

tenorMusic = {
a2 ~ a2 g2 a2 ~ a2*3/2 \divisioMinima
b2*3/2 cis'2*4/2 ~ \divisioMinima
cis'4 a2*4/2 ~ a2 ~ a2*6/2 ~ a2 ~ \divisioMaxima
a2 ~ a2*4/2 fis2*4/2 a4 b2*4/2 a2*4/2 ~ a2 ~ \divisioMinima
a4 ~ a2*3/2 ~ a2*4/2 ~ a2 fis2*3/2 ~ fis4 \finalis
r4 d'2*4/2 ~ d'2*6/2 ~ d'2*3/2 cis'2*3/2 \divisioMaxima
r4 a2*6/2 ~ a2*4/2 ~ a2 ~ a4 d'4 ~ d'2*5/2 cis'2*3/2 ~ \divisioMinima
cis'2 d'2*3/2 cis'2 \divisioMaxima
a2 ~ a2*4/2 ~ a2*3/2 ~ \divisioMinima
a4 ~ a2 ~ a2 ~ \divisioMaxima
a2 ~ a2*5/2 ~ a2 ~ a2*3/2 ~ a2*3/2 ~ a4 \finalis
}

bassMusic = {
fis2 e2 ~ e2 fis2 a2*3/2 ~ \divisioMinima
a2*3/2 ~ a2*4/2 ~ \divisioMinima
a4 g2*4/2 fis2 d2*6/2 cis2 \divisioMaxima
b,2 cis2*4/2 d2*4/2 ~ d4 ~ d2*4/2 ~ d2*4/2 fis2 ~ \divisioMinima
fis4 ~ fis2*3/2 ~ fis2*4/2 a2 d2*3/2 ~ d4 \finalis
r2*5/2 cis'2*6/2 b2*3/2 fis2*3/2 \divisioMaxima
r4 cis2*6/2 b,2*4/2 cis2 d4 r2*11/2 b2*3/2 fis2 \divisioMaxima
r2 gis2*4/2 fis2*3/2 ~ \divisioMinima
fis4 e2 d2 ~ \divisioMaxima
d2 cis2*5/2 b,2 cis2*3/2 d2*3/2 a,4 \finalis
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
        "V"
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
