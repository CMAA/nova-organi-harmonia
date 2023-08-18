\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.155
%(volume.page)

global = {
 \key f \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Domine in virtute" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Domine in virtute"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Domine in virtute" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- _ ia, _ _ _ 
\set stanza = " * " al -- le -- lú -- _ ia. _ _ _ _ _ _ _ _ _ _ _ _ _ _ ℣. 
Dó -- mi -- _ ne, _ _ _ 
in vir -- tú -- _ _ _ te tu -- _ _ a 
læ -- tá -- _ _ _ _ _ _ bi -- tur _ rex: 
et _ _ _ _ _ _ _ _ _ _ _ su -- per sa -- lu -- tá -- _ re tu -- _ _ um 
ex -- sul -- tá -- _ bit _ _ _ 
\set stanza = " * " ve -- _ _ he -- mén -- _ _ _ ter. _ _ _ }

chantMusic = {
\tieDown   d'4 f'4 ( f'4)  f'4 ( g'4 f'4) bes'4 ( a'4 g'4 a'4) a'4. f'4 ( g'4 f'4.) bes'4 ( g'4 f'4) a'4 ( a'4 f'4) \divisioMinima
 d'4 f'4 ( f'4)  f'4 ( g'4 f'4) bes'4 ( a'4 g'4 a'4 \forceBreak
) a'4. f'4 ( g'4 f'4.) bes'4 ( g'4 f'4) a'4 ( a'4 f'4) \divisioMinima
 d'4 ( f'4 e'4) g'4 ( f'4 d'4) ~ d'4 ( c'4) f'4 ( f'4 c'4) \divisioMinima
 f'4 ( a'4 g'4 c''4) ~ c''4 ( c''4 c''4 \forceBreak
) d''4 ( c''4) ~ c''4 ( a'4.) f'4 ( a'4 g'4) a'4 ( g'4) ~ g'4 ( f'4) \finalis
 f'4 ( f'4)  f'4 ( g'4 f'4) bes'4 ( a'4 g'4 a'4) a'4. f'4 ( g'4 f'4.) bes'4 ( g'4 f'4) a'4 ( a'4 f'4) \divisioMaior \forceBreak

 f'4 ( a'4 c''4)  c''4 ( c''4 bes'4 g'4) g'4 c''4 ( c''4 c''4) d''4 ( c''4) ~ c''4 ( a'4 bes'4) bes'4 ( a'4) f'4 ( g'4 a'4) c''4 ( a'4) ~ a'4 ( g'4 a'4) a'4 ( g'4 f'4) \divisioMaior
 f'4 f'4 ( a'4 g'4 a'4. \forceBreak
) f'4 ( g'4 f'4 d'4.) c'4 ( d'4) f'4 ( d'4.) c'4 ( d'4) f'4 ( f'4) \divisioMinima
  g'4 ( a'4 bes'\prall c''4 bes'4 a'4) g'4 ( a'4 f'4)  f'4 ( g'\prall a'4 bes'4 a'4 g'4) a'4 ( bes'4 \once \tweak #'font-size #-4 a' ) a'4 \divisioMaxima \forceBreak

  f'4 ( g'\prall a'4 g'4 a'4) c''4 ( c''4) ~ c''4 ( bes'4 a'4 g'4.) c''4 ( c''4) ~ c''4 ( bes'4 g'4 f'4) a'4. \divisioMinima
  f'4 ( g'\prall a'4 g'4 a'4) c''4 ( c''4) ~ c''4 ( bes'4 a'4 g'4.) c''4 ( c''4 \forceBreak
) ~ c''4 ( bes'4 g'4 f'4) a'4. f'4 ( g'4 f'4) bes'4 ( a'4) g'4 ( a'4 f'4) f'4 \divisioMinima
 d'4 ( f'4) f'4 ( g'4 f'4) f'4. e'4 ( f'4 d'4) c'4 ( f'4) d'4 ( f'4) a'4 ( g'4 \forceBreak
) a'4 ( g'4 f'4) f'4 \divisioMaior
 d'4 f'4 ( f'4)  f'4 ( g'4 f'4) bes'4 ( a'4 g'4 a'4) a'4. f'4 ( g'4 f'4.) bes'4 ( g'4 f'4) a'4 ( a'4 f'4) \divisioMinima
 d'4 ( f'4 e'4) g'4 ( f'4 d'4) ~ d'4 ( c'4 \forceBreak
) f'4 ( f'4 c'4)  f'4 ( a'4 g'4 c''4) ~ c''4 ( c''4 c''4) d''4 ( c''4) ~ c''4 ( a'4 bes'4) a'4. f'4 ( a'4 g'4) a'4 ( g'4) ~ g'4 ( f'4) \finalis

}

altoMusic = {
d'4 ~ d'2 ~ d'2*3/2 ~ d'2*4/2 f'2*3/4 d'2*7/4 ~ d'2*3/2 f'2 ~ f'4 \divisioMinima
d'4 ~ d'2 ~ d'2*3/2 ~ d'2*4/2 ~ d'2*3/4 ~ d'2*7/4 ~ d'2*3/2 ~ d'2 ~ d'4 \divisioMinima
a2*3/2 d'2 ~ d'4 ~ d'4 c'4 ~ c'2*3/2 ~ \divisioMinima
c'2 ~ c'2 f'2*4/2 e'2*7/4 d'2 ~ d'2 c'2 ~ c'4 \finalis
d'2 ~ d'2*3/2 ~ d'2*4/2 f'2*3/4 d'2*7/4 ~ d'2*3/2 ~ d'2 ~ d'4 ~ \divisioMaior
d'4 ~ d'2 ~ d'2*4/2 g'4 ~ g'2*4/2 ~ g'2*4/2 f'2 d'2*4/2 e'2*4/2 c'2*3/2 ~ \divisioMaior
c'4 d'2 ~ d'2*5/4 ~ d'2*3/2 ~ d'2*3/4 a2 ~ a2*5/4 g2 a2 d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'4 c'2*5/2 ~ c'2 d'2*9/4 c'2 f'2*3/2 ~ f'4 e'2*3/4 d'2 ~ d'2*3/2 c'2 f'2*9/4 e'2 d'2*4/2 c'2*3/4 ~ c'2*3/2 bes2 c'2*3/2 a4 ~ \divisioMinima
a2 d'2*3/2 c'2*3/4 ~ c'2*3/2 ~ c'2 d'2*4/2 e'2*3/2 c'4 \divisioMaior
d'4 ~ d'2 ~ d'2*3/2 ~ d'2*4/2 ~ d'2*3/4 c'2*7/4 bes2*3/2 c'2 ~ c'4 \divisioMinima
a2*3/2 d'2 ~ d'4 ~ d'4 c'4 ~ c'2*3/2 ~ c'2 ~ c'2 f'2*4/2 e'2 ~ e'2 f'2*3/4 d'2 ~ d'2 c'2 ~ c'4 \finalis
}

tenorMusic = {
r2*3/2 bes2*3/2 b2*4/2 c'2*3/4 bes2*7/4 b2*3/2 c'2*3/2 \divisioMinima
bes4 ~ bes2 a2*3/2 g2*4/2 f2*3/4 a2*7/4 g2*3/2 f2 a4 \divisioMinima
f2*3/2 d2 f2*3/2 ~ f2*3/2 \divisioMinima
a2 ~ a2 ~ a2*4/2 ~ a2*7/4 ~ a2 bes2 ~ bes2 a4 \finalis
r2 bes2*3/2 b2*4/2 c'2*3/4 bes2*7/4 ~ bes2*3/2 f2 a4 ~ \divisioMaior
a4 ~ a2 g2*4/2 d'4 c'2*4/2 d'2*4/2 ~ d'2 a2*4/2 ~ a2*4/2 ~ a2*4/2 ~ a2 bes2*5/4 a2*9/4 g2 f2*5/4 e2 d2 ~ d2*3/2 g2*3/2 bes2*3/2 a2*3/2 g2*3/2 ~ g2*3/2 f4 a2*5/2 g2 ~ g2*9/4 ~ g2 ~ g2*4/2 c'2*3/4 a2 ~ a2*3/2 g2 ~ g2*9/4 ~ g2 f2*4/2 e2*3/4 f2*3/2 e2 ~ e2*3/2 f4 ~ \divisioMinima
f2 ~ f2*3/2 ~ f2*3/4 c2*3/2 f2 ~ f2*4/2 c'2*3/2 a4 ~ \divisioMaior
a4 ~ a2 ~ a2*3/2 g2*4/2 f2*3/4 ~ f2*7/4 ~ f2*3/2 ~ f2 ~ f4 ~ \divisioMinima
f2*3/2 d2 f2*3/2 ~ f2*3/2 a2 ~ a2 ~ a2*4/2 ~ a2 g2 f2*3/4 a2 bes2 ~ bes2 a4 \finalis
}

bassMusic = {
r2*6/2 g2*4/2 f2*3/4 bes2*7/4 g2*3/2 f2*3/2 \divisioMinima
r4 bes,2 ~ bes,2*3/2 ~ bes,2*4/2 d2*3/4 ~ d2*7/4 bes,2*3/2 d2 ~ d4 ~ \divisioMinima
d2*3/2 bes,2 ~ bes,2*3/2 a,2*3/2 \divisioMinima
f2 e2 d2*4/2 a,2*7/4 bes,2 ~ bes,2 f2 ~ f4 \finalis
r2 r2*3/2 g2*4/2 f2*3/4 bes2*7/4 g2*3/2 d2 ~ d4 ~ \divisioMaior
d4 f2 ~ f2*4/2 ~ f4 e2*4/2 g2*4/2 d2 ~ d2*4/2 c2*4/2 f2*3/2 ~ \divisioMaior
f4 bes,2 ~ bes,2*5/4 d2*9/4 ~ d2 ~ d2*5/4 ~ d2 ~ d2 bes,2*3/2 ~ bes,2*3/2 ~ bes,2*3/2 d2*3/2 ~ d2*3/2 ~ d2*3/2 ~ d4 f2*5/2 e2 f2*9/4 e2 d2*4/2 c2*3/4 d2 f2*3/2 e2 d2*9/4 c2 d2*4/2 a,2*3/4 ~ a,2*3/2 c2 ~ c2*3/2 d4 \divisioMinima
c2 bes,2*3/2 a,2*3/4 ~ a,2*3/2 ~ a,2 bes,2*4/2 c2*3/2 f4 ~ \divisioMaior
f4 d2 c2*3/2 bes,2*4/2 d2*3/4 a,2*7/4 g,2*3/2 f,2 a,4 \divisioMinima
d2*3/2 bes,2 ~ bes,2*3/2 a,2*3/2 f2 e2 d2*4/2 a,2 d2 ~ d2*3/4 c2 bes,2 f2 ~ f4 \finalis
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
