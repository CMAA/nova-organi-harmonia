\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.57
%(volume.page)

global = {
 \key c \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Exivi a Patre" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Exivi a Patre"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Exivi a Patre" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ _ _ _ _ lú -- ia. _ _ _ 
\set stanza = " * " 
_ _ _ _ _ _ _ _ _ _ _ ℣. 
Ex -- í -- vi a _ _ _ 
\set stanza = " * " Pa -- _ _ _ _ tre, 
et ve -- _ _ _ _ _ ni in mun -- _ dum: 
í -- te -- _ _ rum re -- lín -- quo _ _ _ _ mun -- _ _ _ _ _ dum, 
et va -- _ _ _ _ _ do 
\set stanza = " * " ad Pa -- _ _ _ 
_ _ _ _ _ _ _ _ _ _ _ _ trem. }

chantMusic = {
\tieDown   g'4 ( g'4) d'4 g'4 ( f'4 g'4.) ~ g'4 ( a'4 bes'4 c''4) ~ c''4 ( bes'4 a'4 g'4.) bes'4 ( a'4 g'4) a'4 ( g'4) f'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( d'4) g'4 ( bes'4 a'4 g'4) c''4 ( bes'4 a'4) ~ a'4 ( g'4) \divisioMaior \forceBreak

 g'4 ( a'4 bes'4 c''4) ~ c''4 ( bes'4 a'4 g'4) bes'4 ( a'4 g'4) a'4 ( g'4 f'4 g'4) \divisioMinima
 g'4 ( a'4 g'4 f'4 d'4) e'4 ( d'4) ~ d'4 ( c'4) \divisioMinima
 c'4 ( d'4) f'4 ( f'4) g'4 ( a'4 g'4 f'4. \forceBreak
) d'4 ( e'4 d'4) ~ d'4 ( c'4) \finalis
 g'4 g'4 ( g'4 f'4 g'4) g'4 g'4 ( a'4 bes'4 c''4.) a'4 ( c''4 bes'4 a'4 g'4.) bes'4 ( a'4 g'4) a'4 ( g'4)  g'4 ( g'4 f'4 g'4) bes'4 ( a'4 g'4) \divisioMinima \forceBreak

 c''4 ( c''4 bes'4 a'4 g'4.) bes'4 ( a'4 g'4) a'4 ( g'4 f'4 g'4) g'4 \divisioMaior
 g'4 ( \once \tweak #'font-size #-4 f' ) g'4 a'4 ( f'4 g'4.) ~ g'4 ( a'4 bes'4 c''4) ~ c''4 ( bes'4 a'4 g'4. \forceBreak
) bes'4 ( a'4 g'4) a'4 ( g'4) g'4 f'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) ~ a'4 ( g'4) g'4 \divisioMaior
 g'4 g'4 ( d'4) g'4 ( bes'4 a'4 g'4) c''4 ( bes'4 a'4 a'4) g'4 \divisioMinima \forceBreak

 g'4 g'4 ( g'4 a'4) g'4 ~ g'4 ( a'4 bes'4 c''4.) a'4 ( c''4 bes'4 a'4 g'4.) bes'4 ( a'4 g'4) a'4 ( g'4) \divisioMinima
 g'4. d'4 g'4 ( f'4 g'4. \forceBreak
) ~ g'4 ( a'4 bes'4 c''4) ~ c''4 ( bes'4 a'4 g'4.) bes'4 ( a'4 g'4) a'4 ( g'4 f'4 g'4) g'4 \divisioMaxima
 g'4 ( \once \tweak #'font-size #-4 f' ) g'4 a'4 ( f'4 g'4.) ~ g'4 ( a'4 bes'4 c''4) ~ c''4 ( bes'4 a'4 g'4. \forceBreak
) bes'4 ( a'4 g'4) a'4 ( g'4) f'4 ( g'4) \divisioMinima
 f'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( d'4) g'4 ( bes'4 a'4 g'4) c''4 ( bes'4 a'4) ~ a'4 ( g'4) \divisioMaior
 g'4 ( a'4 bes'4 c''4) ~ c''4 ( bes'4 a'4 g'4.) bes'4 ( a'4 g'4 \forceBreak
) a'4 ( g'4 f'4 g'4) \divisioMinima
 g'4 ( a'4 g'4 f'4 d'4) e'4 ( d'4) ~ d'4 ( c'4) \divisioMinima
 c'4 ( d'4) f'4 ( f'4) g'4 ( a'4 g'4 f'4.) d'4 ( e'4 d'4) ~ d'4 ( c'4) c'4 \finalis

}

altoMusic = {
d'2*3/2 ~ d'2*7/4 ~ d'2*3/2 ~ d'2*11/4 ~ d'2*5/2 ~ d'2 ~ d'2 f'2*4/2 ~ f'2 d'2 ~ d'4 ~ \divisioMaior
d'2*3/2 ~ d'2*5/2 ~ d'2*3/2 ~ d'2*4/2 \divisioMinima
c'2*3/2 a2*3/2 ~ a2*3/2 \divisioMinima
c'2 ~ c'2 ~ c'2*9/4 a2 g2 ~ g4 \finalis
r4 d'2*5/2 ~ d'2*3/2 ~ d'2*3/4 ~ d'2*4/2 ~ d'2*3/4 ~ d'2*3/2 f'2 c'2*4/2 d'2*3/2 \divisioMinima
f'2*3/2 ~ f'2*5/4 d'2*3/2 ~ d'2 ~ d'2 c'4 ~ \divisioMaior
c'2*3/2 d'2*7/4 ~ d'2*17/4 ~ d'2*3/2 e'2*3/2 c'2*3/2 d'2*3/2 c'4 \divisioMaior
d'4 c'2 d'2*4/2 ~ d'2 ~ d'2*3/2 ~ \divisioMinima
d'4 c'2*4/2 ~ c'2*9/4 d'2*11/4 ~ d'2*3/2 e'2 \divisioMinima
d'2*5/4 c'2*7/4 d'2*3/2 ~ d'2*11/4 ~ d'2*3/2 c'2*4/2 bes4 \divisioMaxima
d'2 ~ d'2*9/4 ~ d'2*3/2 ~ d'2*11/4 ~ d'2*5/2 c'2 ~ \divisioMinima
c'2 d'2 ~ d'2*4/2 ~ d'2 ~ d'2 ~ d'4 \divisioMaior
f'2*3/2 ~ f'2*11/4 ~ f'2*3/2 d'2*3/2 ~ d'4 \divisioMinima
c'2*6/2 a2*3/2 \divisioMinima
a'2 a2 c'2*9/4 a2 g2*3/2 ~ g4 \finalis
}

tenorMusic = {
bes2*3/2 ~ bes2*7/4 ~ bes2*3/2 a2*11/4 g2*5/2 a2 bes2 ~ bes2*4/2 d'2 c'2 bes4 \divisioMaior
g2*3/2 ~ g2*5/2 ~ g2*3/2 f2*4/2 \divisioMinima
e2*3/2 d2*3/2 e2*3/2 ~ \divisioMinima
e2 d2 f2*9/4 ~ f2 ~ f2 e4 \finalis
r4 bes2*5/2 ~ bes2*3/2 a2*3/4 ~ a2*4/2 g2*3/4 c'2*3/2 bes2 a2*4/2 g2*3/2 \divisioMinima
f2*3/2 g2*5/4 ~ g2*3/2 f2 d2 e4 \divisioMaior
d2*3/2 f2*7/4 g2*3/2 ~ g2*11/4 ~ g2*3/2 ~ g2*3/2 ~ g2 e4 f2*3/2 e4 \divisioMaior
d4 ~ d2 ~ d2*4/2 a2 bes2*3/2 \divisioMinima
d4 e2*4/2 f2*9/4 ~ f2*11/4 g2*3/2 ~ g2 ~ \divisioMinima
g2*5/4 ~ g2*7/4 ~ g2*3/2 a2*11/4 g2*3/2 ~ g2*4/2 ~ g4 \divisioMaxima
a2 f2*9/4 g2*3/2 a2*11/4 g2*5/2 ~ g2 \divisioMinima
d2 ~ d2 g2*4/2 a2 bes2*3/2 ~ \divisioMaior
bes2*3/2 a2*11/4 g2*3/2 f2*3/2 ~ f4 \divisioMinima
g2*6/2 e2*3/2 ~ \divisioMinima
e2 f2 ~ f2*9/4 ~ f2 ~ f2*3/2 e4 \finalis
}

bassMusic = {
r2*3/2 a2*7/4 g2*3/2 f2*11/4 g2*5/2 ~ g2 ~ g2 d2*4/2 ~ d2 g2 ~ g4 \divisioMaior
bes,2*3/2 a,2*5/2 g,2*3/2 ~ g,2*4/2 \divisioMinima
c2*3/2 ~ c2*3/2 ~ c2*3/2 \divisioMinima
a,2 ~ a,2 ~ a,2*9/4 bes,2 c2 ~ c4 \finalis
r2*6/2 g2*3/2 ~ g2*3/4 f2*4/2 g2*3/4 ~ g2*3/2 ~ g2 ~ g2*4/2 ~ g2*3/2 \divisioMinima
d2*3/2 ~ d2*5/4 bes,2*3/2 c2 ~ c2 ~ c4 \divisioMaior
r2*3/2 c2*7/4 bes,2*3/2 a,2*11/4 bes,2*3/2 c2*3/2 d2 ~ d4 c2*3/2 ~ c4 \divisioMaior
bes,4 a,2 bes,2*4/2 ~ bes,2 ~ bes,2*3/2 ~ \divisioMinima
bes,4 c2*4/2 a,2*9/4 g,2*11/4 ~ g,2*3/2 c2 \divisioMinima
bes,2*5/4 a,2*7/4 g,2*3/2 a,2*11/4 g,2*3/2 ~ g,2*4/2 ~ g,4 \divisioMaxima
d2 c2*9/4 bes,2*3/2 ~ bes,2*11/4 ~ bes,2*5/2 a,2 ~ \divisioMinima
a,2 bes,2 ~ bes,2*4/2 ~ bes,2 ~ bes,2*3/2 \divisioMaior
d2*3/2 ~ d2*11/4 ~ d2*3/2 c2*3/2 bes,4 \divisioMinima
a,2*6/2 ~ a,2*3/2 \divisioMinima
g,2 f,2 a,2*9/4 bes,2 c2*3/2 ~ c4 \finalis
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
        "VII"
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
