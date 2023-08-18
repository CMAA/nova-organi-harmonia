\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.223
%(volume.page)

global = {
 \key d \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Oculi mei" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Oculi mei"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Oculi mei" }
    \line {}
  }
}

chantText = \lyricmode {
O -- cu -- li me -- i 
\set stanza = " * " sem -- _ _ per ad Dó -- mi -- num, _ _ _ 
qui -- a ip -- se e -- vél -- let de lá -- que -- o pe -- des me -- _ _ os: 
ré -- spi -- _ ce in me, _ 
et mi -- se -- ré -- re me -- _ _ _ i, 
quó -- ni -- am ú -- ni -- cus _ _ 
et pau -- _ _ _ per sum e -- go. Ps. 
Ad te Dó -- mi -- ne le -- vá -- vi á -- ni -- mam me -- am: 
\set stanza = " * " 
De -- us me -- us, in te con -- fí -- do, non e -- ru -- bé -- scam. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   d'4 ( a'4) a'4 a'4 a'4 a'4 \divisioMinima
 a'4 ( b'4 a'4) b'4 ( g'4) ~ g'4 ( a'4) fis'4 ( e'4) g'4 g'4 ( fis'4 g'4) e'4 ( d'4 \forceBreak
) d'4. e'4 ( g'4 d'4) e'4 ( d'4) ~ d'4 ( c'4) \divisioMaior
 c'4 e'4 g'4 ( a'4) a'4 g'4 a'4 ( c''4 b'4 c''4) b'4 ( a'4) \divisioMinima
 a'4 a'4 ( b'4 a'4) g'4 \forceBreak
 g'4 ( e'4) g'4 a'4 ( b'4) b'4 ( g'4) b'4 ( a'4) ~ a'4 ( fis'4 g'4) g'4 ( fis'4) \divisioMaxima
 a'4 g'4 ( b'4 g'4) a'4 ( b'4) a'4 g'4 ( a'4) g'4 ( a'4 g'4 g'4 \forceBreak
) d'4 ( e'4 d'4) \divisioMaior
 d'4 ( \once \tweak #'font-size #-4 e' ) d'4 ( e'4) d'4 c'4 ( e'4 fis'\prall g'4) g'4 g'4 ( g'4) ~ g'4 ( e'4) g'4 ( d'4) ~ d'4 ( c'4 d'4) d'4 ( c'4) \divisioMaxima
 e'4 g'4 ( g'4 e'4 \forceBreak
) fis'4 ( e'4) g'4 g'4 ( g'4 g'4) e'4 ( g'4 d'4) e'4 ( d'4) ~ d'4 ( c'4) \divisioMaior
 e'4 ( \once \tweak #'font-size #-4 c' ) d'4 ( e'4) g'4 ( g'4) ~ g'4 ( e'4) ~ e'4 ( \once \tweak #'font-size #-4 d' ) e'4 ( fis'4 d'4 c'4) e'4 ( fis'\prall g'4) d'4 ( e'4 d'4) d'4 \finalis \forceBreak

 d'4 ( g'4 fis'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 ( c''4) b'4 b'4 b'4 ( a'4) a'4 ( b'4) \divisioMaxima
 a'4 ( fis'4) g'4 ( a'4) a'4 \forceBreak
 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 ( b'\prall c''4) a'4 g'4 g'4 ( g'4 g'4) e'4 ( d'4) \finalis
  d'4 ( g'4 fis'4) g'4 ( a'4) a'4 a'4 a'4 a'4 \forceBreak
 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 ( c''4) b'4 b'4 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) \divisioMaxima
 a'4 ( fis'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima \forceBreak

 a'4 a'4 ( c''4) b'4 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) \divisioMaxima
 a'4 ( fis'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 ( b'\prall c''4) a'4 g'4 g'4 ( g'4 g'4) e'4 ( d'4) \finalis

}

altoMusic = {
d'2*4/2 ~ d'2 ~ \divisioMinima
d'2*4/2 ~ d'2*3/2 ~ d'2*3/2 b2*3/2 ~ b2 ~ b2*3/4 ~ b2*3/2 r2*4/2 \divisioMaior
c'2 e'2*4/2 ~ e'2 ~ e'2 fis'2 \divisioMinima
d'4 ~ d'2*3/2 ~ d'4 c'2 d'4 ~ d'2 ~ d'2*3/2 ~ d'2*4/2 ~ d'2 \divisioMaxima
b4 ~ b2*3/2 d'2*3/2 ~ d'2 ~ d'2*4/2 r2*3/2 \divisioMaior
b2 ~ b2*3/2 c'2*4/2 b4 b'2 b2*3/2 a2*4/2 ~ a2 \divisioMaxima
b2*4/2 ~ b2 d'4 c'2*3/2 b2 ~ b2 g2*3/2 ~ \divisioMaior
g2*4/2 ~ g2*3/2 a2*3/2 b2 r2 c'2*3/2 a2*3/2 ~ a4 \finalis
r2*3/2 g'2*6/2 fis'2 e'2*4/2 fis'2 ~ fis'2 \divisioMaxima
d'2 ~ d'2*7/2 ~ d'2 \divisioMinima
e'2*3/2 d'2 c'2*3/2 a2 r2*3/2 g'2*6/2 fis'2*3/2 ~ \divisioMinima
fis'2 e'2*4/2 fis'2 ~ fis'2 \divisioMaxima
d'2*4/2 ~ d'2*4/2 e'2*4/2 ~ e'2*3/2 d'2 ~ d'2 ~ \divisioMaxima
d'2*4/2 ~ d'2*4/2 e'2*3/2 d'2 c'2*3/2 a2 \finalis
}

tenorMusic = {
a2*4/2 fis2 ~ \divisioMinima
fis2*4/2 b2*3/2 a2*3/2 ~ a2*3/2 fis2 g2*3/4 ~ g2*4/2 a2*3/2 \divisioMaior
g2 b2*4/2 ~ b2 a2 ~ a2 \divisioMinima
fis4 ~ fis2*3/2 e4 ~ e2 ~ e4 fis2 g2*3/2 b2*4/2 a2 \divisioMaxima
fis4 e2*3/2 fis2*3/2 e2 b2*4/2 a2*3/2 \divisioMaior
g2 ~ g2*3/2 ~ g2*5/2 e2 ~ e2*3/2 ~ e2*4/2 ~ e2 ~ \divisioMaxima
e4 ~ e2*3/2 ~ e2 ~ e4 ~ e2*3/2 ~ e2 ~ e2 ~ e2*3/2 \divisioMaior
c2*4/2 e2*3/2 ~ e2*3/2 ~ e2 ~ e2 g2*3/2 ~ g2*3/2 fis4 \finalis
d'2*3/2 ~ d'2*6/2 ~ d'2 c'2*4/2 d'2 ~ d'2 \divisioMaxima
fis2 e2*7/2 fis2 \divisioMinima
g2*3/2 ~ g2 ~ g2*3/2 ~ g4 fis4 d'2*3/2 ~ d'2*6/2 ~ d'2*3/2 ~ \divisioMinima
d'2 c'2*4/2 d'2 ~ d'2 \divisioMaxima
fis2 ~ fis2 ~ fis2*4/2 g2*4/2 ~ g2*3/2 fis2 ~ fis2 ~ \divisioMaxima
fis2 e2 fis2*4/2 g2*3/2 ~ g2 ~ g2*3/2 ~ g4 fis4 \finalis
}

bassMusic = {
fis2*4/2 d2 \divisioMinima
b,2*4/2 ~ b,2*3/2 ~ b,2*3/2 e2*3/2 ~ e2 ~ e2*3/4 g2*4/2 r2*3/2 \divisioMaior
e2 d2*4/2 c2 ~ c2 d2 ~ \divisioMinima
d4 b,2*3/2 ~ b,4 a,2 b,4 ~ b,2 ~ b,2*3/2 ~ b,2*4/2 d2 ~ \divisioMaxima
d4 ~ d2*3/2 ~ d2*3/2 e2 ~ e2*4/2 fis2*3/2 \divisioMaior
r2 fis2*3/2 e2*5/2 d2 c2*3/2 b,2*4/2 a,2 \divisioMaxima
r4 e,2*3/2 g,2 b,4 a,2*3/2 g,2 fis,2 e,2*3/2 ~ \divisioMaior
e,2*4/2 ~ e,2*3/2 fis,2*3/2 g,2 a,2 ~ a,2*3/2 d2*3/2 ~ d4 \finalis
r2*11/2 a2*4/2 r2 b2 \divisioMaxima
d2 ~ d2*7/2 ~ d2 \divisioMinima
c2*3/2 b,2 a,2*3/2 d2 r2*12/2 \divisioMinima
r2 a2*4/2 d'2 b2 \divisioMaxima
d2 e2 d2*4/2 c2*4/2 a,2*3/2 d2 b,2 \divisioMaxima
d2 ~ d2 ~ d2*4/2 c2*3/2 b,2 a,2*3/2 d2 \finalis
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
