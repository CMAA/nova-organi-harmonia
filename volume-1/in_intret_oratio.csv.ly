\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.193
%(volume.page)

global = {
 \key fis \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Intret oratio" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Intret oratio"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Intret oratio" }
    \line {}
  }
}

chantText = \lyricmode {
In -- tret 
\set stanza = " * " o -- rá -- ti -- o me -- a _ _ _ 
in con -- spé -- _ _ ctu tu -- o: _ 
in -- clí -- na _ au -- rem tu -- _ am _ 
ad pre -- cem me -- am _ Dó -- _ mi -- ne. Ps. 
Dó -- mi -- ne De -- us sa -- lú -- tis me -- æ: 
\set stanza = " * " 
in di -- e cla -- má -- vi, et no -- cte co -- ram te. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   e'4 ( a'4) a'4  a'4 a'4 ( b'4 a'4 a'4) fis'4 ( a'4) a'4 a'4 ( b'4 a'4 a'4) fis'4 a'4 ( a'4) b'4 ( fis'4) ~ fis'4 ( e'4) \divisioMaior \forceBreak

 e'4 fis'4 fis'4 a'4 ( a'4 fis'4) a'4 ( gis'4 a'4) e'4 ( fis'4) fis'4 ( b'4 a'4) a'4 ( b'4 a'4) ~ a'4 ( a'4) \divisioMaxima
 a'4 ( a'4) b'4 ( cis''4 a'4 gis'4 fis'4) fis'4 ( b'4 a'4) ~ a'4 ( gis'4) e'4 \forceBreak
 fis'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( fis'4) a'4 ( gis'4 e'4) e'4 ( fis'4) gis'4 ( e'4 fis'4) \divisioMaior
 d'4 cis'4 ( d'4 e'4) e'4 ( a'4) a'4 ( gis'4 a'4 e'4) d'4 ( fis'4) a'4 ( gis'4) \divisioMinima \forceBreak

 a'4 ( fis'4) a'4 ( e'4) e'4 ( cis'4) d'4 ( e'4 d'4 cis'4) \finalis
 e'4 fis'4 ( a'4) a'4 a'4 a'4 a'4 b'4 a'4 gis'4 ( fis'4) a'4 ( a'4 a'4) \divisioMaxima \forceBreak

 gis'4 ( \once \tweak #'font-size #-4 e' ) fis'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 ( a'4 gis'4) fis'4 ( e'4) fis'4 gis'4 e'4 fis'4 \finalis
  e'4 fis'4 a'4 a'4 \forceBreak
 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 b'4 a'4 a'4 gis'4 \once \tweak #'font-size #-4 fis'  a'4 a'4 a'4 \divisioMaxima \forceBreak

 gis'4 e'4 fis'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 b'4 a'4 gis'4 \once \tweak #'font-size #-4 fis'  a'4 a'4 a'4 \divisioMaxima
 gis'4 e'4 \forceBreak
 fis'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 gis'4 fis'4 e'4 fis'4 gis'4 e'4 fis'4 \finalis

}

altoMusic = {
e'2*4/2 ~ e'2*4/2 fis'2*3/2 e'2*5/2 d'2*3/2 cis'2*3/2 ~ \divisioMaior
cis'2 ~ cis'4 d'2*3/2 cis'2*3/2 e'2 d'2*3/2 e'2*3/2 fis'2 \divisioMaxima
cis'2 fis'2*5/2 ~ fis'2 e'2*4/2 ~ e'2 d'2 e'2*3/2 ~ e'2 cis'2 ~ cis'4 \divisioMaior
a4 ~ a2*3/2 ~ a2 ~ a2*4/2 d'2 ~ d'2 \divisioMinima
e'2 a2 ~ a2 ~ a2*4/2 \finalis
cis'4 ~ cis'2*3/2 ~ cis'2*3/2 e'2 ~ e'2 ~ e'2*3/2 ~ e'4 ~ e'2*8/2 ~ e'2*3/2 cis'2*4/2 ~ cis'2 ~ cis'4 ~ cis'2*3/2 ~ cis'2*3/2 fis'2*3/2 ~ \divisioMinima
fis'2 e'2*3/2 ~ e'2 ~ e'2*3/2 ~ \divisioMaxima
e'2 ~ e'2*6/2 fis'2*3/2 ~ \divisioMinima
fis'4 e'2 ~ e'2 ~ e'2*3/2 \divisioMaxima
cis'2 ~ cis'2*3/2 e'2*3/2 ~ e'2*3/2 ~ e'2*3/2 cis'4 ~ cis'2 \finalis
}

tenorMusic = {
cis'2*4/2 d'2*4/2 ~ d'2*3/2 cis'2*5/2 b2*3/2 a2*3/2 ~ \divisioMaior
a2 ~ a4 ~ a2*3/2 ~ a2*3/2 ~ a2 ~ a2*3/2 ~ a2*3/2 ~ a2 ~ \divisioMaxima
a2 ~ a2*5/2 b2 ~ b2*4/2 a2 ~ a2 ~ a2*3/2 b2 ~ b2 a4 \divisioMaior
fis4 ~ fis2*3/2 e2 ~ e2*4/2 fis2 b2 \divisioMinima
a2 e2 cis2 fis2*4/2 \finalis
a4 ~ a2*3/2 ~ a2*3/2 ~ a2 b2 a2*3/2 b4 a2*8/2 b2*3/2 ~ b2*4/2 gis4 a4 ~ a4 ~ a2*3/2 ~ a2*3/2 ~ a2*5/2 ~ a2*3/2 b2 a2*3/2 \divisioMaxima
b2 a2*6/2 ~ a2*4/2 ~ a2 b2 a2*3/2 \divisioMaxima
b2 a2*3/2 ~ a2*3/2 b2*3/2 ~ b2*3/2 ~ b4 a2 \finalis
}

bassMusic = {
r2*22/2 \divisioMaior
gis2 fis4 ~ fis2*3/2 ~ fis2*3/2 cis2 b,2*3/2 cis2*3/2 d2 \divisioMaxima
fis2 d2*5/2 ~ d2 cis2*4/2 ~ cis2 b,2 cis2*3/2 ~ cis2 fis2 ~ fis4 \divisioMaior
r4 e2*3/2 d2 cis2*4/2 b,2 ~ b,2 \divisioMinima
cis2 ~ cis2 fis,2 ~ fis,2*4/2 \finalis
r4 gis2*3/2 fis2*3/2 cis2 ~ cis2 ~ cis2*3/2 ~ cis4 ~ cis2*8/2 e2*3/2 fis2*4/2 ~ fis2 r4 gis2*3/2 fis2*3/2 d2*3/2 ~ \divisioMinima
d2 cis2*3/2 ~ cis2 ~ cis2*3/2 ~ \divisioMaxima
cis2 ~ cis2*6/2 d2*3/2 ~ \divisioMinima
d4 cis2 ~ cis2 ~ cis2*3/2 \divisioMaxima
fis2 ~ fis2*3/2 cis2*3/2 ~ cis2*3/2 ~ cis2*3/2 fis4 ~ fis2 \finalis
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
        "III"
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
