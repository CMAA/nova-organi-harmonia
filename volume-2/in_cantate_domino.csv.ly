\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.49
%(volume.page)

global = {
 \key g \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Cantate Domino" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Cantate Domino"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Cantate Domino" }
    \line {}
  }
}

chantText = \lyricmode {
Can -- tá -- te Dó -- mi -- no 
\set stanza = " * " cán -- ti -- cum no -- vum, al -- le -- lú -- ia: 
qui -- a mi -- ra -- bí -- li -- a fe -- cit Dó -- mi -- nus, al -- le -- lú -- ia: _ 
an -- te con -- spé -- ctum gén -- ti -- um re -- ve -- lá -- _ _ _ vit jus -- tí -- ti -- am su -- am, 
al -- le -- lú -- _ ia, al -- le -- lú -- ia. Ps. 
Sal -- vá -- vit si -- bi déx -- te -- ra e -- jus: 
\set stanza = " * " 
et brá -- chi -- um san -- ctum e -- jus. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   e'4 ( \once \tweak #'font-size #-4 g' ) g'4 fis'4 ( g'4 a'4) a'4 ( g'4) g'4 ( a'4 g'4) g'4 \divisioMinima
 b'4 a'4 ( g'4) a'4 g'4 ( b'4 a'4) g'4 ( a'4 g'4 e'4) \divisioMinima \forceBreak

 g'4 a'4 ( fis'4 g'4) g'4 ( b'4 \tiny a' g' 4) g'4 \divisioMaxima
 g'4 g'4 ( e'4) g'4 a'4  a'4 ( c''4 b'4) a'4 ( g'4) g'4 \divisioMinima
 g'4 fis'4 ( g'4 a'4 \forceBreak
) a'4 ( g'4) g'4 ( a'4 g'4) g'4 \divisioMinima
 g'4 ( a'4) fis'4 ( g'4 a'4) a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4 g'4 g'4) d'4 ( e'4 d'4) \divisioMaxima
 d'4 d'4 ( g'4 fis'4) g'4 ( \once \tweak #'font-size #-4 a' ) a'4 g'4 \forceBreak
 g'4 ( b'4 a'4) g'4 g'4 ( g'4 g'4) \divisioMinima
 g'4 e'4 e'4 g'4 ( g'4) ~ g'4 ( e'4) ~ e'4 ( d'4 e'4) e'4 ( d'4) e'4 g'4 ( g'4 a'4) g'4 g'4 ( \once \tweak #'font-size #-4 fis'  \forceBreak
)  a'4 ( c''4 b'4) b'4 \divisioMaior
 g'4 g'4 ( b'4)  ( a'4) b'4 ( c''4) g'4 e'4 \divisioMinima
 g'4 g'4 ( g'4 g'4) g'4 ( b'4 \tiny a' g' 4) g'4 \finalis
 g'4 ( a'4) a'4 ( g'4) a'4 ( b'4 \forceBreak
) b'4 a'4  c''4 b'4 b'4 a'4 g'4 \divisioMaxima
 b'4 b'4 ( d''4) a'4 g'4 g'4 ( \once \tweak #'font-size #-4 e' ) g'4 a'4 g'4 \finalis
 g'4 ( a'4) a'4 ( g'4) a'4 ( b'4 \forceBreak
) b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 a'4  c''4 b'4 b'4 a'4 g'4 \divisioMaxima
 g'4 a'4 ( b'4) b'4 b'4 b'4 b'4 \forceBreak
 b'4 b'4 b'4  a'4  c''4 b'4 a'4 g'4 \divisioMaxima
 g'4 a'4 ( b'4) b'4 ( d''4) a'4 g'4 g'4 a'4 g'4 ( e'4) g'4 a'4 g'4 \finalis

}

altoMusic = {
r2*3/2 fis'2*3/2 e'2 d'2*3/2 ~ d'4 \divisioMinima
e'4 ~ e'2*3/2 ~ e'2*3/2 ~ e'2*4/2 ~ \divisioMinima
e'4 ~ e'2*3/2 d'2*4/2 ~ d'4 \divisioMaxima
r4 b2 ~ b2 e'2*3/2 ~ e'2 d'4 ~ \divisioMinima
d'4 ~ d'2*3/2 b2 ~ b2*3/2 ~ b4 ~ \divisioMinima
b2 ~ b2*3/2 e'2 d'2*4/2 ~ d'2*3/2 ~ \divisioMaxima
d'4 ~ d'2*3/2 c'2 d'2 e'2*4/2 b2*3/2 ~ \divisioMinima
b2*3/2 ~ b2*3/2 a2*4/2 b2*3/2 ~ b2*4/2 d'2 e'2*3/2 ~ e'4 ~ \divisioMaior
e'4 d'2*3/2 c'2*4/2 ~ \divisioMinima
c'4 d'2*3/2 e'2 ~ e'2 d'4 \finalis
r2*3/2 g'4 ~ g'2 e'2 ~ e'2*3/2 d'2 ~ \divisioMaxima
d'4 ~ d'2*4/2 c'2*3/2 b2 \finalis
r2*3/2 g'4 ~ g'2 ~ g'2*3/2 fis'2*3/2 \divisioMinima
e'2 ~ e'2*3/2 d'2 \divisioMaxima
e'4 ~ e'2*6/2 d'2*4/2 c'2 b2 \divisioMaxima
d'2*3/2 ~ d'2*4/2 b2 c'2*3/2 d'2 \finalis
}

tenorMusic = {
e'2 d'2*4/2 c'2 ~ c'2*3/2 b4 ~ \divisioMinima
b4 ~ b2*3/2 ~ b2*3/2 ~ b2*4/2 ~ \divisioMinima
b4 c'2*3/2 ~ c'2*4/2 b4 \divisioMaxima
g4 e2 ~ e2 ~ e2*3/2 g2 ~ g4 \divisioMinima
e4 d2*3/2 e2 fis2*3/2 g4 \divisioMinima
e2 fis2*3/2 e2 g2*4/2 ~ g2 fis4 \divisioMaxima
d4 g2*3/2 ~ g2 ~ g2 ~ g2*4/2 ~ g2*3/2 \divisioMinima
a2*3/2 g2*3/2 fis2*4/2 g2*3/2 ~ g2*4/2 a2 ~ a2*3/2 g4 ~ \divisioMaior
g4 ~ g2*3/2 ~ g2*4/2 ~ \divisioMinima
g4 ~ g2*3/2 ~ g2 c'2 b4 \finalis
r2 e'2 ~ e'2 c'2 a2*3/2 b2 \divisioMaxima
g4 ~ g2*4/2 ~ g2*3/2 ~ g2 \finalis
r2 e'2 ~ e'2 ~ e'2*3/2 d'2*3/2 \divisioMinima
c'2 a2*3/2 b2 ~ \divisioMaxima
b4 fis2 g2*4/2 ~ g2*4/2 ~ g2 ~ g2 ~ \divisioMaxima
g2*3/2 fis2*4/2 e2 c'2*3/2 ~ c'4 b4 \finalis
}

bassMusic = {
r2*12/2 \divisioMinima
g4 fis2*3/2 e2*3/2 d2*4/2 ~ \divisioMinima
d4 c2*3/2 g2*4/2 ~ g4 \divisioMaxima
r2*3/2 d2 c2*3/2 ~ c2 b,4 ~ \divisioMinima
b,4 ~ b,2*3/2 e2 ~ e2*3/2 ~ e4 \divisioMinima
d2 ~ d2*3/2 c2 b,2*4/2 d2 ~ d4 \divisioMaxima
r4 b,2*3/2 a,2 b,2 c2*4/2 e2*3/2 ~ \divisioMinima
e2*3/2 ~ e2*3/2 fis2*4/2 r2*3/2 e2*4/2 d2 c2*3/2 e4 ~ \divisioMaior
e4 b,2*3/2 a,2*4/2 ~ \divisioMinima
a,4 b,2*3/2 c2 ~ c2 g4 \finalis
r2*13/2 \divisioMaxima
r4 b,2*4/2 a,2*3/2 g,2 \finalis
r2*12/2 \divisioMinima
r2*7/2 \divisioMaxima
e4 ~ e2 ~ e2*4/2 b,2*4/2 a,2 e2 \divisioMaxima
b,2*3/2 ~ b,2*4/2 e2 ~ e2*3/2 g2 \finalis
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
        "VI"
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
