\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.166
%(volume.page)

global = {
 \key g \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Exclamaverunt" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Exclamaverunt"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Exclamaverunt" }
    \line {}
  }
}

chantText = \lyricmode {
Ex -- cla -- ma -- ve -- runt 
\set stanza = " * " ad te, Dó -- mi -- ne, 
in tém -- po -- re af -- fli -- cti -- ó -- nis su -- æ, 
et tu de cœ -- lo ex -- au -- dí -- sti e -- os, 
al -- le -- lú -- ia, _ _ al -- le -- lú -- ia. Ps. 
Ex -- sul -- tá -- te ju -- sti in Dó -- mi -- no: 
\set stanza = " * " 
re -- ctos de -- cet col -- lau -- dá -- ti -- o. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. _ }

chantMusic = {
\tieDown   g'4 d'4 e'4  e'4 ( b'4 c''4) b'4 \divisioMinima
 b'4 a'4 ( g'4 a'4)  b'4 ( a'4 c''4 b'4) a'4 ( g'4) g'4 \divisioMaior
 e'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( g'4 g'4) e'4 ( d'4) d'4 e'4 g'4 ( fis'4) g'4 g'4 ( b'4 a'4 fis'4) fis'4 ( a'4 g'4 fis'4 g'4) e'4 ( fis'4 e'4) e'4 \divisioMaxima
 e'4 g'4 a'4 a'4 ( b'4 a'4) a'4 ( e'4) \divisioMinima
 e'4 g'4 ( g'4) g'4 ( a'4) a'4 ( g'4 g'4) e'4 ( fis'4 e'4 d'4) d'4 \divisioMaior
 d'4 ( e'4 \once \tweak #'font-size #-4 g' ) g'4 ( fis'4) g'4 ( a'4 g'4) g'4 ( g'4) ~ g'4 ( e'4) ~ e'4 ( d'4) \divisioMinima
 e'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( fis'4 g'4 e'4) e'4 ( fis'4 e'4) e'4 \finalis
 g'4 a'4 ( b'4) b'4 b'4 b'4 ( d''4) b'4 b'4 b'4 b'4 ( a'4) a'4 ( b'4) \divisioMaxima
 a'4 ( g'4) a'4 ( b'4) b'4 b'4 b'4 ( d''4 b'4) a'4 g'4 g'4 ( g'4 g'4) e'4 \finalis
  g'4 a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 b'4 b'4 ( d''4) b'4 b'4 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) \divisioMaxima
 a'4 ( g'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 b'4 ( d''4) b'4 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) \divisioMaxima
 a'4 ( g'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 ( d''4 b'4) a'4 g'4 g'4 ( g'4 g'4) e'4 ( d'4) e'4 ( g'4) \finalis

}

altoMusic = {
r2 e'4 ~ e'2*4/2 \divisioMinima
d'4 e'2*3/2 d'2 ~ d'2 ~ d'2 b4 \divisioMaior
e'2 d'2*3/2 b2 d'2 c'2*3/2 d'2 ~ d'2 ~ d'2*5/2 b2*3/2 ~ b4 ~ \divisioMaxima
b2*3/2 d'2*3/2 e'4 ~ e'4 ~ \divisioMinima
e'4 d'2 ~ d'2 c'2*3/2 a2*4/2 ~ a4 \divisioMaior
b2*3/2 c'2 d'2*3/2 b2*3/2 r2*3/2 \divisioMinima
b2 c'2*4/2 b2*3/2 ~ b4 \finalis
e'4 fis'2 g'2 fis'2*4/2 e'4 ~ e'2 fis'2 \divisioMaxima
d'2 ~ d'2 ~ d'2 ~ d'2*4/2 b4 c'2*3/2 b4 g'2*4/2 a'2*3/2 g'2*3/2 ~ \divisioMinima
g'2 fis'2*4/2 e'2 fis'2 \divisioMaxima
e'2 ~ e'2 ~ e'2*4/2 fis'2*3/2 ~ \divisioMinima
fis'4 ~ fis'2*3/2 e'2 d'2 ~ \divisioMaxima
d'2*4/2 ~ d'2*4/2 ~ d'2*3/2 b2 c'2*3/2 b2 ~ b2 \finalis
}

tenorMusic = {
b4 a2 g2*4/2 ~ \divisioMinima
g4 ~ g2*3/2 fis2 e2 fis2 g4 ~ \divisioMaior
g2 ~ g2*3/2 fis2 e2 ~ e2*3/2 ~ e2 fis2 a2*5/2 ~ a2*3/2 g4 ~ \divisioMaxima
g2*3/2 fis2*3/2 g2 ~ \divisioMinima
g4 ~ g2 d2 e2*3/2 ~ e2*4/2 fis4 \divisioMaior
g2*3/2 ~ g2 ~ g2*3/2 ~ g2*3/2 a2*3/2 \divisioMinima
g2 a2*4/2 ~ a2*3/2 g4 \finalis
e'4 ~ e'2 ~ e'2 d'2*4/2 ~ d'4 c'2 d'2 \divisioMaxima
b2 a2 g2 fis2*4/2 g4 a2*3/2 g4 g'2*4/2 fis'2*3/2 e'2*3/2 ~ \divisioMinima
e'2 d'2*4/2 c'2 d'2 \divisioMaxima
b2 a2 g2*4/2 fis2*3/2 ~ \divisioMinima
fis4 e2*3/2 ~ e2 fis2 ~ \divisioMaxima
fis2*4/2 ~ fis2*4/2 g2*3/2 ~ g2 a2*3/2 ~ a2 g2 \finalis
}

bassMusic = {
e2*3/2 ~ e2*4/2 \divisioMinima
b,4 c2*3/2 d2 ~ d2 ~ d2 e4 \divisioMaior
c2 b,2*3/2 ~ b,2 ~ b,2 a,2*3/2 b,2 ~ b,2 ~ b,2*5/2 e2*3/2 ~ e4 ~ \divisioMaxima
e2*3/2 d2*3/2 c2 ~ \divisioMinima
c4 b,2 ~ b,2 a,2*3/2 d2*4/2 ~ d4 \divisioMaior
g,2*3/2 a,2 b,2*3/2 e2*3/2 fis2*3/2 \divisioMinima
e2 ~ e2*4/2 ~ e2*3/2 ~ e4 \finalis
r2*12/2 b2 \divisioMaxima
b,2 ~ b,2 ~ b,2 ~ b,2*4/2 e4 ~ e2*3/2 ~ e4 r2*10/2 \divisioMinima
r2*8/2 b2 \divisioMaxima
e2 ~ e2 ~ e2*4/2 d2*3/2 ~ \divisioMinima
d4 ~ d2*3/2 c2 b,2 \divisioMaxima
d2*4/2 b,2*4/2 ~ b,2*3/2 e2 ~ e2*3/2 ~ e2 ~ e2 \finalis
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
        "I"
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
