\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.326
%(volume.page)

global = {
 \key e \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Probasti" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Probasti"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Probasti" }
    \line {}
  }
}

chantText = \lyricmode {
Pro -- ba -- sti, Dó -- mi -- ne, 
\set stanza = " * " cor me -- um, 
et vi -- si -- tá -- sti _ no -- cte: 
i -- _ gne me _ _ ex -- a -- mi -- ná -- sti, 
et non est in -- vén -- _ _ ta in me in -- _ í -- qui -- tas. Ps. 
Ex -- áu -- di, Dó -- mi -- ne, ju -- stí -- ti -- am me -- am: 
\set stanza = " * " 
in -- tén -- de de -- pre -- ca -- ti -- ó -- nem me -- am. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   e'4 e'4 ( fis'4) fis'4 fis'4 ( d'4 fis'4 e'4) e'4 ( fis'4 e'4) e'4 \divisioMinima
 fis'4 ( a'4) a'4 ( a'4 a'4) a'4 \divisioMaior
 a'4 a'4 ( cis''4 b'4) a'4 ( gis'4) a'4 ( b'4) b'4 ( a'4) ~ a'4 ( fis'4 gis'\prall a'4) e'4 ( fis'4 e'4) e'4 \divisioMaxima
 e'4 ( fis'4) a'4 ( gis'4 a'4) fis'4 ( a'4) a'4 ( gis'4) a'4 ( b'4 fis'4) ~ fis'4 ( e'4) \divisioMinima
 e'4 ( fis'4 a'4 gis'4) gis'4 ( a'4 b'4) b'4 ( cis''4 a'4 fis'4 gis'\prall a'4) a'4 ( b'4) a'4 \divisioMaxima
 fis'4 ( a'4 gis'4) a'4 a'4 ( cis''4 b'4) a'4 a'4 ( a'4) ~ a'4 ( fis'4) ~ fis'4 ( \once \tweak #'font-size #-4 d' ) d'4 e'4 ( fis'4) e'4 ( fis'4 gis'\prall a'4 b'4) \divisioMinima
 b'4 ( a'4) ~ a'4 ( fis'4 gis'\prall a'4) e'4 e'4 ( fis'4 e'4) e'4 \finalis
 e'4 ( a'4 gis'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 ( d''4) cis''4 cis''4 cis''4 ( b'4) b'4 ( cis''4) \divisioMaxima
 b'4 ( \once \tweak #'font-size #-4 gis' ) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 ( cis''\prall d''4) b'4 a'4 a'4 ( a'4 a'4) fis'4 ( e'4) \finalis
  e'4 ( a'4 gis'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 b'4 b'4 ( d''4) cis''4 cis''4 cis''4 ( \once \tweak #'font-size #-4 b' ) b'4 ( cis''4) \divisioMaxima
 b'4 ( gis'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 b'4 ( d''4) cis''4 cis''4 ( \once \tweak #'font-size #-4 b' ) b'4 ( cis''4) \divisioMaxima
 b'4 ( gis'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 ( cis''\prall d''4) b'4 a'4 a'4 ( a'4 a'4) fis'4 ( e'4) \finalis

}

altoMusic = {
r4 cis'2*3/2 b2*4/2 d'2*3/2 cis'4 ~ \divisioMinima
cis'2 ~ cis'2*4/2 ~ \divisioMaior
cis'4 fis'2*5/2 ~ fis'2*3/2 e'2 d'2*3/2 b2*3/2 ~ b4 \divisioMaxima
cis'2 d'2*5/2 e'2*4/2 cis'2*3/2 \divisioMinima
e'2*4/2 ~ e'2*3/2 ~ e'2*3/2 cis'2*3/2 ~ cis'2*3/2 ~ \divisioMaxima
cis'2*4/2 ~ cis'2*4/2 ~ cis'2*3/2 d'2*4/2 ~ d'2 e'2*4/2 ~ e'4 ~ \divisioMinima
e'4 ~ e'2 d'2*3/2 cis'4 b2*3/2 ~ b4 \finalis
e'2*3/2 ~ e'2*3/2 fis'2*4/2 a'2*4/2 gis'2 ~ gis'2 \divisioMaxima
e'2 ~ e'2*3/2 ~ e'2*3/2 fis'2*3/2 ~ fis'2 e'2*3/2 b2 r2*3/2 fis'2*3/2 gis'2*3/2 fis'2*3/2 ~ \divisioMinima
fis'2 a'2*4/2 fis'2 gis'2 \divisioMaxima
e'2*4/2 ~ e'2*4/2 ~ e'2*3/2 ~ \divisioMinima
e'4 fis'2*3/2 e'2 ~ e'2 ~ \divisioMaxima
e'2*4/2 fis'2*4/2 d'2*3/2 e'2 b2*3/2 ~ b2 \finalis
}

tenorMusic = {
r2*11/2 a4 ~ \divisioMinima
a2 ~ a2*4/2 ~ \divisioMaior
a4 ~ a2*5/2 ~ a2*3/2 ~ a2 ~ a2*3/2 ~ a2*3/2 gis4 \divisioMaxima
a2 ~ a2*5/2 ~ a2*4/2 gis2*3/2 \divisioMinima
a2*4/2 cis'2*3/2 b2*3/2 ~ b2*3/2 a2*3/2 ~ \divisioMaxima
a2*4/2 gis2*4/2 fis2*3/2 ~ fis2*4/2 a2 ~ a2*4/2 gis4 ~ \divisioMinima
gis4 a2 ~ a2*3/2 ~ a4 ~ a2*3/2 gis4 \finalis
cis'2*3/2 ~ cis'2*3/2 r2*4/2 fis'2*4/2 e'2 ~ e'2 \divisioMaxima
r2 fis2*3/2 gis2*3/2 a2*3/2 cis'2 b2*3/2 a4 gis4 e'2*3/2 ~ e'2*3/2 ~ e'2*3/2 r2*3/2 \divisioMinima
r2 fis'2*4/2 e'2 ~ e'2 \divisioMaxima
gis2*4/2 fis2*4/2 gis2*3/2 ~ \divisioMinima
gis4 a2*3/2 gis2 ~ gis2 ~ \divisioMaxima
gis2*4/2 a2*4/2 ~ a2*3/2 ~ a2 ~ a2*3/2 ~ a4 gis4 \finalis
}

bassMusic = {
r4 a2*3/2 ~ a2*4/2 ~ a2*3/2 ~ a4 \divisioMinima
gis2 fis2*4/2 ~ \divisioMaior
fis4 e2*5/2 d2*3/2 cis2 b,2*3/2 e2*3/2 ~ e4 \divisioMaxima
a,2 b,2*5/2 cis2*4/2 ~ cis2*3/2 ~ \divisioMinima
cis2*4/2 ~ cis2*3/2 ~ cis2*3/2 fis2*3/2 ~ fis2*3/2 \divisioMaxima
a,2*4/2 ~ a,2*4/2 ~ a,2*3/2 b,2*4/2 ~ b,2 cis2*4/2 ~ cis4 ~ \divisioMinima
cis4 ~ cis2 d2*3/2 ~ d4 e2*3/2 ~ e4 \finalis
a2*3/2 cis'2*3/2 d'2*4/2 e'2*4/2 ~ e'2 cis'2 \divisioMaxima
e2 ~ e2*3/2 ~ e2*3/2 d2*3/2 ~ d2 e2*3/2 ~ e2 r2*9/2 d'2*3/2 ~ \divisioMinima
d'2 ~ d'2*4/2 e'2 cis'2 \divisioMaxima
e2*4/2 ~ e2*4/2 ~ e2*3/2 ~ \divisioMinima
e4 d2*3/2 e2 cis2 \divisioMaxima
e2*4/2 d2*4/2 b,2*3/2 cis2 d2*3/2 e2 \finalis
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
