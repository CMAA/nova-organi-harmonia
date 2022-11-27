\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.37
%(volume.page)

global = {
 \key f \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Justi epulentur" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Justi epulentur"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Justi epulentur" }
    \line {}
  }
}

chantText = \lyricmode {
Ju -- sti 
\set stanza = " * " e -- pu -- lén -- tur, et ex -- súl -- tent in con -- spé -- ctu De -- i: 
de -- le -- ctén -- _ tur in læ -- tí -- ti -- a. Ps. 
Ex -- súr -- gat De -- us, et dis -- si -- pén -- tur in -- i -- mí -- ci e -- jus: 
\set stanza = " * " 
et fú -- gi -- ant qui o -- dé -- runt e -- um, a fá -- ci -- e e -- jus. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   f'4 ( f'4 g'4) f'4  g'4 ( a'4) f'4 g'4 f'4 \divisioMinima
 f'4 f'4 f'4 ( g'4 a'4) f'4 ( g'4) f'4 g'4 ( a'4 \once \tweak #'font-size #-4 g' ) a'4 f'4 f'4 ( a'4 g'4 f'4 g'4) f'4 \divisioMaxima
 f'4 g'4 ( a'4 g'4) a'4 ( f'4) a'4 ( g'4 g'4) f'4 ( g'4 f'4 d'4) \divisioMinima
 f'4 g'4 ( f'4 g'\prall a'4 f'4) f'4 f'4 ( g'4 f'4) f'4 \finalis
 f'4 ( g'4) g'4 ( f'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 g'4  bes'4 a'4 g'4 f'4 \divisioMaxima
 f'4 g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 ( c''4) g'4 \divisioMinima
 f'4 g'4 f'4 ( d'4) f'4 g'4 f'4 \finalis
  f'4 ( g'4) g'4 ( f'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 g'4  bes'4 a'4 a'4 g'4 f'4 \divisioMaxima
 f'4 g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 g'4  bes'4 a'4 g'4 f'4 \divisioMaxima
 f'4 g'4 ( a'4) a'4 ( c''4) g'4 f'4 f'4 g'4 f'4 ( d'4) f'4 g'4 f'4 \finalis

}

altoMusic = {
a2*4/2 d'2*3/2 c'2 \divisioMinima
bes2 c'2*6/2 d'2*3/2 ~ d'2 ~ d'2*5/2 c'4 ~ \divisioMaxima
c'4 ~ c'2*3/2 ~ c'2 ~ c'2*3/2 a2*4/2 \divisioMinima
d'4 ~ d'2*3/2 ~ d'2 c'4 bes2*3/2 a4 \finalis
d'2 c'2 ~ c'2 ~ c'2 ~ c'2*3/2 d'2*4/2 ~ d'2 c'2 \divisioMaxima
d'4 c'2*6/2 ~ c'2 ~ c'2*4/2 bes2*4/2 a2 d'2 ~ d'2 ~ d'2 f'2*3/2 d'2*3/2 ~ \divisioMinima
d'2 c'2*3/2 ~ c'2 ~ \divisioMaxima
c'2*3/2 d'2*4/2 e'2*3/2 ~ \divisioMinima
e'4 d'2 c'2 ~ \divisioMaxima
c'4 ~ c'2 ~ c'2*4/2 d'2 c'2*3/2 bes4 a4 \finalis
}

tenorMusic = {
f2*4/2 ~ f2*3/2 ~ f2 ~ \divisioMinima
f2 ~ f2*6/2 ~ f2*3/2 ~ f2 a2*5/2 ~ a4 ~ \divisioMaxima
a4 g2*3/2 f2 e2*3/2 f2*4/2 \divisioMinima
a4 g2*3/2 f2 ~ f4 ~ f2*3/2 ~ f4 \finalis
bes2 a2 g2 f2 ~ f2*3/2 ~ f2*4/2 ~ f2 ~ f2 ~ \divisioMaxima
f4 ~ f2*6/2 ~ f2 ~ f2*4/2 ~ f2*4/2 ~ f2 bes2 ~ bes2 ~ bes2 c'2*3/2 a2*3/2 \divisioMinima
bes2 c'2*3/2 bes4 a4 \divisioMaxima
f2*3/2 ~ f2*4/2 e2*3/2 ~ \divisioMinima
e4 f2 ~ f2 \divisioMaxima
a4 g2 f2*4/2 ~ f2 ~ f2*3/2 ~ f2 \finalis
}

bassMusic = {
d2*4/2 bes,2*3/2 a,2 \divisioMinima
g,2 a,2*6/2 bes,2*3/2 d2 ~ d2*5/2 f4 \divisioMaxima
a,4 ~ a,2*3/2 ~ a,2 c2*3/2 d2*4/2 ~ \divisioMinima
d4 ~ d2*3/2 ~ d2 a,4 f,2*3/2 ~ f,4 \finalis
r2*8/2 e2*3/2 d2*4/2 bes,2 a,2 \divisioMaxima
bes,4 a,2*6/2 f,2 a,2*4/2 g,2*4/2 f,2 r2 a2 g2 f2*3/2 ~ f2*3/2 ~ \divisioMinima
f2 ~ f2*3/2 ~ f2 \divisioMaxima
a,2*3/2 d2*4/2 c2*3/2 ~ \divisioMinima
c4 bes,2 a,2 ~ \divisioMaxima
a,4 ~ a,2 ~ a,2*4/2 bes,2 a,2*3/2 f,2 \finalis
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
