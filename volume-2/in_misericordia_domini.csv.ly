\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.41
%(volume.page)

global = {
 \key g \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Misericordia Domini" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Misericordia Domini"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Misericordia Domini" }
    \line {}
  }
}

chantText = \lyricmode {
Mi -- se -- ri -- cór -- di -- a 
\set stanza = " * " Dó -- _ mi -- ni ple -- na est ter -- ra, al -- le -- lú -- ia: 
ver -- bo De -- _ i cœ -- _ li fir -- má -- ti sunt, 
al -- le -- _ lú -- ia, al -- le -- _ _ lú -- ia. Ps. 
Ex -- sul -- tá -- te ju -- sti in Dó -- mi -- no: 
\set stanza = " * " 
re -- ctos de -- cet col -- lau -- dá -- ti -- o. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   e'4 g'4 ( fis'4) g'4 fis'4 ( \once \tweak #'font-size #-4 g' ) g'4 g'4  fis'4 ( g'4) a'4 ( g'4) g'4 ( g'4 g'4) fis'4 ( e'4) \divisioMinima
 g'4 g'4 ( g'4 g'4) g'4 ( e'4 \forceBreak
) g'4 ( \once \tweak #'font-size #-4 a' ) g'4 \divisioMinima
 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 g'4 ( b'4 \tiny a' g' 4) g'4 ( a'4 g'4 g'4) \divisioMaxima
 e'4 ( \once \tweak #'font-size #-4 a' ) a'4 a'4 ( e'4) a'4 ( g'4 fis'4 g'4) fis'4 \divisioMinima \forceBreak

 g'4 ( g'4) ~ g'4 ( e'4) g'4 ( fis'4) g'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) g'4 ( fis'4 e'4) e'4 \divisioMaior
 g'4 g'4 ( b'4) d''4 ( b'4) a'4 ( b'4 a'4) fis'4 \divisioMinima
 a'4  a'4. b'4 ( c''4 a'4 g'4 \forceBreak
) b'4 ( a'4 g'4 a'4) fis'4 ( a'4 g'4 g'4) g'4 ( fis'4) \finalis
 b'4 ( a'4) a'4 ( b'4) b'4 b'4 b'4 ( a'4) a'4 ( cis''4) cis''4 b'4 ( cis''4) b'4 b'4 \divisioMaxima \forceBreak

 b'4 ( a'4) a'4 ( b'4) b'4 b'4 b'4 a'4 ( \once \tweak #'font-size #-4 g' ) a'4 ( b'4) a'4 fis'4 \finalis
  b'4 ( a'4) a'4 ( b'4) b'4 b'4 b'4 b'4 \forceBreak
 b'4 b'4 b'4 \divisioMinima
 b'4 b'4 b'4 ( a'4) a'4 ( cis''4) cis''4 b'4 ( cis''4) b'4 \divisioMaxima
 b'4 ( a'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima \forceBreak

 b'4 ( a'4) a'4 ( cis''4) cis''4 b'4 ( cis''4) b'4 \divisioMaxima
 b'4 ( a'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 a'4 ( g'4) a'4 ( b'4) a'4 fis'4 ( a'4 g'4 g'4) \finalis

}

altoMusic = {
r4 b2*3/2 ~ b2*4/2 ~ b2*4/2 d'2*3/2 b2 ~ \divisioMinima
b4 d'2*3/2 cis'2 d'2*3/2 \divisioMinima
e'2*3/2 ~ e'2*4/2 d'2 ~ d'2 \divisioMaxima
cis'2*3/2 e'2 d'2*4/2 ~ d'4 \divisioMinima
b2 ~ b2*4/2 ~ b2 ~ b2 ~ b2*4/2 ~ \divisioMaior
b4 d'2*4/2 ~ d'2*4/2 \divisioMinima
fis'4 e'2*3/4 ~ e'2*4/2 d'2*4/2 ~ d'2*4/2 ~ d'2 \finalis
fis'2 ~ fis'2 ~ fis'2 ~ fis'2 ~ fis'2*3/2 ~ fis'2*3/2 ~ fis'4 ~ \divisioMaxima
fis'2 e'2 d'2*3/2 ~ d'2 cis'2 d'2 fis'2 ~ fis'2*6/2 ~ fis'2*3/2 ~ \divisioMinima
fis'2 ~ fis'2 ~ fis'2*3/2 ~ fis'2 ~ fis'4 \divisioMaxima
d'2 e'2 fis'2*7/2 \divisioMinima
cis'2 ~ cis'2*3/2 fis'2*3/2 \divisioMaxima
d'2 cis'2 d'2*5/2 ~ d'2*4/2 b2*3/2 ~ b2 \finalis
}

tenorMusic = {
r4 b2*3/2 a2*4/2 g2*4/2 a2*3/2 g2 ~ \divisioMinima
g4 ~ g2*3/2 ~ g2 ~ g2*3/2 ~ \divisioMinima
g2*3/2 cis'2*4/2 ~ cis'2 b2 \divisioMaxima
e2*3/2 ~ e2 d2*4/2 b4 ~ \divisioMinima
b2 a2*4/2 g2 fis2 e2*3/2 g4 ~ \divisioMaior
g4 ~ g2*4/2 fis2*4/2 \divisioMinima
r2*5/4 e2*4/2 g2*4/2 d2 e2 b2 \finalis
d'2 cis'2 d'2 cis'2 e'2*3/2 ~ e'2*3/2 d'4 \divisioMaxima
fis2 ~ fis2 ~ fis2*3/2 g2 b2 ~ b2 d'2 ~ d'2*6/2 ~ d'2*3/2 ~ \divisioMinima
d'2 cis'2 e'2*3/2 ~ e'2 d'4 \divisioMaxima
fis2 ~ fis2 ~ fis2*7/2 ~ \divisioMinima
fis2 ~ fis2*3/2 ~ fis2*3/2 ~ \divisioMaxima
fis2*4/2 ~ fis2*5/2 g2*4/2 fis4 e2 g2 \finalis
}

bassMusic = {
r4 e2*3/2 ~ e2*4/2 ~ e2*4/2 d2*3/2 e2 ~ \divisioMinima
e4 b,2*3/2 a,2 b,2*3/2 \divisioMinima
cis2*3/2 ~ cis2*4/2 g2 ~ g2 \divisioMaxima
a,2*3/2 cis2 b,2*4/2 ~ b,4 \divisioMinima
e2 ~ e2*4/2 ~ e2 d2 e2*3/2 ~ e4 ~ \divisioMaior
e4 b,2*4/2 d2*4/2 ~ \divisioMinima
d4 cis2*3/4 ~ cis2*4/2 b,2*4/2 ~ b,2 ~ b,2 ~ b,2 \finalis
b2 ~ b2 ~ b2 fis2 ~ fis2*3/2 b2*3/2 ~ b4 \divisioMaxima
d2 cis2 b,2*3/2 ~ b,2 ~ b,2 ~ b,2 r2 cis'2*6/2 b2*3/2 ~ \divisioMinima
b2 fis2 ~ fis2*3/2 b2 ~ b4 \divisioMaxima
b,2 cis2 d2*7/2 \divisioMinima
fis2 e2*3/2 d2*3/2 \divisioMaxima
b,2*4/2 ~ b,2*5/2 ~ b,2*4/2 d4 e2 ~ e2 \finalis
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
        "IV"
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
