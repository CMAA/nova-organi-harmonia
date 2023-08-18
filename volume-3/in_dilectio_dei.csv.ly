\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.349
%(volume.page)

global = {
 \key e \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Dilectio Dei" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Dilectio Dei"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Dilectio Dei" }
    \line {}
  }
}

chantText = \lyricmode {
Di -- lé -- cti -- o De -- i 
\set stanza = " * " ho -- no -- rá -- bi -- lis sa -- pi -- én -- ti -- a: _ 
qui -- bus au -- tem ap -- pa -- rú -- e -- rit in vi -- su, 
dí -- li -- gunt e -- _ am in vi -- si -- ó -- ne, et in a -- gni -- ti -- ó -- ne 
ma -- gná -- li -- um su -- ó -- rum. Ps. 
Quam di -- lé -- cta ta -- ber -- ná -- cu -- la tu -- a, Dó -- mi -- ne vir -- tú -- tum! 
\set stanza = " * " 
con -- cu -- pí -- scit, et dé -- fi -- cit á -- ni -- ma me -- a in á -- tri -- a Dó -- mi -- ni. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   e'4 e'4 ( a'4 gis'4 a'4) fis'4 d'4 e'4 ( fis'4) e'4 \divisioMinima
 e'4 fis'4 ( d'4 e'4) e'4 ( fis'4 a'4 gis'4) a'4 a'4 a'4 a'4 a'4 ( a'4 a'4) fis'4 ( e'4) e'4 ( fis'4 e'4) ~ e'4 ( d'4) \divisioMaxima
 fis'4 d'4 e'4 ( \once \tweak #'font-size #-4 fis' ) fis'4 \divisioMinima
 fis'4 fis'4 ( d'4 e'4) e'4 ( a'4 a'4) fis'4 fis'4 ( d'4 fis'4) fis'4 fis'4 ( gis'4 fis'4 e'4 fis'4) fis'4 ( e'4) \divisioMaior
 e'4 ( fis'4) e'4 e'4 ( fis'4 a'4 gis'4) gis'4 ( b'4 cis''4 a'4) ~ a'4 ( fis'4) a'4 ( gis'4) a'4 b'4 a'4 gis'4 ( fis'4 gis'\prall a'4) fis'4 \divisioMinima
 fis'4 fis'4 fis'4 fis'4 ( e'4) fis'4 fis'4 ( gis'4 fis'4 e'4 fis'4) fis'4 ( e'4) \divisioMaior
 e'4 ( fis'4 gis'4) gis'4 fis'4 fis'4 ( gis'4 e'4 cis'4) cis'4 ( e'4 fis'4) fis'4 ( gis'4 fis'4 e'4 fis'4) fis'4 ( e'4) \finalis
 e'4 fis'4 ( e'4) e'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 ( gis'4) a'4 ( b'4) b'4 a'4 ( b'4) a'4 \divisioMaxima
 a'4 ( \once \tweak #'font-size #-4 fis' ) fis'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 ( a'4 gis'4) e'4 ( fis'4) a'4 ( gis'4) fis'4 fis'4 e'4 \finalis
  e'4 fis'4 ( e'4) e'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 ( gis'4) a'4 ( b'4) b'4 a'4 ( b'4) a'4 \divisioMaxima
 a'4 ( fis'4) fis'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 ( gis'4) a'4 ( b'4) b'4 a'4 ( b'4) a'4 \divisioMaxima
 a'4 ( fis'4) fis'4 ( a'4) a'4 a'4 a'4 a'4 a'4 ( a'4 gis'4) e'4 ( fis'4) a'4 ( gis'4) fis'4 e'4 \finalis

}

altoMusic = {
r4 cis'2*4/2 b2 ~ b2*3/2 ~ \divisioMinima
b4 d'2*3/2 cis'2*6/2 fis'2 e'2*5/2 a2 b2*3/2 \divisioMaxima
d'2 ~ d'2*3/2 ~ \divisioMinima
d'4 ~ d'2*3/2 e'2*4/2 d'2*4/2 b2*5/2 ~ b2 \divisioMaior
cis'2*3/2 e'2*4/2 ~ e'2*3/2 ~ e'2*3/2 ~ e'2*5/2 ~ e'2*4/2 r4 \divisioMinima
d'2*3/2 cis'2*3/2 b2*5/2 ~ b2 \divisioMaior
cis'2*3/2 ~ cis'2 ~ cis'2*4/2 r4 cis'2 b2*5/2 ~ b2 \finalis
r4 cis'2 ~ cis'2*5/2 ~ cis'2*3/2 ~ cis'2*3/2 fis'2*5/2 e'2 ~ e'4 \divisioMaxima
d'2 ~ d'2 e'2*3/2 cis'2*6/2 d'2 ~ \divisioMinima
d'4 e'2*3/2 b2*4/2 ~ b2 ~ b4 r4 cis'2 ~ cis'2 ~ cis'2*3/2 ~ cis'2*3/2 ~ \divisioMinima
cis'2 fis'2*5/2 e'2 ~ e'4 \divisioMaxima
cis'2 ~ cis'2 d'2*4/2 e'2*3/2 ~ \divisioMinima
e'2 ~ e'2*3/2 cis'2*3/2 \divisioMaxima
d'2 ~ d'2 e'2*4/2 ~ e'2*3/2 b2*4/2 ~ b2 \finalis
}

tenorMusic = {
r4 a2*4/2 ~ a2 gis2*3/2 ~ \divisioMinima
gis4 a2*3/2 ~ a2*6/2 ~ a2 ~ a2*5/2 e2 fis2*3/2 \divisioMaxima
b2 fis2*3/2 ~ \divisioMinima
fis4 a2*3/2 ~ a2*4/2 ~ a2*4/2 ~ a2*5/2 gis2 ~ \divisioMaior
gis2*3/2 a2*4/2 b2*3/2 cis'2*3/2 a2*5/2 b2*4/2 a4 ~ \divisioMinima
a2*3/2 ~ a2*3/2 ~ a2*5/2 gis2 \divisioMaior
b2*3/2 a2 gis2*4/2 ~ gis4 a2 ~ a2*5/2 gis2 \finalis
a2*3/2 ~ a2*5/2 ~ a2*3/2 ~ a2*3/2 ~ a2*5/2 ~ a2 ~ a4 \divisioMaxima
fis2 b2 a2*3/2 ~ a2*6/2 ~ a2 ~ \divisioMinima
a4 b2*3/2 ~ b2*4/2 a2 gis4 a2*3/2 ~ a2 ~ a2*3/2 ~ a2*3/2 ~ \divisioMinima
a2 ~ a2*5/2 ~ a2 ~ a4 \divisioMaxima
e2 fis2 ~ fis2*4/2 a2*3/2 \divisioMinima
b2 gis2*3/2 a2*3/2 \divisioMaxima
fis2 b2 a2*4/2 b2*3/2 a2*4/2 gis2 \finalis
}

bassMusic = {
r2*10/2 \divisioMinima
r4 fis2*3/2 ~ fis2*6/2 d2 cis2*5/2 ~ cis2 b,2*3/2 ~ \divisioMaxima
b,2 ~ b,2*3/2 ~ \divisioMinima
b,4 ~ b,2*3/2 cis2*4/2 d2*4/2 e2*5/2 ~ e2 \divisioMaior
cis2*3/2 ~ cis2*4/2 ~ cis2*3/2 ~ cis2*3/2 ~ cis2*5/2 ~ cis2*4/2 d4 ~ \divisioMinima
d2*3/2 ~ d2*3/2 e2*5/2 ~ e2 \divisioMaior
cis2*3/2 ~ cis2 ~ cis2*4/2 b,4 a,2 e2*5/2 ~ e2 \finalis
r2*3/2 gis2*5/2 fis2*3/2 e2*3/2 d2*5/2 ~ d2 cis4 \divisioMaxima
b,2 ~ b,2 cis2*3/2 fis2*6/2 ~ fis2 ~ \divisioMinima
fis4 e2*3/2 ~ e2*4/2 ~ e2 ~ e4 r2*3/2 gis2 fis2*3/2 e2*3/2 ~ \divisioMinima
e2 d2*5/2 ~ d2 cis4 \divisioMaxima
a,2 ~ a,2 b,2*4/2 cis2*3/2 \divisioMinima
e2 ~ e2*3/2 fis2*3/2 \divisioMaxima
b,2 ~ b,2 cis2*4/2 e2*3/2 ~ e2*4/2 ~ e2 \finalis
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
        "VIII"
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
