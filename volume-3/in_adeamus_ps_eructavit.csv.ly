\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.328
%(volume.page)

global = {
 \key fis \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Adeamus. Ps. Eructavit" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Adeamus. Ps. Eructavit"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Adeamus. Ps. Eructavit" }
    \line {}
  }
}

chantText = \lyricmode {
Ad -- e -- á -- mus 
\set stanza = " * " cum fi -- dú -- ci -- a ad thro -- num grá -- _ ti -- æ, 
ut mi -- se -- ri -- cór -- di -- am con -- se -- quá -- mur, 
et grá -- ti -- am in -- vé -- ni -- á -- _ _ mus in au -- xí -- li -- _ o op -- _ _ por -- _ tú -- no. T.P. 
Al -- le -- lú -- _ ia, al -- le -- lú -- _ ia. Ps. 
E -- ru -- ctá -- vit cor me -- um ver -- bum bo -- num: 
\set stanza = " * " 
di -- co e -- go ó -- pe -- ra me -- a re -- gi. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   d'4 fis'4 a'4 ( a'4 b'4) a'4  a'4 ( b'4 a'4 a'4) fis'4 ( e'4) fis'4 ( gis'\prall a'4) e'4 ( d'4) d'4 \divisioMinima
 fis'4 fis'4 ( e'4 fis'4) fis'4 ( e'4 fis'4) a'4 ( fis'4) a'4 ( a'4 a'4) b'4 ( a'4 fis'4) fis'4 \divisioMaxima
 fis'4 a'4 a'4 ( b'4) b'4 b'4 ( cis''4) b'4 a'4 a'4 a'4 ( b'4) a'4 ( b'4 a'4 a'4) gis'4 ( fis'4) \divisioMaxima
 fis'4 a'4 ( a'4 b'4) fis'4 fis'4 fis'4 fis'4 a'4 ( a'4) a'4 gis'4 ( b'4 a'4) gis'4 ( a'4 fis'4) fis'4 \divisioMinima
  fis'4 ( \once \tweak #'font-size #-4 g' ) fis'4 ( e'4)  fis'4 ( g'4 fis'4 d'4) d'4 ( fis'4 e'4 d'4) e'4 ( d'4) d'4 \divisioMinima
  d'4 ( e'4) g'4 ( fis'4) g'4 ( a'4) a'4 ( g'4) ~ g'4 ( e'4 fis'\prall g'4) d'4 ( e'4 d'4) d'4 \finalis
 d'4 ( \once \tweak #'font-size #-4 fis' ) fis'4 ( e'4 fis'4) a'4 ( fis'4) a'4 ( a'4 a'4) a'4 ( b'4 a'4 fis'4) \divisioMinima
 e'4 ( fis'4)  fis'4 ( a'4 e'4 fis'\prall g'4 fis'4 e'4) d'4 ( e'4) fis'4 ( e'4 d'4 e'4) e'4 ( d'4) \finalis
 d'4 fis'4 a'4 a'4 a'4 a'4 a'4 a'4 b'4 b'4 a'4 \divisioMaxima
 fis'4 a'4 a'4 a'4 a'4 a'4 a'4 b'4 gis'4 a'4 fis'4 \finalis
  d'4 fis'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 a'4 b'4 b'4 a'4 \divisioMaxima
 fis'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 b'4 b'4 a'4 \divisioMaxima
 fis'4 a'4 a'4 a'4 a'4 a'4 a'4 b'4 gis'4 a'4 fis'4 \finalis

}

altoMusic = {
d'2 e'2*4/2 ~ e'2*4/2 d'2 cis'2*3/2 ~ cis'2 b4 ~ \divisioMinima
b4 ~ b2*3/2 ~ b2*3/2 e'2 ~ e'2*3/2 ~ e'2*3/2 d'4 ~ \divisioMaxima
d'2 e'2*3/2 d'2*5/2 e'2 ~ e'2*4/2 cis'2 \divisioMaxima
r4 cis'2*3/2 ~ cis'2 d'2 e'2 ~ e'4 ~ e'2*3/2 ~ e'2*3/2 ~ e'4 d'2 cis'2 b2*4/2 a2*4/2 ~ a2 ~ a4 d'2 ~ d'2 ~ d'2*3/2 ~ d'2 ~ d'2*3/2 a2*3/2 ~ a4 \finalis
d'2 cis'2*3/2 b2 cis'2*3/2 d'2*4/2 ~ \divisioMinima
d'2 ~ d'2 ~ d'2*5/2 a2 ~ a2*4/2 ~ a2 \finalis
r4 fis'4 ~ fis'2*3/2 ~ fis'2 e'2 ~ e'2 \divisioMaxima
fis'2 e'2 ~ e'2*3/2 ~ e'2 cis'2 r4 fis'2 ~ fis'2*3/2 ~ fis'2*3/2 ~ \divisioMinima
fis'2 e'2*3/2 ~ e'2 \divisioMaxima
cis'2 ~ cis'2*4/2 ~ cis'2*3/2 ~ \divisioMinima
cis'4 ~ cis'2 ~ cis'2 ~ \divisioMaxima
cis'2 fis'2*5/2 e'2 cis'2 \finalis
}

tenorMusic = {
d'2 ~ d'2*4/2 r2*9/2 a2 ~ a4 ~ \divisioMinima
a4 ~ a2*3/2 ~ a2*3/2 ~ a2 fis2*3/2 ~ fis2*3/2 b4 \divisioMaxima
a2 ~ a2*3/2 ~ a2*5/2 ~ a2 b2*4/2 a2 \divisioMaxima
fis4 ~ fis2*3/2 ~ fis2 ~ fis2 e2 fis4 g2*3/2 b2*3/2 a4 ~ a2 ~ a2 ~ a2*4/2 ~ a2*4/2 g2 fis4 g2 fis2 e2*3/2 d2 g2*3/2 ~ g2*3/2 fis4 ~ \finalis
fis2 e2*3/2 d2 e2*3/2 fis2*4/2 \divisioMinima
b2 a2 g2*5/2 a2 g2*4/2 fis2 \finalis
r2 e'2*3/2 d'2 ~ d'2 cis'2 \divisioMaxima
a2 ~ a2 ~ a2*3/2 gis4 b4 ~ b4 a4 r2*3/2 e'2*3/2 d'2*3/2 ~ \divisioMinima
d'2 ~ d'2*3/2 cis'2 ~ \divisioMaxima
cis'2 b2*4/2 a2*3/2 ~ \divisioMinima
a4 gis2 fis2 ~ \divisioMaxima
fis2 ~ fis2*5/2 gis4 b4 ~ b4 a4 \finalis
}

bassMusic = {
r2*6/2 fis2*4/2 ~ fis2 ~ fis2*3/2 ~ fis2 ~ fis4 ~ \divisioMinima
fis4 e2*3/2 d2*3/2 cis2 ~ cis2*3/2 b,2*3/2 ~ b,4 \divisioMaxima
d2 cis2*3/2 b,2*5/2 cis2 ~ cis2*4/2 fis2 \divisioMaxima
r4 fis,2*3/2 a,2 b,2 cis2 ~ cis4 ~ cis2*3/2 ~ cis2*3/2 ~ cis4 d2 ~ d2 ~ d2*4/2 ~ d2*4/2 ~ d2 ~ d4 b,2 ~ b,2 ~ b,2*3/2 ~ b,2 ~ b,2*3/2 d2*3/2 ~ d4 \finalis
b,2 ~ b,2*3/2 ~ b,2 ~ b,2*3/2 ~ b,2*4/2 ~ \divisioMinima
b,2 ~ b,2 ~ b,2*5/2 d2 ~ d2*4/2 ~ d2 \finalis
r2*11/2 \divisioMaxima
d2 ~ d2 cis2*3/2 ~ cis2 fis2 r2*9/2 \divisioMinima
r2*7/2 \divisioMaxima
fis2 ~ fis2*4/2 ~ fis2*3/2 ~ \divisioMinima
fis4 ~ fis2 ~ fis2 \divisioMaxima
e2 d2*5/2 cis2 fis2 \finalis
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
        "5"
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
