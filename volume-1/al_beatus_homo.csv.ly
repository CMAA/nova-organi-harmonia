\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.109
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Beatus homo" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Beatus homo"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Beatus homo" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- ia, 
\set stanza = " * " 
al -- le -- lú -- ia. 
_ _ _ _ _ _ _ _ ℣. 
Be -- á -- _ tus ho -- _ mo qui au -- dit me, _ _ 
et qui ví -- gi -- lat ad fo -- res me -- _ _ as quo -- tí -- di -- e, 
et ob -- sér -- _ vat ad po -- stes ó -- sti -- i 
\set stanza = " * " me -- i. 
_ _ _ _ _ _ _ }

chantMusic = {
\tieDown   c'4 ( \once \tweak #'font-size #-4 d' )  d'4 ( a'4 bes'4 a'4 g'4) g'4 ( e'4 f'\prall g'4 f'4 g'4) d'4 \divisioMaior
 c'4 ( \once \tweak #'font-size #-4 d' )  d'4 ( a'4 bes'4 a'4 g'4) g'4 ( e'4 f'\prall g'4 f'4 g'4 \forceBreak
) d'4 \divisioMaior
 f'4 ( e'4 d'4 c'4) f'4. e'4 ( f'4 g'4) a'4 ( g'4 f'4) g'4 ( a'4 d'4) ~ d'4 ( c'4) f'4 ( f'4) ~ f'4 ( e'4 d'4) e'4 ( f'4 d'4) \finalis
 c'4 ( d'4 \forceBreak
)  d'4 ( a'4 bes'4 a'4 g'4) a'4 ( f'4 f'4) e'4 ( d'4) c'4 ( e'4) g'4 ( e'4 f'4) e'4 ( d'4) \divisioMinima
 f'4 f'4 ( g'4) f'4 ( e'4)  g'4 a'4 ( bes'4 g'4) ~ g'4 ( f'4) \divisioMaior \forceBreak

 a'4 ( g'4) g'4 ( c''4) c''4 ( d''4) c''4 a'4 ( g'4 a'4) \divisioMinima
 f'4  f'4 ( g'4 a'4 bes'4) a'4 ( g'4) a'4 ( g'4 f'4) g'4 ( f'4 d'4) ~ d'4 ( c'4 f'4) f'4 \divisioMinima \forceBreak

 f'4 e'4 ( f'4 g'4 a'4 g'4 f'4) g'4 ( a'4) a'4 \divisioMaxima
 d'4 f'4 d'4 ( e'\prall f'4) g'4 ( f'4 g'4) d'4 g'4 f'4 ( e'4 \forceBreak
) c'4 ( d'4) f'4 e'4 f'4 ( g'4)  g'4 ( e'4 f'\prall g'4 f'4 g'4) d'4 \divisioMaior
 f'4 ( e'4 d'4 c'4) f'4. e'4 ( f'4 g'4 a'4 g'4 f'4) g'4 ( a'4 d'4) ~ d'4 ( c'4 \forceBreak
) f'4 ( f'4) ~ f'4 ( e'4 d'4) e'4 ( f'4 d'4) \finalis

}

altoMusic = {
r4 d'4 ~ d'2 ~ d'2*3/2 c'2*3/2 ~ c'2*4/2 \divisioMaior
r4 d'4 ~ d'2 ~ d'2*3/2 c'2*3/2 a2*3/2 ~ a4 \divisioMaior
c'2*3/2 ~ c'4 a2*3/4 ~ a2*3/2 c'2*3/2 ~ c'2 d'4 ~ d'4 r4 bes2 ~ bes2*3/2 a2 ~ a4 \finalis
r4 d'4 ~ d'2*5/2 c'2*5/2 ~ c'2*5/2 a2 ~ \divisioMinima
a4 d'2 c'2 ~ c'4 d'2 c'2*3/2 \divisioMaior
e'2 ~ e'2 ~ e'2*3/2 ~ e'2*3/2 \divisioMinima
f'4 ~ f'2*4/2 c'2 ~ c'2*5/2 a2*4/2 ~ a4 ~ \divisioMinima
a4 c'2*3/2 ~ c'2*3/2 ~ c'2 ~ c'4 \divisioMaxima
a2 ~ a2*3/2 ~ a2*5/2 ~ a2 ~ a2 ~ a2 c'2 ~ c'4 a2*5/2 ~ a4 ~ \divisioMaior
a2*4/2 ~ a2*3/4 ~ a2*3/2 c'2*3/2 ~ c'2 ~ c'2*3/2 bes2 ~ bes2*3/2 a2 ~ a4 \finalis
}

tenorMusic = {
g2 a2 g2*3/2 a2*3/2 ~ a2*3/2 ~ a4 \divisioMaior
g2 f2 g2*3/2 e2*3/2 ~ e2*3/2 f4 \divisioMaior
g2*4/2 ~ g2*3/4 f2*3/2 e2*3/2 ~ e2 f2*3/2 ~ f2 g2*3/2 ~ g2 f4 \finalis
g2 f2*5/2 ~ f2*5/2 g2*5/2 f2 ~ \divisioMinima
f4 a2 g2 e4 g2 a2*3/2 ~ \divisioMaior
a2 b2 a2*3/2 c'2*3/2 ~ \divisioMinima
c'4 bes2*4/2 g2 f2*5/2 ~ f2*4/2 ~ f4 ~ \divisioMinima
f4 g2*3/2 e2*3/2 ~ e2 f4 \divisioMaxima
r2 g2*3/2 e2*5/2 f2 e2 d2 ~ d2 e4 ~ e2*5/2 f4 \divisioMaior
a2 e2 d2*3/4 e2*3/2 f2*3/2 d2 a2*3/2 bes2 g2*3/2 ~ g2 f4 \finalis
}

bassMusic = {
e2 f2 g2*3/2 r2*3/2 e2*3/2 f4 \divisioMaior
e2 d2 b,2*3/2 c2*3/2 d2*3/2 ~ d4 \divisioMaior
c2*4/2 d2*3/4 ~ d2*3/2 c2*3/2 a,2 ~ a,2*3/2 g,2 ~ g,2*3/2 d2 ~ d4 \finalis
e2 d2*5/2 a,2*5/2 ~ a,2*5/2 d2 ~ \divisioMinima
d4 c2 ~ c2 ~ c4 bes,2 a,2*3/2 \divisioMaior
c2 ~ c2 ~ c2*3/2 ~ c2*3/2 \divisioMinima
d4 ~ d2*4/2 e2 f2*5/2 e2*4/2 d4 ~ \divisioMinima
d4 c2*3/2 ~ c2*3/2 a,2 ~ a,4 \divisioMaxima
d2 ~ d2*3/2 ~ d2*5/2 ~ d2 ~ d2 ~ d2 a,2 ~ a,4 c2*5/2 d4 ~ \divisioMaior
d2 ~ d2 ~ d2*3/4 c2*3/2 a,2*3/2 ~ a,2 ~ a,2*3/2 g,2 ~ g,2*3/2 d2 ~ d4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Alleluia"
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
