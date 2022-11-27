\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.61
%(volume.page)

global = {
 \key g \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Exaudivit" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Exaudivit"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Exaudivit" }
    \line {}
  }
}

chantText = \lyricmode {
Ex -- au -- dí -- vit 
\set stanza = " * " de tem -- plo san -- cto su -- _ o vo -- cem me -- am: 
et cla -- mor me -- us in con -- spé -- _ ctu e -- jus 
in -- tro -- í -- _ vit in au -- res e -- _ jus. T.P. 
Al -- le -- _ lú -- ia, al -- le -- _ _ lú -- ia. Ps. 
Dí -- li -- gam te Dó -- mi -- ne for -- ti -- tú -- do me -- a: 
\set stanza = " * " 
Dó -- mi -- nus fir -- ma -- mén -- tum me -- um, et re -- fú -- gi -- um me -- um, et li -- be -- rá -- tor me -- us. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   e'4 g'4 ( g'4) g'4 ( a'4) a'4 \divisioMinima
 a'4 a'4 ( b'4) b'4 ( a'4) b'4 b'4 ( a'4) b'4 ( a'4) ~ a'4 ( fis'4 g'4) g'4 ( fis'4) \divisioMinima
 fis'4 ( g'4 a'\prall b'4) a'4 \forceBreak
 fis'4 ( a'4 g'4 g'4) g'4 ( fis'4) \divisioMaior
 g'4 fis'4 ( g'4 a'4) a'4 ( \once \tweak #'font-size #-4 b' ) b'4 ( a'4) a'4 ( b'4 g'4 fis'4) \divisioMinima
 fis'4 ( g'4) a'4 b'4 ( a'4 \forceBreak
) d''4 ( cis''4 d''4) b'4 ( a'4) a'4 a'4 ( b'4 a'4) \divisioMaior
 a'4 a'4 a'4 ( b'4) cis''4 ( b'4 cis''\prall d''4) b'4 ( d''4 a'4) g'4 fis'4 ( g'4 a'\prall b'4) b'4 ( a'4 \forceBreak
) a'4 ( fis'4) g'4 ( \tiny fis' e' 4) fis'4 ( e'4) \divisioMaxima
 g'4 g'4 ( b'4) cis''4 ( b'4) a'4 ( b'4 a'4) fis'4 \divisioMinima
 a'4  a'4. b'4 ( c''4 a'4 g'4) b'4 ( a'4 g'4 a'4 \forceBreak
) fis'4 ( a'4 g'4 g'4) g'4 fis'4 \finalis
 b'4 ( a'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 ( a'4) a'4 ( cis''4) cis''4 b'4 ( cis''4) b'4 \divisioMaxima \forceBreak

 b'4 ( a'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima \forceBreak

 b'4 b'4 b'4 a'4 ( g'4) a'4 ( b'4) a'4 fis'4 \finalis
  b'4 ( a'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima \forceBreak

 b'4 b'4 b'4 ( a'4) a'4 ( cis''4) cis''4 b'4 ( cis''4) b'4 \divisioMaxima
 b'4 ( a'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 ( a'4 \forceBreak
) a'4 ( cis''4) cis''4 b'4 ( cis''4) b'4 \divisioMaxima
 b'4 ( a'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 a'4 ( g'4) a'4 ( b'4) a'4 fis'4 ( a'4 g'4 g'4) \finalis

}

altoMusic = {
r4 b2 e'2 ~ e'4 ~ \divisioMinima
e'4 d'2 ~ d'2*3/2 ~ d'2*3/2 b2*4/2 d'2 ~ \divisioMinima
d'2*5/2 ~ d'2*4/2 ~ d'2 \divisioMaior
b4 ~ b2*3/2 e'2 ~ e'2 d'2*4/2 ~ \divisioMinima
d'2*3/2 ~ d'2 ~ d'2*5/2 e'4 ~ e'2*3/2 \divisioMaior
cis'2 ~ cis'2 fis'2*4/2 e'2*3/2 d'4 ~ d'2*4/2 ~ d'2 ~ d'2 b2*3/2 ~ b2 ~ \divisioMaxima
b4 d'2*4/2 e'2*3/2 ~ e'4 ~ \divisioMinima
e'4 ~ e'2*3/4 ~ e'2*4/2 d'2*4/2 ~ d'2*4/2 ~ d'2 \finalis
fis'2 ~ fis'2*4/2 ~ fis'2*4/2 ~ fis'2 ~ fis'2*3/2 ~ fis'2 ~ fis'4 ~ \divisioMaxima
fis'2 e'2*5/2 ~ e'2*6/2 d'2*5/2 ~ \divisioMinima
d'2*3/2 ~ d'2*4/2 cis'4 d'4 fis'2 ~ fis'2*3/2 ~ fis'2*3/2 ~ fis'2*3/2 ~ \divisioMinima
fis'2 ~ fis'2 ~ fis'2*3/2 ~ fis'2 ~ fis'4 ~ \divisioMaxima
fis'2 e'2 d'2*4/2 cis'2 d'4 \divisioMinima
e'2 ~ e'2*3/2 fis'2*3/2 \divisioMaxima
e'2 ~ e'2 d'2*5/2 ~ d'2*4/2 b2*5/2 \finalis
}

tenorMusic = {
e4 ~ e2 ~ e2 fis4 ~ \divisioMinima
fis4 ~ fis2 g2*3/2 fis2*3/2 g2*4/2 a2 ~ \divisioMinima
a2*5/2 g2*4/2 b2 \divisioMaior
e4 ~ e2*3/2 ~ e2 fis2 ~ fis2*4/2 \divisioMinima
a2*3/2 g2 fis2*5/2 ~ fis4 e2*3/2 \divisioMaior
fis2 ~ fis2 ~ fis2*4/2 ~ fis2*3/2 ~ fis4 a2*4/2 g2 fis2 e2*3/2 a4 g4 ~ \divisioMaxima
g4 ~ g2*4/2 ~ g2*3/2 a4 ~ \divisioMinima
a4 fis2*3/4 g2*4/2 ~ g2*4/2 a2*4/2 b2 \finalis
d'2 e'2*4/2 d'2*4/2 cis'2 e'2*3/2 ~ e'2 d'4 \divisioMaxima
fis2 ~ fis2*5/2 ~ fis2*6/2 ~ fis2*5/2 ~ \divisioMinima
fis2*3/2 g2*4/2 e4 fis4 d'2 e'2*3/2 ~ e'2*3/2 d'2*3/2 ~ \divisioMinima
d'2 cis'2 e'2*3/2 ~ e'2 d'4 \divisioMaxima
fis2 ~ fis2 ~ fis2*4/2 e2 fis4 ~ \divisioMinima
fis2 a2*3/2 fis2*3/2 ~ \divisioMaxima
fis2 e2 fis2*5/2 g2*4/2 ~ g2*5/2 \finalis
}

bassMusic = {
r4 d2 cis2 ~ cis4 ~ \divisioMinima
cis4 b,2 ~ b,2*3/2 d2*3/2 e2*4/2 d2 \divisioMinima
b,2*5/2 ~ b,2*4/2 ~ b,2 \divisioMaior
r4 d2*3/2 cis2 ~ cis2 b,2*4/2 ~ \divisioMinima
b,2*3/2 ~ b,2 ~ b,2*5/2 cis4 ~ cis2*3/2 \divisioMaior
r2 e2 d2*4/2 cis2*3/2 b,4 ~ b,2*4/2 ~ b,2 ~ b,2 e2*3/2 ~ e2 ~ \divisioMaxima
e4 b,2*4/2 cis2*3/2 ~ cis4 ~ \divisioMinima
cis4 ~ cis2*3/4 ~ cis2*4/2 b,2*4/2 ~ b,2*4/2 ~ b,2 \finalis
r2 cis'2*4/2 b2*4/2 fis2 ~ fis2*3/2 b2 ~ b4 \divisioMaxima
d2 cis2*5/2 b,2*6/2 ~ b,2*5/2 ~ \divisioMinima
b,2*3/2 ~ b,2*4/2 ~ b,4 ~ b,4 r2 cis'2*3/2 b2*3/2 ~ b2*3/2 ~ \divisioMinima
b2 fis2 ~ fis2*3/2 b2 ~ b4 \divisioMaxima
d2 cis2 b,2*4/2 ~ b,2 ~ b,4 \divisioMinima
cis2 ~ cis2*3/2 d2*3/2 \divisioMaxima
cis2 ~ cis2 b,2*5/2 ~ b,2*4/2 e2*5/2 \finalis
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
