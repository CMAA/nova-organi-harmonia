\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.163
%(volume.page)

global = {
 \key c \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Omnes gentes" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Omnes gentes"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Omnes gentes" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- _ ia, _ _ _ 
\set stanza = " * " 
al -- le -- lú -- _ ia. _ _ _ 
_ _ _ _ _ _ 
_ _ _ _ _ ℣. 
O -- mnes gen -- _ _ _ _ _ tes _ 
pláu -- _ di -- _ _ _ _ _ _ _ _ _ _ _ _ _ te 
má -- _ _ _ ni -- _ _ bus: 
ju -- bi -- lá -- te _ De -- o 
in vo -- _ _ ce _ _ _ _ 
\set stanza = " * " 
ex -- sul -- ta -- ti -- ó -- nis. _ _ _ 
_ _ _ _ _ _ 
_ _ _ _ _ }

chantMusic = {
\tieDown   c'4 ees'4 ( ees'4) f'4. ees'4 ( g'4 f'4 g'4) g'4 ( bes'4 g'4 a'\prall bes'4 a'4 g'4) ~ g'4 ( f'4.)  g'4 ( aes'4 g'4 f'4) ~ f'4 ( ees'4) \divisioMaior \forceBreak

 c'4 ees'4 ( ees'4) f'4. ees'4 ( g'4 f'4 g'4) g'4 ( bes'4 g'4 a'\prall bes'4 a'4 g'4) ~ g'4 ( f'4.)  g'4 ( aes'4 g'4 f'4) ~ f'4 ( ees'4) \divisioMaior
  ees'4 ( f'4) g'4 ( aes'4 g'4) ~ g'4 ( f'4 \forceBreak
) g'4 ( f'4) g'4 ( ees'4) f'4 ( ees'4 d'4 c'4) \divisioMaior
 ees'4 ( d'4 ees'4.) g'4 ( f'4) g'4 ( f'4.) g'4 ( ees'4) f'4 ( ees'4 d'4 c'4 d'\prall ees'4 c'4) \finalis
  ees'4 ( f'4 \once \tweak #'font-size #-4 aes' ) aes'4 \forceBreak
  aes'4 ( aes'4) ~ aes'4 ( bes'4 f'4) ~ f'4 ( ees'4) \divisioMinima
  bes'4 ( aes'4) bes'4 ( c''4 aes'4) ~ aes'4 ( f'4 g'\prall aes'4 g'4 f'4 g'4) g'4 ( f'4) g'4 ( f'4 ees'4 f'4) \divisioMaior
  ees'4 ( f'4) aes'4 ( f'4 \once \tweak #'font-size #-4 g'  \forceBreak
)  g'4. aes'4 ( bes'4 g'4) aes'4 ( f'4) ~ f'4 ( ees'4) g'4 ( bes'4 g'4) \divisioMinima
  ees'4 ( f'4 g'\prall aes'4 f'4 g'4.) aes'4 ( bes'4 g'4) aes'4 ( f'4) ~ f'4 ( ees'4) g'4 ( bes'4 g'4) \divisioMinima
  bes'4 ( c''4 bes'4) ~ bes'4 ( g'4 \forceBreak
) aes'4 ( f'4 ees'4 f'\prall g'4 f'4) g'4 ( aes'4) aes'4 \divisioMaior
  aes'4 ( g'4 ees'4) f'4 ( ees'4) ~ ees'4 ( c'4.) ~ c'4 ( d'4 ees'4) f'4 ( ees'4) ~ ees'4 ( d'4) ees'4 ( d'4 c'4 d'4) d'4 ( c'4) \divisioMaxima \forceBreak

 ees'4 ees'4 f'4 ( g'4) g'4 a'4 ( a'4 g'4) f'4 ( g'4 a'\prall bes'4 c''4 bes'4) bes'4 ( a'4 g'4) \divisioMaior
 g'4 ( \once \tweak #'font-size #-4 f' ) ees'4 ( f'4) g'4 ( f'4) g'4 ( g'4 f'4) f'4. ees'4 ( f'4 g'4) bes'4 ( bes'4 f'4 \forceBreak
) g'4 ( g'4 f'4) g'4 ( ees'4 d'4) \divisioMaior
 d'4 d'4 ( ees'4 f'4) f'4 ( g'4 f'4 ees'4) f'4 ( g'4 f'4) g'4 g'4 ( bes'4 g'4 a'\prall bes'4 a'4 g'4) ~ g'4 ( f'4.)  g'4 ( aes'4 g'4 f'4) ~ f'4 ( ees'4) \divisioMaior \forceBreak

  ees'4 ( f'4) g'4 ( aes'4 g'4) ~ g'4 ( f'4) g'4 ( f'4) g'4 ( ees'4) f'4 ( ees'4 d'4 c'4) \divisioMaior
 ees'4 ( d'4 ees'4.) g'4 ( f'4) g'4 ( f'4.) g'4 ( ees'4) f'4 ( ees'4 d'4 c'4 d'\prall ees'4 c'4) \finalis

}

altoMusic = {
c'4 ~ c'2 d'2*3/4 ees'2*4/2 d'2 ~ d'2*4/2 ~ d'2*7/4 ees'2*3/2 bes2 ~ bes4 \divisioMaior
c'4 ~ c'2 bes2*3/4 ees'2*4/2 d'2 ~ d'2*4/2 ~ d'2*7/4 c'2*3/2 bes2*3/2 ees'2*4/2 d'2*3/2 ~ d'2 bes2 c'2*3/2 ~ c'4 \divisioMaior
g2*7/4 bes2*9/4 ~ bes2 g2*3/2 ~ g2*3/2 ~ g4 c'4 ~ c'2*3/2 ~ c'2 ~ c'2 bes2*3/2 ees'2*4/2 ~ ees'2 c'2*6/2 ~ c'2 ~ c'2*3/2 ~ c'4 ees'2*5/2 ~ ees'2*3/4 c'2*4/2 ~ c'2*3/2 d'2*3/2 ees'2*3/2 ~ ees'2*7/4 c'2*4/2 r2 d'4 ~ d'2*3/2 ees'2 ~ ees'2*3/2 ~ ees'2 c'2 ~ c'2 ~ c'2*3/2 ~ c'2*4/2 bes2*7/4 ~ bes2 aes2 g2*3/2 ~ g2*4/2 ~ g2 \divisioMaxima
r2 d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'4 ~ \divisioMaior
d'2 c'2*4/2 bes2*3/2 ~ bes2*3/4 ees'2*3/2 f'2 ~ f'4 d'2*3/2 c'2 d'4 \divisioMaior
bes4 ~ bes2*3/2 ~ bes2*4/2 ~ bes2*3/2 ~ bes4 c'2 bes2*4/2 ~ bes2*7/4 ~ bes2*3/2 ~ bes2*3/2 c'2 ~ c'2 d'2*5/2 bes2 c'2*3/2 ~ c'4 \divisioMaior
g2*7/4 bes2*9/4 ~ bes2 g2*3/2 ~ g2*3/2 ~ g4 \finalis
}

tenorMusic = {
r2*3/2 bes2*3/4 c'2*4/2 ~ c'2 bes2*4/2 ~ bes2*7/4 ~ bes2*3/2 aes2 g4 \divisioMaior
r4 g2 f2*3/4 g2*4/2 ~ g2 ~ g2*4/2 bes2*7/4 aes2*3/2 g2*3/2 ~ g2*4/2 ~ g2*3/2 bes2 g2 ~ g2*3/2 ees4 ~ \divisioMaior
ees2*7/4 d2*9/4 ees2 ~ ees2*3/2 f2*3/2 ees4 r4 aes2*3/2 r2 aes2 bes2*3/2 g2*4/2 aes2 a2*6/2 bes2 g2*3/2 aes4 a2*5/2 bes2*3/4 aes2*4/2 g2*3/2 ~ g2*3/2 ~ g2*3/2 c'2*7/4 aes2*4/2 bes2*3/2 ~ bes2*3/2 g2 ~ g2*3/2 f2 g2 ees2 ~ ees2*3/2 ~ ees2*4/2 c2*7/4 ~ c2 ~ c2 ~ c2*3/2 f2*4/2 ees2 \divisioMaxima
c'2 ~ c'2*3/2 bes2*3/2 ~ bes2*3/2 ~ bes2*3/2 c'2 bes4 ~ \divisioMaior
bes2 g2*4/2 ~ g2*3/2 bes2*3/4 ~ bes2*3/2 ~ bes2*3/2 ~ bes2*3/2 ees2 f4 ~ \divisioMaior
f4 ~ f2*3/2 ees2*4/2 d2*3/2 ~ d4 ees2 d2*4/2 ~ d2*7/4 ees2*3/2 g2*3/2 ~ g2 ees2 bes2*5/2 g2 ~ g2*3/2 ees4 ~ \divisioMaior
ees2*7/4 d2*9/4 ees2 ~ ees2*3/2 f2*3/2 ees4 \finalis
}

bassMusic = {
r2*17/4 g2 ~ g2*4/2 bes2*7/4 ees2*3/2 ~ ees2 ~ ees4 \divisioMaior
c4 ~ c2 d2*3/4 c2*4/2 ~ c2 bes,2*4/2 ~ bes,2*7/4 ees2*3/2 ~ ees2*3/2 c2*4/2 bes,2*3/2 ~ bes,2 ees2 c2*3/2 ~ c4 ~ \divisioMaior
c2*7/4 bes,2*9/4 g,2 c2*3/2 ~ c2*3/2 ~ c4 r2*4/2 f2 ~ f2 g2*3/2 ees2*4/2 c2 f2*6/2 ~ f2 ~ f2*3/2 ~ f4 c2*5/2 ~ c2*3/4 f2*4/2 c2*3/2 bes,2*3/2 c2*3/2 ~ c2*7/4 f2*4/2 g2*3/2 ees2*3/2 ~ ees2 d2*3/2 c2 bes,2 ~ bes,2 aes,2*3/2 a,2*4/2 g,2*7/4 f,2 ~ f,2 c2*3/2 ~ c2*4/2 ~ c2 \divisioMaxima
r2*8/2 a2*3/2 g2*3/2 ~ g2 ~ g4 \divisioMaior
bes,2 c2*4/2 ees2*3/2 d2*3/4 c2*3/2 d2*3/2 bes,2*3/2 ~ bes,2 ~ bes,4 ~ \divisioMaior
bes,4 a,2*3/2 g,2*4/2 bes,2*3/2 g,4 ~ g,2 ~ g,2*4/2 bes,2*7/4 ees2*3/2 d2*3/2 c2 ~ c2 bes,2*5/2 ees2 c2*3/2 ~ c4 ~ \divisioMaior
c2*7/4 bes,2*9/4 g,2 c2*3/2 ~ c2*3/2 ~ c4 \finalis
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
