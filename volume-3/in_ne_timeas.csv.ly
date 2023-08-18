\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.221
%(volume.page)

global = {
 \key d \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Ne timeas" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Ne timeas"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Ne timeas" }
    \line {}
  }
}

chantText = \lyricmode {
Ne tí -- me -- as, 
\set stanza = " * " Za -- cha -- rí -- a, 
ex -- au -- dí -- ta est _ o -- rá -- ti -- o tu -- a: 
et E -- lí -- sa -- beth u -- xor tu -- a pá -- ri -- et ti -- bi fí -- li -- um, 
et vo -- cá -- bis no -- men e -- jus Jo -- án -- nem: 
et e -- _ rit ma -- gnus co -- ram Dó -- mi -- no: 
et Spí -- ri -- tu San -- cto re -- plé -- bi -- tur ad -- huc ex ú -- te -- ro ma -- tris su -- æ: 
et mul -- ti in na -- ti -- vi -- tá -- te e -- jus gau -- _ dé -- bunt. Ps. 
Dó -- mi -- ne, in vir -- tú -- te tu -- a læ -- tá -- bi -- tur rex: 
\set stanza = " * " 
et su -- per sa -- lu -- tá -- re tu -- um ex -- sul -- tá -- bit ve -- he -- mén -- ter. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   d'4 ( g'4) g'4 ( g'4 a'4) a'4 a'4 \divisioMinima
 a'4 ( b'4 a'4) g'4 fis'4 ( g'4 a'4 g'4 fis'4 a'4) a'4 \divisioMaior
 g'4 a'4 ( \once \tweak #'font-size #-4 c'' ) c''4 c''4 ( c''4 c''4) c''4 ( d''4 c''4 c''4) a'4 ( b'4 a'4) \divisioMinima
 a'4 a'4 ( b'\prall c''4) a'4 g'4 ( fis'4 a'4) a'4 ( b'4 a'4) a'4 \divisioMaxima
 a'4 a'4 a'4 a'4 a'4 ( b'4) a'4 g'4 ( \once \tweak #'font-size #-4 b' ) a'4 ( fis'4) fis'4 \divisioMinima
 fis'4 ( g'\prall a'4 b'4) a'4 a'4 a'4 fis'4 ( a'4) g'4 ( a'4) fis'4 ( g'4 fis'4 e'4 d'4 e'4) e'4 ( d'4) \divisioMaxima
 d'4 e'4 g'4 ( g'4) e'4 g'4 ( a'4) a'4 g'4 ( a'4 \tiny g' fis' 4) g'4 ( g'4) g'4 ( g'4 g'4) d'4 ( e'4 d'4) d'4 \divisioMaxima
 d'4 d'4 ( e'4) g'4 ( fis'4 g'4) g'4 g'4 g'4 ( g'4) a'4 a'4 ( c''4 b'4 c''4) a'4 a'4 ( b'4 a'4) a'4 \divisioMaxima
 a'4 b'4 a'4 g'4 a'4 ( \once \tweak #'font-size #-4 b' ) a'4 e'4 g'4 e'4 g'4 ( g'4) \divisioMinima
 g'4 ( a'4) a'4 e'4 g'4 ( g'4 a'4) g'4 g'4 g'4 ( b'4) b'4 a'4 ( b'4 a'4 fis'4) fis'4 \divisioMaxima
 d'4 e'4 ( \once \tweak #'font-size #-4 g' ) g'4 g'4 g'4 g'4 ( a'4 g'4 g'4) e'4 g'4 ( g'4) g'4 ( a'4) a'4 d'4 ( e'4 fis'\prall g'4 a'4) a'4 ( g'4) ~ g'4 ( e'4 fis'\prall g'4) d'4 ( e'4 d'4) d'4 \finalis
 d'4 ( g'4 fis'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 ( c''4) b'4 b'4 ( a'4) a'4 ( b'4) \divisioMaxima
 a'4 ( fis'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 a'4 ( b'\prall c''4) a'4 g'4 g'4 ( g'4 g'4) e'4 ( d'4) \finalis
  d'4 ( g'4 fis'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 ( c''4) b'4 b'4 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) \divisioMaxima
 a'4 ( fis'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 ( c''4) b'4 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) \divisioMaxima
 a'4 ( fis'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 ( b'\prall c''4) a'4 g'4 g'4 ( g'4 g'4) e'4 ( d'4) \finalis

}

altoMusic = {
d'2 ~ d'2*4/2 ~ d'4 ~ \divisioMinima
d'2*4/2 ~ d'2*6/2 ~ d'4 ~ \divisioMaior
d'4 c'2 d'4 e'2*3/2 ~ e'2*4/2 ~ e'2*4/2 ~ e'2*4/2 d'2*3/2 ~ d'2*3/2 ~ d'4 ~ \divisioMaxima
d'2 ~ d'2 ~ d'2*3/2 ~ d'2 ~ d'2 ~ d'4 ~ \divisioMinima
d'2*6/2 ~ d'4 ~ d'2 ~ d'2 ~ d'2*6/2 b2 ~ \divisioMaxima
b2 ~ b2*3/2 ~ b2*3/2 c'2*4/2 b2 a2*3/2 ~ a2*3/2 ~ a4 \divisioMaxima
r4 b2 ~ b2*4/2 ~ b4 c'2 e'4 ~ e'2*4/2 d'4 ~ d'2*3/2 ~ d'4 \divisioMaxima
r4 d'2*3/2 e'2*4/2 ~ e'2 ~ e'2 \divisioMinima
c'2*4/2 d'2*5/2 ~ d'2*3/2 ~ d'2*4/2 ~ d'4 ~ \divisioMaxima
d'4 ~ d'2 b2*3/2 ~ b2*5/2 ~ b2 ~ b2 ~ b4 ~ b2*3/2 ~ b2*3/2 ~ b2 a2*3/2 ~ a2*3/2 ~ a4 \finalis
d'2*8/2 e'2*5/2 g'2*3/2 fis'2 ~ fis'2 \divisioMaxima
b2*7/2 c'2*4/2 ~ \divisioMinima
c'2 d'4 e'2*3/2 d'2 a2*3/2 ~ a2 d'2*6/2 e'2*3/2 ~ e'2*3/2 ~ \divisioMinima
e'2 g'2*4/2 fis'2 ~ fis'2 \divisioMaxima
d'2*8/2 e'2*3/2 ~ \divisioMinima
e'4 ~ e'2*3/2 d'2 ~ d'2 \divisioMaxima
b2*4/2 c'2*4/2 ~ c'2*3/2 e'2 a2*4/2 ~ a4 \finalis
}

tenorMusic = {
r2 b2*4/2 a4 ~ \divisioMinima
a2*4/2 ~ a2*6/2 fis4 ~ \divisioMaior
fis4 g2 ~ g4 ~ g2*3/2 a2*4/2 c'2*3/2 \divisioMinima
c4 b2*4/2 a2*3/2 g2*3/2 fis4 \divisioMaxima
r2 fis2 g2*3/2 d2 e2 fis4 \divisioMinima
a2*6/2 fis4 b2 a2 g2*6/2 fis2 \divisioMaxima
a2 g2*3/2 ~ g2*3/2 ~ g2*4/2 ~ g2 ~ g2*3/2 ~ g2*3/2 fis4 \divisioMaxima
r4 g2 ~ g2*4/2 ~ g4 ~ g2 ~ g4 ~ g2*4/2 ~ g4 e2*3/2 fis4 \divisioMaxima
r4 g2*3/2 ~ g2*4/2 a2 b2 \divisioMinima
g2*4/2 ~ g2*5/2 e2*3/2 fis2*4/2 a2 b2 g2*3/2 ~ g2*5/2 ~ g2 e2 fis4 a2*3/2 fis2*3/2 g2 ~ g2*3/2 ~ g2*3/2 fis4 \finalis
d'2*8/2 c'2*5/2 e'2*3/2 d'2 ~ d'2 \divisioMaxima
e2*7/2 ~ e2*4/2 ~ \divisioMinima
e2 ~ e4 g2*3/2 ~ g2 ~ g2*3/2 ~ g4 fis4 d'2*6/2 c'2*3/2 ~ c'2*3/2 ~ \divisioMinima
c'2 ~ c'2*4/2 d'2 ~ d'2 \divisioMaxima
fis2*8/2 g2*3/2 ~ \divisioMinima
g4 e2*3/2 fis2 ~ fis2 \divisioMaxima
e2*4/2 ~ e2*4/2 g2*3/2 ~ g2 ~ g2*4/2 fis4 \finalis
}

bassMusic = {
g2 ~ g2*4/2 fis4 \divisioMinima
g2*4/2 d2*6/2 ~ d4 ~ \divisioMaior
d4 e2 ~ e4 c2*3/2 ~ c2*4/2 ~ c2*4/2 ~ c2*4/2 d2*3/2 ~ d2*3/2 ~ d4 \divisioMaxima
b,2 ~ b,2 ~ b,2*3/2 ~ b,2 ~ b,2 ~ b,4 ~ \divisioMinima
b,2*6/2 ~ b,4 ~ b,2 ~ b,2 ~ b,2*6/2 ~ b,2 \divisioMaxima
r2*5/2 fis2*3/2 e2*4/2 ~ e2 c2*3/2 d2*3/2 ~ d4 \divisioMaxima
r2*3/2 fis2*4/2 e4 ~ e2 d4 c2*4/2 d4 ~ d2*3/2 ~ d4 \divisioMaxima
r4 g,2*3/2 c2*4/2 ~ c2 e2 ~ \divisioMinima
e2*4/2 b,2*5/2 d2*3/2 ~ d2*4/2 ~ d2 g2 fis2*3/2 ~ fis2*5/2 e2 ~ e2 ~ e4 ~ e2*3/2 ~ e2*3/2 ~ e2 c2*3/2 d2*3/2 ~ d4 \finalis
b2*8/2 c'2*5/2 ~ c'2*3/2 d'2 b2 \divisioMaxima
r2*7/2 a,2*4/2 ~ \divisioMinima
a,2 ~ a,4 ~ a,2*3/2 b,2 c2*3/2 d2 b2*6/2 c'2*3/2 b2*3/2 ~ \divisioMinima
b2 a2*4/2 d'2 b2 \divisioMaxima
d2*8/2 c2*3/2 ~ \divisioMinima
c4 ~ c2*3/2 d2 b,2 \divisioMaxima
r2*4/2 a,2*4/2 ~ a,2*3/2 c2 d2*4/2 ~ d4 \finalis
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
