\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.340
%(volume.page)

global = {
 \key a \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Venite filii" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Venite filii"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Venite filii" }
    \line {}
  }
}

chantText = \lyricmode {
Ve -- ní -- _ te, 
\set stanza = " * " fí -- li -- i, _ 
au -- dí -- _ te me: _ 
ti -- mó -- rem Dó -- mi -- ni do -- cé -- bo vos. _ Ps. 
Be -- ne -- dí -- cam Dó -- mi -- num in o -- mni tém -- po -- re: 
\set stanza = " * " 
sem -- per laus e -- jus in o -- re me -- o. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   a'4 ( f'4 g'4) a'4 ( g'4) c''4 ( b'4 a'4) a'4 \divisioMinima
 a'4 ( c''4) a'4  a'4 ( g'4) a'4 ( bes'4 a'4) \divisioMaior
 f'4  a'4 ( f'4) a'4 ( bes'4) g'4 ( f'4) f'4 ( g'4 f'4 f'4) d'4 ( e'4 d'4) \divisioMaxima
 f'4 a'4 g'4 g'4 ( a'4) f'4 d'4 ( e'\prall f'4) \divisioMinima
 f'4 e'4 ( g'4 a'4 f'4) f'4 ( g'4 f'4 e'4) f'4 ( f'4 f'4) d'4 ( e'4 d'4) \finalis
 f'4 g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 ( c''4) a'4 a'4 a'4 ( g'4) g'4 ( a'4) \divisioMaxima
 g'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( a'4) a'4 a'4 a'4 a'4 ( c''4 a'4) g'4 f'4 f'4 ( g'4) a'4 \finalis
 f'4 g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 ( c''4) a'4 a'4 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) \divisioMaxima
 g'4 ( f'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 ( c''4) a'4 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) \divisioMaxima
 g'4 ( f'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 ( c''4 a'4) g'4 f'4 f'4 ( g'4) a'4 \finalis

}

altoMusic = {
r4 f'2 d'2 e'2*3/2 ~ e'4 \divisioMinima
c'2*3/2 ~ c'2 ~ c'2*3/2 ~ \divisioMaior
c'4 d'2*4/2 ~ d'2 a2*4/2 ~ a2*3/2 \divisioMaxima
r4 c'2 bes2*3/2 c'2*3/2 ~ \divisioMinima
c'4 ~ c'2*4/2 ~ c'2*4/2 a2*3/2 ~ a2*3/2 \finalis
f'2*3/2 ~ f'2 ~ f'2*4/2 e'2*4/2 d'2 e'2 \divisioMaxima
d'2*5/2 c'2 ~ c'2*3/2 ~ c'2 d'2 c'4 \finalis
f'2*4/2 e'2*3/2 ~ e'2*3/2 ~ \divisioMinima
e'2 d'2*4/2 e'2 ~ e'2 \divisioMaxima
c'2*4/2 ~ c'2*4/2 g'2*3/2 ~ \divisioMinima
g'4 f'2*3/2 ~ f'2 ~ f'2 \divisioMaxima
d'2*4/2 c'2*4/2 ~ c'2*3/2 ~ c'2 d'2 c'4 \finalis
}

tenorMusic = {
r2*3/2 b2 d'2*3/2 c'4 \divisioMinima
a2*3/2 e2 f2*3/2 ~ \divisioMaior
f4 ~ f2*4/2 g2 ~ g2*4/2 f2*3/2 \divisioMaxima
r4 f2 ~ f2*3/2 ~ f2*3/2 ~ \divisioMinima
f4 a2*4/2 g2*4/2 ~ g2*3/2 f2*3/2 \finalis
r2*3/2 e'2 d'2*4/2 c'2*4/2 bes2 c'2 \divisioMaxima
f2*5/2 ~ f2 ~ f2*3/2 e2 d2 f4 \finalis
d'2*4/2 ~ d'2*3/2 c'2*3/2 ~ \divisioMinima
c'2 bes2*4/2 c'2 ~ c'2 \divisioMaxima
bes2*4/2 a2*4/2 ~ a2*3/2 ~ \divisioMinima
a4 ~ a2*3/2 bes2 d'2 \divisioMaxima
f2*4/2 ~ f2*4/2 ~ f2*3/2 e2 d2 f4 \finalis
}

bassMusic = {
a2*3/2 ~ a2 ~ a2*3/2 ~ a4 \divisioMinima
a,2*3/2 ~ a,2 ~ a,2*3/2 ~ \divisioMaior
a,4 bes,2*4/2 ~ bes,2 d2*4/2 ~ d2*3/2 \divisioMaxima
r4 f,2 g,2*3/2 a,2*3/2 ~ \divisioMinima
a,4 ~ a,2*4/2 c2*4/2 d2*3/2 ~ d2*3/2 \finalis
r2*15/2 a2 \divisioMaxima
bes,2*5/2 f,2 a,2*3/2 ~ a,2 bes,2 f,4 \finalis
r2*10/2 \divisioMinima
r2*8/2 a2 \divisioMaxima
f2*4/2 ~ f2*4/2 e2*3/2 ~ \divisioMinima
e4 d2*3/2 ~ d2 ~ d2 \divisioMaxima
bes,2*4/2 f,2*4/2 a,2*3/2 ~ a,2 bes,2 f,4 \finalis
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
