\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.208
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Posuerunt" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Posuerunt"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Posuerunt" }
    \line {}
  }
}

chantText = \lyricmode {
Po -- su -- é -- runt 
\set stanza = " * " mor -- tá -- li -- a _ ser -- vó -- rum tu -- ó -- rum, Dó -- mi -- ne, 
e -- scas _ vo -- lá -- tí -- _ li -- bus _ cœ -- li, 
car -- nes _ san -- ctó -- _ rum tu -- ó -- rum bé -- sti -- is _ ter -- ræ: 
se -- cún -- dum ma -- gni -- tú -- di -- nem brá -- chi -- i tu -- i, pós -- si -- de fí -- _ li -- _ os mor -- te pu -- _ ni -- tó -- rum. }

chantMusic = {
\tieDown   f'4 g'4 ( a'4) a'4 a'4  a'4 ( \once \tweak #'font-size #-4 g' ) a'4 g'4 g'4 ( f'4) g'4 ( a'4 g'4) \divisioMinima
 g'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( a'4 g'4) a'4 g'4 ( a'4) a'4 ( c''4 b'4 a'4) g'4 ( a'4) a'4 a'4 ( b'4 a'4) a'4 \divisioMaior
 a'4 a'4 ( g'4) a'4 ( b'4 a'4) g'4 g'4 ( e'4) g'4 ( a'4 g'4 a'4) ~ a'4 ( g'4 a'4) f'4 f'4 ( e'4) f'4 ( g'4) f'4 ( g'4 f'4) f'4 \divisioMaxima
 a'4  a'4 ( g'4) a'4 ( bes'4 a'4) f'4  a'4 ( g'4) a'4 ( bes'4 a'4) f'4 ( f'4 e'4) d'4 d'4 ( e'\prall f'4 e'4 f'4) e'4 ( d'4) \divisioMinima
 f'4 ( g'4) f'4 ( e'4) f'4 ( g'4 f'4) ~ f'4 ( e'4) d'4 ( e'\prall f'4 e'4 f'4) e'4 ( d'4 e'\prall f'4) \divisioMaxima
 f'4 ( c'4) f'4 ( a'4) g'4 ( a'4) g'4 f'4 a'4 ( c''4 b'4 a'4) a'4 ( b'4 a'4) a'4 \divisioMinima
 c''4 c''4 ( b'4 a'4) a'4 b'4 ( c''4 b'4 g'4) a'4 ( g'4) \divisioMinima
 a'4 ( b'4 a'4) g'4 g'4 ( e'4) g'4 ( a'4 g'4 a'4) ~ a'4 ( g'4 a'4) f'4 ( e'4) f'4 ( e'4 d'4 e'4) e'4 ( d'4) \divisioMinima
 f'4 ( g'4) e'4  g'4 ( a'4 g'4) a'4 ( bes'4 a'4) f'4 ( f'4 e'4) d'4 ( e'\prall f'4 e'4 f'4) e'4 ( d'4) \finalis

}

altoMusic = {
r4 d'2 e'2 f'2 d'2 ~ d'2 e'2*3/2 \divisioMinima
d'2 e'2*4/2 ~ e'2 ~ e'2*4/2 ~ e'2 ~ e'4 ~ e'2*3/2 ~ e'4 ~ \divisioMaior
e'4 ~ e'2 ~ e'2*4/2 ~ e'2 ~ e'2*3/2 ~ e'2*5/2 d'2*4/2 a2*3/2 ~ a4 \divisioMaxima
f'4 ~ f'2*5/2 d'4 ~ d'2*5/2 ~ d'2*4/2 a2*5/2 ~ a2 ~ \divisioMinima
a2*6/2 ~ a2*3/2 ~ a2*5/2 ~ a2*4/2 \divisioMaxima
f'4 c'4 ~ c'2*6/2 ~ c'2*4/2 d'2*3/2 c'4 ~ \divisioMinima
c'4 e'2*4/2 d'2*6/2 \divisioMinima
c'2*4/2 ~ c'2 ~ c'2*3/2 ~ c'2*6/2 ~ c'2*4/2 a2 \divisioMinima
c'2*3/2 d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 a2*5/2 ~ a2 \finalis
}

tenorMusic = {
c'4 ~ c'2 ~ c'2 ~ c'2 ~ c'2 ~ c'2 ~ c'2*3/2 ~ \divisioMinima
c'2 ~ c'2*4/2 ~ c'2 ~ c'2*4/2 b2 a4 d'2*3/2 c'4 ~ \divisioMaior
c'4 b2 a2*4/2 c'2 b2*3/2 a2*5/2 ~ a2*4/2 e2*3/2 f4 \divisioMaxima
d'4 c'2*5/2 ~ c'4 bes2*5/2 a2*4/2 g2*5/2 f2 \divisioMinima
e2*6/2 d2*3/2 g2*5/2 f2*4/2 ~ \divisioMaxima
f2 ~ f2*6/2 e2*4/2 ~ e2*3/2 ~ e4 \divisioMinima
a4 ~ a2*4/2 ~ a2*6/2 ~ \divisioMinima
a2*4/2 e2 d2*3/2 e2*6/2 g2*4/2 f2 \divisioMinima
g2*3/2 ~ g2*3/2 f2*3/2 g2*3/2 ~ g2*5/2 f2 \finalis
}

bassMusic = {
a4 ~ a2 ~ a2 f2 ~ f2 a2 c'2*3/2 ~ \divisioMinima
c'2 ~ c'2*4/2 b2 a2*4/2 ~ a2 ~ a4 ~ a2*3/2 ~ a4 ~ \divisioMaior
a4 e2 c2*4/2 ~ c2 ~ c2*3/2 ~ c2*5/2 d2*4/2 ~ d2*3/2 ~ d4 ~ \divisioMaxima
d4 ~ d2*5/2 ~ d4 ~ d2*5/2 ~ d2*4/2 ~ d2*5/2 ~ d2 ~ \divisioMinima
d2*6/2 ~ d2*3/2 ~ d2*5/2 ~ d2*4/2 \divisioMaxima
r2 a,2*6/2 ~ a,2*4/2 ~ a,2*3/2 ~ a,4 ~ \divisioMinima
a,4 ~ a,2*4/2 ~ a,2*6/2 ~ \divisioMinima
a,2*4/2 ~ a,2 ~ a,2*3/2 ~ a,2*6/2 ~ a,2*4/2 d2 \divisioMinima
c2*3/2 bes,2*3/2 ~ bes,2*3/2 ~ bes,2*3/2 d2*5/2 ~ d2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Communion"
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
