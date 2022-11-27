\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.221
%(volume.page)

global = {
 \key a \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Lex Domini" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Lex Domini"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Lex Domini" }
    \line {}
  }
}

chantText = \lyricmode {
Lex Dó -- mi -- _ ni 
\set stanza = " * " ir -- re -- pre -- hen -- sí -- bi -- lis, con -- vér -- tens á -- ni -- mas, 
te -- sti -- mó -- _ ni -- um De -- i fi -- dé -- le, 
sa -- pi -- én -- ti -- am præ -- stans pár -- vu -- _ lis. Ps. 
Cœ -- li e -- nár -- rant gló -- ri -- am De -- i: 
\set stanza = " * " 
et ó -- pe -- ra má -- nu -- um e -- jus an -- nún -- ti -- at fir -- ma -- mén -- tum. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   a'4 ( g'4)  g'4 ( bes'4 a'4 g'4) a'4 ( g'4) ~ g'4 ( f'4 g'4) g'4 ( f'4) \divisioMinima
 g'4 g'4 f'4 a'4 c''4 ( c''4 d''4) c''4 c''4 \divisioMinima \forceBreak

 c''4 c''4 ( \once \tweak #'font-size #-4 d'' ) c''4 c''4 d''4 ( c''4 a'4) c''4 ( c''4) \divisioMaxima
 a'4 a'4 ( f'4 g'4) a'4 ( g'4) c''4 ( b'4 a'4) a'4 a'4 a'4 a'4 ( b'\prall c''4) a'4 \forceBreak
  f'4 ( a'4 bes'4 a'4 f'4 g'4) f'4 \divisioMaior
 f'4 a'4 ( g'4) a'4 g'4 ( f'4) f'4 f'4 ( a'4) a'4 g'4 ( a'4 g'4 e'4) f'4 ( e'4) ~ e'4 ( d'4 e'4) e'4 ( d'4) \finalis \forceBreak

 f'4 g'4 ( a'4) a'4 a'4 a'4 a'4 ( c''4) a'4 a'4 a'4 ( g'4) g'4 ( a'4) \divisioMaxima
 g'4 ( f'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima \forceBreak

 a'4 a'4 a'4 a'4 ( c''4 a'4) g'4 f'4 f'4 ( g'4) a'4 \finalis
  f'4 g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima \forceBreak

 a'4 a'4 a'4 ( c''4) a'4 a'4 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) \divisioMaxima
 g'4 ( f'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima \forceBreak

 a'4 a'4 ( c''4) a'4 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) \divisioMaxima
 g'4 ( f'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 ( c''4 a'4) g'4 f'4 f'4 ( g'4) a'4 \finalis

}

altoMusic = {
f'2 d'2*5/2 ~ d'2*4/2 ~ d'2 \divisioMinima
e'2 f'2 g'2*4/2 ~ g'4 ~ \divisioMinima
g'4 ~ g'2*3/2 ~ g'4 f'2*3/2 e'2 \divisioMaxima
f'4 ~ f'2*3/2 e'2 ~ e'2*3/2 f'2 ~ f'4 e'2*4/2 f'2 ~ f'2*4/2 ~ f'4 ~ \divisioMaior
f'4 d'2 ~ d'4 ~ d'2 c'4 ~ c'2 ~ c'4 ~ c'2*5/2 ~ c'2*4/2 a2 \finalis
d'4 e'2*3/2 f'2 e'2*4/2 d'2 e'2 \divisioMaxima
d'2 ~ d'2*4/2 ~ d'2*5/2 ~ \divisioMinima
d'4 c'2 ~ c'2*3/2 ~ c'2 d'2 ~ d'4 f'2*4/2 e'2*3/2 ~ e'2*3/2 ~ \divisioMinima
e'2 ~ e'2*4/2 d'2 e'2 \divisioMaxima
d'2*4/2 ~ d'2*4/2 ~ d'2*3/2 ~ \divisioMinima
d'4 e'2*3/2 d'2 c'2 ~ \divisioMaxima
c'2*4/2 ~ c'2*4/2 ~ c'2*3/2 ~ c'2 d'2 ~ d'4 \finalis
}

tenorMusic = {
c'2 ~ c'2*5/2 bes2*4/2 a2 \divisioMinima
d'2 ~ d'2 ~ d'2*4/2 g4 ~ \divisioMinima
g4 c'2*3/2 a4 ~ a2*3/2 ~ a2 ~ \divisioMaxima
a4 c'2*3/2 b2 a2*3/2 ~ a2 b4 c'2*4/2 ~ c'2 bes2*4/2 a4 ~ \divisioMaior
a4 f2 ~ f4 e2 f4 g2 f4 e2*5/2 g2*4/2 ~ g4 f4 \finalis
d'4 ~ d'2*3/2 ~ d'2 c'2*4/2 bes2 a2 ~ \divisioMaxima
a2 g2*4/2 f2*5/2 ~ \divisioMinima
f4 ~ f2 g2*3/2 a2 ~ a2 f4 d'2*4/2 ~ d'2*3/2 c'2*3/2 \divisioMinima
d'2 c'2*4/2 bes2 c'2 \divisioMaxima
a2*4/2 g2*4/2 f2*3/2 ~ \divisioMinima
f4 g2*3/2 e2 ~ e2 ~ \divisioMaxima
e2*4/2 f2*4/2 g2*3/2 a2 ~ a2 f4 \finalis
}

bassMusic = {
f2 g2*5/2 ~ g2*4/2 d2 ~ \divisioMinima
d2 ~ d2 e2*4/2 ~ e4 ~ \divisioMinima
e4 ~ e2*3/2 ~ e4 d2*3/2 a,2 \divisioMaxima
d4 ~ d2*3/2 ~ d2 c2*3/2 d2 ~ d4 a2*4/2 d2 ~ d2*4/2 ~ d4 ~ \divisioMaior
d4 ~ d2 bes,4 ~ bes,2 a,4 ~ a,2 ~ a,4 ~ a,2*5/2 ~ a,2*4/2 d2 \finalis
r2*14/2 \divisioMaxima
d2 ~ d2*4/2 ~ d2*5/2 ~ \divisioMinima
d4 a,2 ~ a,2*3/2 ~ a,2 d2 ~ d4 r2*10/2 \divisioMinima
bes2 a2*4/2 ~ a2 ~ a2 \divisioMaxima
d2*4/2 ~ d2*4/2 ~ d2*3/2 ~ \divisioMinima
d4 c2*3/2 bes,2 a,2 ~ \divisioMaxima
a,2*4/2 ~ a,2*4/2 ~ a,2*3/2 ~ a,2 d2 ~ d4 \finalis
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
