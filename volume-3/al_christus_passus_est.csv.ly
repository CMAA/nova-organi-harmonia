\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.156
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Christus passus est" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Christus passus est"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Christus passus est" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ lú -- _ _ ia, 
\set stanza = " * " 
al -- le -- _ lú -- _ _ ia. 
_ _ _ _ _ 
_ _ _ _ _ _ _ _ _ ℣. 
Chri -- _ _ stus pas -- _ sus est 
pro no -- _ bis, _ _ _ 
vo -- bis re -- lín -- quens ex -- ém -- _ _ _ _ plum, 
ut se -- quá -- _ _ _ mi -- ni ve -- stí -- _ gi -- a 
\set stanza = " * " e -- _ jus. 
_ _ _ _ _ 
_ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   c'4 ( \once \tweak #'font-size #-4 d' ) d'4. c'4 ( d'4 f'4) f'4 ( g'4 e'4 d'4) e'4 ( d'4 c'4) e'4 ( e'4) d'4 \divisioMaior
 c'4 ( \once \tweak #'font-size #-4 d' ) d'4. c'4 ( d'4 f'4) f'4 ( g'4 e'4 d'4) e'4 ( d'4 c'4) e'4 ( e'4) d'4 \divisioMaior
 f'4 ( g'4 a'4.) b'4 ( c''4 a'4 g'4) a'4 ( g'4 f'4) a'4. e'4 ( f'4 e'4) ~ e'4 ( d'4) \divisioMaior
 d'4 ( e'\prall f'4 g'4) ~ g'4 ( f'4) g'4 ( a'4) ~ a'4 ( g'4 a'4) \divisioMinima
 f'4 ( a'4) c''4 ( a'4 g'4 e'4 f'4.) g'4 ( a'4 e'4 d'4 c'4) f'4 ( e'4) ~ e'4 ( d'4) \finalis
 d'4 ( e'4 d'4 c'4) e'4 ( f'4 g'4) ~ g'4 ( f'4) e'4 ( d'4) f'4 ( g'4) a'4 ( g'4 f'4) g'4 ( a'4)  a'4 ( bes'4 a'4) \divisioMaior
 g'4 ( a'4) a'4 ( g'4) a'4 ( g'4 f'4 g'4) e'4 ( d'4 c'4.) e'4 ( f'4 g'4 f'4 e'4) f'4 ( e'4) ~ e'4 ( d'4) \divisioMaior
 c'4 d'4 ( e'4) e'4 ( d'4 f'4) e'4 ( d'4) d'4 d'4 ( a'4) a'4. g'4 ( a'4) c''4. b'4 ( c''4 a'4) b'4 ( a'4 g'4) b'4 ( b'4 \once \tweak #'font-size #-4 a' ) a'4 \divisioMaxima
 a'4 d'4 a'4 ( a'4) ~ a'4 ( g'4 f'4) g'4 ( f'4 e'4 d'4.) e'4 ( f'4 d'4) c'4 ( d'4) d'4 ( f'4 e'4) \divisioMinima
 f'4 ( g'4) g'4 ( f'4) g'4 ( a'4 g'4) f'4 ( e'4) e'4  d'4 ( e'\prall f'4 g'4) ~ g'4 ( f'4) e'4 ( d'4) \divisioMaior
 f'4 ( g'4 a'4.) b'4 ( c''4 a'4 g'4) a'4 ( g'4 f'4) a'4. e'4 ( f'4 e'4) ~ e'4 ( d'4) \divisioMaior
 d'4 ( e'\prall f'4 g'4) ~ g'4 ( f'4) g'4 ( a'4) ~ a'4 ( g'4 a'4) \divisioMinima
 f'4 ( a'4) c''4 ( a'4 g'4 e'4 f'4.) g'4 ( a'4 e'4 d'4 c'4) f'4 ( e'4) ~ e'4 ( d'4) \finalis

}

altoMusic = {
r2*7/4 c'2*3/2 bes2*4/2 a2*3/2 ~ a2*3/2 \divisioMaior
g2 a2*3/4 c'2*3/2 ~ c'2*4/2 ~ c'2*3/2 a2 ~ a4 \divisioMaior
c'2 ~ c'2*3/4 ~ c'2*4/2 ~ c'2*3/2 ~ c'2*3/4 ~ c'2 a2*3/2 \divisioMaior
d'2*3/2 c'2*4/2 ~ c'2*4/2 ~ \divisioMinima
c'2 ~ c'2*4/2 a2*3/4 ~ a2 ~ a2*4/2 ~ a2*3/2 ~ \finalis
a2*4/2 ~ a2 ~ a2*5/2 c'2*5/2 d'2 ~ d'2*3/2 ~ \divisioMaior
d'2 ~ d'2 c'2*4/2 ~ c'2 ~ c'2*3/4 ~ c'2*6/2 a2 ~ a4 ~ \divisioMaior
a4 ~ a2 ~ a2*3/2 ~ a2 ~ a4 d'2 e'2*3/4 d'2 c'2*9/4 ~ c'2*3/2 d'2*3/2 c'4 \divisioMaxima
d'4 ~ d'4 e'2 d'2*3/2 c'2*3/2 a2*3/4 ~ a2*3/2 g2 a2*3/2 ~ \divisioMinima
a2 ~ a2 c'2*3/2 ~ c'2 ~ c'4 a2*3/2 ~ a2*3/2 ~ a2 \divisioMaior
c'2 ~ c'2*3/4 ~ c'2*4/2 ~ c'2*3/2 ~ c'2*3/4 ~ c'2 a2*3/2 \divisioMaior
d'2*3/2 c'2*4/2 ~ c'2*4/2 ~ \divisioMinima
c'2 ~ c'2*4/2 a2*3/4 ~ a2 ~ a2*4/2 ~ a2*3/2 \finalis
}

tenorMusic = {
r2 bes2*3/4 a2*3/2 g2*4/2 ~ g2*3/2 f2*3/2 \divisioMaior
e2 f2*3/4 ~ f2*3/2 a2*4/2 g2*3/2 ~ g2 f4 ~ \divisioMaior
f2 e2*3/4 g2*4/2 f2*3/2 e2*3/4 g2 f2*3/2 ~ \divisioMaior
f2*3/2 ~ f2*4/2 e2*4/2 \divisioMinima
d2 e2*4/2 d2*3/4 e2 g2*4/2 f2*3/2 ~ \finalis
f2*4/2 ~ f2 ~ f2*5/2 ~ f2*5/2 ~ f2 ~ f2*3/2 \divisioMaior
e2 f2 ~ f2*4/2 g2 a2*3/4 g2*6/2 ~ g2 f4 ~ \divisioMaior
f4 ~ f2 ~ f2*3/2 g2 f4 ~ f2 e2*3/4 ~ e2 ~ e2*9/4 g2*3/2 f2*3/2 e4 \divisioMaxima
f2 e2 f2*3/2 ~ f2*3/2 ~ f2*3/4 g2*3/2 ~ g2 f2*3/2 ~ \divisioMinima
f2 ~ f2 e2*3/2 a2 g4 ~ g2*3/2 a2*3/2 g4 f4 ~ \divisioMaior
f2 e2*3/4 g2*4/2 f2*3/2 e2*3/4 g2 f2*3/2 ~ \divisioMaior
f2*3/2 ~ f2*4/2 e2*4/2 \divisioMinima
d2 e2*4/2 d2*3/4 e2 g2*4/2 f2*3/2 \finalis
}

bassMusic = {
r2*33/4 \divisioMaior
r2 d2*3/4 a,2*3/2 ~ a,2*4/2 ~ a,2*3/2 d2 ~ d4 \divisioMaior
a,2 ~ a,2*3/4 ~ a,2*4/2 ~ a,2*3/2 ~ a,2*3/4 ~ a,2 d2*3/2 \divisioMaior
bes,2*3/2 a,2*4/2 ~ a,2*4/2 \divisioMinima
c2 ~ c2*4/2 d2*3/4 ~ d2 ~ d2*4/2 ~ d2*3/2 \finalis
r2*4/2 e2 d2*5/2 a,2*5/2 bes,2 d2*3/2 ~ \divisioMaior
d2 ~ d2 a,2*4/2 ~ a,2 ~ a,2*3/4 ~ a,2*6/2 d2 ~ d4 \divisioMaior
r4 e2 d2*3/2 ~ d2 ~ d4 ~ d2 c2*3/4 b,2 a,2*9/4 ~ a,2*3/2 ~ a,2*3/2 ~ a,4 \divisioMaxima
d2 c2 bes,2*3/2 a,2*3/2 d2*3/4 ~ d2*3/2 e2 f2*3/2 \divisioMinima
e2 d2 c2*3/2 a,2 ~ a,4 d2*3/2 ~ d2*3/2 ~ d2 \divisioMaior
a,2 ~ a,2*3/4 ~ a,2*4/2 ~ a,2*3/2 ~ a,2*3/4 ~ a,2 d2*3/2 \divisioMaior
bes,2*3/2 a,2*4/2 ~ a,2*4/2 \divisioMinima
c2 ~ c2*4/2 d2*3/4 ~ d2 ~ d2*4/2 ~ d2*3/2 \finalis
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
