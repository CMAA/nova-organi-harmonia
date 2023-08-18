\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.106
%(volume.page)

global = {
 \key fis \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Clamaverunt justi" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Clamaverunt justi"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Clamaverunt justi" }
    \line {}
  }
}

chantText = \lyricmode {
Cla -- ma -- vé -- runt 
\set stanza = " * " ju -- sti, 
et Dó -- mi -- nus ex -- au -- dí -- vit e -- os: 
et ex ó -- mni -- _ bus tri -- bu -- la -- ti -- ó -- ni -- bus e -- ó -- rum _ 
li -- be -- rá -- _ vit e -- _ _ os. Ps. 
Be -- ne -- dí -- cam Dó -- mi -- num in o -- mni tém -- po -- re, 
\set stanza = " * " 
sem -- per laus e -- jus in o -- re me -- o. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   fis'4 e'4 ( gis'4 fis'4) fis'4 a'4 ( a'4)  a'4 ( a'4 b'4 cis''4 a'4) fis'4 \divisioMaior
 fis'4 ( a'4 gis'4) a'4 ( gis'4 a'4 fis'4) fis'4 ( gis'4 fis'4) fis'4 \divisioMinima
 fis'4 ( gis'4 fis'4) fis'4 ( \once \tweak #'font-size #-4 e' ) a'4 ( gis'4) a'4 ( b'4) fis'4 ( gis'4 fis'4 e'4) e'4 \divisioMaxima
 a'4 a'4 ( a'4 a'4) fis'4 fis'4 ( b'4 a'4) b'4 ( cis''4) b'4 \divisioMinima
 b'4 b'4 b'4 ( cis''4) b'4 ( a'4) a'4 ( cis''4 b'4 cis''4) a'4 fis'4 a'4 ( gis'4) a'4 ( gis'4 a'4 fis'4) fis'4 a'4 ( a'4 fis'4 e'4) \divisioMaior
 a'4 ( a'4) e'4 ( fis'4) fis'4 ( a'4) b'4 ( a'4 b'4) b'4 ( a'4 a'4) e'4 ( a'4.) gis'4 ( a'4 fis'4) gis'4 ( gis'4 fis'4) fis'4 \finalis
 e'4 fis'4 ( e'4) e'4 ( a'4) a'4 a'4 a'4 a'4 a'4 ( gis'4) a'4 ( b'4) b'4 a'4 ( b'4) a'4 a'4 \divisioMaxima
 a'4 ( \once \tweak #'font-size #-4 fis' ) fis'4 ( a'4) a'4 a'4 a'4 b'4 a'4 ( fis'4) a'4 gis'4 ( e'4) fis'4 ( gis'4 fis'4) \finalis
  e'4 fis'4 ( e'4) e'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 ( gis'4) a'4 ( b'4) b'4 a'4 ( b'4) a'4 \divisioMaxima
 a'4 ( fis'4) fis'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 ( gis'4) a'4 ( b'4) b'4 a'4 ( b'4) a'4 \divisioMaxima
 a'4 ( fis'4) fis'4 ( a'4) a'4 a'4 a'4 a'4 b'4 a'4 ( fis'4) a'4 gis'4 ( e'4) fis'4 ( gis'4 fis'4) \finalis

}

altoMusic = {
d'4 cis'2*3/2 ~ cis'4 ~ cis'2 ~ cis'2*6/2 \divisioMaior
fis'2*3/2 e'2*4/2 d'2*3/2 cis'4 \divisioMinima
d'2*3/2 cis'2 e'2*4/2 d'2 b2 ~ b4 \divisioMaxima
cis'4 ~ cis'2*4/2 ~ cis'2*3/2 e'2 ~ e'4 ~ \divisioMinima
e'2 fis'2 e'2 ~ e'2*4/2 d'2 ~ d'2 ~ d'2*5/2 cis'2*4/2 \divisioMaior
e'2 ~ e'4 fis'4 ~ fis'2*5/2 e'2*3/2 ~ e'2*5/4 ~ e'2*3/2 cis'2*3/2 ~ cis'4 ~ \finalis
cis'2*3/2 d'2*3/2 e'2*3/2 fis'2*5/2 e'2*3/2 ~ e'4 \divisioMaxima
d'2 ~ d'2 e'2*4/2 cis'2*3/2 ~ cis'2 ~ cis'2*3/2 ~ cis'4 b2 cis'2 d'2*3/2 e'2*3/2 \divisioMinima
fis'2 e'2 ~ e'2 fis'4 ~ fis'2*3/2 \divisioMaxima
cis'2 ~ cis'2 ~ cis'2*4/2 ~ cis'2*3/2 \divisioMinima
d'2 ~ d'2 ~ d'4 e'2*3/2 \divisioMaxima
d'2 ~ d'2 cis'2*3/2 e'2 ~ e'2*3/2 ~ e'2 cis'2 ~ cis'4 \finalis
}

tenorMusic = {
b4 ~ b2*3/2 a4 ~ a2 ~ a2*6/2 ~ \divisioMaior
a2*3/2 ~ a2*4/2 ~ a2*3/2 ~ a4 ~ \divisioMinima
a2*3/2 gis2 a2*4/2 ~ a2 ~ a2 gis4 \divisioMaxima
r4 a2*4/2 gis2*3/2 fis2 gis4 ~ \divisioMinima
gis2 fis2 ~ fis2 a2*4/2 ~ a2 b2 a2*5/2 ~ a2*4/2 ~ \divisioMaior
a2*4/2 ~ a2*5/2 ~ a2*3/2 cis'2*5/4 b2*3/2 ~ b2*3/2 a4 ~ \finalis
a2*3/2 b2*3/2 cis'2*3/2 d'2*5/2 ~ d'2*3/2 cis'4 \divisioMaxima
b2 a2 ~ a2*4/2 ~ a2*3/2 b2 a2*3/2 ~ a2*3/2 ~ a2 b2*3/2 cis'2*3/2 \divisioMinima
d'2 cis'2 ~ cis'2 d'4 cis'2*3/2 \divisioMaxima
a2 gis2 fis2*4/2 ~ fis2*3/2 ~ \divisioMinima
fis2 ~ fis2 ~ fis4 e2*3/2 \divisioMaxima
fis2 d2 e2*3/2 ~ e2 a2*3/2 b2 ~ b2 a4 \finalis
}

bassMusic = {
r2*5/2 gis2 fis2*6/2 \divisioMaior
d2*3/2 cis2*4/2 b,2*3/2 a,4 \divisioMinima
b,2*3/2 cis2 ~ cis2*4/2 d2 e2 ~ e4 \divisioMaxima
fis4 ~ fis2*4/2 ~ fis2*3/2 e2 ~ e4 ~ \divisioMinima
e2 d2 cis2 ~ cis2*4/2 b,2 ~ b,2 ~ b,2*5/2 a,2*4/2 \divisioMaior
cis2*4/2 d2*5/2 cis2*3/2 ~ cis2*5/4 ~ cis2*3/2 fis2*3/2 ~ fis4 \finalis
r2*18/2 \divisioMaxima
b,2 ~ b,2 cis2*4/2 fis2*3/2 ~ fis2 ~ fis2*3/2 r2*15/2 b2 ~ b4 fis2*3/2 ~ \divisioMaxima
fis2 ~ fis2 ~ fis2*4/2 e2*3/2 \divisioMinima
d2 cis2 b,4 cis2*3/2 \divisioMaxima
b,2 ~ b,2 a,2*3/2 cis2 ~ cis2*3/2 ~ cis2 fis2 ~ fis4 \finalis
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
