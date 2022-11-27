\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.216
%(volume.page)

global = {
 \key b \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Domine spes mea" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Domine spes mea"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Domine spes mea" }
    \line {}
  }
}

chantText = \lyricmode {
Do -- mi -- ne, 
\set stanza = " * " spes me -- _ a 
a ju -- ven -- tú -- te me -- a: _ _ _ 
in te con -- fir -- má -- tus sum ex ú -- te -- ro: _ _ _ _ _ 
de ven -- tre ma -- _ tris me -- æ _ 
tu es pro -- té -- _ _ ctor me -- _ _ _ us. _ _ _ _ _ ℣. 
Me au -- tem pro -- pter in -- no -- cén -- _ _ _ ti -- am 
su -- sce -- pí -- _ _ _ _ sti: 
et con -- fir -- má -- _ sti me in con -- spé -- _ _ _ ctu tu -- o 
\set stanza = " * " 
in æ -- tér -- num. _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   d'4 ( d'4 e'4) d'4 d'4 \divisioMinima
 e'4 ( fis'4 e'4 fis'4) fis'4 ( e'4 d'4) ~ d'4 ( cis'4 b4) cis'4 ( b4) \divisioMaior
 b4 d'4 ( cis'4) d'4 ( e'4) e'4 ( e'4 d'4) e'4 d'4 ( cis'4) d'4 ( e'4) fis'4 ( e'4) fis'4 ( e'4 d'4) e'4 ( d'4) \divisioMaxima
 d'4 ( e'4) d'4 e'4 d'4 e'4 ( fis'4) e'4 ( d'4) d'4 \divisioMinima
 d'4 e'4 d'4 d'4. b4 d'4 ( d'4) e'4 ( cis'4) d'4 ( e'4 b4) cis'4 ( b4) ~ b4 ( a4) \divisioMaxima
 fis'4 d'4 ( e'4 fis'4) fis'4 fis'4 ( a'4) b'4 ( a'4 b'4) a'4  g'4 ( fis'4) g'4 ( g'4 g'4) e'4 ( fis'4 e'4) \divisioMaior
 e'4  g'4 ( fis'4)  g'4 a'4. g'4 ( b'4 a'4 g'4) ~ g'4 ( fis'4 e'4 d'4) e'4 ( e'4 d'4) \divisioMinima
 e'4 ( d'4) e'4 ( e'4 d'4) e'4 ( d'4 d'4) e'4 ( d'4) e'4. d'4 ( e'4 d'4) ~ d'4 ( d'4) ~ d'4 ( fis'4 e'4) fis'4 ( e'4) ~ e'4 ( d'4) \finalis
  a'4 ( b'4) a'4 ( b'4) a'4 ( gis'4 a'4) \divisioMinima
 a'4 a'4 a'4 a'4 b'4 ( gis'4) a'4 ( fis'4 e'4.) fis'4 ( gis'\prall a'4) ~ a'4 ( b'4) a'4 a'4 \divisioMaior
  a'4 a'4 a'4 ( b'4 a'4) ~ a'4 ( a'4 fis'4.) g'4 ( fis'4 e'4) fis'4 ( e'4 d'4) fis'4 a'4 ( a'4 fis'4 e'4 fis'4) fis'4 \divisioMaxima
 fis'4 ( fis'4) fis'4 fis'4 b'4 ( a'4) b'4 ( cis''\prall d''4) d''4 d''4 ( e''4 a'4) \divisioMinima
 a'4 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( cis''4 d''4 b'4 gis'4) a'4 ( fis'4 e'4.) fis'4 ( gis'\prall a'4) ~ a'4 ( b'4) a'4 a'4 ( a'4) a'4 ( b'4 a'4) \divisioMaior
 fis'4 fis'4 ( a'4 b'4 cis''4) a'4 ( gis'4) a'4 ( a'4) ~ a'4 ( fis'4) a'4 ( a'4) ~ a'4 ( fis'4) a'4 ( a'4 fis'4) \divisioMinima
 d'4 ( e'4) fis'4 a'4 ( a'4) b'4 ( cis''4 gis'4 a'4 fis'4.)  e'4 ( g'4 fis'4 d'4) \finalis

}

altoMusic = {
a2*5/2 ~ \divisioMinima
a2*4/2 ~ a2 fis2*4/2 a2 \divisioMaior
fis4 b2*4/2 a2*4/2 ~ a2 ~ a2*4/2 ~ a2*3/2 ~ a2 ~ \divisioMaxima
a2*5/2 ~ a2*4/2 fis4 ~ \divisioMinima
fis4 b2 ~ b2*5/4 ~ b2*4/2 fis2*4/2 e2*3/2 \divisioMaxima
r4 a2*4/2 d'2*6/2 ~ d'2 b2*3/2 ~ b2*3/2 ~ \divisioMaior
b4 ~ b2*3/2 ~ b2*9/4 ~ b2*5/2 a2*3/2 ~ \divisioMinima
a2 b2*3/2 ~ b2*5/2 ~ b2*3/4 ~ b2*3/2 ~ b2 a2*4/2 ~ a2*3/2 fis'2 e'2 ~ e'2*3/2 ~ \divisioMinima
e'2*4/2 ~ e'2 ~ e'2*7/4 ~ e'2 ~ e'2*5/2 ~ e'2 d'2*3/2 cis'2*7/4 d'2*3/2 ~ d'2*4/2 cis'2*5/2 d'4 \divisioMaxima
fis'2*4/2 ~ fis'2 ~ fis'2*4/2 a'2*3/2 ~ \divisioMinima
a'4 fis'2 ~ fis'2 ~ fis'2*3/2 ~ fis'2*7/4 cis'2 ~ cis'2*4/2 ~ cis'2 ~ cis'2*3/2 ~ \divisioMaior
cis'4 fis'2*4/2 ~ fis'2 ~ fis'2 e'2 d'2 b2 cis'2*3/2 \divisioMinima
d'2*3/2 fis'2 e'2*4/2 d'2*3/4 a2*3/2 ~ a4 \finalis
}

tenorMusic = {
fis2*5/2 \divisioMinima
e2*4/2 ~ e2 ~ e2*4/2 d2 ~ \divisioMaior
d4 fis2*4/2 e2*4/2 ~ e2 fis2*4/2 g2*3/2 ~ g4 fis4 \divisioMaxima
d2*5/2 cis2*4/2 d4 ~ \divisioMinima
d4 ~ d2 e2*5/4 fis2*4/2 d2*4/2 e2*3/2 \divisioMaxima
r4 fis2*4/2 ~ fis2*6/2 a2 ~ a2*3/2 g2*3/2 ~ \divisioMaior
g4 e2*3/2 fis2*9/4 g2*5/2 a2*3/2 ~ \divisioMinima
a2 g2*3/2 ~ g2*5/2 ~ g2*3/4 fis2*3/2 g2 ~ g2*4/2 fis2*3/2 a2 ~ a2 b2*3/2 \divisioMinima
a2*4/2 g2 cis'2*7/4 b2 a2*5/2 ~ a2 ~ a2*3/2 ~ a2*7/4 b2*3/2 ~ b2*4/2 a2*5/2 ~ a4 \divisioMaxima
d'2*4/2 ~ d'2 ~ d'2*4/2 ~ d'2*3/2 ~ \divisioMinima
d'4 ~ d'2 e'2 d'2*3/2 cis'2*7/4 b2 a2*4/2 g2 fis2*3/2 \divisioMaior
a4 ~ a2*4/2 b2 cis'2 ~ cis'2 a2 ~ a2 ~ a2*3/2 ~ \divisioMinima
a2*3/2 ~ a2 ~ a2*4/2 ~ a2*3/4 g2*3/2 fis4 \finalis
}

bassMusic = {
d2*5/2 ~ \divisioMinima
d2*4/2 cis2 b,2*4/2 ~ b,2 ~ \divisioMaior
b,4 ~ b,2*4/2 cis2*4/2 d2 ~ d2*4/2 ~ d2*3/2 ~ d2 \divisioMaxima
fis,2*5/2 a,2*4/2 b,4 ~ \divisioMinima
b,4 g,2 ~ g,2*5/4 b,2*4/2 ~ b,2*4/2 cis2*3/2 \divisioMaxima
r4 d2*4/2 b,2*6/2 ~ b,2 e2*3/2 ~ e2*3/2 ~ \divisioMaior
e4 ~ e2*3/2 ~ e2*9/4 ~ e2*5/2 fis2*3/2 ~ \divisioMinima
fis2 g2*3/2 fis2*5/2 e2*3/4 b,2*3/2 ~ b,2 d2*4/2 ~ d2*3/2 ~ d2 cis2 ~ cis2*3/2 ~ \divisioMinima
cis2*4/2 ~ cis2 ~ cis2*7/4 ~ cis2 ~ cis2*5/2 fis2 ~ fis2*3/2 ~ fis2*7/4 e2*3/2 g2*4/2 a2*5/2 d4 \divisioMaxima
r2*4/2 cis'2 b2*4/2 fis2*3/2 ~ \divisioMinima
fis4 ~ fis2 ~ fis2 ~ fis2*3/2 ~ fis2*7/4 ~ fis2 ~ fis2*4/2 ~ fis2 ~ fis2*3/2 ~ \divisioMaior
fis4 d2*4/2 ~ d2 fis2 ~ fis2 ~ fis2 ~ fis2 ~ fis2*3/2 \divisioMinima
e2*3/2 d2 cis2*4/2 d2*3/4 ~ d2*3/2 ~ d4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Gradual"
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
