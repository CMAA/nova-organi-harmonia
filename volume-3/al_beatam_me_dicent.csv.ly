\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.335
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Beatam me dicent" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Beatam me dicent"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Beatam me dicent" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- _ _ ia. 
\set stanza = " * " 
_ _ _ _ _ _ _ _ _ _ ℣. 
Be -- á -- tam me di -- cent _ 
om -- nes ge -- ne -- ra -- ti -- ó -- _ _ _ nes, 
qui -- _ _ a _ _ an -- cíl -- lam hú -- mi -- lem 
res -- pé -- _ _ _ _ _ _ _ _ _ _ 
_ _ _ _ _ _ _ _ _ _ _ _ _ _ xit 
\set stanza = " * " 
De -- _ _ us. _ _ _ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   e'4 ( e'4 f'4) d'4 ( g'4) g'4 ( b'4 g'4) a'4 ( b'\prall c''4) ~ c''4 ( d''4) b'4 \divisioMaior
 g'4 ( a'4 b'\prall c''4 a'4.) c''4 ( a'4) b'4 ( g'4) \divisioMinima
 g'4 ( a'4 b'\prall c''4 a'4.) c''4 ( a'4) b'4 ( g'4) ~ g'4 ( e'4) \divisioMinima
 e'4 ( f'4 g'4) a'4 ( g'4 a'4 f'4 e'4) f'4 ( g'4 f'4) ~ f'4 ( e'4) \finalis
 c'4 ( d'4 e'\prall f'4 f'4) f'4 f'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( f'4)  f'4 ( g'\prall a'4 bes'4) a'4 ( bes'4 a'4 g'4) ~ g'4 ( f'4) \divisioMaior
 f'4 ( \once \tweak #'font-size #-4 g' ) f'4 f'4 f'4 a'4 ( c''4)  c''4 ( c''4 bes'4 g'4) g'4 c''4 ( c''4 c''4) d''4 ( c''4) ~ c''4 ( a'4 bes'4) bes'4 ( a'4) \divisioMaxima
 f'4 ( g'4 a'4) c''4 ( a'4) ~ a'4 ( f'4 g'4) g'4 ( \once \tweak #'font-size #-4 g' ) f'4 ( f'4) d'4 ( e'4 d'4)  d'4 f'4 ( f'4) g'4 ( a'4 g'4 f'4 g'4) g'4 g'4 ( a'4 g'4) g'4 \divisioMaior
 f'4 ( a'4)  a'4 bes'4 ( g'4) a'4 ( a'4) g'4 ( g'4) a'4 ( f'4 g'4) \divisioMinima
  g'4 ( c''4) ~ c''4 ( a'4) bes'4 ( g'4) a'4 ( a'4) g'4 ( g'4) a'4 ( f'4 g'4) \divisioMaior
  c''4 ( c''4) ~ c''4 ( a'4) bes'4 ( g'4) a'4 ( a'4) g'4 ( g'4) a'4 ( f'4 g'4) \divisioMinima
 e'4 ( f'4) g'4 ( a'4 g'4) f'4 ( f'4) e'4 ( f'4 d'4) \divisioMinima
 d'4 ( e'4 f'4.) g'4 ( a'4 g'4 f'4) ~ f'4 ( e'4) f'4 ( e'4 d'4 e'4) e'4 ( d'4) \divisioMaior
 f'4 ( f'4) g'4 ( f'4) a'4 ( g'4 a'4) a'4 ( a'4 f'4) \divisioMinima
 a'4 ( g'4) a'4 ( f'4 d'4) g'4 ( f'4 f'4) ~ f'4 ( e'4 c'4.) g'4 ( g'4 f'4) g'4 ( a'4 d'4) ~ d'4 ( c'4) d'4 ( a4) \divisioMinima
 c'4 ( d'4) f'4 ( f'4 d'4 c'4) d'4 f'4 ( f'4) g'4 ( f'4 f'4) d'4 ( e'4 d'4) \finalis

}

altoMusic = {
c'2*3/2 d'2 ~ d'2*3/2 e'2 ~ e'2*3/2 g'4 \divisioMaior
e'2*3/2 ~ e'2*5/4 ~ e'2 ~ e'2 ~ \divisioMinima
e'2*11/4 g'2*3/2 e'2*3/2 ~ \divisioMinima
e'2*3/2 ~ e'2*5/2 c'2 ~ c'2*3/2 \finalis
r2*10/2 f'2*4/2 ~ f'2*3/2 c'2 ~ c'4 \divisioMaior
d'2*5/2 ~ d'2 ~ d'2*4/2 ~ d'4 g'2*4/2 f'2*4/2 ~ f'2 \divisioMaxima
c'2*4/2 ~ c'2*4/2 a2 ~ a2 ~ a2*3/2 d'4 ~ d'2 ~ d'2*5/2 ~ d'4 ~ d'2*3/2 ~ d'4 \divisioMaior
f'2 e'2*3/2 f'2 ~ f'2*6/2 ~ f'2*3/2 ~ f'2 ~ f'2 c'2 ~ c'2 ~ c'4 g'2 f'2 ~ f'2 ~ f'2 d'2 c'2 ~ c'4 ~ \divisioMinima
c'2 ~ c'2*3/2 a2 ~ a2 ~ a4 \divisioMinima
d'2*7/4 ~ d'2*3/2 ~ d'2*3/2 c'2*4/2 a2 \divisioMaior
c'2*4/2 d'2*3/2 c'2*3/2 ~ \divisioMinima
c'2 ~ c'2*3/2 ~ c'2*3/2 ~ c'2*7/4 ~ c'2*3/2 ~ c'2 a2*3/2 ~ a2 \divisioMinima
g2 a2*5/2 bes2 ~ bes2*3/2 a2 ~ a4 \finalis
}

tenorMusic = {
c'2*3/2 ~ c'2*5/2 ~ c'2 ~ c'2*3/2 d'4 ~ \divisioMaior
d'2*3/2 c'2*5/4 e'2 d'2 \divisioMinima
c'2*11/4 ~ c'2*3/2 b2*3/2 ~ \divisioMinima
b2*3/2 a2*5/2 ~ a2 ~ a2*3/2 ~ \finalis
a2*5/2 d'4 ~ d'2 ~ d'2 c'2*4/2 ~ c'2*3/2 bes2 a4 ~ \divisioMaior
a2*5/2 c'2 ~ c'2*4/2 bes4 g2*4/2 a2*4/2 d'2 \divisioMaxima
f2*4/2 e2*4/2 d2 g2 f2*4/2 bes2 a2*5/2 c'4 ~ c'2*3/2 bes4 \divisioMaior
d'2 ~ d'2*3/2 ~ d'2 ~ d'2*5/2 ~ d'4 c'2*3/2 ~ c'2 ~ c'2 r2*5/2 a2 ~ a2 g2 f2 ~ f2 d2 e4 \divisioMinima
g2 e2*3/2 f2 g2 f4 ~ \divisioMinima
f2*7/4 bes2*3/2 a2*3/2 g2*4/2 ~ g4 f4 ~ \divisioMaior
f2*4/2 ~ f2*3/2 ~ f2*3/2 ~ \divisioMinima
f2 ~ f2*3/2 ~ f2*3/2 g2*7/4 e2*3/2 ~ e2 ~ e2*3/2 d2 ~ \divisioMinima
d2 ~ d2*5/2 ~ d2 g2*3/2 ~ g2 f4 \finalis
}

bassMusic = {
r2*5/2 b2*3/2 ~ b2 a2*3/2 g4 \divisioMaior
b2*3/2 a2*5/4 ~ a2 ~ a2 ~ \divisioMinima
a2*11/4 e2*3/2 ~ e2*3/2 \divisioMinima
c2*3/2 ~ c2*5/2 d2 a,2*3/2 \finalis
r2*6/2 c'2 bes2 a2*4/2 f2*3/2 ~ f2 ~ f4 \divisioMaior
d2*5/2 ~ d2 g2*4/2 ~ g4 e2*4/2 d2*4/2 ~ d2 \divisioMaxima
a,2*4/2 ~ a,2*4/2 d2 ~ d2 ~ d2*4/2 ~ d2 ~ d2*5/2 ~ d4 g2*3/2 ~ g4 \divisioMaior
r2*5/2 c'2 bes2*5/2 b4 a2*3/2 g2 f2 ~ f2 d2 f4 e2 d2 f2 d2 bes,2 c2 ~ c4 ~ \divisioMinima
c2 ~ c2*3/2 d2 ~ d2 ~ d4 \divisioMinima
c2*7/4 bes,2*3/2 ~ bes,2*3/2 c2*4/2 d2 \divisioMaior
a,2*4/2 bes,2*3/2 f,2*3/2 \divisioMinima
r2 e2*3/2 d2*3/2 c2*7/4 ~ c2*3/2 a,2 ~ a,2*3/2 f,2 \divisioMinima
e,2 d,2*5/2 g,2 ~ g,2*3/2 d2 ~ d4 \finalis
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
