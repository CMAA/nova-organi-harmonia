\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.17
%(volume.page)

global = {
 \key e \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Venite benedicti" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Venite benedicti"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Venite benedicti" }
    \line {}
  }
}

chantText = \lyricmode {
Ve -- ní -- te 
\set stanza = " * " be -- ne -- dí -- cti Pa -- tris me -- _ i, 
per -- cí -- pi -- te re -- gnum, al -- le -- _ lú -- ia: 
quod vo -- bis pa -- rá -- tum est _ 
ab o -- rí -- _ gi -- ne mun -- di, 
al -- le -- lú -- ia, al -- le -- lú -- _ ia, al -- le -- _ _ lú -- ia. Ps. 
Can -- tá -- te Dó -- mi -- no cán -- ti -- cum no -- vum: 
\set stanza = " * " 
can -- tá -- te Dó -- mi -- no o -- mnis ter -- ra. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   e'4 ( a'4) a'4 ( a'4 b'4) b'4 \divisioMinima
 b'4 ( cis''4 b'4) a'4 gis'4 ( a'4 b'4 a'4 gis'4 b'4) b'4 b'4 e'4 ( \once \tweak #'font-size #-4 fis' ) fis'4. e'4 ( fis'4 d'4) d'4 \divisioMaior \forceBreak

 fis'4 b'4 a'4 a'4 ( a'4 a'4) a'4 ( b'4 \tiny a' gis' 4) a'4 ( a'4) \divisioMinima
 fis'4 fis'4. d'4 ( fis'4 e'4) e'4 ( fis'4 e'4) e'4 \divisioMaxima
 e'4 e'4 e'4 ( a'4 gis'4 \forceBreak
) a'4 ( b'4) b'4 a'4 ( b'4) b'4 ( cis''4 b'4 b'4) gis'4 ( a'4 gis'4) \divisioMaior
 b'4 d''4 d''4 ( d''4) ~ d''4 ( d''4) b'4 b'4 ( cis''4 a'4 b'4) b'4 ( cis''4 b'4) b'4 \divisioMaxima \forceBreak

 b'4 ( \once \tweak #'font-size #-4 d'' ) d''4 ( d''4 d''4) a'4 ( b'4 a'4) fis'4 \divisioMinima
 a'4 ( \once \tweak #'font-size #-4 b' ) b'4 d''4 ( b'4) d''4 ( \tiny cis'' b' 4) b'4 \divisioMinima
 a'4 ( \once \tweak #'font-size #-4 b' ) b'4. a'4 ( b'4 gis'4) a'4 ( fis'4 e'4) e'4 ( fis'4 e'4) e'4 \finalis \forceBreak

 e'4 ( a'4 gis'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 ( d''4) cis''4 cis''4 cis''4 ( b'4) b'4 ( cis''4) \divisioMaxima
 b'4 ( \once \tweak #'font-size #-4 gis' ) a'4 ( b'4) b'4 \forceBreak
 b'4 b'4 b'4 ( cis''\prall d''4) b'4 a'4 a'4 ( a'4 a'4) fis'4 ( e'4) \finalis
  e'4 ( a'4 gis'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima \forceBreak

 b'4 b'4 b'4 ( d''4) cis''4 cis''4 cis''4 ( \once \tweak #'font-size #-4 b' ) b'4 ( cis''4) \divisioMaxima
 b'4 ( gis'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima \forceBreak

 b'4 b'4 ( d''4) cis''4 cis''4 ( \once \tweak #'font-size #-4 b' ) b'4 ( cis''4) \divisioMaxima
 b'4 ( gis'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 ( cis''\prall d''4) b'4 a'4 a'4 ( a'4 a'4) fis'4 ( e'4) \finalis

}

altoMusic = {
e'2 fis'2*3/2 ~ fis'4 \divisioMinima
e'2*4/2 ~ e'2*6/2 ~ e'2 ~ e'2 d'2*9/4 ~ d'4 ~ \divisioMaior
d'4 fis'2 ~ fis'2*3/2 e'2*4/2 ~ e'2 ~ \divisioMinima
e'4 d'2*9/4 b2*3/2 ~ b4 \divisioMaxima
cis'2 d'2*3/2 e'2 fis'2*3/2 ~ fis'2*4/2 e'2*3/2 \divisioMaior
fis'2 ~ fis'2 d'2*3/2 e'2*4/2 ~ e'2*3/2 ~ e'4 \divisioMaxima
fis'2 ~ fis'2*3/2 cis'2*3/2 ~ cis'4 \divisioMinima
e'2 ~ e'4 d'2*5/2 e'4 ~ \divisioMinima
e'2 ~ e'2*3/4 ~ e'2*3/2 b2*3/2 ~ b2*3/2 ~ b4 \finalis
r2*3/2 a'2*3/2 gis'2*3/2 fis'2*4/2 gis'2 ~ gis'2 \divisioMaxima
e'2 ~ e'2*3/2 ~ e'2 d'2*3/2 ~ d'2 e'2*3/2 b2 r2*3/2 a'2*3/2 ~ a'2*3/2 gis'2*3/2 ~ \divisioMinima
gis'2 fis'2*4/2 gis'2 ~ gis'2 \divisioMaxima
e'2*8/2 ~ e'2 ~ e'4 ~ \divisioMinima
e'4 d'2*3/2 e'2 ~ e'2 ~ \divisioMaxima
e'2 ~ e'2 ~ e'2*4/2 d'2*3/2 ~ d'2 e'2*3/2 b2 \finalis
}

tenorMusic = {
a2 ~ a2*3/2 gis4 ~ \divisioMinima
gis2*3/2 a4 b2*6/2 gis2 a2 ~ a2*9/4 b4 ~ \divisioMaior
b4 a2 b2*3/2 ~ b2*4/2 a2 ~ \divisioMinima
a4 ~ a2*9/4 ~ a2*3/2 gis4 \divisioMaxima
a2 ~ a2*3/2 ~ a2 ~ a2*3/2 gis2*4/2 b2*3/2 ~ \divisioMaior
b2 ~ b2 fis2*3/2 gis2*4/2 fis2*3/2 gis4 \divisioMaxima
a2 b2*3/2 ~ b2*3/2 a4 ~ \divisioMinima
a2 e4 fis2*5/2 gis4 \divisioMinima
fis2 gis2*3/4 a2*3/2 ~ a2*3/2 ~ a2*3/2 gis4 \finalis
e'2*3/2 ~ e'2*3/2 ~ e'2*3/2 d'2*4/2 e'2 ~ e'2 \divisioMaxima
gis2 fis2*3/2 gis2 fis2*3/2 a2 ~ a2*3/2 ~ a4 gis4 e'2*3/2 ~ e'2*3/2 ~ e'2*3/2 ~ e'2*3/2 ~ \divisioMinima
e'2 d'2*4/2 e'2 ~ e'2 \divisioMaxima
gis2*8/2 fis2 gis4 ~ \divisioMinima
gis4 fis2*3/2 gis2 ~ gis2 ~ \divisioMaxima
gis2 fis2 gis2*4/2 fis2*3/2 a2 ~ a2*3/2 ~ a4 gis4 \finalis
}

bassMusic = {
cis2 d2*3/2 ~ d4 \divisioMinima
cis2*4/2 ~ cis2*6/2 ~ cis2 ~ cis2 b,2*9/4 ~ b,4 ~ \divisioMaior
b,4 d2 ~ d2*3/2 cis2*4/2 ~ cis2 ~ \divisioMinima
cis4 b,2*9/4 e2*3/2 ~ e4 \divisioMaxima
a,2 b,2*3/2 cis2 d2*3/2 ~ d2*4/2 cis2*3/2 \divisioMaior
d2 b,2 ~ b,2*3/2 e2*4/2 ~ e2*3/2 ~ e4 \divisioMaxima
d2 ~ d2*3/2 fis2*3/2 ~ fis4 \divisioMinima
cis2 ~ cis4 b,2*5/2 e4 ~ \divisioMinima
e2 ~ e2*3/4 cis2*3/2 d2*3/2 e2*3/2 ~ e4 \finalis
cis'2*3/2 ~ cis'2*3/2 e'2*3/2 r2*6/2 cis'2 \divisioMaxima
e2 ~ e2*3/2 ~ e2 b,2*3/2 ~ b,2 cis2*3/2 e2 cis'2*3/2 ~ cis'2*3/2 e'2*6/2 \divisioMinima
r2*8/2 cis'2 \divisioMaxima
e2*8/2 ~ e2 ~ e4 ~ \divisioMinima
e4 b,2*3/2 e2 cis2 \divisioMaxima
e2 ~ e2 ~ e2*4/2 b,2*3/2 ~ b,2 cis2*3/2 e2 \finalis
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
