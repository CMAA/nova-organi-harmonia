\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.122
%(volume.page)

global = {
 \key a \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Ego autem in Domino gaudebo" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Ego autem in Domino gaudebo"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Ego autem in Domino gaudebo" }
    \line {}
  }
}

chantText = \lyricmode {
E -- go au -- tem 
\set stanza = " * " in Dó -- _ mi -- no _ gau -- dé -- _ bo: 
et ex -- sul -- tá -- bo _ in De -- _ o Je -- su me -- o: _ 
De -- us Dó -- mi -- nus 
for -- ti -- tú -- do _ me -- a. Ps. 
Ex -- sul -- tá -- te De -- o ad -- ju -- tó -- ri no -- stro: 
\set stanza = " * " 
ju -- bi -- lá -- te De -- o Ja -- cob. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   f'4 g'4 ( a'4) a'4 a'4 \divisioMinima
 a'4 a'4 c''4 ( c''4 c''4) a'4 ( g'4)  g'4 ( bes'4 a'4) bes'4 ( g'4 f'4) a'4 ( \once \tweak #'font-size #-4 g' ) a'4 c''4 ( c''4 c''4) b'4 ( a'4) \divisioMaior
 c''4 c''4 ( c''4 c''4) a'4 c''4 c''4 ( c''4) ~ c''4 ( c''4 c''4) \divisioMinima
 a'4  f'4 ( a'4) bes'4 ( a'4 f'4 g'4) f'4 a'4 a'4 ( g'4) a'4 ( g'4 f'4 e'4 f'\prall g'4 f'4 g'4) f'4 ( g'4) a'4 ( g'4) \divisioMaxima
 a'4 a'4 ( g'4) a'4 ( c''4) a'4 g'4 ( a'4 g'4) \divisioMaior
 f'4 ( \once \tweak #'font-size #-4 d' ) f'4 f'4 ( a'4 g'4) g'4 ( a'4 f'4) g'4 ( f'4 e'4) d'4 ( e'\prall f'4 e'4 f'4) e'4 ( d'4) \finalis
 f'4 g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 ( c''4) a'4 a'4 ( g'4) g'4 ( a'4) \divisioMaxima
 g'4 ( f'4) g'4 ( a'4) a'4 a'4 ( c''4 a'4) g'4 f'4 f'4 ( g'4) a'4 \finalis
  f'4 g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 ( c''4) a'4 a'4 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) \divisioMaxima
 g'4 ( f'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 ( c''4) a'4 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) \divisioMaxima
 g'4 ( f'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 ( c''4 a'4) g'4 f'4 f'4 ( g'4) a'4 \finalis

}

altoMusic = {
f'4 ~ f'2 e'2 ~ \divisioMinima
e'2 ~ e'2*3/2 d'2 ~ d'2*3/2 ~ d'2*3/2 e'2 ~ e'4 ~ e'2*3/2 ~ e'2 ~ \divisioMaior
e'4 a'2*3/2 ~ a'4 g'4 ~ g'2 e'2*3/2 ~ \divisioMinima
e'4 d'2 ~ d'2*5/2 c'4 d'2 ~ d'2*3/2 c'2 ~ c'2*3/2 ~ c'2 ~ c'2 ~ \divisioMaxima
c'4 d'2 c'2*3/2 ~ c'2*3/2 \divisioMaior
a2*3/2 d'2*3/2 c'2*3/2 ~ c'2*3/2 a2*5/2 ~ a2 \finalis
r4 e'2 f'2 g'2*4/2 f'2*3/2 e'2 ~ e'2 \divisioMaxima
d'2 ~ d'2 ~ d'4 ~ d'2*3/2 ~ d'2 ~ d'2 c'4 r4 f'2*3/2 g'2*3/2 f'2*3/2 ~ \divisioMinima
f'2 e'2*4/2 d'2 e'2 \divisioMaxima
c'2 ~ c'2 ~ c'2*4/2 ~ c'2*3/2 ~ \divisioMinima
c'4 ~ c'2*3/2 d'2 c'2 ~ \divisioMaxima
c'2*4/2 ~ c'2*4/2 ~ c'2*3/2 ~ c'2 d'2 c'4 \finalis
}

tenorMusic = {
d'4 ~ d'2 c'2 ~ \divisioMinima
c'2 a2*3/2 bes2 c'2*3/2 aes2*3/2 c'2 ~ c'4 e'2*3/2 d'4 c'4 ~ \divisioMaior
c'4 ~ c'2*4/2 ~ c'4 g2 ~ g2*3/2 \divisioMinima
e4 f2 ~ f2*5/2 ~ f4 ~ f2 g2*3/2 ~ g2 e2*3/2 d2 e2 \divisioMaxima
f4 ~ f2 ~ f2*3/2 e2*3/2 \divisioMaior
f2*3/2 ~ f2*3/2 ~ f2*3/2 a2*3/2 g2*5/2 f2 \finalis
d'4 ~ d'2 ~ d'2 e'2*4/2 d'2*3/2 c'2 ~ c'2 \divisioMaxima
r2 e2 f4 g2*3/2 a2 bes2 c'4 f'2*4/2 e'2*3/2 d'2*3/2 ~ \divisioMinima
d'2 c'2*4/2 bes2 c'2 \divisioMaxima
a2 g2 f2*4/2 e2*3/2 ~ \divisioMinima
e4 f2*3/2 ~ f2 ~ f2 \divisioMaxima
e2*4/2 f2*4/2 ~ f2*3/2 ~ f2 ~ f2 ~ f4 \finalis
}

bassMusic = {
r2*5/2 \divisioMinima
a2 g2*3/2 ~ g2 ~ g2*3/2 ~ g2*3/2 c'2 a4 ~ a2*3/2 ~ a2 ~ \divisioMaior
a4 f2*4/2 e4 ~ e2 c2*3/2 ~ \divisioMinima
c4 ~ c2 bes,2*5/2 a,4 bes,2 ~ bes,2*3/2 c2 ~ c2*3/2 ~ c2 ~ c2 \divisioMaxima
a,4 bes,2 a,2*3/2 c2*3/2 \divisioMaior
d2*3/2 bes,2*3/2 a,2*3/2 ~ a,2*3/2 d2*5/2 ~ d2 \finalis
r2*14/2 a2 \divisioMaxima
d2 ~ d2 ~ d4 ~ d2*3/2 ~ d2 bes,2 f4 r2*10/2 \divisioMinima
r2*8/2 a2 \divisioMaxima
a,2 ~ a,2 ~ a,2*4/2 ~ a,2*3/2 ~ \divisioMinima
a,4 ~ a,2*3/2 bes,2 f,2 \divisioMaxima
c2*4/2 f,2*4/2 g,2*3/2 a,2 bes,2 f,4 \finalis
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
