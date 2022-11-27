\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.164
%(volume.page)

global = {
 \key d \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Audivit Dominus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Audivit Dominus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Audivit Dominus" }
    \line {}
  }
}

chantText = \lyricmode {
Au -- dí -- vit 
\set stanza = " * " Dó -- mi -- nus, 
et mi -- sér -- _ tus est mi -- hi: 
Dó -- mi -- nus _ fa -- ctus est _ _ 
ad -- jú -- tor me -- us. Ps. 
Ex -- al -- tá -- bo te Dó -- mi -- ne, quó -- ni -- am sus -- ce -- pí -- sti me: 
\set stanza = " * " 
nec de -- le -- ctá -- sti in -- i -- mí -- cos me -- os su -- per me. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   d'4 g'4 ( fis'4) g'4  g'4 ( b'4 a'4) a'4 a'4 \divisioMaior
 g'4 a'4 c''4. b'4 ( c''4 d''4) c''4 ( b'4 a'4) a'4 c''4 ( c''4 \forceBreak
) a'4 ( b'4 g'4 fis'4) \divisioMaxima
 fis'4 ( g'\prall a'4 b'4) a'4 b'4 ( a'4) b'4 ( c''4 g'4 e'4) g'4 ( g'4) g'4 ( a'4) b'4. g'4 ( g'4) e'4 ( fis'4 e'4) \divisioMaior
 fis'4 ( g'4 a'\prall b'4 \forceBreak
) a'4 ( b'4 g'4 e'4) g'4 ( g'4) g'4 ( e'4 fis'4 d'4) d'4 \finalis
 d'4 ( g'4 fis'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 \forceBreak
 a'4 ( c''4) b'4 b'4 b'4 ( a'4) a'4 ( b'4) \divisioMaxima
 a'4 ( fis'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 ( b'\prall c''4) a'4 g'4 g'4 ( g'4 g'4) e'4 ( d'4) \finalis \forceBreak

  d'4 ( g'4 fis'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 ( c''4) b'4 b'4 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) \divisioMaxima
 a'4 ( fis'4) g'4 ( a'4) a'4 a'4 \forceBreak
 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 ( c''4) b'4 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) \divisioMaxima
 a'4 ( fis'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 ( b'\prall c''4) a'4 g'4 g'4 ( g'4 g'4) e'4 ( d'4) \finalis

}

altoMusic = {
d'4 ~ d'2*3/2 g'2*3/2 ~ g'4 fis'4 \divisioMaior
e'2 ~ e'2*9/4 ~ e'2*3/2 ~ e'4 ~ e'2 ~ e'2*3/2 d'4 \divisioMaxima
fis'2*5/2 e'2 ~ e'2*4/2 ~ e'2 ~ e'2 ~ e'2*3/4 ~ e'2 b2 ~ b4 \divisioMaior
d'2*4/2 ~ d'2*4/2 c'2 a2*4/2 ~ a4 \finalis
d'2*5/2 e'2*6/2 ~ \divisioMinima
e'2*3/2 ~ e'2*4/2 fis'2 ~ fis'2 \divisioMaxima
d'2*5/2 ~ d'2*4/2 ~ d'2 c'2*4/2 d'4 ~ d'2*3/2 a2 d'2*6/2 e'2*3/2 ~ e'2*5/2 ~ e'2*4/2 fis'2 ~ fis'2 \divisioMaxima
d'2*4/2 ~ d'2 ~ d'2 e'2*3/2 ~ \divisioMinima
e'4 c'2*3/2 e'2 d'2 ~ \divisioMaxima
d'2*4/2 ~ d'2 ~ d'2 c'2*3/2 d'2 ~ d'2*3/2 a2 \finalis
}

tenorMusic = {
d'4 r2*3/2 d'2*3/2 ~ d'2 ~ \divisioMaior
d'2 r2*9/4 b2*3/2 c'4 a2 g2*3/2 a4 \divisioMaxima
b2*5/2 c'2 a2*4/2 b2 c'2 b2*3/4 a2 ~ a2 g4 \divisioMaior
a2*4/2 g2*4/2 ~ g2 ~ g2*4/2 fis4 \finalis
b2*5/2 c'2*6/2 ~ \divisioMinima
c'2*3/2 ~ c'2*4/2 d'2 ~ d'2 \divisioMaxima
fis2*5/2 e2*4/2 fis2 e2*4/2 ~ e4 g2*3/2 ~ g4 fis4 d'2*6/2 c'2*3/2 ~ c'2*3/2 ~ \divisioMinima
c'2 ~ c'2*4/2 d'2 ~ d'2 \divisioMaxima
fis2*4/2 e2 fis2 e2*3/2 ~ \divisioMinima
e4 ~ e2*3/2 fis2 ~ fis2 \divisioMaxima
g2*4/2 ~ g2 fis2 e2*3/2 ~ e2 g2*3/2 ~ g4 fis4 \finalis
}

bassMusic = {
r4 b2*3/2 ~ b2*3/2 d'2 \divisioMaior
r2 a2*9/4 ~ a2*3/2 ~ a4 ~ a2 d2*3/2 ~ d4 ~ \divisioMaxima
d2*5/2 c2 ~ c2*4/2 ~ c2 ~ c2 e2*3/4 ~ e2 ~ e2 ~ e4 \divisioMaior
b,2*4/2 ~ b,2*4/2 a,2 d2*4/2 ~ d4 \finalis
r2*11/2 \divisioMinima
b2*3/2 a2*4/2 d'2 b2 \divisioMaxima
d2*5/2 ~ d2*4/2 ~ d2 a,2*4/2 b,4 ~ b,2*3/2 d2 r2*6/2 r2*3/2 b2*3/2 ~ \divisioMinima
b2 a2*4/2 d'2 b2 \divisioMaxima
d2*4/2 ~ d2 ~ d2 c2*3/2 ~ \divisioMinima
c4 a,2*3/2 c2 b,2 ~ \divisioMaxima
b,2*4/2 d2 ~ d2 a,2*3/2 b,2 ~ b,2*3/2 d2 \finalis
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
