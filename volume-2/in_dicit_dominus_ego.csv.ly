\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.255
%(volume.page)

global = {
 \key g \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Dicit Dominus Ego" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Dicit Dominus Ego"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Dicit Dominus Ego" }
    \line {}
  }
}

chantText = \lyricmode {
Di -- cit Dó -- _ _ mi -- nus: 
\set stanza = " * " E -- go có -- gi -- to co -- gi -- ta -- _ _ ti -- ó -- nes pa -- _ _ cis, 
et non af -- fli -- cti -- _ ó -- nis: 
in -- vo -- cá -- _ bi -- tis me, 
et e -- go ex -- áu -- di -- am _ vos: 
et re -- dú -- cam ca -- pti -- vi -- tá -- tem ve -- _ stram 
de cun -- ctis _ lo -- cis. Ps. 
Be -- ne -- di -- xí -- sti Dó -- mi -- ne ter -- ram tu -- am: 
\set stanza = " * " 
a -- ver -- tí -- sti ca -- pti -- vi -- tá -- tem Ja -- cob. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   e'4  e'4 ( c'4 d'4) e'4 ( d'4) g'4 ( g'4) ~ g'4 ( a'4) g'4 g'4 \divisioMinima
 g'4 g'4 g'4 ( b'4 a'4) g'4 g'4 ( g'4 g'4) \divisioMinima \forceBreak

 e'4  e'4 ( c'4 d'4) e'4 ( d'4) g'4 ( g'4) ~ g'4 ( a'4) g'4 g'4 ( a'4 b'4) b'4 ( g'4) b'4 d''4 ( d''4 b'4 a'4 g'4) ~ g'4 ( a'4 g'4) g'4 \divisioMaior
 g'4 ( \once \tweak #'font-size #-4 a' ) g'4 \forceBreak
 g'4 ( \once \tweak #'font-size #-4 fis' ) a'4  a'4 ( b'4) d''4 ( b'4 a'4 b'\prall c''4 b'4 a'4) g'4 ( a'4 b'4 a'4 g'4 a'4) a'4 ( g'4) \divisioMaxima
 g'4 a'4 a'4 b'4 ( d''4 cis''4) d''4 ( d''4 d''4 \forceBreak
) b'4 ( d''4 a'4 a'4) g'4 \divisioMaior
 g'4 a'4 g'4 g'4  g'4 ( a'4 c''4) c''4 c''4 ( a'4 b'\prall c''4 b'4) c''4 ( \tiny b' a' 4) b'4 ( a'4) \divisioMaxima \forceBreak

 g'4 g'4 a'4 ( b'4) g'4 g'4 g'4 g'4 ( g'4 g'4) g'4 e'4 ( a'4) g'4 ( a'4 fis'4) g'4 ( e'4) e'4 ( d'4) \divisioMaior
 g'4 ( g'4 fis'4) a'4 ( b'4 cis''\prall d''4 \forceBreak
) b'4 ( a'4) b'4 ( a'4) g'4 ( a'4 b'4 a'4 g'4 a'4) a'4 ( g'4) \finalis
 g'4 ( a'4) a'4 ( g'4) a'4 ( b'4) b'4 b'4 b'4 b'4 a'4  c''4 b'4 a'4 g'4 \divisioMaxima \forceBreak

 g'4 a'4 ( b'4) b'4 ( d''4) a'4 g'4 g'4 a'4 g'4 ( e'4) g'4 a'4 g'4 \finalis
  g'4 ( a'4) a'4 ( g'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima \forceBreak

 b'4 a'4  c''4 b'4 b'4 a'4 g'4 \divisioMaxima
 g'4 a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 a'4  c''4 b'4 a'4 g'4 \divisioMaxima \forceBreak

 g'4 a'4 ( b'4) b'4 ( d''4) a'4 g'4 g'4 a'4 g'4 ( e'4) g'4 a'4 g'4 \finalis

}

altoMusic = {
r2*5/2 d'4 ~ d'2 c'2*3/2 d'4 ~ \divisioMinima
d'2 ~ d'2*4/2 e'2*3/2 ~ \divisioMinima
e'4 r2*4/2 d'4 ~ d'2 c'2*3/2 d'2*3/2 ~ d'2*3/2 fis'2*4/2 e'2 ~ e'2 ~ e'4 ~ \divisioMaior
e'2*3/2 d'2*3/2 ~ d'2 ~ d'2 e'2 ~ e'2*3/2 ~ e'2 fis'2*4/2 d'2 ~ \divisioMaxima
d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 fis'2*4/2 e'4 ~ \divisioMaior
e'4 ~ e'2*3/2 ~ e'2*4/2 ~ e'2*3/2 ~ e'2 ~ e'2*3/2 d'2 ~ \divisioMaxima
d'2 ~ d'2 b2*3/2 ~ b2*3/2 ~ b4 c'2 ~ c'2*3/2 ~ c'2 a2 \divisioMaior
d'2*3/2 ~ d'2*4/2 ~ d'2 b2 ~ b2 d'2*4/2 c'4 b4 \finalis
r2*3/2 g'4 ~ g'2 ~ g'2 fis'2*3/2 e'2 d'2 \divisioMaxima
g'4 ~ g'2 fis'2*3/2 e'2*3/2 ~ e'2*3/2 d'2 r2*3/2 g'4 ~ g'2 ~ g'2*3/2 ~ g'2*3/2 \divisioMinima
e'2 ~ e'2*3/2 d'2 ~ \divisioMaxima
d'4 ~ d'2 g'2*4/2 e'2*4/2 ~ e'2 ~ e'2 \divisioMaxima
r4 e'2 d'2*3/2 ~ d'2*3/2 c'2*3/2 ~ c'4 g4 \finalis
}

tenorMusic = {
r2*4/2 c'2 b2 a2*3/2 b4 ~ \divisioMinima
b2 ~ b2*4/2 ~ b2*3/2 ~ \divisioMinima
b4 g2*3/2 ~ g2 ~ g2 ~ g2*3/2 ~ g2*3/2 ~ g2*3/2 b2*4/2 ~ b2 c'2 b4 ~ \divisioMaior
b2*3/2 a2*3/2 fis2 ~ fis2 e2 a2*3/2 b2 d'2*4/2 b2 ~ \divisioMaxima
b2*3/2 g2*3/2 fis2*3/2 ~ fis2*4/2 b4 ~ \divisioMaior
b4 ~ b2*3/2 ~ b2*4/2 a2*3/2 ~ a2 g2*3/2 fis2 \divisioMaxima
g2 fis2 g2*3/2 e2*4/2 ~ e2 ~ e2*3/2 ~ e2 fis2 \divisioMaior
b2*3/2 a2*4/2 fis2 ~ fis2 g2 fis2*4/2 d2 \finalis
r2 fis'2 ~ fis'2 e'2 d'2*3/2 c'2 b2 \divisioMaxima
r4 d'2 ~ d'2*3/2 b2*3/2 c'2*3/2 ~ c'4 b4 ~ b2 c'2*4/2 d'2*3/2 ~ d'2*3/2 ~ \divisioMinima
d'2 c'2*3/2 b2 ~ \divisioMaxima
b4 ~ b2 g2*4/2 ~ g2*3/2 ~ \divisioMinima
g4 a2 b2 \divisioMaxima
r4 g2 fis2*3/2 e2*3/2 ~ e2*3/2 d2 \finalis
}

bassMusic = {
r2*12/2 \divisioMinima
g2 fis2*4/2 e2*3/2 ~ \divisioMinima
e4 ~ e2*3/2 c2 b,2 a,2*3/2 b,2*3/2 e2*3/2 d2*4/2 e2 ~ e2 ~ e4 \divisioMaior
c2*3/2 d2*3/2 ~ d2 b,2 c2 ~ c2*3/2 e2 d2*4/2 g2 \divisioMaxima
fis2*3/2 e2*3/2 b,2*3/2 d2*4/2 e4 ~ \divisioMaior
e4 d2*3/2 c2*4/2 ~ c2*3/2 a,2 ~ a,2*3/2 d2 \divisioMaxima
b,2 ~ b,2 e2*3/2 d2*3/2 c4 ~ c2 b,2*3/2 a,2 d2 \divisioMaior
e2*3/2 fis2*4/2 d2 ~ d2 e2 d2*4/2 g,2 \finalis
r2*15/2 \divisioMaxima
r4 e2 d2*3/2 e2*3/2 ~ e2*3/2 g2 ~ g2 ~ g2*4/2 ~ g2*3/2 e2*3/2 \divisioMinima
a2 ~ a2*3/2 b2 \divisioMaxima
g4 fis2 e2*4/2 d2*3/2 ~ \divisioMinima
d4 c2 e2 \divisioMaxima
r4 e2 b,2*3/2 ~ b,2*3/2 a,2*3/2 g,2 \finalis
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
