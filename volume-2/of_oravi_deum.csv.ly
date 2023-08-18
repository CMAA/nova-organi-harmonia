\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.220
%(volume.page)

global = {
 \key e \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Oravi Deum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Oravi Deum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Oravi Deum" }
    \line {}
  }
}

chantText = \lyricmode {
O -- rá -- _ _ _ _ _ _ vi 
\set stanza = " * " De -- um me -- um 
e -- go _ Dá -- ni -- el, _ di -- cens: 
Ex -- áu -- di, Dó -- mi -- ne, 
pre -- ces ser -- vi tu -- i: 
il -- lú -- mi -- na fá -- ci -- em tu -- am 
su -- _ _ per san -- ctu -- á -- _ ri -- um tu -- _ um: 
et pro -- pí -- ti -- us in -- tén -- _ de 
pó -- pu -- lum _ i -- stum, _ _ _ su -- per quem in -- vo -- cá -- tum est no -- men tu -- _ _ um, 
De -- _ _ _ _ _ _ _ _ _ _ _ _ _ us. }

chantMusic = {
\tieDown   d'4 ( f'4 d'4) e'4 ( e'4 f'4.) d'4 ( g'4 f'4) ~ f'4 ( f'4) ~ f'4 ( d'4 c'4.) d'4 ( f'4 d'4 c'4.) d'4 ( f'4 d'4) e'4 ( f'4) e'4. \divisioMinima \forceBreak

 e'4 ( f'4 g'\prall a'4) a'4 ( \once \tweak #'font-size #-4 g' ) g'4 d'4 ( d'4 f'4) \divisioMaior
 e'4 ( e'4 f'4) d'4 ( e'\prall f'4) ~ f'4 ( e'4 d'4 d'4) c'4 d'4 ( f'4 d'4) e'4. f'4 ( a'4 g'4 a'4 \forceBreak
) e'4 ( g'4 f'4 f'4) f'4. ( e'4.) \divisioMaxima
 g'4 b'4 ( b'4 c''4) g'4 a'4 g'4 ( a'4 g'4 f'4 e'4 f'4) f'4. ( e'4.) \divisioMaior
 e'4 ( f'\prall g'4 a'4) g'4 \forceBreak
 g'4 ( a'4 g'4 g'4) f'4 ( e'4) e'4 ( g'4 f'4 e'4) e'4 ( e'4 f'4.) \divisioMaxima
 d'4 d'4 ( g'4) a'4 ( g'4) g'4 a'4 ( c''4 b'4) b'4 c''4 ( d''4 c''4 c''4 \forceBreak
) a'4 ( g'4 a'\prall b'4 a'4 b'4) b'4. ( a'4.) \divisioMaior
 a'4 c''4 ( c''4) ~ c''4 ( c''4 c''4) g'4 ( a'4) e'4 ( f'4) g'4 a'4 ( g'4 a'4) c''4 ( c''4) a'4 ( g'4) g'4 ( a'4) g'4 ( b'4 a'4) ~ a'4 ( g'4) g'4 \divisioMaxima \forceBreak

 g'4 g'4 g'4 ( c''4) d''4 ( c''4) c''4 a'4  f'4 ( g'4 a'4) bes'4 ( g'4 a'4) e'4. \divisioMaior
 e'4 ( f'\prall g'4 a'4) g'4 a'4 ( g'4) a'4 ( f'4) d'4 \forceBreak
 f'4 ( d'4) f'4 ( f'4) ~ f'4 ( f'4) ~ f'4 ( \once \tweak #'font-size #-4 g' ) \divisioMinima
 c'4 ( d'4) c'4 ( \once \tweak #'font-size #-4 d' ) c'4 c'4 d'4 ( e'\prall f'4) f'4 ( g'4 f'4 e'4) f'4 ( g'4 a'4) a'4 ( g'4) \divisioMinima \forceBreak

 g'4 ( a'4 g'4) g'4 ( a'4) g'4. f'4 ( g'4) a'4 ( g'4 a'4) a'4 ( g'4) \divisioMaior
 e'4 f'4 ( a'4 g'4) a'4 ( f'4 d'4.) f'4 ( f'4) ~ f'4 ( f'4 e'4 c'4) e'4 ( g'4 e'4.) \divisioMinima \forceBreak

 g'4 a'4 ( g'4) a'4 ( f'4 d'4.) f'4 ( f'4) d'4 ( f'4) ~ f'4 ( c'4) \divisioMinima
 e'4 ( f'4) ~ f'4 ( d'4) e'4 ( f'4 g'4 f'4 e'4) e'4 \finalis

}

altoMusic = {
a2*3/2 ~ a2*7/4 d'2*3/2 ~ d'2 a2*7/4 bes2*9/4 a2 d'4 ~ d'2 c'2*3/4 ~ \divisioMinima
c'2*4/2 d'2 ~ d'4 ~ d'2 ~ d'4 \divisioMaior
c'2*3/2 d'2 c'2*3/2 a2 ~ a4 ~ a2*9/4 c'2*4/2 ~ c'2*4/2 ~ c'2*3/2 \divisioMaxima
r4 e'2*3/2 d'4 c'4 ~ c'2*4/2 a2 c'2*3/2 ~ \divisioMaior
c'2*5/2 d'2*4/2 c'2 ~ c'2*4/2 a2 ~ a2*3/4 \divisioMaxima
d'4 ~ d'2 ~ d'2*3/2 ~ d'2*4/2 c'2*4/2 b2*3/2 d'2*3/2 e'2*3/2 ~ \divisioMaior
e'4 g'2 f'2*3/2 ~ f'2 e'2*3/2 d'2*3/2 e'2*4/2 c'2*4/2 ~ c'2*3/2 b4 \divisioMaxima
r2 e'2*4/2 c'2 ~ c'2*3/2 d'2*3/2 c'2*3/4 ~ \divisioMaior
c'2*5/2 ~ c'2 a2*3/2 ~ a2 c'2 ~ c'2 ~ c'2 ~ \divisioMinima
c'4 r2*3/2 a2 d'2*3/2 ~ d'2*4/2 c'2*3/2 ~ c'2 ~ \divisioMinima
c'2*3/2 b2 c'2*3/4 ~ c'2 ~ c'2*3/2 d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'2*3/4 c'2 ~ c'2*3/2 ~ c'4 b2*7/4 ~ \divisioMinima
b4 c'2 a2*7/4 ~ a2*3/2 c'2*4/2 ~ c'2*3/2 ~ c'2 b2*3/2 c'4 \finalis
}

tenorMusic = {
f2*3/2 g2*7/4 a2*3/2 bes2 a2*7/4 g2*9/4 f2*3/2 a2 ~ a2*3/4 \divisioMinima
g2*4/2 d2 bes4 b2 a4 ~ \divisioMaior
a2*3/2 ~ a2 g2*3/2 ~ g2 e4 f2*9/4 ~ f2*4/2 a2*4/2 g2*3/2 ~ \divisioMaxima
g4 ~ g2*3/2 e2 f2*4/2 a,2 g2*3/2 \divisioMaior
a2*5/2 b2*4/2 c'2 g2*4/2 ~ g2 f2*3/4 \divisioMaxima
r4 d2 e2*3/2 f2*4/2 e2*4/2 ~ e2*3/2 g2*3/2 e2*3/2 \divisioMaior
a4 ~ a2 ~ a2*3/2 c'2 ~ c'2*3/2 b2*3/2 a2*4/2 e2*4/2 d2*3/2 ~ d4 \divisioMaxima
g2 ~ g2*4/2 ~ g2 a2*3/2 g2*3/2 ~ g2*3/4 ~ \divisioMaior
g2*5/2 f2 ~ f2*3/2 ~ f2 ~ f2 c2 d4 e4 \divisioMinima
g2 a2 e2 a2*3/2 ~ a2*4/2 ~ a2*3/2 e2 \divisioMinima
g2*3/2 ~ g2 a2*3/4 ~ a2 f2*3/2 d2 ~ \divisioMaior
d4 a2*3/2 f2*7/4 ~ f2 a2*4/2 g2*9/4 ~ g2 f2*7/4 ~ f2*3/2 ~ f2*4/2 a2*3/2 d2 ~ d2*3/2 e4 \finalis
}

bassMusic = {
d2*3/2 ~ d2*7/4 ~ d2*3/2 ~ d2 ~ d2*7/4 ~ d2*9/4 ~ d2*3/2 a.2 a,2*3/4 \divisioMinima
c2*4/2 bes,2 ~ bes,4 d2 ~ d4 \divisioMaior
a,2*3/2 bes,2 c2*3/2 d2 ~ d4 ~ d2*9/4 a,2*4/2 ~ a,2*4/2 c2*3/2 \divisioMaxima
e4 c2*3/2 b,2 a,2*6/2 c2*3/2 ~ \divisioMaior
c2*5/2 ~ c2*4/2 ~ c2 ~ c2*4/2 d2 ~ d2*3/4 \divisioMaxima
r4 b,2 ~ b,2*3/2 a,2*4/2 ~ a,2*4/2 e2*3/2 ~ e2*3/2 c2*3/2 ~ \divisioMaior
c4 e2 d2*3/2 ~ d2 c2*3/2 ~ c2*3/2 ~ c2*4/2 ~ c2*4/2 g,2*3/2 ~ g,4 \divisioMaxima
r2 c2*4/2 e2 d2*3/2 bes,2*3/2 c2*3/4 ~ \divisioMaior
c2*5/2 f2 e2*3/2 df2 a,2 ~ a,2 c2 \divisioMinima
e2 a2*4/2 f2*3/2 d2*4/2 a,2*3/2 c2 \divisioMinima
e2*3/2 ~ e2 ~ e2*3/4 d2 ~ d2*3/2 b,2 ~ \divisioMaior
b,4 d2*3/2 ~ d2*7/4 a,2 ~ a,2*4/2 e2*9/4 ~ e2 ~ e2*7/4 d2*3/2 a,2*4/2 ~ a,2*3/2 ~ a,2 ~ a,2*3/2 ~ a,4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Offertory"
        "IV."
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
