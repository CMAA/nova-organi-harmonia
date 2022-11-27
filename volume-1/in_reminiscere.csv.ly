\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.202
%(volume.page)

global = {
 \key g \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Reminiscere" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Reminiscere"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Reminiscere" }
    \line {}
  }
}

chantText = \lyricmode {
Re -- mi -- ní -- sce -- re 
\set stanza = " * " mi -- se -- ra -- ti -- ó -- num tu -- á -- rum, Dó -- mi -- ne, 
et mi -- se -- ri -- cór -- di -- æ tu -- æ, 
quæ a sǽ -- cu -- lo sunt: 
ne un -- quam do -- mi -- nén -- tur no -- bis i -- ni -- mí -- ci no -- _ stri: 
lí -- be -- ra nos De -- us Is -- ra -- el 
ex ó -- mni -- bus _ _ _ an -- gú -- _ sti -- is no -- _ _ stris. Ps. 
Ad te Dó -- mi -- ne le -- vá -- vi á -- ni -- mam me -- am: 
\set stanza = " * " 
De -- us me -- us in te con -- fí -- do, non e -- ru -- bé -- scam. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   e'4 g'4 ( e'4) fis'4 ( g'4) g'4 g'4 \divisioMinima
 g'4 ( g'4 g'4) g'4 ( e'4) g'4 ( fis'4) g'4 g'4 ( b'4 a'4) g'4 g'4 ( g'4 g'4 \forceBreak
) fis'4 ( e'4 g'4) fis'4 ( g'4 a'4 b'4 g'4 fis'4) \divisioMinima
 fis'4 fis'4 ( a'4 g'4 fis'4) g'4 \divisioMaxima
 g'4 ( g'4 g'4) g'4 ( e'4) g'4 ( fis'4) g'4 g'4 ( b'4 a'4) g'4 fis'4 \forceBreak
 g'4 ( a'4 g'4 fis'4) g'4 \divisioMaior
 g'4 ( g'4 g'4) g'4 ( e'4) fis'4 ( a'4) g'4 a'4 ( g'4 e'4) e'4 ( g'4 fis'4 e'4 g'4) \divisioMaxima
 e'4 g'4 ( g'4 \once \tweak #'font-size #-4 e' ) g'4 ( g'4) d'4 e'4 ( g'4 fis'4 \forceBreak
) g'4 e'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( g'4) fis'4 \divisioMinima
 e'4 a'4 a'4 g'4 a'4 ( g'4) b'4 ( a'4) a'4 \divisioMaxima
 e'4 a'4 a'4 ( b'4 a'4 g'4) g'4 ( fis'4) g'4 g'4 \forceBreak
 a'4 ( g'4 g'4) e'4 ( g'4 a'4 g'4 fis'4 g'4) g'4 ( fis'4) \divisioMaior
 g'4 g'4 ( e'4) e'4 e'4 g'4 ( g'4) a'4 ( e'4) ~ e'4 ( d'4) \divisioMinima
 e'4 ( \once \tweak #'font-size #-4 g' ) fis'4 ( d'4) e'4 ( fis'\prall g'4 g'4 \forceBreak
) e'4 ( g'4 a'4) a'4 a'4 ( g'4) b'4 ( a'4 g'4) a'4 ( g'4 fis'4) fis'4 \finalis
 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 \forceBreak
 b'4 ( a'4) a'4 ( cis''4) cis''4 b'4 ( cis''4) b'4 \divisioMaxima
 b'4 ( a'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 b'4 a'4 ( g'4 \forceBreak
) a'4 ( b'4) a'4 fis'4 \finalis
  b'4 ( a'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 b'4 b'4 ( a'4) a'4 ( cis''4) cis''4 \forceBreak
 b'4 ( cis''4) b'4 \divisioMaxima
 b'4 ( a'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 ( a'4) a'4 ( cis''4) cis''4 b'4 ( cis''4) b'4 \divisioMaxima \forceBreak

 b'4 ( a'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 a'4 ( g'4) a'4 ( b'4) a'4 fis'4 ( a'4 g'4 g'4) \finalis

}

altoMusic = {
r4 c'2 d'2 ~ d'2 \divisioMinima
e'2*3/2 b2 ~ b2*3/2 d'2*4/2 c'2*3/2 d'2*3/2 ~ d'2*6/2 ~ \divisioMinima
d'4 b2*4/2 ~ b4 \divisioMaxima
e'2*3/2 ~ e'2 ~ e'2*3/2 d'2*3/2 ~ d'2 c'2*4/2 d'4 ~ \divisioMaior
d'2*3/2 ~ d'2 ~ d'2*3/2 b2*3/2 a2*4/2 b4 \divisioMaxima
r4 a2*3/2 b2*3/2 ~ b2*3/2 c'4 ~ c'2 d'2 ~ d'4 \divisioMinima
e'2 ~ e'2 ~ e'2 fis'2 d'4 \divisioMaxima
b2 d'2*4/2 ~ d'2 ~ d'2 e'2*3/2 ~ e'2 b2 ~ b2 d'2 ~ \divisioMaior
d'4 b2*3/2 ~ b4 c'2*3/2 b2*3/2 \divisioMinima
d'2 ~ d'2 b2*5/2 ~ b2*3/2 ~ b2 d'2*3/2 cis'2*3/2 b4 \finalis
fis'2 ~ fis'2*6/2 ~ fis'2*4/2 ~ fis'2*3/2 ~ fis'2 ~ fis'4 ~ \divisioMaxima
fis'2 e'2*7/2 d'2*3/2 ~ d'2*4/2 ~ d'2 fis'2 ~ fis'2*6/2 ~ fis'2*5/2 ~ fis'2 ~ fis'2*3/2 ~ fis'2 ~ fis'4 ~ \divisioMaxima
fis'2 ~ fis'2*6/2 ~ fis'2*3/2 ~ \divisioMinima
fis'2*5/2 ~ fis'2 ~ fis'4 \divisioMaxima
e'2 ~ e'2 d'2*5/2 ~ d'2*4/2 cis'4 b2 ~ b2 \finalis
}

tenorMusic = {
r4 g2 ~ g2 b2 ~ \divisioMinima
b2*3/2 a2 g2*3/2 ~ g2*4/2 ~ g2*3/2 ~ g2*3/2 b2*6/2 \divisioMinima
a4 ~ a2*4/2 g4 \divisioMaxima
b2*3/2 ~ b2 a2*3/2 d2*3/2 e2 ~ e2*4/2 d4 \divisioMaior
g2*3/2 b2 a2*3/2 g2*3/2 fis2*4/2 e4 \divisioMaxima
r4 e2*3/2 ~ e2*3/2 ~ e2*3/2 ~ e4 g2 fis2 a4 ~ \divisioMinima
a2 c'2 b2 ~ b2 fis4 \divisioMaxima
g2 ~ g2*4/2 a2 b2 ~ b2*3/2 a2 fis2 g2 a2 ~ \divisioMaior
a4 ~ a2*3/2 g4 ~ g2*3/2 fis2*3/2 \divisioMinima
b2 a2 ~ a2 g2 ~ g4 ~ g2*3/2 ~ g2 ~ g2*3/2 e2*3/2 fis4 \finalis
d'2 ~ d'2*6/2 ~ d'2 cis'2 e'2*3/2 ~ e'2 d'4 \divisioMaxima
fis2 ~ fis2*7/2 ~ fis2*3/2 g2 ~ g2 b2 d'2 ~ d'2*6/2 ~ d'2*3/2 ~ \divisioMinima
d'2 cis'2 e'2*3/2 ~ e'2 d'4 \divisioMaxima
b2 cis'2*6/2 d'2*3/2 \divisioMinima
cis'2 e'2*3/2 ~ e'2 d'4 \divisioMaxima
fis2*4/2 ~ fis2*5/2 g2*4/2 b4 ~ b2 ~ b2 \finalis
}

bassMusic = {
r4 a,2 b,2 ~ b,2 \divisioMinima
e2*3/2 ~ e2 ~ e2*3/2 b,2*4/2 a,2*3/2 b,2*3/2 ~ b,2*6/2 ~ \divisioMinima
b,4 e2*4/2 ~ e4 \divisioMaxima
d2*3/2 c2 ~ c2*3/2 b,2*3/2 ~ b,2 a,2*4/2 b,4 ~ \divisioMaior
b,2*3/2 ~ b,2 ~ b,2*3/2 e2*3/2 ~ e2*4/2 ~ e4 \divisioMaxima
r4 e,2*3/2 ~ e,2*3/2 g,2*3/2 a,4 ~ a,2 b,2 ~ b,4 \divisioMinima
c2 ~ c2 ~ c2 d2 ~ d4 \divisioMaxima
e2 b,2*4/2 ~ b,2 ~ b,2 c2*3/2 ~ c2 e2 ~ e2 d2 ~ \divisioMaior
d4 e2*3/2 ~ e4 a,2*3/2 b,2*3/2 ~ \divisioMinima
b,2 ~ b,2 e2 ~ e2 g4 fis2*3/2 e2 b,2*3/2 ~ b,2*3/2 ~ b,4 \finalis
r2 cis'2*6/2 b2 fis2 ~ fis2*3/2 b2 ~ b4 \divisioMaxima
d2 cis2*7/2 b,2*3/2 ~ b,2 ~ b,2 ~ b,2 r2 cis'2*6/2 b2*3/2 ~ \divisioMinima
b2 fis2 ~ fis2*3/2 b2 ~ b4 \divisioMaxima
d2 ~ d2*6/2 ~ d2*3/2 \divisioMinima
fis2 ~ fis2*3/2 b2 ~ b4 \divisioMaxima
cis2 b,2 ~ b,2*5/2 ~ b,2*4/2 ~ b,4 d2 e2 \finalis
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
