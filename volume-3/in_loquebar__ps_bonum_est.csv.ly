\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.342
%(volume.page)

global = {
 \key fis \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Loquebar... Ps. Bonum est" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Loquebar... Ps. Bonum est"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Loquebar... Ps. Bonum est" }
    \line {}
  }
}

chantText = \lyricmode {
Lo -- qué -- bar 
\set stanza = " * " de te -- sti -- mó -- ni -- is tu -- is 
in con -- spé -- ctu re -- gum, et non con -- fun -- dé -- bar: 
et me -- di -- tá -- bar in man -- dá -- tis tu -- _ is, _ 
quæ di -- lé -- _ xi ni -- _ mis. Ps. 
Bo -- num est con -- fi -- té -- ri Dó -- mi -- no: 
\set stanza = " * " 
et psál -- le -- re nó -- mi -- ni tu -- o Al -- tís -- si -- me. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   d'4 ( fis'4) a'4 ( a'4 b'4) a'4 \divisioMinima
 a'4 a'4 a'4 b'4 a'4 ( fis'4 gis'\prall a'4) a'4 a'4 ( b'4 cis''4 b'4 a'4 b'4) b'4 ( a'4) \divisioMaior
 a'4 b'4 ( cis''4 \once \tweak #'font-size #-4 b' ) cis''4 a'4 a'4 ( cis''4 b'4 a'4 b'4) a'4 \divisioMinima
 fis'4 ( d'4 fis'4) a'4 ( a'4) b'4 ( cis''4 a'4) a'4 ( a'4) a'4 ( b'4 a'4) a'4 \divisioMaxima
 a'4 e'4 fis'4 a'4 ( a'4 b'4) a'4 \divisioMinima
 a'4 ( b'4 a'4 a'4) e'4 ( fis'4) a'4 ( a'4 b'4) a'4 a'4 ( a'4) b'4 ( cis''4 a'4) fis'4 a'4 ( a'4 fis'4 a'4) \divisioMaior
 d'4 e'4 ( fis'4) fis'4 a'4 ( a'4 fis'4) e'4 e'4 ( fis'4) a'4 ( fis'4 a'4) d'4 \finalis
 d'4 fis'4 a'4 a'4 a'4 a'4 b'4 b'4 a'4 a'4 \divisioMaxima
 fis'4 a'4 a'4 a'4 a'4 a'4 a'4 b'4 gis'4 gis'4 a'4 fis'4 fis'4 \finalis
 d'4 fis'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 a'4 b'4 b'4 a'4 \divisioMaxima
 fis'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 b'4 b'4 a'4 \divisioMaxima
 fis'4 a'4 a'4 a'4 a'4 a'4 a'4 b'4 gis'4 a'4 fis'4 \finalis

}

altoMusic = {
d'2 e'2*3/2 ~ e'4 ~ \divisioMinima
e'4 ~ e'2 fis'4 e'2*5/2 d'2*6/2 cis'2 ~ \divisioMaior
cis'4 ~ cis'2*3/2 fis'2 ~ fis'2*5/2 e'4 \divisioMinima
d'2*3/2 e'2 ~ e'2*3/2 ~ e'2 d'2*3/2 cis'4 ~ \divisioMaxima
cis'2*3/2 ~ cis'2*4/2 ~ \divisioMinima
cis'2*6/2 fis'2*4/2 e'2 ~ e'2*4/2 cis'2*4/2 \divisioMaior
d'4 ~ d'2*3/2 e'2*4/2 a2*5/2 ~ a4 \finalis
r2 fis'2*3/2 e'2 fis'2 ~ fis'4 ~ \divisioMaxima
fis'4 ~ fis'2*3/2 e'2*3/2 d'2*3/2 e'2 d'4 \finalis
r4 fis'2*5/2 e'2*3/2 ~ \divisioMinima
e'2 fis'2*3/2 ~ fis'2 \divisioMaxima
cis'2 ~ cis'2*4/2 gis'2*3/2 ~ \divisioMinima
gis'2*3/2 fis'2 \divisioMaxima
d'2 e'2*5/2 d'2 e'4 d'4 \finalis
}

tenorMusic = {
d'2 ~ d'2*3/2 cis'4 ~ \divisioMinima
cis'4 ~ cis'2 ~ cis'4 ~ cis'2*5/2 a2*6/2 ~ a2 ~ \divisioMaior
a4 gis2*3/2 a2 ~ a2*5/2 ~ a4 ~ \divisioMinima
a2*3/2 ~ a2 gis2*3/2 fis2 ~ fis2*3/2 e4 \divisioMaxima
a2*3/2 ~ a2*4/2 ~ \divisioMinima
a2*6/2 ~ a2*4/2 ~ a2 e2*4/2 fis2*4/2 ~ \divisioMaior
fis4 ~ fis2*3/2 e2*4/2 ~ e2*5/2 fis4 \finalis
d'2 ~ d'2*3/2 cis'2 d'2 cis'4 \divisioMaxima
r4 a2*3/2 ~ a2*3/2 ~ a2*3/2 ~ a2 ~ a4 \finalis
d'4 ~ d'2*5/2 r2*3/2 \divisioMinima
r2 d'2*3/2 cis'2 \divisioMaxima
b2 a2*4/2 ~ a2*3/2 ~ \divisioMinima
a2*3/2 ~ a2 ~ \divisioMaxima
a2 ~ a2*5/2 ~ a2 ~ a4 ~ a4 \finalis
}

bassMusic = {
b2 a2*3/2 ~ a4 ~ \divisioMinima
a4 gis2 fis4 ~ fis2*5/2 ~ fis2*6/2 ~ fis2 ~ \divisioMaior
fis4 ~ fis2*3/2 e2 d2*5/2 cis4 \divisioMinima
b,2*3/2 cis2 ~ cis2*3/2 d2 ~ d2*3/2 a,4 \divisioMaxima
r2*3/2 gis2*4/2 \divisioMinima
fis2*6/2 d2*4/2 cis2 ~ cis2*4/2 a,2*4/2 \divisioMaior
b,4 ~ b,2*3/2 cis2*4/2 ~ cis2*5/2 d4 \finalis
r2*7/2 b2 fis4 \divisioMaxima
r4 d2*3/2 cis2*3/2 b,2*3/2 cis2 d4 \finalis
r2*6/2 cis'2*3/2 ~ \divisioMinima
cis'2 b2*3/2 fis2 ~ \divisioMaxima
fis2 ~ fis2*4/2 e2*3/2 ~ \divisioMinima
e2*3/2 d2 ~ \divisioMaxima
d2 cis2*5/2 b,2 cis4 d4 \finalis
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
