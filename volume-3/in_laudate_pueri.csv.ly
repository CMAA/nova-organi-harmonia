\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.268
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Laudate pueri" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Laudate pueri"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Laudate pueri" }
    \line {}
  }
}

chantText = \lyricmode {
Lau -- dá -- _ te 
\set stanza = " * " pú -- _ e -- ri _ Dó -- mi -- num, 
lau -- dá -- te no -- men Dó -- mi -- ni: 
qui ha -- bi -- tá -- re fa -- cit sté -- ri -- lem in do -- mo 
ma -- trem fi -- li -- ó -- _ _ rum læ -- _ tán -- tem. Ps. 
Sit no -- men Dó -- mi -- ni be -- ne -- dí -- ctum: 
\set stanza = " * " 
ex hoc nunc, et u -- sque in sǽ -- cu -- lum. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   d'4 ( \once \tweak #'font-size #-4 c' ) c'4 ( d'4) f'4 ( e'4 d'4) d'4 ( f'4) \divisioMinima
 c'4 f'4 ( f'4 f'4) f'4 f'4 ( g'4 f'4) ~ f'4 ( e'4) d'4 d'4 ( e'4 f'4 e'4 d'4 e'4) e'4 ( d'4) \divisioMaior
 d'4 d'4 ( f'4 g'4) g'4 ( f'4) f'4 ( g'4 a'4) a'4 ( g'4 a'4 g'4) f'4 f'4 ( g'4 a'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMaxima
 f'4 a'4 g'4 a'4 ( g'4 g'4) f'4 ( g'4 a'4) g'4 ( a'4 f'4 g'4) d'4 ( e'\prall f'4) \divisioMinima
 f'4 ( e'4 f'4) d'4 ( e'4) d'4 ( d'4 c'4) c'4 d'4 ( f'4) f'4 ( e'4) \divisioMaior
 f'4 ( a'4) a'4 ( b'\prall c''4) g'4 f'4 ( g'4 f'4 d'4) d'4 f'4 ( f'4) ~ f'4 ( g'4) f'4 \divisioMinima
 g'4 ( f'4) ~ f'4 ( e'4) d'4 ( e'4 f'4 e'4 d'4 e'4) e'4 ( d'4) \finalis
 f'4 g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 ( c''4) a'4 a'4 ( g'4) g'4 ( a'4) \divisioMaxima
 g'4 ( f'4) g'4 ( a'4) a'4 a'4 a'4 a'4 ( c''4 a'4) g'4 f'4 f'4 ( f'4 f'4) d'4 \finalis
  f'4 g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 ( c''4) a'4 a'4 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) \divisioMaxima
 g'4 ( f'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 ( c''4) a'4 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) \divisioMaxima
 g'4 ( f'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 ( c''4 a'4) g'4 f'4 f'4 ( f'4 f'4) d'4 \finalis

}

altoMusic = {
r2 c'2*5/2 a2*3/2 ~ a2*4/2 bes2 c'2*4/2 a2*6/2 ~ a2 ~ \divisioMaior
a4 d'4 c'2 d'2 c'2*3/2 ~ c'2*4/2 ~ c'4 d'2*4/2 ~ d'2 c'2 \divisioMaxima
r4 d'2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*4/2 ~ d'2*3/2 \divisioMinima
r2*8/2 c'4 ~ c'2 ~ c'2 ~ \divisioMaior
c'2 ~ c'2*4/2 ~ c'2*5/2 bes2 c'2 ~ c'4 ~ \divisioMinima
c'4 ~ c'2*3/2 a2*6/2 ~ a2 \finalis
r4 f'2*3/2 ~ f'2*3/2 ~ f'2*3/2 e'2*3/2 f'4 \divisioMaxima
d'2*4/2 ~ d'2*3/2 c'2*5/2 a2*3/2 ~ a4 f'4 ~ f'2*3/2 ~ f'2*3/2 e'2*3/2 ~ \divisioMinima
e'2 ~ e'2*4/2 d'2*3/2 e'4 \divisioMaxima
d'2*4/2 ~ d'2*4/2 e'2*3/2 ~ \divisioMinima
e'4 f'2*3/2 ~ f'2 ~ f'2 ~ \divisioMaxima
f'2*4/2 ~ f'2*4/2 e'2*3/2 d'2 a2*3/2 ~ a4 \finalis
}

tenorMusic = {
r2 f2*5/2 ~ f2*3/2 ~ f2*4/2 ~ f2 g2*4/2 ~ g2*6/2 f2 ~ \divisioMaior
f4 ~ f4 ~ f2 ~ f2 ~ f2*3/2 e2*4/2 f4 ~ f2*4/2 g2 a2 \divisioMaxima
f4 ~ f2 g2*3/2 a2*3/2 ~ a2*4/2 ~ a2*3/2 \divisioMinima
bes2*5/2 a2*4/2 ~ a2 ~ a2 \divisioMaior
f2 e2*4/2 d2*5/2 ~ d2 c2 f4 ~ \divisioMinima
f4 g2*3/2 ~ g2*6/2 f2 \finalis
r4 f'2*3/2 e'2*3/2 d'2*3/2 ~ d'2*3/2 ~ d'4 \divisioMaxima
bes2*4/2 a2*3/2 g2*5/2 ~ g2*3/2 f4 r4 e'2*3/2 d'2*3/2 ~ d'2*3/2 ~ \divisioMinima
d'2 c'2*4/2 bes2*3/2 c'4 \divisioMaxima
g2*4/2 f2*4/2 g2*3/2 ~ \divisioMinima
g4 a2*3/2 bes2 d'2 \divisioMaxima
bes2*4/2 a2*4/2 ~ a2*3/2 ~ a2 g2*3/2 f4 \finalis
}

bassMusic = {
r2*7/2 e2 ~ \divisioMinima
e4 d2*4/2 ~ d2 c2*4/2 d2*6/2 ~ d2 ~ \divisioMaior
d4 bes,4 ~ bes,2 ~ bes,2 a,2*3/2 ~ a,2*4/2 ~ a,4 bes,2*4/2 ~ bes,2 f2 \divisioMaxima
r4 bes,2 ~ bes,2*3/2 d2*3/2 e2*4/2 f2*3/2 \divisioMinima
g2*5/2 f2*4/2 a2 a,2 ~ \divisioMaior
a,2 ~ a,2*4/2 ~ a,2*5/2 g,2 a,2 ~ a,4 ~ \divisioMinima
a,4 c2*3/2 d2*6/2 ~ d2 \finalis
r2*14/2 \divisioMaxima
g2*4/2 f2*3/2 e2*5/2 d2*3/2 ~ d4 r2*10/2 \divisioMinima
r2*9/2 a4 \divisioMaxima
bes,2*4/2 d2*4/2 ~ d2*3/2 ~ \divisioMinima
d4 ~ d2*3/2 ~ d2 ~ d2 ~ \divisioMaxima
d2*4/2 ~ d2*4/2 ~ d2*3/2 ~ d2 ~ d2*3/2 ~ d4 \finalis
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
