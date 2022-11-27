\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.162
%(volume.page)

global = {
 \key d \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Adjutor" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Adjutor"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Adjutor" }
    \line {}
  }
}

chantText = \lyricmode {
Ad -- jú -- tor 
\set stanza = " * " et pro -- té -- ctor no -- ster est Dó -- mi -- nus: 
in e -- o læ -- tá -- bi -- tur cor _ no -- _ _ strum, 
et in nó -- mi -- ne san -- cto e -- _ jus spe -- rá -- _ vi -- mus, 
al -- le -- _ lú -- ia, al -- le -- _ lú -- ia. Ps. 
Qui re -- gis Is -- ra -- el, in -- tén -- de: 
\set stanza = " * " 
qui de -- dú -- cis ve -- lut o -- vem Jo -- seph. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   d'4 ( g'4) fis'4 ( g'4 a'4) a'4 \divisioMinima
 a'4 a'4 b'4 ( a'4 b'4) g'4 ( fis'4) a'4 g'4 ( fis'4) e'4 ( fis'\prall g'4) fis'4 ( g'\prall a'4 b'4) a'4 a'4 \divisioMaxima
 a'4 d'4 ( a'4) a'4 a'4 ( g'4) g'4 ( a'4 b'\prall c''4) a'4 ( g'4) g'4 a'4 ( g'4) b'4 ( a'4) g'4 ( e'4.) g'4 ( fis'4) g'4 ( \tiny fis') e' 4 fis'4 ( e'4) \divisioMaxima
 g'4 ( fis'4) g'4 g'4 ( b'4 a'4) g'4 g'4 ( g'4 g'4) g'4 g'4 ( g'4 g'4) g'4 ( a'4 fis'4) g'4 ( \tiny fis' e' 4) fis'4 ( e'4) \divisioMinima
 g'4 ( b'4) a'4 ( a'4 g'4 e'4.) g'4 ( fis'4 g'4) e'4 ( d'4) d'4 \finalis
 d'4 ( \once \tweak #'font-size #-4 a' ) a'4. g'4 ( a'4 b'\prall c''4) a'4 ( g'4) g'4 \divisioMinima
 g'4 ( b'4 \once \tweak #'font-size #-4 a' ) a'4 ( b'4 g'4) ~ g'4 ( e'4 fis'\prall g'4) d'4 ( e'4 d'4) d'4 \finalis
 d'4 ( g'4 fis'4) g'4 ( a'4) a'4 a'4 a'4 a'4 ( c''4) b'4 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) \divisioMaxima
 a'4 ( fis'4) g'4 ( a'4) a'4 a'4 a'4 a'4 ( b'\prall c''4) a'4 g'4 g'4 ( g'4 g'4) e'4 ( d'4) \finalis
  d'4 ( g'4 fis'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 ( c''4) b'4 b'4 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) \divisioMaxima
 a'4 ( fis'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 ( c''4) b'4 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) \divisioMaxima
 a'4 ( fis'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 ( b'\prall c''4) a'4 g'4 g'4 ( g'4 g'4) e'4 ( d'4) \finalis

}

altoMusic = {
d'2 ~ d'2*3/2 e'4 ~ \divisioMinima
e'2 ~ e'2*3/2 ~ e'2 d'2*3/2 c'2*3/2 d'2*4/2 e'2 \divisioMaxima
d'4 ~ d'2 e'4 d'2 c'2*4/2 d'2*3/2 ~ d'2 c'2 b4 ~ b2*3/4 ~ b2 ~ b2*3/2 ~ b2 \divisioMaxima
e'2*3/2 ~ e'2*4/2 ~ e'2*4/2 d'2*3/2 c'2*3/2 b2*3/2 ~ b2 \divisioMinima
d'2 e'2*3/2 ~ e'2*3/4 d'2*3/2 a2 ~ a4 \finalis
d'2 e'2*3/4 ~ e'2*4/2 d'2 b4 \divisioMinima
e'2*3/2 d'2 c'2*5/2 a2*3/2 ~ a4 \finalis
d'2*3/2 e'2*3/2 fis'2 g'2*3/2 fis'2 ~ fis'2 \divisioMaxima
d'2 ~ d'2 ~ d'2*3/2 e'2*3/2 d'2 c'2*3/2 a2 d'2*3/2 e'2*3/2 ~ e'2*3/2 ~ e'2*3/2 ~ \divisioMinima
e'2 ~ e'2 ~ e'2 ~ e'2 ~ e'2 \divisioMaxima
d'2 ~ d'2 ~ d'2*4/2 e'2*3/2 ~ \divisioMinima
e'4 ~ e'2*3/2 ~ e'2 d'2 ~ \divisioMaxima
d'2 ~ d'2 ~ d'2*4/2 c'2*3/2 ~ c'2 d'2*3/2 a2 \finalis
}

tenorMusic = {
r2 b2*3/2 c'4 ~ \divisioMinima
c'2 b2*3/2 ~ b2 a2*3/2 ~ a2*3/2 b2*4/2 d'4 c'4 \divisioMaxima
fis4 e2 ~ e4 ~ e2 ~ e2*4/2 d2*3/2 e2 ~ e2 ~ e4 g2*3/4 b2 a2*3/2 g2 \divisioMaxima
e2*3/2 ~ e2*4/2 ~ e2*4/2 ~ e2*3/2 ~ e2*3/2 ~ e2*3/2 g2 ~ \divisioMinima
g2 ~ g2*9/4 ~ g2*3/2 ~ g2 fis4 \finalis
r2*7/4 g2*4/2 fis2 g4 ~ \divisioMinima
g2*3/2 ~ g2 ~ g2*5/2 ~ g2*3/2 fis4 \finalis
d'2*3/2 ~ d'2*3/2 ~ d'2 e'2*3/2 d'2 ~ d'2 \divisioMaxima
r2 e2 fis2*3/2 g2*3/2 ~ g2 ~ g2*3/2 ~ g4 fis4 r2*3/2 d'2*3/2 c'2*3/2 ~ c'2*3/2 ~ \divisioMinima
c'2 b2 ~ b2 ~ b2 ~ b2 \divisioMaxima
r2 e2 fis2*4/2 e2*3/2 ~ \divisioMinima
e4 g2*3/2 fis2 ~ fis2 ~ \divisioMaxima
fis2 e2 fis2*4/2 e2*3/2 g2 ~ g2*3/2 ~ g4 fis4 \finalis
}

bassMusic = {
r2*6/2 \divisioMinima
a2 g2*3/2 fis2 ~ fis2*3/2 g2*3/2 a2*4/2 ~ a2 \divisioMaxima
d4 ~ d2 c4 b,2 a,2*4/2 b,2*3/2 ~ b,2 c2 e4 ~ e2*3/4 ~ e2 ~ e2*3/2 ~ e2 \divisioMaxima
r2*3/2 d2*4/2 c2*4/2 b,2*3/2 a,2*3/2 e2*3/2 ~ e2 ~ \divisioMinima
e2 c2*9/4 b,2*3/2 d2 ~ d4 \finalis
r2 c2*3/4 ~ c2*4/2 d2 e4 \divisioMinima
c2*3/2 b,2 a,2*5/2 d2*3/2 ~ d4 \finalis
r2*8/2 d'2*3/2 ~ d'2 b2 \divisioMaxima
d2 ~ d2 ~ d2*3/2 c2*3/2 b,2 a,2*3/2 d2 r2*9/2 b2*3/2 \divisioMinima
a2 ~ a2 g2 fis2 e2 \divisioMaxima
d2 ~ d2 ~ d2*4/2 c2*3/2 ~ \divisioMinima
c4 ~ c2*3/2 ~ c2 b,2 \divisioMaxima
d2 ~ d2 ~ d2*4/2 a,2*3/2 ~ a,2 b,2*3/2 d2 \finalis
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
