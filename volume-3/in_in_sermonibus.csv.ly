\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.378
%(volume.page)

global = {
 \key g \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"In sermonibus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "In sermonibus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "In sermonibus" }
    \line {}
  }
}

chantText = \lyricmode {
In ser -- mó -- _ _ ni -- bus 
\set stanza = " * " Dó -- mi -- ni ó -- pe -- ra e -- jus: 
sol il -- lú -- mi -- nans per ó -- mni -- a re -- spé -- xit, 
et gló -- ri -- a Dó -- mi -- ni 
ple -- num est o -- _ pus e -- _ _ _ jus. T.P. 
Al -- le -- lú -- ia, _ _ al -- le -- lú -- ia. Ps. 
Can -- tá -- te Dó -- mi -- no cán -- ti -- cum no -- vum: 
\set stanza = " * " 
can -- tá -- te Dó -- mi -- no o -- mnis ter -- ra. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   e'4  e'4 ( c'4 d'4) e'4 ( d'4) g'4 ( g'4) ~ g'4 ( a'4) g'4 g'4  b'4 ( a'4 b'4) a'4 ( g'4) g'4 ( a'4 g'4 e'4) \divisioMinima
 g'4 ( g'4) g'4 a'4 ( g'4 fis'4 g'4) e'4 ( fis'4 e'4) e'4 \divisioMaxima
 g'4 ( e'4) g'4 ( a'4)  a'4 ( c''4 b'4) a'4 ( g'4) g'4 \divisioMinima
 g'4 g'4 ( a'4 g'4) e'4 e'4 ( d'4 e'4) d'4 g'4 ( g'4 a'4) g'4 \divisioMaxima
 b'4 ( \once \tweak #'font-size #-4 a' ) b'4 ( cis''\prall d''4) a'4 ( g'4) g'4 g'4 ( g'4 g'4) e'4 ( d'4) d'4 \divisioMaior
 g'4 ( b'4 a'4) g'4 ( a'4) a'4 \divisioMinima
 a'4 ( d''4) ~ d''4 ( b'4) b'4 g'4 ( a'4 b'4) d''4 ( d''4 b'4 a'4 g'4) ~ g'4 ( b'4 a'4 g'4) a'4 ( g'4) g'4 \finalis
 e'4 g'4 ( fis'4) g'4 ( a'4 g'4) g'4 ( g'4) ~ g'4 ( e'4) ~ e'4 ( d'4) \divisioMinima
 e'4 g'4 ( g'4) g'4 ( b'4 \tiny a' g' 4) g'4 \finalis
 g'4 ( a'4) a'4 ( g'4) a'4 ( b'4) b'4 b'4 a'4  c''4 b'4 b'4 a'4 g'4 \divisioMaxima
 b'4 b'4 ( d''4) a'4 g'4 g'4 a'4 g'4 ( \once \tweak #'font-size #-4 e' ) g'4 a'4 g'4 \finalis
 g'4 ( a'4) a'4 ( g'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 a'4  c''4 b'4 b'4 a'4 g'4 \divisioMaxima
 g'4 a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 a'4  c''4 b'4 a'4 g'4 \divisioMaxima
 g'4 a'4 ( b'4) b'4 ( d''4) a'4 g'4 g'4 a'4 g'4 ( e'4) g'4 a'4 g'4 \finalis

}

altoMusic = {
r2*4/2 r4 d'4 ~ d'2 ~ d'2*3/2 ~ d'4 ~ d'2*3/2 b2 ~ b2*4/2 \divisioMinima
c'2*3/2 b2*4/2 ~ b2*3/2 ~ b4 \divisioMaxima
c'2 ~ c'2 ~ c'2*5/2 b4 ~ \divisioMinima
b4 ~ b2*4/2 ~ b2*4/2 c'2*3/2 d'4 ~ \divisioMaxima
d'2 ~ d'2*3/2 ~ d'2*3/2 b2*5/2 a4 \divisioMaior
b2*3/2 ~ b2 d'4 ~ \divisioMinima
d'4 ~ d'2*4/2 ~ d'2*3/2 ~ d'2*4/2 e'2 d'2*3/2 c'2 b4 \finalis
r4 b2 ~ b2*3/2 ~ b2*3/2 ~ b2*3/2 ~ \divisioMinima
b4 d'2 e'2*4/2 d'4 \finalis
g'2 ~ g'2 ~ g'2 ~ g'2*3/2 e'2*3/2 ~ e'2 \divisioMaxima
d'4 ~ d'2*3/2 b2*3/2 c'2*3/2 ~ c'4 b4 \finalis
g'2 ~ g'2 ~ g'2 ~ g'2*3/2 fis'2*3/2 ~ \divisioMinima
fis'2 e'2*3/2 ~ e'2 \divisioMaxima
g'4 ~ g'2 ~ g'2*4/2 fis'2*3/2 ~ \divisioMinima
fis'4 e'2 d'2 \divisioMaxima
e'2*3/2 d'2*4/2 ~ d'2 c'2*3/2 ~ c'4 b4 \finalis
}

tenorMusic = {
c'4 ~ c'2*3/2 ~ c'2 ~ c'2 a2*3/2 b4 g2*3/2 ~ g2 ~ g2*4/2 ~ \divisioMinima
g2*3/2 fis2*4/2 a2*3/2 g4 \divisioMaxima
e2 ~ e2 ~ e2*5/2 ~ e4 ~ \divisioMinima
e4 ~ e2*4/2 ~ e2*4/2 ~ e2*3/2 d4 \divisioMaxima
e2 fis2*3/2 ~ fis2*3/2 g2*5/2 a4 \divisioMaior
g2*3/2 ~ g2 fis4 ~ \divisioMinima
fis4 ~ fis2*4/2 a2*3/2 g2*4/2 ~ g2 ~ g2*3/2 d2 ~ d4 \finalis
r2*3/2 fis2*3/2 g2*3/2 fis2*3/2 ~ \divisioMinima
fis4 g2 ~ g2 a2 b4 \finalis
g'2 fis'2 e'2 d'2*3/2 c'2*3/2 b2 \divisioMaxima
g4 fis2*3/2 e2*3/2 ~ e2*3/2 d2 \finalis
g'2 fis'2 e'2 d'2*3/2 ~ d'2*3/2 ~ \divisioMinima
d'2 c'2*3/2 b2 ~ \divisioMaxima
b4 a2 g2*4/2 ~ g2*3/2 ~ \divisioMinima
g4 ~ g2 ~ g2 ~ \divisioMaxima
g2*3/2 ~ g2*4/2 fis2 e2*3/2 d2 \finalis
}

bassMusic = {
r4 b2*3/2 a2 g2 ~ g2*3/2 ~ g4 ~ g2*3/2 fis2 e2*4/2 ~ \divisioMinima
e2*3/2 ~ e2*4/2 ~ e2*3/2 ~ e4 \divisioMaxima
c2 b,2 a,2*5/2 e,4 ~ \divisioMinima
e,4 fis,2*4/2 g,2*4/2 a,2*3/2 b,4 ~ \divisioMaxima
b,2 ~ b,2*3/2 d2*3/2 e2*5/2 fis4 ~ \divisioMaior
fis2*3/2 e2 d4 ~ \divisioMinima
d4 b,2*4/2 ~ b,2*3/2 ~ b,2*4/2 c2 g,2*3/2 ~ g,2 ~ g,4 \finalis
e2*3/2 ~ e2*3/2 ~ e2*3/2 b,2*3/2 ~ \divisioMinima
b,4 ~ b,2 c2 ~ c2 g,4 \finalis
g2 ~ g2 ~ g2 ~ g2*3/2 a2*3/2 e2 \divisioMaxima
b,4 ~ b,2*3/2 e2*3/2 c2*3/2 g,2 \finalis
g2 ~ g2 ~ g2 ~ g2*3/2 ~ g2*3/2 ~ \divisioMinima
g2 a2*3/2 e2 ~ \divisioMaxima
e4 ~ e2 ~ e2*4/2 d2*3/2 ~ \divisioMinima
d4 c2 b,2 \divisioMaxima
c2*3/2 g,2*4/2 ~ g,2 ~ g,2*3/2 ~ g,2 \finalis
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
        "6"
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
