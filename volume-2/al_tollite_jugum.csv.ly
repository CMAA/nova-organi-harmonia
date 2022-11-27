\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.135
%(volume.page)

global = {
 \key e \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Tollite jugum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Tollite jugum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Tollite jugum" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ lú -- ia, 
\set stanza = " * " 
al -- le -- _ lú -- ia. 
_ _ _ _ _ _ _ _ _ _ _ ℣. 
Tól -- _ li -- te _ _ _ _ ju -- _ _ gum me -- um su -- per vos 
et dí -- sci -- te a _ me, _ qui -- _ a mi -- tis _ sum 
et _ _ _ _ _ _ _ _ _ hú -- _ mi -- lis Cor -- _ de, 
et in -- ve -- ni -- _ é -- tis ré -- _ _ _ _ _ _ _ _ _ _ _ _ _ qui -- em 
\set stanza = " * " 
a -- ni -- má -- bus ve -- stris. _ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   c'4 ( d'4) e'4 ( f'4 e'4 d'4.) g'4 ( f'4 e'4) d'4 ( \once \tweak #'font-size #-4 e' ) e'4 \divisioMaior
 c'4 ( d'4) e'4 ( f'4 e'4 d'4.) g'4 ( f'4 e'4) d'4 ( \once \tweak #'font-size #-4 e' ) e'4 \divisioMaior
 e'4 ( g'4 a'4) ~ a'4 ( g'4 \forceBreak
) c''4 ( g'4) a'4 ( a'4 g'4 f'4 e'4) \divisioMinima
 e'4 ( f'4 g'4) ~ g'4 ( f'4 e'4 d'4) e'4 ( c'4.) g'4 ( f'4 g'\prall a'4 g'4 f'4 e'4) ~ e'4 ( d'4) e'4 ( c'4) d'4 ( d'4 e'4) \finalis \forceBreak

 e'4 ( f'4 g'4) ~ g'4 ( f'4 e'4) d'4 ( e'4) e'4 \divisioMinima
 e'4 ( g'4 a'4) ~ a'4 ( g'4) c''4 ( g'4) a'4 ( a'4 g'4 f'4 e'4) e'4 ( f'4 g'4) ~ g'4 ( f'4 e'4 d'4 \forceBreak
) e'4 ( c'4) c'4 g'4 ( f'4 g'\prall a'4 g'4 f'4 e'4) f'4 ( e'4) d'4 ( e'4) e'4 ( f'4) f'4 e'4 e'4 \divisioMaxima
 d'4 ( g'4) g'4 ( a'4) g'4 g'4 \forceBreak
 g'4 ( a'4 c''4 a'4 g'4) a'4 ( g'4 f'4 e'4 d'4 e'4) e'4 f'4 ( e'4 d'4 c'4 d'4) \divisioMinima
 e'4 ( f'4 g'4) ~ g'4 ( f'4 e'4) f'4 ( e'4) d'4 ( e'4) e'4 ( f'4) ~ f'4 ( e'4) e'4 \divisioMaxima \forceBreak

 d'4 ( g'4 a'4) c''4 ( c''4) ~ c''4 ( b'4 g'4) a'4 ( g'4) a'4 ( b'4) \divisioMinima
 d'4 ( g'4) a'4 c''4 ( c''4) ~ c''4 ( b'4 g'4) a'4 ( g'4) a'4 ( b'4) \divisioMinima
 c''4 ( d''4) ~ d''4 ( c''4 b'4 c''4 \forceBreak
) a'4 ( g'4) a'4 ( c''4) g'4 ( a'4) ~ a'4 ( g'4) g'4 \divisioMaxima
 g'4 g'4 ( a'4) g'4 g'4 ( e'4) f'4 ( e'4 d'4 c'4) g'4 a'4 ( g'4) a'4 ( c''4) c''4 ( c''4) ~ c''4 ( b'4 g'4) a'4 ( g'4) a'4 ( b'4) \divisioMinima \forceBreak

 d'4 ( g'4) a'4 c''4 ( c''4) ~ c''4 ( b'4 g'4) a'4 ( g'4) a'4 ( b'4.) \divisioMinima
 c''4 ( d''4) ~ d''4 ( c''4 b'4 a'4 g'4.) b'4 ( c''4 d''4) ~ d''4 ( c''4) ~ c''4 ( b'4 c''4) a'4 ( g'4) g'4 \divisioMaior \forceBreak

 g'4 ( a'4 b'\prall c''4 b'4 a'4 g'4 f'4) g'4 g'4 ( a'4 g'4) f'4 ( e'4) d'4 ( e'4) e'4 \divisioMinima
 e'4 ( g'4 a'4) ~ a'4 ( g'4) c''4 ( g'4) a'4 ( a'4 g'4 f'4 e'4) \divisioMinima \forceBreak

 e'4 ( f'4 g'4) ~ g'4 ( f'4 e'4 d'4) e'4 ( c'4.) g'4 ( f'4 g'\prall a'4 g'4 f'4 e'4) ~ e'4 ( d'4) e'4 ( c'4) d'4 ( d'4 e'4) \finalis

}

altoMusic = {
c'2 ~ c'2*3/2 d'2*3/4 ~ d'2*3/2 ~ d'2 c'4 ~ \divisioMaior
c'2 a2*3/2 ~ a2*3/4 ~ a2*3/2 ~ a2 c'4 ~ \divisioMaior
c'2 ~ c'2*3/2 ~ c'2 ~ c'2*4/2 ~ c'4 \divisioMinima
a2 ~ a2*5/2 c'2*5/4 ~ c'2*3/2 ~ c'2*3/2 ~ c'2*3/2 a2 ~ a2 ~ a4 \finalis
c'2 d'2*4/2 ~ d'2 c'4 ~ \divisioMinima
c'2 e'2*3/2 ~ e'2 d'2*3/2 f'4 c'4 ~ c'2 ~ c'2*5/2 ~ c'2*3/2 ~ c'2*3/2 ~ c'2*4/2 ~ c'2 b2*3/2 c'2*3/2 ~ c'4 \divisioMaxima
d'2 ~ d'2*4/2 ~ d'2 c'2*3/2 ~ c'2*3/2 ~ c'2*4/2 a2 ~ a2*3/2 \divisioMinima
c'2 ~ c'2*4/2 ~ c'2 a2*3/2 ~ a2*3/2 c'4 \divisioMaxima
d'2*3/2 c'2 d'2*3/2 ~ d'2*4/2 ~ \divisioMinima
d'2*3/2 c'2 e'2*3/2 ~ e'2 ~ e'2*3/2 ~ e'2*5/2 ~ e'2 c'2*3/2 ~ c'2*3/2 b4 \divisioMaxima
r4 c'2*5/2 ~ c'2*5/2 ~ c'2 ~ c'2 ~ c'2 d'2*3/2 ~ d'2*4/2 ~ \divisioMinima
d'2*3/2 c'2 e'2*3/2 ~ e'2 ~ e'2*5/4 \divisioMinima
r4 e'2*3/2 ~ e'2*7/4 ~ e'2 ~ e'2 ~ e'2*4/2 d'2*3/2 \divisioMaior
c'2*3/2 ~ c'2*3/2 ~ c'2*3/2 ~ c'2*3/2 ~ c'2 b2 c'4 ~ \divisioMinima
c'2 ~ c'2*3/2 ~ c'2 ~ c'2*4/2 ~ c'4 \divisioMinima
a2 ~ a2*5/2 c'2*5/4 ~ c'2*3/2 ~ c'2*3/2 ~ c'2*3/2 a2 ~ a2 ~ a4 \finalis
}

tenorMusic = {
a2 ~ a2*3/2 ~ a2*3/4 ~ a2*3/2 ~ a2 ~ a4 \divisioMaior
g2 ~ g2*3/2 f2*3/4 e2*3/2 f2 g4 ~ \divisioMaior
g2 e2*3/2 ~ e2 f2*4/2 a4 \divisioMinima
g2 f2*5/2 g2*5/4 a2*3/2 f2*3/2 g2*3/2 ~ g2 f2 e4 \finalis
a2 ~ a2*4/2 ~ a2 ~ a4 \divisioMinima
c'2 ~ c'2*3/2 ~ c'2 ~ c'2*4/2 ~ c'4 b2 a2*5/2 ~ a2*3/2 ~ a2*3/2 ~ a2*4/2 ~ a2 ~ a2*3/2 ~ a2*3/2 ~ a4 \divisioMaxima
d2 e2*4/2 ~ e2 ~ e2*3/2 f2*3/2 g2*4/2 ~ g2 f2*3/2 \divisioMinima
g2 a2*4/2 g2 ~ g2*3/2 f2*3/2 g4 \divisioMaxima
d2*3/2 e2 g2*3/2 ~ g2*4/2 ~ \divisioMinima
g2*3/2 ~ g2 ~ g2*3/2 ~ g2 ~ g2 ~ \divisioMinima
g4 a2*5/2 e2 ~ e2*3/2 d2*3/2 ~ d4 \divisioMaxima
r4 e2*5/2 g2*5/2 ~ g2 f2 e2 g2*3/2 ~ g2*4/2 ~ \divisioMinima
g2*3/2 ~ g2 ~ g2*3/2 c'2 b2*5/4 ~ \divisioMinima
b4 a2*3/2 e2*7/4 g2 a2 g2*4/2 ~ g2*3/2 \divisioMaior
e2*3/2 ~ e2*3/2 c2*3/2 e2*3/2 f2 g2 a4 \divisioMinima
g2 e2*3/2 ~ e2 f2*4/2 g4 ~ \divisioMinima
g2 f2*5/2 g2*5/4 a2*3/2 f2*3/2 g2*3/2 ~ g2 f2 e4 \finalis
}

bassMusic = {
r2 g2*3/2 f2*3/4 d2*3/2 f2 a4 \divisioMaior
e2 d2*3/2 ~ d2*3/4 ~ d2*3/2 ~ d2 c4 \divisioMaior
b,2 ~ b,2*3/2 a,2 ~ a,2*4/2 ~ a,4 \divisioMinima
d2 ~ d2*5/2 c2*5/4 a,2*3/2 ~ a,2*3/2 ~ a,2*3/2 d2 ~ d2 a,4 \finalis
r2 d2*4/2 f2 a4 \divisioMinima
r2 b2*3/2 a2 ~ a2*4/2 c'4 r2*7/2 g2*3/2 f2*3/2 e2*4/2 d2 ~ d2*3/2 a,2*3/2 ~ a,4 \divisioMaxima
b,2 ~ b,2*4/2 a,2 ~ a,2*3/2 ~ a,2*3/2 ~ a,2*4/2 d2 ~ d2*3/2 \divisioMinima
c2 a,2*4/2 c2 d2*3/2 ~ d2*3/2 c4 \divisioMaxima
b,2*3/2 a,2 g,2*3/2 b,2*4/2 \divisioMinima
e2*3/2 ~ e2 d2*3/2 c2 b,2 ~ \divisioMinima
b,4 a,2*5/2 c2 ~ c2*3/2 g,2*3/2 ~ g,4 \divisioMaxima
r4 c2*5/2 ~ c2*5/2 a,2 ~ a,2 ~ a,2 g,2*3/2 b,2*4/2 \divisioMinima
e2*3/2 ~ e2 d2*3/2 c2 ~ c2*5/4 \divisioMinima
r4 c2*3/2 ~ c2*7/4 ~ c2 a,2 e2*4/2 b,2*3/2 ~ \divisioMaior
b,2*3/2 a,2*3/2 ~ a,2*3/2 ~ a,2*3/2 ~ a,2 ~ a,2 ~ a,4 \divisioMinima
c2 b,2*3/2 a,2 ~ a,2*4/2 c4 \divisioMinima
d2 ~ d2*5/2 c2*5/4 a,2*3/2 ~ a,2*3/2 ~ a,2*3/2 d2 ~ d2 a,4 \finalis
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
        "3"
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
