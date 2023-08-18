\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.22
%(volume.page)

global = {
 \key g \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Victricem manum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Victricem manum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Victricem manum" }
    \line {}
  }
}

chantText = \lyricmode {
Vic -- trí -- cem 
\set stanza = " * " ma -- num tu -- _ am, Dó -- mi -- ne, 
lau -- da -- vé -- runt pá -- _ ri -- ter, al -- le -- lú -- ia: 
qui -- a sa -- pi -- én -- ti -- a a -- pé -- ru -- it os _ mu -- _ tum, 
et lin -- guas in -- fán -- ti -- um _ fe -- cit di -- sér -- _ tas, 
al -- le -- lú -- ia, al -- le -- _ lú -- ia. Ps. 
Can -- tá -- te Dó -- mi -- no cán -- ti -- cum no -- vum: 
\set stanza = " * " 
qui -- a mi -- ra -- bí -- li -- a fe -- cit. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   g'4 g'4 ( b'4) b'4  b'4 ( d''4) c''4 c''4 ( c''4) ~ c''4 ( a'4) a'4 c''4 ( c''4) g'4 ( b'4 a'4) a'4 \divisioMaior
 g'4 a'4 ( c''4 b'4) b'4 d''4 ( c''4 c''4) a'4 \forceBreak
 c''4 ( c''4 c''4) g'4 g'4 ( f'4 a'4) \divisioMinima
 a'4 a'4 g'4 ( a'4 f'4 g'4) e'4 \divisioMaxima
 f'4 f'4 ( f'4 f'4) e'4 ( d'4) g'4 a'4 ( g'4 \once \tweak #'font-size #-4 a' ) a'4 a'4 \divisioMinima \forceBreak

 a'4 a'4 ( b'\prall c''4) a'4 ( g'4) g'4 g'4 ( a'4) c''4 ( b'4 c''4) g'4 ( a'4) c''4 ( c''4 a'4 b'\prall c''4 g'4) g'4 \divisioMaxima
 g'4 a'4 ( \once \tweak #'font-size #-4 b' ) b'4 b'4 ( \once \tweak #'font-size #-4 a' ) c''4 ( \once \tweak #'font-size #-4 d''  \forceBreak
) d''4 ( c''4) c''4 ( c''4 c''4) a'4 ( b'4 a'4) \divisioMinima
 b'4 ( d''4) c''4 c''4 ( c''4 c''4) g'4 ( b'4) c''4 ( a'4) a'4 \divisioMaior
 b'4 ( \once \tweak #'font-size #-4 a' ) c''4 c''4 ( b'4 c''4 a'4) g'4 \divisioMinima \forceBreak

 g'4 ( \once \tweak #'font-size #-4 a' ) a'4. f'4 ( a'4 g'4) g'4 ( a'4 g'4) g'4 \finalis
 g'4 a'4 ( g'4) g'4 ( c''4) c''4 c''4 c''4 c''4 ( b'4) c''4 ( d''4) d''4 c''4 ( d''4) c''4 \divisioMaxima \forceBreak

 c''4 ( a'4) a'4 ( c''4) c''4 c''4 c''4 ( c''4 b'4) g'4 ( a'4) c''4 ( b'4) a'4 g'4 \finalis
  g'4 a'4 ( g'4) g'4 ( c''4) c''4 c''4 c''4 c''4 c''4 c''4 \divisioMinima \forceBreak

 c''4 c''4 c''4 ( b'4) c''4 ( d''4) d''4 c''4 ( d''4) c''4 \divisioMaxima
 c''4 ( a'4) a'4 ( c''4) c''4 c''4 c''4 c''4 c''4 c''4 c''4 \divisioMinima \forceBreak

 c''4 ( b'4) c''4 ( d''4) d''4 c''4 ( d''4) c''4 \divisioMaxima
 c''4 ( a'4) a'4 ( c''4) c''4 c''4 c''4 c''4 c''4 ( c''4 b'4) g'4 ( a'4) c''4 ( b'4) a'4 g'4 \finalis

}

altoMusic = {
g'4 ~ g'2*3/2 ~ g'2*3/2 e'2 ~ e'2*3/2 g'2 ~ g'2*3/2 e'4 ~ \divisioMaior
e'4 f'2*3/2 g'2*5/2 f'2*4/2 e'2*3/2 \divisioMinima
c'2 b2*4/2 c'4 \divisioMaxima
r4 a2*5/2 d'4 e'2*3/2 d'2 ~ \divisioMinima
d'4 c'2*3/2 d'2*3/2 e'2 f'2*3/2 g'2 f'2*4/2 g'2 ~ g'4 \divisioMaxima
r4 e'2 ~ e'4 g'2 ~ g'2 f'2 e'2*3/2 ~ e'2*3/2 \divisioMinima
f'2*3/2 g'2*3/2 ~ g'2 e'2 ~ e'4 ~ \divisioMaior
e'2*3/2 ~ e'2*4/2 d'4 ~ \divisioMinima
d'2 c'2*3/4 ~ c'2*3/2 ~ c'2*3/2 b4 \finalis
f'4 e'2 ~ e'2 ~ e'2*3/2 g'2 ~ g'2*3/2 ~ g'2 ~ g'4 \divisioMaxima
e'2 f'2 g'2 ~ g'2*3/2 ~ g'2*4/2 d'4 ~ d'4 f'4 e'2 ~ e'2*5/2 ~ e'2*3/2 \divisioMinima
f'2 g'2 ~ g'2*3/2 ~ g'2*3/2 \divisioMaxima
f'2 ~ f'2*6/2 g'2*3/2 ~ \divisioMinima
g'2 ~ g'2*3/2 e'2*3/2 ~ \divisioMaxima
e'2 f'2 g'2*4/2 ~ g'2*3/2 ~ g'2*4/2 d'4 ~ d'4 \finalis
}

tenorMusic = {
r4 d'2*3/2 ~ d'2*3/2 ~ d'2 c'2*3/2 ~ c'2 d'2*3/2 c'4 ~ \divisioMaior
c'4 ~ c'2*3/2 ~ c'2*5/2 ~ c'2*4/2 ~ c'2*3/2 \divisioMinima
f2 d2*4/2 e4 \divisioMaxima
r4 f2*5/2 e4 ~ e2*3/2 ~ e2 ~ \divisioMinima
e4 ~ e2*3/2 ~ e2*3/2 a2 ~ a2*3/2 c'2 d'2*4/2 ~ d'2 c'4 ~ \divisioMaxima
c'4 ~ c'2 d'4 ~ d'2 c'2 a2 ~ a2*3/2 ~ a2*3/2 ~ \divisioMinima
a2*3/2 g2*3/2 c'2 d'2 c'4 \divisioMaior
g2*3/2 ~ g2*4/2 ~ g4 \divisioMinima
d2 e2*3/4 f2*3/2 d2*3/2 ~ d4 \finalis
c'2*3/2 ~ c'2 ~ c'2*3/2 d'2 b2*3/2 f'2 e'4 \divisioMaxima
a2 ~ a2 g2 d'2*3/2 c'2*4/2 ~ c'4 b4 c'2*3/2 ~ c'2*5/2 ~ c'2*3/2 ~ \divisioMinima
c'2 d'2 b2*3/2 c'2*3/2 \divisioMaxima
d'2 c'2*6/2 ~ c'2*3/2 \divisioMinima
d'2 b2*3/2 c'2*3/2 \divisioMaxima
a2 ~ a2 g2*4/2 d'2*3/2 c'2*4/2 ~ c'4 b4 \finalis
}

bassMusic = {
g4 ~ g2*3/2 e2*3/2 a2 ~ a2*3/2 e2 ~ e2*3/2 a4 ~ \divisioMaior
a4 d2*3/2 e2*5/2 d2*4/2 c2*3/2 \divisioMinima
a,2 ~ a,2*4/2 ~ a,4 \divisioMaxima
d4 ~ d2*5/2 ~ d4 c2*3/2 b,2 ~ \divisioMinima
b,4 a,2*3/2 b,2*3/2 c2 d2*3/2 e2 d2*4/2 e2 ~ e4 \divisioMaxima
a4 ~ a2 ~ a4 e2 ~ e2 d2 a,2*3/2 c2*3/2 \divisioMinima
d2*3/2 e2*3/2 ~ e2 a2 ~ a4 \divisioMaior
e2*3/2 c2*4/2 b,4 ~ \divisioMinima
b,2 a,2*3/4 d2*3/2 g,2*3/2 ~ g,4 \finalis
r2*3/2 b2 a2*3/2 g2 ~ g2*3/2 c'2 ~ c'4 \divisioMaxima
c2 d2 e2 ~ e2*3/2 ~ e2*4/2 g4 ~ g4 r2*3/2 b2*5/2 a2*3/2 ~ \divisioMinima
a2 g2 ~ g2*3/2 e2*3/2 \divisioMaxima
d2 ~ d2*6/2 e2*3/2 \divisioMinima
g2 ~ g2*3/2 a2*3/2 \divisioMaxima
c2 d2 e2*4/2 ~ e2*3/2 ~ e2*4/2 g4 ~ g4 \finalis
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
        "VIII"
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
