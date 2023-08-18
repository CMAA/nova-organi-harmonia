\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.65
%(volume.page)

global = {
 \key e \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Etenim sederunt" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Etenim sederunt"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Etenim sederunt" }
    \line {}
  }
}

chantText = \lyricmode {
Et -- e -- nim 
\set stanza = " * " se -- dé -- runt prín -- ci -- pes, 
et ad -- vér -- sum me lo -- que -- bán -- _ tur: 
et in -- í -- qui per -- _ se -- cú -- _ _ ti sunt me: 
ád -- ju -- va me, Dó -- mi -- ne De -- us me -- _ us, 
qui -- a ser -- vus tu -- us ex -- er -- ce -- bá -- _ tur 
in tu -- is ju -- sti -- fi -- ca -- ti -- ó -- ni -- _ bus. Ps. 
Be -- á -- ti im -- ma -- cu -- lá -- ti in vi -- a: 
\set stanza = " * " 
qui ám -- bu -- lant in le -- ge Dó -- mi -- ni. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown  g'4 ( g'4) e'4 ( d'4) g'4 ( e'4 g'4)  a'4 ( g'4 a'4) b'4 ( a'4 b'4) b'4 b'4 a'4 g'4 ( b'4) \divisioMaior
  b'4 ( cis''4 b'4) a'4 g'4 ( \once \tweak #'font-size #-4 fis' ) a'4 \forceBreak
  a'4 ( cis''4 b'4) a'4 g'4 g'4 ( g'4) ~ g'4 ( g'4) e'4 \divisioMaior
 g'4 ( fis'4) g'4 ( a'4 b'4) a'4 e'4 e'4 g'4 ( g'4 g'4) e'4 e'4 ( g'4) a'4 ( g'4) a'4 ( b'4 \forceBreak
) g'4 ( fis'4) d'4 ( \once \tweak #'font-size #-4 e' ) e'4 \divisioMaxima
 e'4 e'4 g'4 ( fis'4) g'4 ( a'4) \divisioMinima
 a'4 a'4 ( b'4 a'4) g'4 ( a'4 g'4) b'4 ( a'4) a'4 a'4 ( d''4) ~ d''4 ( b'4) b'4 \divisioMaior \forceBreak

 g'4 g'4 b'4 a'4  a'4 ( cis''4 b'4 a'4) a'4 g'4 g'4 a'4  b'4 ( a'4) b'4 ( cis''4 a'4 g'4) a'4 \divisioMaior
 b'4 ( a'4 b'4)  b'4 ( cis''4 b'4 g'4) g'4 \forceBreak
 g'4 g'4 a'4 ( g'4 e'4) e'4 ( g'4 a'4) a'4 ( g'4) g'4 ( a'4 g'4 fis'4) g'4 ( fis'4) ~ fis'4 ( e'4 fis'4) fis'4 ( e'4) \finalis
 g'4 a'4 ( b'4) b'4 b'4 \forceBreak
 b'4 b'4 b'4 ( d''4) b'4 b'4 b'4 ( a'4) a'4 ( b'4) \divisioMaxima
 a'4 ( g'4) a'4 ( b'4) b'4 b'4 b'4 b'4 ( d''4 b'4) a'4 g'4 g'4 ( g'4 g'4) e'4 \finalis \forceBreak

 g'4 a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 b'4 b'4 ( d''4) b'4 b'4 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) \divisioMaxima
 a'4 ( g'4) a'4 ( b'4) b'4 b'4 b'4 b'4 \forceBreak
 b'4 b'4 b'4 \divisioMinima
 b'4 b'4 ( d''4) b'4 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) \divisioMaxima
 a'4 ( g'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 ( d''4 b'4) a'4 g'4 g'4 ( g'4 g'4) e'4 \finalis

}

altoMusic = {
b2*4/2 ~ b2*3/2 d'2*3/2 ~ d'2*4/2 ~ d'2*4/2 e'2*4/2 ~ e'2*3/2 ~ e'2*3/2 ~ e'2 d'2 c'2 b4 \divisioMaior
d'2*3/2 ~ d'2*5/2 c'2*4/2 d'2*6/2 ~ d'2 a2 b4 \divisioMaxima
e'2 ~ e'2 d'2 ~ \divisioMinima
d'4 ~ d'2*3/2 ~ d'2*3/2 e'2*3/2 ~ e'4 d'2*3/2 ~ d'4 ~ \divisioMaior
d'2 e'2 ~ e'2*5/2 d'2*3/2 c'4 ~ c'2*6/2 \divisioMaior
e'2*3/2 ~ e'2*5/2 ~ e'2 ~ e'2*3/2 ~ e'2*3/2 ~ e'2 d'2 ~ d'2*3/2 b2*4/2 ~ b2 \finalis
r2*7/2 fis'2*4/2 e'2 fis'2 \divisioMaxima
d'2 ~ d'2*5/2 ~ d'2*3/2 ~ d'2 b2*3/2 ~ b4 \finalis
g'2*4/2 fis'2*3/2 ~ fis'2*3/2 ~ \divisioMinima
fis'2 ~ fis'2*4/2 e'2 fis'2 \divisioMaxima
e'2*4/2 ~ e'2*4/2 ~ e'2*3/2 ~ \divisioMinima
e'4 fis'2*3/2 e'2 d'2 ~ \divisioMaxima
d'2*8/2 ~ d'2*3/2 ~ d'2 b2*3/2 ~ b4 \finalis
}

tenorMusic = {
g2*4/2 e2*3/2 fis2*3/2 ~ fis2*4/2 g2*4/2 ~ g2*4/2 a2*3/2 fis2*3/2 g2 ~ g2 ~ g2 ~ g4 \divisioMaior
a2*3/2 g2*5/2 ~ g2*4/2 ~ g2*6/2 a2 fis2 g4 ~ \divisioMaxima
g2 a2 ~ a2 \divisioMinima
g4 fis2*3/2 g2*3/2 ~ g2*3/2 fis4 ~ fis2*3/2 g4 ~ \divisioMaior
g2 ~ g2 ~ g2*5/2 ~ g2*3/2 ~ g4 e2*6/2 ~ \divisioMaior
e2*3/2 a2*5/2 b2 a2*3/2 g2*3/2 fis2 g2 a2*3/2 ~ a2*4/2 g2 \finalis
e'2*5/2 ~ e'2 d'2*4/2 c'2 d'2 \divisioMaxima
fis2 ~ fis2*5/2 g2*3/2 a2 ~ a2*3/2 g4 \finalis
e'2*4/2 ~ e'2*3/2 d'2*3/2 \divisioMinima
e'2 d'2*4/2 c'2 d'2 \divisioMaxima
b2*4/2 a2*4/2 g2*3/2 ~ \divisioMinima
g4 a2*3/2 fis2 ~ fis2 ~ \divisioMaxima
fis2*8/2 g2*3/2 a2 ~ a2*3/2 g4 \finalis
}

bassMusic = {
e2*4/2 d2*3/2 ~ d2*3/2 b,2*4/2 ~ b,2*4/2 c2*4/2 ~ c2*3/2 ~ c2*3/2 ~ c2 e2 ~ e2 ~ e4 \divisioMaior
b,2*3/2 ~ b,2*5/2 a,2*4/2 b,2*6/2 ~ b,2 e2 ~ e4 \divisioMaxima
c2 ~ c2 b,2 ~ \divisioMinima
b,4 ~ b,2*3/2 ~ b,2*3/2 c2*3/2 ~ c4 b,2*3/2 ~ b,4 \divisioMaior
e2 d2 c2*5/2 b,2*3/2 a,4 ~ a,2*6/2 \divisioMaior
c2*3/2 ~ c2*5/2 ~ c2 ~ c2*3/2 ~ c2*3/2 ~ c2 b,2 ~ b,2*3/2 e2*4/2 ~ e2 \finalis
r2*13/2 b2 \divisioMaxima
d2 b,2*5/2 ~ b,2*3/2 ~ b,2 e2*3/2 ~ e2*11/2 \divisioMinima
c'2 b2*4/2 ~ b2 ~ b2 \divisioMaxima
e2*4/2 ~ e2*4/2 ~ e2*3/2 ~ \divisioMinima
e4 d2*3/2 c2 b,2 ~ \divisioMaxima
b,2*8/2 ~ b,2*3/2 ~ b,2 e2*3/2 ~ e4 \finalis
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
