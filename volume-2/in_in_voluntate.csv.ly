\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.243
%(volume.page)

global = {
 \key g \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"In voluntate" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "In voluntate"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "In voluntate" }
    \line {}
  }
}

chantText = \lyricmode {
In vo -- lun -- tá -- te tu -- a, 
\set stanza = " * " Dó -- mi -- ne, 
u -- ni -- vér -- sa sunt pó -- si -- ta, 
et non est qui pos -- sit re -- sí -- ste -- re vo -- lun -- tá -- ti _ tu -- æ: 
tu e -- nim fe -- cí -- sti ó -- mni -- a, _ _ 
cœ -- lum et ter -- ram, et u -- ni -- vér -- sa quæ cœ -- li ám -- bi -- tu _ _ con -- ti -- _ nén -- tur: _ _ _ 
Dó -- _ mi -- nus u -- ni -- ver -- só -- rum tu _ _ _ es. Ps. 
Be -- á -- ti im -- ma -- cu -- lá -- ti in vi -- a: 
\set stanza = " * " 
qui ám -- bu -- lant in le -- ge Dó -- mi -- ni. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   e'4 g'4 ( e'4) g'4 fis'4 ( g'4) g'4 fis'4 ( g'4) g'4 \divisioMinima
 g'4 g'4 ( g'4 g'4) fis'4 ( e'4) \divisioMaior
 d'4 e'4 ( d'4) e'4 ( \once \tweak #'font-size #-4 g' ) g'4 \forceBreak
 g'4 ( g'4 g'4) fis'4 ( a'4 g'4 fis'4) g'4 ( a'4 g'4 fis'4) fis'4 ( fis'4 g'4) \divisioMaxima
 e'4 e'4 ( a'4 b'4) a'4 a'4 g'4 ( b'4 a'4 b'4) fis'4 a'4 \forceBreak
 a'4 ( b'4 a'4 b'4) g'4 ( g'4 fis'4 g'4) g'4 ( fis'4) \divisioMinima
 g'4 ( g'4 g'4) e'4 ( g'4) g'4 ( a'4) a'4 ( g'4) ~ g'4 ( e'4) e'4 ( fis'\prall g'4 e'4) e'4 \divisioMaxima
 g'4 fis'4 ( g'4 a'\prall b'4 \forceBreak
) b'4 ( \once \tweak #'font-size #-4 a' ) a'4 a'4 ( b'4 a'4 b'4) g'4 g'4 ( a'4) g'4 ( fis'4) g'4 ( a'4 g'4) ~ g'4 ( fis'4 e'4 d'4) e'4 ( d'4) \divisioMaior
 g'4 g'4 ( g'4 g'4) g'4 ( \once \tweak #'font-size #-4 e' ) g'4 ( \once \tweak #'font-size #-4 a' ) g'4 \divisioMinima \forceBreak

 g'4 g'4 ( g'4 g'4) g'4 ( e'4) g'4 ( \once \tweak #'font-size #-4 a' ) g'4 \divisioMinima
 g'4 fis'4 ( g'4 a'\prall b'4 a'4) a'4 ( fis'4) g'4 ( a'4) g'4 fis'4 ( a'4 g'4) ~ g'4 ( fis'4 e'4 d'4) e'4 ( d'4) \divisioMinima \forceBreak

 g'4 fis'4 ( g'4) a'4 ( g'4 a'4) e'4 e'4 g'4 ( g'4) a'4 ( e'4) ~ e'4 ( d'4) \divisioMaxima
 d'4 ( e'4) g'4 ( fis'4 g'4) g'4 g'4 ( g'4 g'4) g'4 ( e'4) g'4 ( fis'4) g'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( g'4) g'4 ( b'4 a'4) \divisioMinima \forceBreak

 g'4 ( g'4 e'4) g'4 ( g'4) a'4 ( g'4 fis'4) a'4 ( g'4 fis'4) fis'4 \finalis
 b'4 ( a'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 ( a'4) a'4 ( cis''4) cis''4 b'4 ( cis''4) b'4 \divisioMaxima \forceBreak

 b'4 ( a'4) a'4 ( b'4) b'4 b'4 b'4 b'4 a'4 ( g'4) a'4 ( b'4) a'4 fis'4 \finalis
  b'4 ( a'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima \forceBreak

 b'4 b'4 b'4 ( a'4) a'4 ( cis''4) cis''4 b'4 ( cis''4) b'4 \divisioMaxima
 b'4 ( a'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima \forceBreak

 b'4 ( a'4) a'4 ( cis''4) cis''4 b'4 ( cis''4) b'4 \divisioMaxima
 b'4 ( a'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 a'4 ( g'4) a'4 ( b'4) a'4 fis'4 ( a'4 g'4 g'4) \finalis

}

altoMusic = {
e'4 ~ e'2*3/2 ~ e'2*3/2 d'2 e'4 \divisioMinima
d'4 cis'2*3/2 b2*3/2 ~ b2 ~ b2*3/2 d'2*3/2 b2*4/2 a2*4/2 b2*3/2 \divisioMaxima
r4 e'2*5/2 d'2*4/2 ~ d'2 ~ d'2*4/2 b2*4/2 d'2 ~ \divisioMinima
d'2*5/2 cis'2*3/2 ~ cis'2*3/2 b2*4/2 ~ b4 \divisioMaxima
r4 d'2*4/2 ~ d'2*3/2 ~ d'2*5/2 ~ d'2 ~ d'2 b2 d'2*3/2 b2 ~ b2 \divisioMaior
r4 b2*3/2 ~ b2 e'2*3/2 ~ \divisioMinima
e'4 d'2*3/2 cis'2 b2*4/2 ~ b2*3/2 d'2 ~ d'2 ~ d'2*5/2 ~ d'2*3/2 ~ d'2 a2 ~ \divisioMinima
a4 ~ a2 ~ a2*3/2 cis'2 b2*3/2 ~ b2*3/2 ~ \divisioMaxima
b2 ~ b2*4/2 ~ b2*3/2 ~ b2 ~ b2 e'2 d'2 ~ d'2 cis'4 \divisioMinima
b2*3/2 ~ b2 ~ b2*3/2 cis'2*3/2 d'4 \finalis
fis'2 e'2 <fis' e'>2 <fis' d'<>2 fis'2 ~ fis'2*3/2 ~ fis'2 ~ fis'4 \divisioMaxima
d'2 e'2*3/2 fis'2 ~ fis'4 e'2 cis'2*3/2 d'4 fis'2 e'2*3/2 <f' e'>2*3/2 <f' d'>2*3/2 ~ \divisioMinima
<f' d'>2 fis'2 ~ fis'2*3/2 ~ fis'2 ~ fis'4 ~ \divisioMaxima
fis'2 e'2 ~ e'2*4/2 d'2*3/2 \divisioMinima
cis'2 e'2*3/2 ~ e'2 d'4 ~ \divisioMaxima
d'2 e'2 fis'2*3/2 d'2 ~ d'2 ~ d'2 ~ d'4 e'2*4/2 \finalis
}

tenorMusic = {
r2*7/2 b2 ~ b4 ~ \divisioMinima
b4 a2*3/2 g2 ~ \divisioMaior
g4 fis2 e2*3/2 d2*3/2 ~ d2*4/2 ~ d2*4/2 ~ d2*3/2 \divisioMaxima
r4 g2*5/2 ~ g2*4/2 a2 fis2*4/2 g2*4/2 b2 \divisioMinima
e2*5/2 ~ e2*3/2 a2*3/2 ~ a2*4/2 g4 \divisioMaxima
r4 a2*4/2 g2*3/2 fis2*5/2 e2 d2 r2 a2*3/2 g2 fis2 ~ \divisioMaior
fis4 e2*3/2 ~ e2 ~ e2*3/2 ~ \divisioMinima
e4 ~ e2*3/2 ~ e2 ~ e2*3/2 ~ \divisioMinima
e4 d2*3/2 ~ d2 fis2 b2*5/2 a2*3/2 g2 fis2 \divisioMinima
e4 d2 e2*3/2 ~ e2 ~ e2*3/2 fis2*3/2 \divisioMaxima
g2 ~ g2*4/2 ~ g2*3/2 e2 ~ e2 ~ e2 ~ e2 ~ e2 ~ e4 ~ \divisioMinima
e2*3/2 ~ e2 d2*3/2 e2*3/2 fis4 \finalis
r2*8/2 cis'2 e'2*3/2 ~ e'2 d'4 \divisioMaxima
fis2 ~ fis2*3/2 ~ fis2 b4 ~ b2 ~ b2*3/2 ~ b4 r2*8/2 b2*3/2 ~ \divisioMinima
b2 cis'2 e'2*3/2 ~ e'2 d'4 \divisioMaxima
fis2 ~ fis2 ~ fis2*4/2 ~ fis2*3/2 ~ \divisioMinima
fis2 ~ fis2*3/2 ~ fis2 ~ fis4 ~ \divisioMaxima
fis2 ~ fis2 ~ fis2*3/2 ~ fis2 e2 fis2 b4 ~ b2*4/2 \finalis
}

bassMusic = {
r2*4/2 b2*3/2 ~ b2 e4 ~ \divisioMinima
e4 ~ e2*3/2 ~ e2 ~ \divisioMaior
e4 ~ e2 ~ e2*3/2 b,2*3/2 ~ b,2*4/2 d2*4/2 g,2*3/2 \divisioMaxima
r4 cis2*5/2 b,2*4/2 d2 ~ d2*4/2 e2*4/2 b,2 ~ \divisioMinima
b,2*5/2 a,2*3/2 ~ a,2*3/2 e2*4/2 ~ e4 \divisioMaxima
r4 d2*4/2 ~ d2*3/2 ~ d2*5/2 ~ d2 ~ d2 e2 ~ e2*3/2 ~ e2 b,2 \divisioMaior
e4 ~ e2*3/2 d2 cis2*3/2 ~ \divisioMinima
cis4 b,2*3/2 a,2 e,2*3/2 ~ \divisioMinima
e,4 b,2*3/2 ~ b,2 ~ b,2 ~ b,2*5/2 d2*3/2 ~ d2 ~ d2 ~ \divisioMinima
d4 ~ d2 cis2*3/2 a,2 e2*3/2 b,2*3/2 \divisioMaxima
r2 fis2*4/2 e2*3/2 ~ e2 d2 cis2 b,2 a,2 ~ a,4 \divisioMinima
e,2*3/2 e2 b,2*3/2 ~ b,2*3/2 ~ b,4 \finalis
d'2 cis'2 b2 ~ b2 fis2 ~ fis2*3/2 b2 ~ b4 \divisioMaxima
b,2 cis2*3/2 d2 ~ d4 e2 ~ e2*3/2 b,4 d'2 cis'2*3/2 b2*3/2 ~ b2*3/2 \divisioMinima
r2 fis2 ~ fis2*3/2 b2 ~ b4 \divisioMaxima
d2 cis2 b,2*4/2 ~ b,2*3/2 \divisioMinima
fis,2 ~ fis,2*3/2 b,2 ~ b,4 ~ \divisioMaxima
b,2 cis2 d2*3/2 b,2 ~ b,2 ~ b,2 ~ b,4 e2*4/2 \finalis
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
