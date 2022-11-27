\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.153
%(volume.page)

global = {
 \key fis \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Exaudi Domine... adjutor" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Exaudi Domine... adjutor"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Exaudi Domine... adjutor" }
    \line {}
  }
}

chantText = \lyricmode {
Ex -- áu -- di Dó -- mi -- ne 
\set stanza = " * " vo -- cem me -- am, 
qua cla -- má -- vi ad te: 
ad -- jú -- _ tor me -- us e -- _ sto, 
ne de -- re -- lín -- quas me 
ne -- que de -- spí -- ci -- as me, 
De -- us _ _ sa -- lu -- tá -- _ ris me -- us. Ps. 
Dó -- mi -- nus il -- lu -- mi -- ná -- ti -- o me -- a, 
\set stanza = " * " 
et sa -- lus me -- a: quem ti -- mé -- bo? 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   g'4 g'4 ( \once \tweak #'font-size #-4 a' ) g'4 g'4 ( fis'4) e'4 ( d'4) d'4 \divisioMinima
 e'4 ( fis'4 e'4) e'4 fis'4 ( g'4 a'4) a'4 \divisioMaior
 a'4 ( b'4) g'4 ( e'4 \forceBreak
) e'4 ( d'4) fis'4 ( e'4) g'4 ( a'4 g'4) fis'4 ( fis'4 g'4) \divisioMaxima
 e'4 ( fis'4)  a'4 ( b'4 a'4) b'4 ( c''4) b'4 b'4 ( a'4) a'4 a'4 ( b'4) d''4 ( d''4) a'4 \divisioMaior \forceBreak

 a'4 a'4 ( b'4 a'4) g'4 fis'4 ( g'4) a'4 ( b'4) g'4 \divisioMaior
 fis'4 ( g'\prall a'4 b'4) a'4 a'4 a'4 ( b'4 a'4 b'4) g'4 ( e'4) fis'4 ( a'4 fis'4 g'4) fis'4 ( e'4) \divisioMaior \forceBreak

 g'4 ( b'4 g'4 a'4) a'4. g'4 ( g'4) d'4 ( e'4 d'4) \divisioMinima
 e'4 ( fis'4 e'4) e'4 ( d'4) e'4 ( g'4 fis'4) a'4 ( a'4 b'4) g'4 ( a'4) fis'4 ( a'4 g'4 g'4) g'4 ( fis'4) \finalis \forceBreak

 b'4 ( a'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 ( a'4) a'4 ( cis''4) cis''4 b'4 ( cis''4) b'4 \divisioMaxima
 b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) b'4 b'4 b'4 \forceBreak
 a'4 ( g'4) a'4 ( b'4) a'4 fis'4 \finalis
  b'4 ( a'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 b'4 b'4 ( a'4) a'4 ( cis''4) cis''4 \forceBreak
 b'4 ( cis''4) b'4 \divisioMaxima
 b'4 ( a'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 ( a'4) a'4 ( cis''4) cis''4 b'4 ( cis''4) b'4 \divisioMaxima \forceBreak

 b'4 ( a'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 a'4 ( g'4) a'4 ( b'4) a'4 fis'4 \finalis

}

altoMusic = {
r4 e'2*3/2 d'2 b2*3/2 ~ \divisioMinima
b2*4/2 d'2*3/2 ~ d'4 ~ \divisioMaior
d'2 b2 ~ b2 ~ b2 d'2*3/2 ~ d'2 ~ d'4 \divisioMaxima
r2 d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'2*4/2 ~ d'2*4/2 ~ d'2 ~ d'2 ~ d'4 ~ \divisioMaior
d'2 ~ d'2 ~ d'2 ~ d'2*4/2 ~ d'2 ~ d'2*4/2 b2 \divisioMaior
d'2*4/2 ~ d'2*3/4 ~ d'2 ~ d'4 r2 \divisioMinima
b2*3/2 ~ b2 ~ b2*3/2 d'2*5/2 b2*4/2 d'2 \finalis
fis'2 e'2 fis'2*4/2 ~ fis'2 ~ fis'2*3/2 ~ fis'2 ~ fis'4 \divisioMaxima
d'2 e'2*3/2 fis'2 e'2 ~ e'2 cis'2 fis'2 e'2*3/2 <fis' e'>2*3/2 <fis' d'>2*3/2 \divisioMinima
g'2 fis'2 ~ fis'2*3/2 ~ fis'2 ~ fis'4 \divisioMaxima
b2 e'2 ~ e'2*4/2 d'2*3/2 \divisioMinima
cis'2 ~ cis'2*3/2 fis'2*3/2 \divisioMaxima
d'2 e'2 fis'2*3/2 ~ fis'2 e'2 ~ e'2 cis'2 \finalis
}

tenorMusic = {
r4 b2*3/2 ~ b2 fis2*3/2 \divisioMinima
g2*4/2 a2*3/2 fis4 ~ \divisioMaior
fis2 g2 fis2 g2 a2*3/2 ~ a2 b4 ~ \divisioMaxima
b2 a2*3/2 g2*3/2 fis2*3/2 e2 fis2*3/2 ~ \divisioMaior
fis4 b2*4/2 a2 fis2 g4 \divisioMaior
a2 g2 fis2 ~ fis2*4/2 g2 a2*4/2 g2 ~ \divisioMaior
g2*4/2 fis2*3/4 e2 fis2*3/2 \divisioMinima
g2*3/2 ~ g2 ~ g2*3/2 fis2*5/2 g2*4/2 b2 \finalis
d'2 cis'2 d'2*4/2 cis'2 e'2*3/2 ~ e'2 d'4 \divisioMaxima
fis2 ~ fis2*3/2 ~ fis2 b2 a2 ~ a2 d'2 cis'2*3/2 b2*3/2 ~ b2*3/2 \divisioMinima
d'2 cis'2 ~ cis'2*3/2 fis2 ~ fis4 ~ \divisioMaxima
fis2 ~ fis2 ~ fis2*4/2 ~ fis2*3/2 ~ \divisioMinima
fis2 ~ fis2*3/2 ~ fis2*3/2 ~ \divisioMaxima
fis2 ~ fis2 ~ fis2*3/2 b2 ~ b2 a2 ~ a2 \finalis
}

bassMusic = {
e4 ~ e2*3/2 b,2 ~ b,2*3/2 \divisioMinima
e2*4/2 d2*3/2 ~ d4 \divisioMaior
b,2 e2 ~ e2 ~ e2 d2*3/2 g2 ~ g4 ~ \divisioMaxima
g2 fis2*3/2 g2*3/2 d2*3/2 ~ d2 ~ d2*3/2 ~ \divisioMaior
d4 b,2*4/2 ~ b,2 ~ b,2 ~ b,4 \divisioMaior
d2 ~ d2 ~ d2 b,2*4/2 ~ b,2 ~ b,2*4/2 e2 \divisioMaior
b,2*4/2 d2*3/4 ~ d2 ~ d2*3/2 \divisioMinima
r2*3/2 fis2 e2*3/2 d2*5/2 e2*4/2 b,2 \finalis
b2 ~ b2 ~ b2*4/2 fis2 ~ fis2*3/2 b2 ~ b4 \divisioMaxima
b,2 cis2*3/2 d2 ~ d2 cis2 fis2 r2*8/2 b2*3/2 ~ \divisioMinima
b2 fis2 e2*3/2 ~ e2 d4 ~ \divisioMaxima
d2 cis2 b,2*4/2 ~ b,2*3/2 \divisioMinima
r2 e2*3/2 d2*3/2 \divisioMaxima
b,2 cis2 d2*3/2 ~ d2 ~ d2 cis2 fis2 \finalis
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
