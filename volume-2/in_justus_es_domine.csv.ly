\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.216
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Justus es Domine" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Justus es Domine"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Justus es Domine" }
    \line {}
  }
}

chantText = \lyricmode {
Ju -- stus es 
\set stanza = " * " Dó -- mi -- ne, 
et re -- ctum ju -- dí -- ci -- um tu -- um: 
fac cum ser -- vo tu -- o se -- cún -- dum _ mi -- se -- ri -- cór -- di -- am _ tu -- am. Ps. 
Be -- á -- ti im -- ma -- cu -- lá -- ti in vi -- a: 
\set stanza = " * " 
qui ám -- bu -- lant in le -- ge Dó -- mi -- ni. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown    d'4 ( a'4 bes'4) a'4 a'4  a'4 g'4 ( f'4) f'4 \divisioMaior
 f'4 g'4 ( a'4) a'4 a'4 c''4 ( c''4) g'4 ( f'4 \forceBreak
) a'4 ( f'4 a'4) a'4 ( b'\prall c''4 a'4) a'4 \divisioMaxima
 a'4 c''4 d''4 ( c''4 d''4) d''4 d''4 d''4 ( e''4) \divisioMinima
 c''4 a'4 ( c''4) c''4 ( c''4) ~ c''4 ( a'4 \forceBreak
) f'4 g'4 f'4 ( e'4) f'4 ( a'4 g'4) f'4 g'4 ( f'4) ~ f'4 ( e'4) d'4 ( e'4 f'4 e'4 d'4 e'4) e'4 ( d'4) \finalis
 f'4 g'4 ( a'4) a'4 a'4 \forceBreak
 a'4 a'4 a'4 ( c''4) a'4 a'4 a'4 ( g'4) g'4 ( a'4) \divisioMaxima
 g'4 ( f'4) g'4 ( a'4) a'4 a'4 a'4 a'4 ( c''4 a'4) g'4 f'4 \forceBreak
 f'4 ( f'4 f'4) d'4 \finalis
  f'4 g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 ( c''4) a'4 a'4 \forceBreak
 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) \divisioMaxima
 g'4 ( f'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 ( c''4) a'4 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) \divisioMaxima \forceBreak

 g'4 ( f'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 ( c''4 a'4) g'4 f'4 f'4 ( f'4 f'4) d'4 \finalis

}

altoMusic = {
d'2*4/2 ~ d'4 c'4 ~ c'2 d'4 ~ \divisioMaior
d'4 e'2*4/2 ~ e'2 d'2 ~ d'2*3/2 ~ d'2*4/2 c'4 \divisioMaxima
e'2 a'2*3/2 g'2 ~ g'2 ~ \divisioMinima
g'4 f'2 ~ f'2 ~ f'2 c'2 ~ c'2 ~ c'2*5/2 ~ c'2*3/2 a2*6/2 ~ a2 \finalis
r2*3/2 f'2 ~ f'2 e'2 ~ e'2 d'2 <e' d'>4 c'4 \divisioMaxima
d'2 ~ d'2*3/2 f'2 e'2*3/2 d'2 bes2*3/2 a4 r2*4/2 f'2*3/2 ~ f'2*3/2 ~ \divisioMinima
f'2 e'2 ~ e'2 d'2 <e' d'>4 c'4 \divisioMaxima
d'2 ~ d'2 ~ d'2*4/2 f'2*3/2 ~ \divisioMinima
f'4 e'2*3/2 d'2 ~ d'4 c'4 \divisioMaxima
d'2 ~ d'2 c'2*3/2 d'4 e'2*3/2 d'2 bes2*3/2 a4 \finalis
}

tenorMusic = {
f2*4/2 ~ f4 a4 ~ a2 ~ a4 ~ \divisioMaior
a4 c'2*4/2 a2 ~ a2 f2*3/2 e2*4/2 ~ e4 \divisioMaxima
c'2 ~ c'2*3/2 ~ c'4 b4 ~ b2 \divisioMinima
c'4 ~ c'2 ~ c'2 a2 ~ a2 g2 f2*5/2 g2*3/2 ~ g2*6/2 f2 \finalis
r2*15/2 \divisioMaxima
bes2 b2*3/2 c'2 ~ c'2*3/2 a2 g2*3/2 f4 r2*10/2 \divisioMinima
r2*10/2 \divisioMaxima
bes2 b2 a2*4/2 ~ a2*4/2 ~ a2*3/2 d2 e2 \divisioMaxima
g2 bes2 a2*4/2 ~ a2*3/2 ~ a2 g2*3/2 f4 \finalis
}

bassMusic = {
d2*4/2 ~ d4 f4 e2 d4 ~ \divisioMaior
d4 c2*4/2 ~ c2 d2 ~ d2*3/2 a,2*4/2 ~ a,4 \divisioMaxima
a2 f2*3/2 g2 e2*3/2 ~ e2 d2 ~ d2 a,2 ~ a,2 ~ a,2*5/2 c2*3/2 d2*6/2 ~ d2 \finalis
r4 e'2 ~ e'2 d'2 ~ d'2 c'2 bes2 a2 \divisioMaxima
r2 g2*3/2 f2 c2*3/2 d2 ~ d2*3/2 ~ d4 r4 e'2*3/2 ~ e'2*3/2 d'2*5/2 ~ d'2 c'2 bes2 a2 \divisioMaxima
r2 g2 f2*4/2 d2*3/2 ~ \divisioMinima
d4 c2*3/2 bes2 a,2 \divisioMaxima
bes,2 ~ bes,2 f2*4/2 c2*3/2 d2 ~ d2*3/2 ~ d4 \finalis
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
        "I."
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
