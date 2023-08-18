\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.1
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Dominus secus mare" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Dominus secus mare"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Dominus secus mare" }
    \line {}
  }
}

chantText = \lyricmode {
Dó -- mi -- nus 
\set stanza = " * " se -- cus ma -- _ re Ga -- li -- lǽ -- _ æ 
vi -- dit du -- _ os fra -- _ tres, Pe -- trum et An -- dré -- am, _ 
et vo -- cá -- vit e -- _ _ os: 
Ve -- ní -- te post me: 
fá -- ci -- am vos fí -- _ e -- ri pi -- sca -- tó -- _ res hó -- mi -- num. Ps. 
Cœ -- li e -- nár -- rant gló -- ri -- am De -- i: 
\set stanza = " * " 
et ó -- pe -- ra má -- nu -- um e -- jus an -- nún -- ti -- at fir -- ma -- mén -- tum. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   f'4 ( e'4 f'4) d'4 ( c'4) c'4 \divisioMinima
 f'4 g'4 ( a'4)  a'4 ( g'4 f'4 g'\prall a'4 g'4) a'4 ( bes'4) a'4 a'4 a'4 a'4 ( c''4) ~ c''4 ( d''4) a'4 ( a'4 g'4) \divisioMaior
  g'4 ( bes'4 a'4 g'4) a'4 ( g'4) f'4. d'4 ( g'4 f'4) f'4 ( e'4) f'4. e'4 ( f'4 d'4) d'4 \divisioMinima
 d'4 ( f'4 g'4 a'4) g'4 g'4 g'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( g'4) g'4 ( a'4 g'4) ~ g'4 ( f'4) \divisioMaior
 f'4 ( g'4 a'4) a'4 ( f'4) f'4 ( g'4 a'4) c''4 ( c''4)  a'4 ( g'4) bes'4 ( a'4 g'4) a'4 ( f'4) f'4 \divisioMaxima
 f'4 ( a'4) a'4 g'4 f'4 ( g'4) e'4 ( f'4 g'4) \divisioMaior
 a'4 f'4 ( g'4) g'4 d'4 ( g'4 f'4) f'4 ( f'4) ~ f'4 ( f'4) d'4 ( e'4 d'4 c'4 d'4) d'4 ( c'4) \divisioMinima
 d'4 d'4 ( g'4 f'4) f'4. d'4 ( g'4 f'4) g'4 ( f'4 e'4 f'4) d'4 d'4 ( e'4 d'4) d'4 \finalis
 f'4 g'4 ( a'4) a'4 a'4 a'4 a'4 ( c''4) a'4 a'4 a'4 ( g'4) g'4 ( a'4) \divisioMaxima
 g'4 ( f'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 a'4 ( c''4 a'4) g'4 f'4 f'4 ( f'4 f'4) d'4 \finalis
  f'4 g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 ( c''4) a'4 a'4 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) \divisioMaxima
 g'4 ( f'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 ( c''4) a'4 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) \divisioMaxima
 g'4 ( f'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 ( c''4 a'4) g'4 f'4 f'4 ( f'4 f'4) d'4 \finalis

}

altoMusic = {
a2*5/2 c'4 \divisioMinima
d'2*3/2 ~ d'2 ~ d'2*4/2 ~ d'2*3/2 e'2*3/2 f'2*3/2 e'2*3/2 d'2*6/2 ~ d'2*3/4 ~ d'4 r2 bes2 a2*9/4 ~ a4 \divisioMinima
d'2*6/2 c'2 ~ c'2 a2 ~ a2*3/2 \divisioMaior
c'2*3/2 d'2 ~ d'2*3/2 c'2 ~ c'2*7/2 ~ c'4 ~ \divisioMaxima
c'2 ~ c'2*4/2 ~ c'2*3/2 ~ \divisioMaior
c'2*4/2 ~ c'2*3/2 ~ c'2 ~ c'2 a2*5/2 r2 \divisioMinima
d'4 ~ d'2*3/2 ~ d'2*3/4 ~ d'2*3/2 ~ d'2*4/2 ~ d'4 a2*3/2 ~ a4 \finalis
r4 e'2*3/2 ~ e'2 ~ e'2*4/2 d'2 c'2 ~ \divisioMaxima
c'2 ~ c'2*4/2 ~ c'2*3/2 d'2 ~ \divisioMinima
d'2*3/2 c'2*5/2 a2*3/2 ~ a4 c'4 ~ c'2*3/2 ~ c'2*3/2 ~ c'2*3/2 \divisioMinima
d'2 e'2*4/2 d'2 c'2 ~ \divisioMaxima
c'2*4/2 ~ c'2*4/2 d'2*3/2 ~ \divisioMinima
d'4 c'2*3/2 d'2 c'2 ~ \divisioMaxima
c'2*4/2 ~ c'2*4/2 ~ c'2*3/2 ~ c'2 a2*3/2 ~ a4 \finalis
}

tenorMusic = {
f2*5/2 g4 \divisioMinima
a2*3/2 ~ a2 ~ a2*4/2 g2*3/2 ~ g2*3/2 a2*3/2 c'2*3/2 bes2*6/2 a2*9/4 g2 ~ g2*9/4 f4 ~ \divisioMinima
f2*6/2 ~ f2 e2 ~ e2 f2*3/2 ~ \divisioMaior
f2*3/2 ~ f2 a2*3/2 g2 f2 g2*5/2 a4 \divisioMaxima
f2 ~ f2*4/2 a2*3/2 \divisioMaior
f2*4/2 a2*3/2 ~ a2 ~ a2 ~ a2*5/2 g2 ~ \divisioMinima
g4 a2*3/2 ~ a2*3/4 bes2*3/2 a2*4/2 f4 g2*3/2 f4 \finalis
d'4 ~ d'2*3/2 c'2 ~ c'2*4/2 bes2 c'2 \divisioMaxima
e2 f2*4/2 ~ f2*3/2 ~ f2 ~ \divisioMinima
f2*3/2 e2*5/2 f2*3/2 ~ f4 a4 g2*3/2 f2*3/2 ~ f2*3/2 ~ \divisioMinima
f2 ~ f2*4/2 ~ f2 ~ f2 \divisioMaxima
e2*4/2 f2*4/2 ~ f2*3/2 ~ \divisioMinima
f4 ~ f2*3/2 ~ f2 ~ f2 \divisioMaxima
e2*4/2 f2*4/2 ~ f2*3/2 ~ f2 ~ f2*3/2 ~ f4 \finalis
}

bassMusic = {
d2*5/2 e4 \divisioMinima
d2*3/2 e2 f2*4/2 g2*3/2 d2*3/2 ~ d2*3/2 c2*3/2 g2*6/2 d2*9/4 ~ d2 ~ d2*9/4 ~ d4 \divisioMinima
bes,2*6/2 a,2 c2 ~ c2 d2*3/2 \divisioMaior
a,2*3/2 d2 ~ d2*3/2 e2 f2 ~ f2*5/2 ~ f4 \divisioMaxima
d2 a,2*4/2 ~ a,2*3/2 ~ \divisioMaior
a,2*4/2 ~ a,2*3/2 d2 e2 f2*5/2 e2 ~ \divisioMinima
e4 f2*3/2 d2*3/4 ~ d2*3/2 ~ d2*4/2 ~ d4 ~ d2*3/2 ~ d4 \finalis
r2*6/2 a2*4/2 bes2 f2 \divisioMaxima
c2 f2*4/2 e2*3/2 d2 ~ \divisioMinima
d2*3/2 ~ d2*5/2 ~ d2*3/2 ~ d4 r2*7/2 e2*3/2 \divisioMinima
d2 c2*4/2 bes,2 f2 \divisioMaxima
c2*4/2 f2*4/2 d2*3/2 ~ \divisioMinima
d4 a,2*3/2 bes,2 f2 \divisioMaxima
c2*4/2 f,2*4/2 g,2*3/2 a,2 d2*3/2 ~ d4 \finalis
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
