\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.44
%(volume.page)

global = {
 \key fis \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Hodie scietis" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Hodie scietis"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Hodie scietis" }
    \line {}
  }
}

chantText = \lyricmode {
Hó -- di -- e 
\set stanza = " * " sci -- é -- _ _ _ tis, 
qui -- a vé -- _ ni -- et _ Dó -- _ mi -- nus, _ _ _ _ _ 
et sal -- vá -- bit nos: _ 
et ma -- _ _ _ ne _ 
vi -- dé -- bi -- tis _ _ _ 
gló -- _ ri -- am e -- _ jus. _ _ _ _ _ _ _ _ ℣. 
Qui re -- gis Is -- ra -- el, in -- tén -- _ _ _ _ _ _ _ _ _ de: 
qui _ de -- dú -- cis vel -- ut o -- vem Jo -- _ _ _ _ _ _ _ _ seph: 
qui se -- des _ su -- per Ché -- ru -- bim, _ _ ap -- pá -- _ re _ _ 
co -- ram Eph -- ra -- im, _ _ _ _ _ _ _ _ 
Ben -- ja -- min, _ et Ma -- nás -- se. _ _ _ _ }

chantMusic = {
\tieDown  e'4 ( gis'4 fis'4) fis'4 fis'4 \divisioMinima
 fis'4 a'4 ( fis'4 gis'4) a'4 ( fis'4 e'4) gis'4 ( e'4) fis'4 ( gis'4) fis'4 \divisioMaior
 fis'4 fis'4 \forceBreak
 a'4 ( fis'4) a'4 ( b'4 cis''4) a'4 ( gis'4 fis'4)  fis'4 ( e'4) g'4 ( fis'4 e'4) \divisioMinima
 e'4 ( d'4) fis'4 ( e'4 fis'4) fis'4 ( e'4 fis'4) fis'4 ( d'4) e'4 ( fis'4) a'4 ( a'4 fis'4 e'4.) fis'4 ( gis'\prall a'4 \forceBreak
) b'4 ( a'4 a'4) fis'4 ( gis'4 fis'4) \divisioMaxima
 fis'4 e'4 a'4 ( a'4) a'4 ( cis''4 b'4) b'4 ( a'4) ~ a'4 ( fis'4) \divisioMaior
 fis'4 a'4 ( fis'4 ( gis'\prall a'4) b'4 ( fis'4) b'4 ( cis''4 \forceBreak
) a'4 ( fis'4) a'4. gis'4 ( a'4 fis'4 e'4 fis'4) \divisioMaior
 a'4 a'4 ( fis'4 a'4) a'4 ( a'4 a'4) a'4 ( fis'4 gis'\prall a'4 b'4.) a'4 ( b'4) cis''4 ( a'4 a'4) b'4 ( b'4 a'4) \divisioMaxima \forceBreak

 d'4 ( e'4 fis'4) a'4 ( gis'4 fis'4 gis'4) e'4 fis'4 a'4 ( fis'4) a'4 ( b'4) b'4 ( a'4) b'4 ( cis''4 b'4 a'4) \divisioMinima
 cis''4 ( a'4) cis''4 ( d''4 b'4 gis'4) a'4 ( fis'4 e'4) fis'4 ( gis'\prall a'4 b'4.) a'4 ( b'4 cis''4) \divisioMinima \forceBreak

 b'4 ( cis''4 b'4 cis''4 a'4 fis'4) gis'\prall ( a'4 fis'4) \finalis
 fis'4 a'4 a'4 ( b'4) b'4 b'4 b'4 \divisioMinima
 b'4 ( \once \tweak #'font-size #-4 cis'' ) cis''4 ( b'4 a'4 gis'4) a'4 ( fis'4 e'4) \divisioMinima \forceBreak

 gis'4 ( e'4) fis'4 a'4 ( a'4) b'4 ( cis''4 b'4) cis''4 \divisioMinima
 a'4 ( cis''4 d''4 b'4 gis'4) a'4 ( fis'4 e'4.) fis'4 ( gis'4 fis'4 e'4 fis'4) \divisioMinima
 b'4 ( cis''\prall d''4 cis''4) d''4 ( cis''4 b'4 cis''4) cis''4 ( b'4) \divisioMaxima \forceBreak

 b'4 ( cis''\prall d''4 cis''4) b'4 ( cis''\prall d''4 cis''4 b'4) b'4 b'4 b'4 \divisioMinima
 b'4 b'4 b'4 b'4 ( \once \tweak #'font-size #-4 cis'' ) cis''4 ( a'4) cis''4 ( b'4 a'4) ~ a'4 ( fis'4) a'4 ( a'4 fis'4) a'4. ~ a'4 ( a'4) ~ a'4 ( fis'4) \divisioMinima \forceBreak

 a'4 ( b'4 cis''4 b'4 a'4) cis''4 ( b'4 a'4) b'4 ( fis'4) fis'4 \divisioMaxima
 a'4 ( a'4) a'4 ( cis''4 b'4) b'4 ( a'4) ~ a'4 ( fis'4) \divisioMinima
 fis'4 fis'4 fis'4 fis'4 ( b'4) b'4 ( fis'4 \forceBreak
) b'4 ( cis''4 a'4 fis'4) a'4. gis'4 ( a'4 fis'4 e'4) \divisioMinima
 fis'4 ( e'4 fis'4) a'4 ( fis'4) a'4 ( a'4 a'4) a'4 ( fis'4 gis'\prall a'4 b'4.) a'4 ( b'4 cis''4 a'4 a'4) b'4 ( b'4 a'4) \divisioMaxima \forceBreak

 fis'4 fis'4 fis'4 ( b'4) b'4 b'4 ( cis''4 a'4 gis'4 a'4 a'4) \divisioMinima
 gis'4 ( a'4) b'4 ( cis''4 a'4 fis'4.) a'4 ( fis'4 e'4) fis'4 ( a'4) ~ a'4 ( fis'4) a'4 ( a'4 gis'4 fis'4) a'4 ( e'4) ~ e'4 ( d'4) \divisioMaxima \forceBreak

 d'4 e'4 ( fis'4) fis'4 a'4 ( gis'4 fis'4 gis'4) e'4 ( fis'4) a'4 ( fis'4) a'4 ( b'4) b'4 ( cis''4 a'4 gis'4) a'4 ( b'4) \divisioMinima
 e'4 ( fis'4 a'4) ~ a'4 ( cis''4 b'4 a'4 gis'4 fis'4 ( gis'\prall a'4 fis'4) \finalis

}

altoMusic = {
b2*4/2 c'4 ~ \divisioMinima
c'4 d'2*3/2 c'2*3/2 ~ c'2*4/2 ~ c'4 ~ \divisioMaior
c'2 e'2*8/2 b2 ~ b2*3/2 ~ \divisioMinima
b2*5/2 d'2*3/2 ~ d'2*4/2 e'2*9/4 c'2*3/2 ~ c'2*3/2 ~ c'2 ~ c'4 \divisioMaxima
b2 c'2 e'2*4/2 ~ e'2*3/2 ~ \divisioMaior
e'4 c'2*4/2 f'2 ~ f'2 ~ f'2 c'2*3/4 ~ c'2*4/2 ~ c'4 ~ \divisioMaior
c'4 d'2*3/2 c'2*3/2 e'2*11/4 f'2*5/2 e'2*3/2 \divisioMaxima
d'2*3/2 c'2*6/2 f'2*4/2 e'2*6/2 ~ \divisioMinima
e'2 d'2*4/2 e'2*3/2 c'2*3/2 ~ c'2*7/4 ~ c'4 \divisioMinima
f'2*4/2 c'2*3/2 ~ c'2 \finalis
f'2 ~ f'2 ~ f'2*3/2 ~ \divisioMinima
f'2 e'2*7/2 ~ \divisioMinima
e'2*3/2 f'2*6/2 ~ \divisioMinima
f'2*17/4 c'2*5/2 \divisioMinima
f'2*4/2 ~ f'2*4/2 e'2 \divisioMaxima
f'2*4/2 e'2*6/2 d'2 \divisioMinima
f'2*3/2 ~ f'2 ~ f'2*4/2 ~ f'2*3/2 ~ f'2*3/2 ~ f'2*3/4 c'2 ~ c'2 \divisioMinima
e'2*5/2 ~ e'2*3/2 f'2 ~ f'4 ~ \divisioMaxima
f'2 e'2*4/2 c'2*3/2 ~ \divisioMinima
c'2*3/2 f'2 ~ f'2 c'2*4/2 ~ c'2*3/4 ~ c'2*3/2 ~ c'4 ~ \divisioMinima
c'2*3/2 ~ c'2 d'2*3/2 e'2*4/2 f'2*7/4 e'2*3/2 c'2*3/2 \divisioMaxima
f'2 ~ f'2*3/2 e'2*4/2 ~ e'2 ~ \divisioMinima
e'2*5/2 ~ e'2*3/4 c'2*4/2 d'2*3/2 c'2*8/2 \divisioMaxima
d'2*3/2 ~ d'4 e'2*4/2 ~ e'2 c'2 e'2 ~ e'2*4/2 ~ e'2 ~ \divisioMinima
e'2 c'2*4/2 ~ c'2 ~ c'2 ~ c'2 \finalis
}

tenorMusic = {
g2*4/2 a4 ~ \divisioMinima
a4 ~ a2*3/2 ~ a2*3/2 b2*4/2 a4 ~ \divisioMaior
a2 ~ a2*8/2 ~ a2 g2*3/2 \divisioMinima
f2*5/2 g2*3/2 a2*4/2 ~ a2*9/4 ~ a2*3/2 g2*3/2 b2 a4 \divisioMaxima
b2 a2 ~ a2*4/2 ~ a2*3/2 ~ \divisioMaior
a4 ~ a2*4/2 ~ a2 b2 c'2 g2*3/4 b2*4/2 a4 ~ \divisioMaior
a2*4/2 ~ a2*3/2 ~ a2*11/4 ~ a2*5/2 ~ a2*3/2 ~ \divisioMaxima
a2*3/2 ~ a2*6/2 ~ a2*4/2 ~ a2*6/2 ~ \divisioMinima
a2 ~ a2*4/2 ~ a2*3/2 ~ a2*3/2 g2*7/4 a4 \divisioMinima
b2*4/2 ~ b2*3/2 a2 \finalis
f'2 e'2 d'2*3/2 ~ \divisioMinima
d'2 c'2*7/2 ~ \divisioMinima
c'2*3/2 ~ c'2*6/2 \divisioMinima
d'2*5/2 c'2 g2*3/4 a2*5/2 ~ \divisioMinima
a2*4/2 ~ a2*4/2 g2 \divisioMaxima
f2*4/2 ~ f2*6/2 ~ f2 ~ \divisioMinima
f2*3/2 g2 a2*4/2 c'2*3/2 ~ c'2*3/2 b2*3/4 ~ b2 a2 ~ \divisioMinima
a2*5/2 ~ a2*3/2 ~ a2 b4 \divisioMaxima
a2 ~ a2*4/2 ~ a2*3/2 ~ \divisioMinima
a2 ~ a4 g2 f2 ~ f2*4/2 g2*3/4 a2*3/2 ~ a4 ~ \divisioMinima
a2*3/2 ~ a2 ~ a2*3/2 b2*4/2 f2*7/4 a2*3/2 ~ a2*3/2 ~ \divisioMaxima
a2 b2*3/2 ~ b2*4/2 a2 ~ \divisioMinima
a2*13/4 ~ a2*4/2 ~ a2*3/2 ~ a2*5/2 ~ a2*3/2 \divisioMaxima
b2*3/2 a4 ~ a2*4/2 f2 a2 ~ a2 ~ a2*4/2 f4 g4 ~ \divisioMinima
g2 f2*4/2 g2 b2 a2 \finalis
}

bassMusic = {
r2*5/2 \divisioMinima
f4 ~ f2*3/2 ~ f2*3/2 ~ f2*4/2 ~ f4 ~ \divisioMaior
f2 c2*8/2 e2 ~ e2*3/2 \divisioMinima
b,2*5/2 ~ b,2*3/2 ~ b,2*4/2 c2*9/4 f2*3/2 ~ f2*3/2 ~ f2 ~ f4 \divisioMaxima
g2 f2 ~ f2*4/2 c2*3/2 ~ \divisioMaior
c4 f2*4/2 d2 ~ d2 f2 ~ f2*3/4 ~ f2*4/2 ~ f4 ~ \divisioMaior
f2*4/2 ~ f2*3/2 c2*11/4 d2*5/2 c2*3/2 \divisioMaxima
f2*3/2 ~ f2*6/2 d2*4/2 c2*6/2 ~ \divisioMinima
c2 b,2*4/2 c2*3/2 f2*3/2 ~ f2*7/4 ~ f4 \divisioMinima
d2*4/2 f2*3/2 ~ f2 \finalis
r2*16/2 \divisioMinima
b2*3/2 a2*6/2 \divisioMinima
b2*5/2 f2 ~ f2*3/4 ~ f2*5/2 \divisioMinima
d2*4/2 b,2*4/2 e2 \divisioMaxima
d2*4/2 c2*6/2 b,2 \divisioMinima
d2*3/2 ~ d2 f2*4/2 ~ f2*3/2 d2*3/2 ~ d2*3/4 f2 ~ f2 ~ \divisioMinima
f2*5/2 c2*3/2 d2 ~ d4 ~ \divisioMaxima
d2 c2*4/2 f2*3/2 \divisioMinima
e2 d4 ~ d2 ~ d2 f2*4/2 ~ f2*3/4 ~ f2*3/2 r2*4/2 g2 f2*3/2 e2*4/2 d2*7/4 c2*3/2 f2*3/2 \divisioMaxima
d2 ~ d2*3/2 c2*4/2 ~ c2 \divisioMinima
f2*13/4 ~ f2*4/2 ~ f2*3/2 ~ f2*5/2 ~ f2*3/2 \divisioMaxima
b,2*3/2 ~ b,4 c2*4/2 ~ c2 f2 ~ f2 c2*4/2 e2 ~ \divisioMinima
e2 f2*4/2 ~ f2 ~ f2 ~ f2 \finalis
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
        "II"
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
