\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.421
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Habet in vestimento" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Habet in vestimento"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Habet in vestimento" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ lú -- ia. 
\set stanza = " * " 
_ _ _ _ _ _ _ _ _ _ _ _ ℣. 
Ha -- _ _ _ _ bet in ve -- sti -- mén -- _ _ to _ 
et in fé -- mo -- re su -- o _ scri -- ptum: 
Rex _ _ _ _ _ _ _ _ _ _ _ _ _ re -- _ gum, 
et Dó -- _ mi -- _ nus 
\set stanza = " * " do -- mi -- nán -- _ ti -- um. 
_ _ _ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   d'4 ( d'4 \once \tweak #'font-size #-4 c' ) e'4 ( g'4 e'4 c'4 d'4.) e'4 ( g'4 e'4 d'4 e'\prall f'4 e'4 d'4) d'4 ( c'4 d'4) d'4 \divisioMaior
 d'4 ( a'4) ~ a'4 ( g'4 e'4) f'4 ( e'4 d'4.) c'4 e'4 ( f'4 g'4 e'4 d'4) f'4 ( f'4 d'4) \divisioMinima
 c'4 e'4 ( e'4) c'4 d'4 ( d'4) c'4 ( e'4) g'4 ( g'4 f'4 d'4) e'4 ( e'4) \divisioMinima
 d'4 ( f'4 e'4) g'4 ( e'4 d'4) f'4 ( f'4 d'4) \finalis
 d'4 ( c'4) d'4 ( f'4 d'4) ~ d'4 ( c'4 e'4) f'4 ( g'4 e'4 d'4) f'4 ( f'4 d'4) d'4 \divisioMinima
 d'4 d'4 d'4 ( a'4)  a'4 ( bes'4 a'4 g'4) a'4 ( g'4 e'4) f'4 ( e'4 d'4) d'4 ( f'4 d'4) ~ d'4 ( c'4) \divisioMaior
 d'4 ( c'4) d'4 f'4 e'4 f'4 ( g'4 a'4 f'4 e'4 d'4) d'4 ( e'\prall f'4 g'4) e'4 ( d'4) f'4 ( f'4 d'4) d'4 ( e'\prall f'4 d'4) d'4 \divisioMaxima
 d'4 ( a'4) c''4 ( c''4 g'4) ~ g'4 ( f'4) g'4 ( a'4) \divisioMinima
 a'4 ( g'4) ~ g'4 ( f'4) g'4 ( a'4) c''4 ( c''4 g'4) ~ g'4 ( f'4) g'4 ( a'4) \divisioMinima
 g'4 ( a'4 b'\prall c''4 d''4 c''4 b'4 a'4 g'4 a'4) \divisioMinima
 a'4 ( d''4) ~ d''4 ( c''4) d''4 ( e''4 c''4 b'4 a'4 g'4 a'4) g'4 ( a'4 b'\prall c''4 d''4 c''4) ~ c''4 ( b'4 a'4) a'4 \divisioMaior
 a'4 ( \once \tweak #'font-size #-4 g' ) a'4 ( c''4 b'4 g'4) b'4 ( c''4 d''4) b'4 ( a'4) c''4 ( c''4 a'4) a'4 \divisioMinima
 d'4 d'4 ( d'4 c'4) e'4 ( g'4 e'4 c'4 d'4.) e'4 ( g'4 e'4 d'4 e'\prall f'4 e'4 d'4) d'4 ( c'4 d'4) d'4 \divisioMaior
 d'4 ( a'4) ~ a'4 ( g'4 e'4) f'4 ( e'4 d'4.) c'4 e'4 ( f'4 g'4 e'4 d'4) f'4 ( f'4 d'4) \divisioMinima
 c'4 e'4 ( e'4) c'4 d'4 ( d'4) c'4 ( e'4) g'4 ( g'4 f'4 d'4) e'4 ( e'4) \divisioMinima
 d'4 ( f'4 e'4) g'4 ( e'4 d'4) f'4 ( f'4 d'4) \finalis

}

altoMusic = {
r2 \tiny c' \normalsize4 c'2*11/4 ~ c'2*3/2 a2*5/2 ~ a2*3/2 ~ a4 ~ \divisioMaior
a4 c'2*4/2 ~ c'2*9/4 ~ c'2*5/2 a2*3/2 ~ \divisioMinima
a4 c'2*3/2 ~ c'2*4/2 ~ c'2*4/2 ~ c'2 a2 ~ a2*3/2 ~ a2 ~ a2 ~ \finalis
a2*4/2 ~ a2*4/2 ~ a2*4/2 ~ a2*3/2 ~ a4 ~ \divisioMinima
a2 ~ a2 d'2*4/2 ~ d'2*3/2 a2*3/2 ~ a2 ~ a2*3/2 ~ \divisioMaior
a2*3/2 bes2 c'2*6/2 d'2*6/2 ~ d'2*3/2 a2*4/2 ~ a4 \divisioMaxima
d'2 c'2 d'2*3/2 ~ d'2 ~ \divisioMinima
d'4 ~ d'2*5/2 c'2*5/2 ~ c'2 \divisioMinima
e'2*9/2 ~ e'4 ~ \divisioMinima
e'4 a2*3/2 g'2*5/2 ~ g'4 r4 g'2*5/2 e'2*4/2 ~ e'4 ~ \divisioMaior
e'2 ~ e'2*4/2 g'2*5/2 e'2*3/2 ~ e'4 \divisioMinima
d'4 a2*3/2 c'2*11/4 ~ c'2*3/2 a2*5/2 ~ a2*3/2 ~ a4 ~ \divisioMaior
a4 c'2*4/2 ~ c'2*9/4 ~ c'2*5/2 a2*3/2 ~ \divisioMinima
a4 c'2*3/2 ~ c'2*4/2 ~ c'2*4/2 ~ c'2 \divisioMinima
a2*6/2 ~ a2 ~ a4 \finalis
}

tenorMusic = {
e2*3/2 ~ e2*4/2 f2*3/4 g2*3/2 ~ g2*5/2 e2*3/2 f4 ~ \divisioMaior
f4 e2*4/2 a2*9/4 g2*5/2 ~ g2 f4 ~ \divisioMinima
f4 g2*3/2 f2*4/2 e2*4/2 g2 f2 e2*3/2 g2 f2 ~ \finalis
f2*4/2 ~ f2*4/2 ~ f2*4/2 g2*3/2 f4 ~ \divisioMinima
f2 ~ f2 ~ f2*4/2 g2*3/2 ~ g2*3/2 f2 e2*3/2 \divisioMaior
f2*5/2 ~ f2*6/2 ~ f2*6/2 g2*3/2 ~ g2*4/2 f4 \divisioMaxima
a2 g2 a2*3/2 f2 ~ \divisioMinima
f4 a2*5/2 g2 c'2*3/2 ~ c'2 ~ \divisioMinima
c'2*4/2 ~ c'2*5/2 ~ c'4 ~ \divisioMinima
c'4 ~ c'2*3/2 ~ c'2*7/2 d'2*5/2 ~ d'2*4/2 c'4 ~ \divisioMaior
c'2 ~ c'2*4/2 d'2*5/2 ~ d'2*3/2 c'4 \divisioMinima
a4 ~ a2*3/2 g2*4/2 f2*3/4 g2*3/2 ~ g2*5/2 e2*3/2 f4 ~ \divisioMaior
f4 e2*4/2 a2*9/4 g2*5/2 ~ g2 f4 ~ \divisioMinima
f4 g2*3/2 f2*4/2 e2*4/2 g2 \divisioMinima
f2*3/2 e2*3/2 g2 f4 \finalis
}

bassMusic = {
a,2*3/2 ~ a,2*4/2 ~ a,2*3/4 ~ a,2*3/2 d2*5/2 ~ d2*3/2 ~ d4 ~ \divisioMaior
d4 c2*4/2 a,2*9/4 ~ a,2*5/2 d2 ~ d4 ~ \divisioMinima
d4 c2*3/2 ~ c2*4/2 ~ c2*4/2 ~ c2 d2 ~ d2*3/2 ~ d2 ~ d2 \finalis
r2*4/2 e2*4/2 d2*4/2 ~ d2*3/2 ~ d4 ~ \divisioMinima
d2 c2 bes,2*4/2 ~ bes,2*3/2 d2*3/2 ~ d2 a,2*3/2 \divisioMaior
f,2*3/2 g,2 a,2*6/2 bes,2*6/2 b,2*3/2 d2*4/2 ~ d4 \divisioMaxima
f2 e2 d2*3/2 ~ d2 ~ \divisioMinima
d4 ~ d2*5/2 e2 ~ e2*3/2 f2 \divisioMinima
c'2*4/2 b2*5/2 a4 ~ \divisioMinima
a4 f2*3/2 e2*7/2 ~ e2*5/2 a2*4/2 ~ a4 ~ \divisioMaior
a2 c'2*4/2 g2*5/2 a2*3/2 ~ a4 ~ \divisioMinima
a4 f2*3/2 c2*4/2 a,2*3/4 ~ a,2*3/2 d2*5/2 ~ d2*3/2 ~ d4 ~ \divisioMaior
d4 c2*4/2 a,2*9/4 ~ a,2*5/2 d2 ~ d4 ~ \divisioMinima
d4 c2*3/2 ~ c2*4/2 ~ c2*4/2 ~ c2 \divisioMinima
d2*3/2 ~ d2*3/2 ~ d2 ~ d4 \finalis
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
        "1"
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
