\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.91
%(volume.page)

global = {
 \key a \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Deus dum egredereris" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Deus dum egredereris"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Deus dum egredereris" }
    \line {}
  }
}

chantText = \lyricmode {
De -- us, dum e -- gre -- de -- ré -- ris 
\set stanza = " * " co -- ram pó -- pu -- lo tu -- o, 
al -- le -- _ _ lú -- ia: 
i -- ter fá -- ci -- ens e -- is, al -- le -- lú -- ia: 
há -- _ bi -- tans in il -- _ lis, 
al -- le -- lú -- ia, al -- le -- _ _ _ lú -- ia. Ps. 
Ex -- súr -- gat De -- us, et dis -- si -- pén -- tur in -- i -- mí -- ci e -- jus: 
\set stanza = " * " 
et fú -- gi -- ant, qui o -- dé -- runt e -- um, a fá -- ci -- e e -- jus. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   g'4 g'4 ( d'4) e'4 f'4 g'4 ( a'4) a'4 ( g'4) g'4 ( a'4 g'4) g'4 \divisioMinima
 g'4 a'4 ( \once \tweak #'font-size #-4 c'' ) c''4 c''4 ( c''4 c''4) g'4 a'4 ( c''4 f'4 g'4) g'4 \divisioMaior \forceBreak

 g'4 ( \once \tweak #'font-size #-4 c'' ) c''4. ~ c''4 ( c''4) ~ c''4 ( a'4) a'4 ( c''4 \tiny b' a' 4) a'4 \divisioMaxima
 g'4 a'4 c''4 c''4 d''4 d''4 g'4 \divisioMinima \forceBreak

 g'4 g'4 ( a'4 c''4) b'4 ( a'4 c''4 \tiny b' a' 4) a'4 \divisioMaxima
 c''4. ~ c''4 ( c''4 c''4) b'4 ( a'4) c''4 ( d''4 c''4) b'4 c''4 ( c''4) ~ c''4 ( \tiny a' g' 4) g'4 \divisioMaior \forceBreak

 g'4 g'4 ( a'4 c''4) b'4 ( a'4 c''4 \tiny b' a' 4) a'4 \divisioMinima
 c''4 b'4 ( g'4 a'4.)  f'4 ( g'4 a'4) bes'4 ( g'4) a'4 ( g'4) e'4 ( g'4 f'4 f'4) f'4 ( e'4) \finalis \forceBreak

 g'4 a'4 ( c''4) c''4 c''4 c''4 c''4 c''4 c''4 c''4 c''4 c''4 c''4 d''4 c''4 b'4 ( a'4) c''4 ( c''4 c''4) \divisioMaxima \forceBreak

 b'4 ( \once \tweak #'font-size #-4 g' ) a'4 ( c''4) c''4 c''4 c''4 c''4 c''4 c''4 c''4 c''4 \divisioMinima
 c''4 c''4 ( c''4 b'4) a'4 ( g'4) a'4 b'4 g'4 ( a'4) \finalis \forceBreak

 g'4 a'4 ( c''4) c''4 c''4 c''4 c''4 c''4 c''4 c''4 \divisioMinima
 c''4 c''4 d''4 c''4 c''4 b'4 ( \once \tweak #'font-size #-4 a' ) c''4 ( c''4 c''4) \divisioMaxima \forceBreak

 b'4 ( g'4) a'4 ( c''4) c''4 c''4 c''4 c''4 c''4 c''4 c''4 \divisioMinima
 c''4 d''4 c''4 b'4 ( \once \tweak #'font-size #-4 a' ) c''4 ( c''4 c''4) \divisioMaxima
 b'4 ( g'4) a'4 ( c''4 \forceBreak
) c''4 c''4 c''4 c''4 c''4 ( c''4 b'4) a'4 ( g'4) a'4 b'4 g'4 ( a'4) \finalis

}

altoMusic = {
r2*9/2 d'2*3/2 ~ d'4 \divisioMinima
e'4 f'2 g'4 ~ g'2*3/2 ~ g'4 f'2 ~ f'4 g'4 ~ g'4 \divisioMaior
e'2 f'2*3/4 g'2 e'2 ~ e'2*4/2 ~ e'4 ~ \divisioMaxima
e'2 ~ e'2*3/2 g'2 ~ \divisioMinima
g'4 e'2*3/2 ~ e'2 g'2*3/2 e'4 \divisioMaxima
g'2*3/4 f'2*3/2 e'2 f'2*4/2 g'2 e'2*3/2 d'4 ~ \divisioMaior
d'4 e'2*3/2 ~ e'2 ~ e'2*3/2 ~ e'4 ~ \divisioMinima
e'4 d'2*7/4 c'2*3/2 f'2 ~ f'2 d'2*4/2 c'2 \finalis
e'4 ~ e'2*3/2 ~ e'2*5/2 a'2*4/2 g'2 ~ g'2 e'2*3/2 ~ \divisioMaxima
e'2 ~ e'2*3/2 ~ e'2*3/2 ~ e'2*4/2 ~ \divisioMinima
e'4 f'2*3/2 e'2*4/2 ~ e'2 ~ \finalis
e'4 ~ e'2*3/2 f'2*3/2 g'2*3/2 ~ \divisioMinima
g'2 a'2*3/2 f'2 e'2*3/2 ~ \divisioMaxima
e'2 ~ e'2 ~ e'2 f'2 g'2*3/2 \divisioMinima
e'4 d'2 f'2 e'2*3/2 \divisioMaxima
d'2 c'2 e'2*3/2 g'4 f'2*3/2 e'2 d'2 ~ d'4 c'4 \finalis
}

tenorMusic = {
r2*3/2 a2 b2 c'2 ~ c'2*3/2 b4 ~ \divisioMinima
b4 c'2 ~ c'4 ~ c'2*4/2 ~ c'2*4/2 ~ c'4 ~ \divisioMaior
c'2 ~ c'2*3/4 ~ c'2 ~ c'2 d'2*4/2 c'4 \divisioMaxima
b2 a2*3/2 b2 \divisioMinima
g4 b2*3/2 c'2 d'2*3/2 c'4 ~ \divisioMaxima
c'2*3/4 ~ c'2*3/2 ~ c'2 a2*4/2 g2 c'2*3/2 b4 ~ \divisioMaior
b4 ~ b2*3/2 c'2 d'2*3/2 c'4 ~ \divisioMinima
c'4 g2*7/4 a2*3/2 g2 bes2 a2*4/2 ~ a2 \finalis
r4 c'2*3/2 ~ c'2*5/2 ~ c'2*4/2 ~ c'2 d'2 c'2*3/2 \divisioMaxima
g2 e2*3/2 a2*3/2 ~ a2*5/2 ~ a2*3/2 b2*3/2 d'4 ~ d'4 c'4 ~ \finalis
c'4 ~ c'2*3/2 ~ c'2*3/2 ~ c'2*3/2 ~ \divisioMinima
c'2 ~ c'2*3/2 ~ c'2 ~ c'2*3/2 \divisioMaxima
g2 e2 a2 ~ a2 g2*3/2 ~ \divisioMinima
g4 a2 ~ a2 ~ a2*3/2 \divisioMaxima
e2 ~ e2 a2*4/2 ~ a2*3/2 b2 g4 b4 e2 \finalis
}

bassMusic = {
r4 g2 ~ g2 ~ g2 ~ g2 ~ g2*3/2 ~ g4 ~ \divisioMinima
g4 f2 ~ f4 e2*4/2 d2*4/2 e4 \divisioMaior
c2 d2*3/4 e2 a2 ~ a2*4/2 ~ a4 ~ \divisioMaxima
a2 ~ a2*3/2 g2 ~ \divisioMinima
g4 c2*3/2 ~ c2 e2*3/2 a4 \divisioMaxima
e2*3/4 d2*3/2 c2 d2*4/2 e2 f2*3/2 g4 ~ \divisioMaior
g4 c2*3/2 ~ c2 ~ c2*3/2 ~ c4 ~ \divisioMinima
c4 e2*7/4 ~ e2*3/2 d2 ~ d2 ~ d2*4/2 a,2 \finalis
r2*4/2 a2*5/2 f2*4/2 e2 g2 a2*3/2 \divisioMaxima
e2 c2*3/2 ~ c2*3/2 a,2*4/2 ~ \divisioMinima
a,4 d2*3/2 e2*3/2 ~ e4 a2 \finalis
r4 b2*3/2 a2*3/2 e2*3/2 ~ \divisioMinima
e2 f2*3/2 d2 a2*3/2 \divisioMaxima
e2 c2 ~ c2 d2 e2*3/2 ~ \divisioMinima
e4 f2 d2 a,2*3/2 ~ \divisioMaxima
a,2 ~ a,2 ~ a,2*3/2 ~ a,4 d2*3/2 e2 ~ e4 b4 a,2 \finalis
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
        "III"
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
