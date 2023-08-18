\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.32
%(volume.page)

global = {
 \key e \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Eduxit Dominus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Eduxit Dominus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Eduxit Dominus" }
    \line {}
  }
}

chantText = \lyricmode {
E -- dú -- xit Dó -- mi -- nus 
\set stanza = " * " pó -- pu -- lum su -- um 
in ex -- sul -- ta -- ti -- ó -- ne, al -- le -- _ _ lú -- ia: 
et e -- lé -- ctos su -- os in læ -- tí -- ti -- a, 
al -- le -- lú -- ia, al -- le -- _ lú -- ia. Ps. 
Con -- fi -- té -- mi -- ni Dó -- mi -- no, et in -- vo -- cá -- te no -- men e -- jus: 
\set stanza = " * " 
an -- nun -- ti -- á -- te in -- ter gen -- tes ó -- pe -- ra e -- jus. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   a'4 b'4 fis'4 a'4 a'4 ( cis''4 b'4) b'4 \divisioMinima
 b'4 ( d''4) cis''4 ( a'4) b'4 b'4 ( d''4 cis''4 b'4) b'4 \divisioMaior
 b'4 ( fis'4 \forceBreak
) a'4 ( gis'4) a'4 ( \once \tweak #'font-size #-4 b' ) b'4 a'4 ( fis'4) gis'4 ( b'4 a'4 gis'4) gis'4 \divisioMinima
 gis'4 ( \once \tweak #'font-size #-4 cis'' ) cis''4. b'4 ( cis''4 b'4) cis''4 ( a'4 gis'4) gis'4 ( b'4 a'4 gis'4) gis'4 \divisioMaxima \forceBreak

 fis'4 a'4 ( a'4) a'4 ( b'4) a'4 ( gis'4) gis'4 ( b'4 a'4 gis'4) gis'4 \divisioMinima
 a'4 ( a'4 a'4) fis'4 ( a'4 gis'4) a'4 ( gis'4 a'4 fis'4) fis'4 ( e'4 fis'\prall gis'4 fis'4 gis'4) gis'4 ( fis'4) \divisioMaior \forceBreak

 gis'4 ( \once \tweak #'font-size #-4 fis' ) a'4 a'4 ( gis'4 a'4 fis'4) e'4 \divisioMinima
 e'4 ( \once \tweak #'font-size #-4 fis' ) fis'4. d'4 ( fis'4 e'4) e'4 ( fis'4 e'4) e'4 \finalis
 e'4 ( a'4 gis'4) a'4 ( b'4) b'4 b'4 b'4 \forceBreak
 b'4 b'4 b'4 \divisioMinima
 b'4 b'4 b'4 b'4 b'4 b'4 ( d''4) cis''4 cis''4 ( \once \tweak #'font-size #-4 b' ) b'4 ( cis''4) \divisioMaxima
 b'4 ( \once \tweak #'font-size #-4 gis' ) a'4 ( b'4) b'4 b'4 b'4 \forceBreak
 b'4 b'4 b'4 b'4 b'4 ( cis''\prall d''4) b'4 a'4 a'4 ( a'4 a'4) fis'4 ( e'4) \finalis
  e'4 ( a'4 gis'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 \forceBreak
 b'4 b'4 \divisioMinima
 b'4 b'4 b'4 ( d''4) cis''4 cis''4 cis''4 ( \once \tweak #'font-size #-4 b' ) b'4 ( cis''4) \divisioMaxima
 b'4 ( gis'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima \forceBreak

 b'4 b'4 ( d''4) cis''4 cis''4 ( \once \tweak #'font-size #-4 b' ) b'4 ( cis''4) \divisioMaxima
 b'4 ( gis'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 ( cis''\prall d''4) b'4 a'4 a'4 ( a'4 a'4) fis'4 ( e'4) \finalis

}

altoMusic = {
r4 fis'2 e'4 ~ e'2*3/2 fis'4 ~ \divisioMinima
fis'2 a'2*3/2 fis'2*4/2 ~ fis'4 ~ \divisioMaior
fis'2 ~ fis'2*4/2 ~ fis'4 ~ fis'2 ~ fis'2*4/2 e'4 ~ \divisioMinima
e'2 ~ e'2*3/4 ~ e'2*3/2 ~ e'2*3/2 ~ e'2*4/2 ~ e'4 \divisioMaxima
r4 cis'2 e'2 ~ e'2 ~ e'2*4/2 ~ e'4 \divisioMinima
cis'2*3/2 ~ cis'2*3/2 e'2*4/2 b2*3/2 e'2*3/2 cis'2 ~ \divisioMaior
cis'2*3/2 e'2*4/2 ~ e'4 ~ \divisioMinima
e'2 d'2*9/4 b2*3/2 ~ b4 \finalis
e'2*5/2 fis'2*3/2 ~ fis'2*3/2 ~ \divisioMinima
fis'2*3/2 gis'2 fis'2*3/2 gis'2 ~ gis'2 \divisioMaxima
e'2 ~ e'2*3/2 ~ e'2 ~ e'2*4/2 d'2*5/2 e'2*3/2 b2 r2*3/2 fis'2*3/2 gis'2*6/2 ~ \divisioMinima
gis'2 fis'2*4/2 gis'2 ~ gis'2 \divisioMaxima
e'2 ~ e'2 ~ e'2*4/2 fis'2*3/2 ~ \divisioMinima
fis'4 d'2*3/2 fis'2 e'2 ~ \divisioMaxima
e'2 ~ e'2 ~ e'2*4/2 d'2*3/2 ~ d'2 e'2*3/2 b2 \finalis
}

tenorMusic = {
d'4 ~ d'2 ~ d'4 cis'2*3/2 d'4 ~ \divisioMinima
d'2 e'2*3/2 ~ e'2*4/2 d'4 ~ \divisioMaior
d'2 cis'2*4/2 b4 cis'2 ~ cis'2*4/2 ~ cis'4 ~ \divisioMinima
cis'2 ~ cis'2*3/4 ~ cis'2*3/2 ~ cis'2*3/2 b2*4/2 cis'4 \divisioMaxima
r4 gis2 a2 b2 cis'2*4/2 b4 ~ \divisioMinima
b2*3/2 a2*3/2 ~ a2*4/2 ~ a2*3/2 b2*3/2 ~ b4 a4 ~ \divisioMaior
a2*3/2 ~ a2*5/2 ~ \divisioMinima
a2 ~ a2*9/4 ~ a2*3/2 gis4 \finalis
cis'2*5/2 d'2*3/2 ~ d'2*3/2 ~ \divisioMinima
d'2*3/2 e'2 d'2*3/2 e'2 ~ e'2 \divisioMaxima
gis2 fis2*3/2 gis2 ~ gis2*4/2 fis2*5/2 a2*3/2 ~ a4 gis4 e'2*3/2 ~ e'2*3/2 ~ e'2*6/2 ~ \divisioMinima
e'2 d'2*4/2 e'2 ~ e'2 \divisioMaxima
gis2 fis2 gis2*4/2 fis2*3/2 ~ \divisioMinima
fis4 ~ fis2*3/2 ~ fis2 gis2 ~ \divisioMaxima
gis2 fis2 gis2*4/2 fis2*3/2 a2 ~ a2*3/2 ~ a4 gis4 \finalis
}

bassMusic = {
r2*8/2 \divisioMinima
b2 fis2*3/2 b2*4/2 ~ b4 ~ \divisioMaior
b2 fis2*4/2 ~ fis4 ~ fis2 cis'2*4/2 r4 \divisioMinima
b2 a2*3/4 gis2*3/2 fis2*3/2 cis2*4/2 ~ cis4 \divisioMaxima
fis4 ~ fis2 cis2 ~ cis2 ~ cis2*4/2 ~ cis4 \divisioMinima
fis2*3/2 ~ fis2*3/2 cis2*4/2 e2*3/2 ~ e2*3/2 fis2 ~ \divisioMaior
fis2*3/2 cis2*5/2 ~ \divisioMinima
cis2 b,2*9/4 e2*3/2 ~ e4 \finalis
r2*5/2 b2*3/2 ~ b2*3/2 ~ \divisioMinima
b2*3/2 e'2 r2*5/2 cis'2 \divisioMaxima
e2 ~ e2*3/2 ~ e2 ~ e2*4/2 b,2*5/2 cis2*3/2 e2 r2*20/2 cis'2 \divisioMaxima
e2 ~ e2 ~ e2*4/2 d2*3/2 ~ \divisioMinima
d4 b,2*3/2 d2 cis2 \divisioMaxima
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
