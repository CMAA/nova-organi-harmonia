\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.219
%(volume.page)

global = {
 \key e \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Ego autem cum justitia" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Ego autem cum justitia"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Ego autem cum justitia" }
    \line {}
  }
}

chantText = \lyricmode {
E -- go au -- tem 
\set stanza = " * " cum ju -- stí -- _ ti -- a ap -- _ pa -- ré -- bo 
in con -- spé -- _ ctu tu -- o: _ 
sa -- ti -- á -- bor, 
dum ma -- ni -- fe -- stá -- bi -- tur gló -- ri -- a tu -- a. _ Ps. 
Ex -- áu -- di Dó -- mi -- ne ju -- stí -- ti -- am me -- am: 
\set stanza = " * " 
in -- tén -- de de -- pre -- ca -- ti -- ó -- nem me -- am. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   g'4 a'4 ( b'4) b'4 b'4 \divisioMinima
 b'4 b'4 b'4 d''4 ( d''4 d''4) b'4 ( a'4) a'4  cis''4 ( b'4) cis''4 ( a'4) g'4 g'4 ( a'4 b'4) b'4 \divisioMaior \forceBreak

 g'4 g'4  b'4 ( g'4) b'4 ( cis''4 a'4) g'4 g'4 ( fis'4) g'4 ( g'4 g'4) e'4 ( fis'4 e'4) \divisioMaxima
 g'4 b'4  a'4 ( b'4 cis''4 a'4 g'4 f'4 g'\prall a'4 g'4 a'4) a'4 ( g'4) \divisioMaior \forceBreak

 g'4 g'4 g'4 g'4 a'4 g'4 a'4 ( b'4) b'4 a'4 ( g'4) g'4 g'4 ( fis'4) g'4 ( g'4 g'4) e'4 ( fis'4 e'4) \finalis \forceBreak

 g'4 a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 ( d''4) b'4 b'4 b'4 ( a'4) a'4 ( b'4) \divisioMaxima
 a'4 ( \once \tweak #'font-size #-4 g' ) a'4 ( b'4) b'4 b'4 b'4 b'4 \forceBreak
 b'4 ( d''4 b'4) a'4 g'4 g'4 ( g'4 g'4) e'4 \finalis
  g'4 a'4 b'4 b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 b'4 \forceBreak
 b'4 d''4 b'4 b'4 b'4 \once \tweak #'font-size #-4 a'  a'4 b'4 \divisioMaxima
 a'4 g'4 a'4 b'4 b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 b'4 d''4 \forceBreak
 b'4 b'4 \once \tweak #'font-size #-4 a'  a'4 b'4 \divisioMaxima
 a'4 g'4 a'4 b'4 b'4 b'4 b'4 b'4 b'4 d''4 b'4 a'4 g'4 g'4 g'4 g'4 e'4 \finalis

}

altoMusic = {
r4 e'2 ~ e'2 \divisioMinima
fis'2 d'4 ~ d'2*3/2 e'2 ~ e'4 ~ e'2*5/2 d'2*3/2 ~ d'4 ~ \divisioMaior
d'2 e'2 ~ e'2*4/2 d'2 b2*3/2 ~ b2 ~ b4 \divisioMaxima
d'2 e'2*5/2 ~ e'2*5/2 ~ e'2 ~ \divisioMaior
e'4 b2*3/2 e'2 ~ e'2 d'4 ~ d'2 ~ d'4 ~ d'2 b2*3/2 ~ b2*3/2 \finalis
e'4 fis'2*3/2 g'2*4/2 fis'2*4/2 e'2 fis'2 \divisioMaxima
d'2 ~ d'2*6/2 ~ d'2*3/2 ~ d'2 b2*3/2 ~ b4 g'2*4/2 fis'2*3/2 ~ fis'2*3/2 ~ \divisioMinima
fis'2 ~ fis'2*4/2 e'2 fis'2 \divisioMaxima
e'2*4/2 ~ e'2*4/2 ~ e'2*3/2 ~ \divisioMinima
e'4 fis'2 ~ fis'4 e'2 d'2 ~ \divisioMaxima
d'2*4/2 ~ d'2*4/2 ~ d'2*3/2 ~ d'2 b2*3/2 ~ b4 \finalis
}

tenorMusic = {
r4 fis2 g2 \divisioMinima
fis2 ~ fis4 g2*3/2 e2 fis4 g2*5/2 ~ g2*3/2 fis4 \divisioMaior
g2 ~ g2 ~ g2*4/2 ~ g2 ~ g2*3/2 a2 g4 ~ \divisioMaxima
g2 ~ g2*5/2 a2*5/2 b2 ~ \divisioMaior
b4 e2*3/2 ~ e2 fis2 ~ fis4 g2 a4 b2 a2*3/2 g2*3/2 \finalis
e'4 ~ e'2*3/2 ~ e'2*4/2 d'2*4/2 c'2 b2 \divisioMaxima
fis2 g2*6/2 a2*3/2 b2 a2*3/2 g4 e'2*4/2 ~ e'2*3/2 d'2*3/2 \divisioMinima
e'2 d'2*4/2 c'2 d'2 \divisioMaxima
b2*4/2 a2*4/2 g2*3/2 ~ \divisioMinima
g4 a2 ~ a4 fis2 ~ fis2 ~ \divisioMaxima
fis2*4/2 g2*4/2 a2*3/2 b2 a2*3/2 g4 \finalis
}

bassMusic = {
e4 ~ e2 ~ e2 \divisioMinima
d2 b,4 ~ b,2*3/2 c2 ~ c4 a,2*5/2 b,2*3/2 ~ b,4 \divisioMaior
e2 d2 c2*4/2 b,2 e2*3/2 ~ e2 ~ e4 \divisioMaxima
b,2 c2*5/2 ~ c2*5/2 e2 ~ \divisioMaior
e4 d2*3/2 c2 ~ c2 b,4 ~ b,2 ~ b,4 ~ b,2 e2*3/2 ~ e2*3/2 \finalis
r2*16/2 \divisioMaxima
b,2 ~ b,2*6/2 ~ b,2*3/2 ~ b,2 e2*3/2 ~ e4 r2*10/2 \divisioMinima
c'2 b2*4/2 ~ b2 ~ b2 \divisioMaxima
e2*4/2 ~ e2*4/2 ~ e2*3/2 ~ \divisioMinima
e4 d2 ~ d4 c2 b,2 ~ \divisioMaxima
b,2*4/2 ~ b,2*4/2 ~ b,2*3/2 ~ b,2 e2*3/2 ~ e4 \finalis
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
