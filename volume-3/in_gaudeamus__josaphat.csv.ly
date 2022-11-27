\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.434
%(volume.page)

global = {
 \key g \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Gaudeamus... Josaphat" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Gaudeamus... Josaphat"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Gaudeamus... Josaphat" }
    \line {}
  }
}

chantText = \lyricmode {
Gau -- de -- á -- mus 
\set stanza = " * " o -- mnes in Dó -- mi -- no, 
di -- em fe -- stum ce -- le -- brán -- tes sub ho -- nó -- _ re be -- á -- ti Jó -- sa -- phat Már -- ty -- ris: 
de cu -- jus pas -- si -- ó -- _ ne gau -- dent An -- _ ge -- li, 
et col -- láu -- dant Fí -- li -- um _ De -- i. Ps. 
Ex -- sul -- tá -- te ju -- sti in Dó -- mi -- no: 
\set stanza = " * " 
re -- ctos de -- cet col -- lau -- dá -- ti -- o. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. _ }

chantMusic = {
\tieDown   d'4 e'4  e'4 ( b'4 c''4) b'4 \divisioMinima
 b'4 ( \once \tweak #'font-size #-4 a' ) b'4 ( a'4) g'4 ( a'4) a'4 ( d''4 b'4)  b'4 ( a'4 b'\prall c''4 b'4 c''4) c''4 ( b'4) \divisioMaior
 b'4 g'4 ( \once \tweak #'font-size #-4 a' ) a'4 a'4 ( g'4 g'4) e'4 ( a'4) a'4 ( g'4 g'4) e'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( g'4 g'4) \divisioMinima
 g'4 a'4 a'4 b'4 ( d''4 b'4) a'4 ( b'4 a'4) g'4 a'4 g'4 g'4 b'4 a'4 ( d''4 d''4) b'4 b'4 ( cis''4 b'4) b'4 \divisioMaxima
 g'4 ( a'4) g'4 ( a'4) g'4 g'4 a'4 a'4 b'4 ( d''4 b'4) a'4 ( b'4 a'4) \divisioMinima
 g'4 ( a'4) g'4 g'4 ( a'4) b'4 ( a'4 b'4) a'4 ( g'4 fis'4 g'\prall a'4 g'4 a'4) a'4 ( g'4) \divisioMaior
 g'4 a'4 a'4 ( b'4 d''4 \tiny b' a' 4) b'4 ( a'4) \divisioMinima
 g'4 ( a'4 fis'4) g'4 g'4 ( a'4 b'4 g'4) a'4 ( g'4 fis'4) e'4 ( fis'\prall g'4 fis'4 g'4) fis'4 ( e'4) \finalis
 g'4 a'4 ( b'4) b'4 b'4 b'4 ( d''4) b'4 b'4 b'4 b'4 ( a'4) a'4 ( b'4) \divisioMaxima
 a'4 ( g'4) a'4 ( b'4) b'4 b'4 b'4 ( d''4 b'4) a'4 g'4 g'4 ( g'4 g'4) e'4 \finalis
  g'4 a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 b'4 b'4 ( d''4) b'4 b'4 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) \divisioMaxima
 a'4 ( g'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 b'4 ( d''4) b'4 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) \divisioMaxima
 a'4 ( g'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 ( d''4 b'4) a'4 g'4 g'4 ( g'4 g'4) e'4 ( d'4) e'4 ( g'4) \finalis

}

altoMusic = {
r2 e'2*4/2 ~ \divisioMinima
e'2*6/2 ~ e'2*3/2 ~ e'2*6/2 ~ e'2 ~ \divisioMaior
e'4 d'2 c'4 b2*3/2 e'2 d'2*3/2 c'2 d'2*3/2 ~ \divisioMinima
d'2*3/2 ~ d'2*3/2 ~ d'2*4/2 ~ d'2 ~ d'2 ~ d'2*4/2 e'2*3/2 d'4 \divisioMaxima
r2 e'2*3/2 d'2 ~ d'2*7/2 ~ \divisioMinima
d'2*3/2 ~ d'2*5/2 e'2 ~ e'2*5/2 ~ e'2 ~ \divisioMaior
e'2 ~ e'4 d'2*6/2 ~ \divisioMinima
d'2*4/2 e'2*7/2 b2*5/2 ~ b2 \finalis
g'4 ~ g'2 ~ g'2 fis'2*4/2 e'4 ~ e'2 fis'2 \divisioMaxima
d'2*4/2 ~ d'2 ~ d'2*4/2 ~ d'4 ~ d'2*3/2 b4 g'2*4/2 ~ g'2*3/2 ~ g'2*3/2 ~ \divisioMinima
g'2 fis'2*4/2 ~ fis'2 ~ fis'2 \divisioMaxima
e'2*4/2 g'2*4/2 ~ g'2*4/2 ~ g'2*3/2 fis'2 g'2 \divisioMaxima
d'2*4/2 ~ d'2*4/2 ~ d'2*3/2 b2 ~ b2*3/2 ~ b2 ~ b2 \finalis
}

tenorMusic = {
fis2 g2*4/2 ~ \divisioMinima
g2*6/2 ~ g2*3/2 a2*6/2 g2 ~ \divisioMaior
g2*4/2 ~ g2*3/2 ~ g2 ~ g2*3/2 ~ g2 ~ g2*3/2 \divisioMinima
b2 a4 g2*3/2 fis2*4/2 e2 g2 fis2*4/2 ~ fis2*3/2 ~ fis4 \divisioMaxima
b2 ~ b2*3/2 ~ b2 ~ b4 a2*6/2 \divisioMinima
b2*3/2 g2*5/2 ~ g2 a2*5/2 b2 ~ \divisioMaior
b2 a2*7/2 \divisioMinima
b2*4/2 a2*7/2 ~ a2*5/2 g2 \finalis
r4 fis'2 e'2 d'2*4/2 ~ d'4 c'2 d'2 \divisioMaxima
a2*4/2 g2 a2*5/2 ~ a2*3/2 g4 r2*4/2 fis'2*3/2 e'2*3/2 ~ \divisioMinima
e'2 ~ e'2*4/2 d'2 ~ d'2 \divisioMaxima
c'2*4/2 d'2*4/2 ~ d'2*3/2 \divisioMinima
b4 e'2*3/2 ~ e'2 ~ e'2 \divisioMaxima
a2*4/2 g2*4/2 ~ g2*3/2 ~ g2 ~ g2*3/2 a2 g2 \finalis
}

bassMusic = {
b,2 e2*4/2 \divisioMinima
d2*6/2 c2*3/2 ~ c2*6/2 e2 ~ \divisioMaior
e2*4/2 ~ e2*3/2 c2 b,2*3/2 a,2 b,2*3/2 ~ \divisioMinima
b,2 ~ b,4 ~ b,2*3/2 ~ b,2*4/2 ~ b,2 ~ b,2 ~ b,2*4/2 ~ b,2*3/2 ~ b,4 \divisioMaxima
e2 ~ e2*3/2 ~ e2 fis4 ~ fis2*6/2 \divisioMinima
g2*3/2 b,2*5/2 c2 ~ c2*5/2 e2 ~ \divisioMaior
e2 fis2*7/2 \divisioMinima
g2*4/2 c2*7/2 e2*5/2 ~ e2 \finalis
r2*12/2 b2 \divisioMaxima
fis2*4/2 g2 fis2*5/2 e2*3/2 ~ e4 r2*18/2 b2 \divisioMaxima
r2*4/2 g2*4/2 fis2*3/2 ~ \divisioMinima
fis4 e2*3/2 ~ e2 ~ e2 \divisioMaxima
fis2*4/2 g2*4/2 fis2*3/2 ~ fis2 e2*3/2 ~ e2 ~ e2 \finalis
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
