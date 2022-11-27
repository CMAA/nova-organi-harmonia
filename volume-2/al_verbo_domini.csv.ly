\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.92
%(volume.page)

global = {
 \key a \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Verbo Domini" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Verbo Domini"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Verbo Domini" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ lú -- ia. 
\set stanza = " * " 
_ _ _ _ _ _ ℣. 
Ver -- bo Dó -- mi -- ni cœ -- _ _ li fir -- má -- ti sunt, 
et Spí -- _ ri -- tu o -- ris e -- _ _ _ jus 
o -- mnis vir -- tus 
\set stanza = " * " e -- ó -- rum. _ _ _ _ _ _ }

chantMusic = {
\tieDown   a'4 ( \once \tweak #'font-size #-4 g' ) e'4 ( fis'4 g'4) a'4 ( b'4 a'4) g'4 ( \once \tweak #'font-size #-4 a' ) a'4 \divisioMaior
 a'4 ( b'4 a'4) g'4 ( a'4 g'4) e'4 ( fis'4 e'4) ~ e'4 ( d'4) \divisioMinima
 d'4 ( e'4 fis'4 g'4 a'4.) b'4 ( cis''4 b'4) ~ b'4 ( a'4) \finalis \forceBreak

 d'4 ( e'4 fis'4 g'\prall a'4) a'4 g'4 ( fis'4) g'4 ( a'4) a'4 \divisioMinima
 a'4 ( b'4 a'4) d''4 ( cis''4 b'4 a'4 fis'4) g'4 ( a'4) a'4 a'4 ( \tiny g' e' 4) fis'4 ( e'4 d'4 \forceBreak
) e'4 ( d'4) d'4 \divisioMaxima
 d'4 ( e'4) fis'4 ( g'4) a'4 ( b'4 a'4) g'4 ( a'4) a'4 \divisioMinima
 a'4 a'4 a'4 ( b'4 a'4) g'4 ( a'4 g'4) e'4 ( fis'4 e'4) ~ e'4 ( \once \tweak #'font-size #-4 d' ) d'4 \divisioMaior \forceBreak

 d'4 e'4 fis'4 ( g'\prall a'4) a'4  b'4 ( a'4) g'4 ( a'4) a'4 ( b'4 a'4) g'4 ( a'4 g'4) e'4 ( fis'4 e'4) ~ e'4 ( d'4) \divisioMinima
 d'4 ( e'4 fis'4 g'4 a'4.) b'4 ( cis''4 b'4) ~ b'4 ( a'4) \finalis

}

altoMusic = {
r2 e'2*3/2 ~ e'2*3/2 ~ e'2 ~ e'4 \divisioMaior
d'2*3/2 ~ d'2*3/2 ~ d'2 cis'2 d'4 ~ \divisioMinima
d'2 ~ d'2*7/4 ~ d'2 ~ d'2 cis'4 \finalis
d'2*6/2 ~ d'2*4/2 e'4 ~ \divisioMinima
e'2*3/2 d'2*5/2 ~ d'2*3/2 ~ d'2*3/2 b2*3/2 a2 ~ a4 \divisioMaxima
r2 r2 e'2*3/2 ~ e'2 ~ e'4 ~ \divisioMinima
e'2 d'2*3/2 ~ d'2*3/2 ~ d'2 cis'2*3/2 d'4 ~ \divisioMaior
d'2 ~ d'2*3/2 ~ d'4 ~ d'2 ~ d'2 ~ d'2*3/2 b2*3/2 cis'2 b2*3/2 \divisioMinima
d'2*11/4 ~ d'2 ~ d'2 cis'4 \finalis
}

tenorMusic = {
r2 d'2*3/2 cis'2*3/2 d'2 cis'4 \divisioMaior
a2*3/2 b2*3/2 a2 ~ a2 ~ a4 \divisioMinima
fis2 ~ fis2*7/4 g2 e2 ~ e4 \finalis
r2*6/2 b2*4/2 cis'4 ~ \divisioMinima
cis'2*3/2 a2*5/2 b2*3/2 ~ b2*3/2 g2*3/2 ~ g2 fis4 \divisioMaxima
d'2 ~ d'2 ~ d'2*3/2 b2 cis'4 ~ \divisioMinima
cis'2 a2*3/2 b2*3/2 ~ b2 a2*3/2 ~ a4 \divisioMaior
fis2 a2*3/2 fis4 ~ fis2 e2 ~ e2*3/2 ~ e2*3/2 a2 fis2*3/2 ~ \divisioMinima
fis2 d2 fis2*3/4 ~ fis2 e2 ~ e4 \finalis
}

bassMusic = {
r2*8/2 b2 a4 \divisioMaior
fis2*3/2 e2*3/2 a2 r2 fis4 \divisioMinima
d2 b,2*7/4 g,2 a,2 ~ a,4 \finalis
r2*10/2 a4 ~ \divisioMinima
a2*3/2 fis2*5/2 b2*3/2 e2*3/2 d2*3/2 ~ d2 ~ d4 \divisioMaxima
r2 b2 a2*3/2 ~ a2 ~ a4 ~ \divisioMinima
a2 fis2*3/2 b2*3/2 g2 a2*3/2 fis4 \divisioMaior
d2 ~ d2*3/2 ~ d4 b,2 ~ b,2 a,2*3/2 ~ a,2*3/2 ~ a,2 b,2*3/2 ~ \divisioMinima
b,2*4/2 ~ b,2*3/4 g,2 a,2 ~ a,4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Alleluia"
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
