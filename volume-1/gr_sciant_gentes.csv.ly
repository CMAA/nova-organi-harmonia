\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.140
%(volume.page)

global = {
 \key c \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Sciant gentes" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Sciant gentes"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Sciant gentes" }
    \line {}
  }
}

chantText = \lyricmode {
Sci -- ant _ _ _ gen -- _ tes _ _ _ 
\set stanza = " * " 
quó -- ni -- am no -- _ men ti -- bi 
De -- _ us: _ _ 
tu so -- _ _ lus _ Al -- tís -- si -- mus _ _ _ _ _ _ _ _ _ 
su -- per o -- _ mnem _ _ ter -- _ _ ram. _ _ _ _ _ _ ℣. 
De -- us me -- _ _ _ us, 
po -- ne il -- los ut ro -- _ _ _ _ _ _ _ _ _ _ tam, _ _ 
et sic -- ut stí -- _ _ _ _ _ _ pu -- lam _ _ 
an -- _ _ te fá -- _ _ _ _ _ ci -- em 
\set stanza = " * " ven -- _ ti. _ _ _ }

chantMusic = {
\tieDown   c'4 ( ees'4 c'4) c'4 ees'4 ( ees'4 c'4) ees'4 ( ees'4 ees'4) g'4 ( f'4 ees'4) f'4 ( ees'4) ~ ees'4 ( ees'4) c'4 ees'4 ( ees'4 c'4) d'4. ees'4 ( f'4 c'4) ~ c'4 ( bes4) \divisioMaior
 c'4 \forceBreak
 ees'4 ( c'4 ees'4) f'4 ( ees'4 f'4)  f'4 ( ees'4) f'4 aes'4 ( f'4 g'4) g'4  g'4 ( f'4 g'\prall aes'4) g'4 \divisioMaior
  f'4 ( ees'4) f'4 aes'4 ( f'4 g'4) g'4 ( f'4 aes'4) g'4 ( aes'4 g'4 aes'4 f'4) ~ f'4 ( ees'4) \divisioMaxima \forceBreak

 ees'4 g'4 ( ees'4) f'4 ( g'4) bes'4 ( bes'4 g'4) g'4 ( f'4) g'4 ( f'4 ees'4 f'4) \divisioMinima
 g'4 ( bes'4 a'4 bes'4) g'4 ( ees'4) f'4 ( \once \tweak #'font-size #-4 ees' ) ees'4 ( f'4) c'4 ( ees'4 f'4.) ees'4 ( g'4) bes'4 ( f'4 ees'4) ~ ees'4 ( c'4 \forceBreak
) ees'4 ( ees'4) f'4 ( d'4) ees'4 ( f'4 c'4) d'4 ( c'4) ~ c'4 ( bes4) \divisioMaxima
 bes4 c'4 ees'4 ( f'4) g'4 ( f'4) g'4 bes'4 ( bes'4) g'4 ( bes'4 f'4) ees'4. c'4 ( f'4 d'4 \forceBreak
) ees'4 ( f'\prall g'4) f'4 ( g'4 ees'4) ~ ees'4 ( f'4 ees'4 d'4) \divisioMinima
 g'4 ( bes'4 g'4 f'4) g'4 ( ees'4 c'4.) ees'4 ( ees'4) f'4 ( ees'4) ~ ees'4 ( c'4) \finalis
 g'4 ( f'4) f'4 f'4 ( g'4) bes'4 ( g'4) bes'4 ( \forceBreak
 f'4) ~ f'4 ( ees'4) ees'4 \divisioMaior
 g'4 ( bes'4) bes'4 ( a'4) bes'4 ( bes'4 bes'4) g'4 ( f'4) \divisioMinima
 f'4 ( \once \tweak #'font-size #-4 ees' )  f'4. ees'4 ( g'4 f'4) g'4 ( aes'4 f'4 ees'4.) g'4 ( ees'4) f'4 ( g'4) bes'4 ( bes'4) c''4 \forceBreak
 ees''4 ( ees''4) ~ ees''4 ( c''4 bes'4) ~ bes'4 ( g'4 f'4) \divisioMinima
 bes'4 ( c''4 bes'4) ~ bes'4 ( g'4) g'4 ( bes'4 g'4) bes'4 ( bes'4) ~ bes'4 ( g'4) \divisioMaxima
 ees'4 ees'4 f'4 ( g'4 \once \tweak #'font-size #-4 f' ) g'4 ( ees'4) f'4 ( g'4 f'4 ees'4) \divisioMinima \forceBreak

 g'4 ( f'4) g'4 ( ees'4 f'4.) c'4 ( d'\prall ees'4) d'4 ( f'\prall g'4 f'4) g'4 bes'4 ( bes'4) g'4 ( ees'4 f'4) f'4 ( g'4 f'4) ees'4 ( ees'4) c'4 ( d'4 c'4) \divisioMaxima
 c'4 ees'4 ( ees'4) ~ ees'4 ( \once \tweak #'font-size #-4 c' ) d'4 ( ees'4 \forceBreak
)  f'4 ( g'4 f'4 g'4) ~ g'4 ( f'4) g'4. ees'4 ( g'4) aes'4 ( f'4 ees'4 d'4) ees'4 ( f'\prall g'4) aes'4 ( g'4 f'4) g'4 ( f'4) f'4 \divisioMinima
  g'4 ( aes'4 f'4 ees'4) g'4 bes'4 ( bes'4 g'4 f'4 \forceBreak
) g'4 ( f'4 g'4 ees'4 d'4) ees'4 ( f'4) \divisioMinima
 c'4 ( d'\prall ees'4 f'4.) ees'4 ( g'4 f'4 ees'4 d'4 c'4 d'\prall ees'4 c'4) \finalis

}

altoMusic = {
c'2*3/2 ~ c'4 ~ c'2*3/2 ~ c'2*3/2 ~ c'2*3/2 ~ c'2 bes2*3/2 aes2*3/2 g2*7/4 f2*3/2 \divisioMaior
c'4 ~ c'2*6/2 ~ c'2*3/2 ~ c'2*3/2 ees'4 ~ ees'2*4/2 ~ ees'4 bes2*3/2 c'2*3/2 ees'2*3/2 ~ ees'2*4/2 c'2*3/2 \divisioMaxima
r4 bes2*4/2 ~ bes2*5/2 ~ bes2*3/2 d'4 ~ \divisioMinima
d'2*4/2 ees'2 ~ ees'2 c'2*3/2 ~ c'2*5/4 ~ c'2 bes2 ~ bes2*3/2 aes2*4/2 bes2*4/2 ~ bes2*3/2 ~ \divisioMaxima
bes2 ~ bes2*5/2 ees'2 d'2*3/2 c'2*3/4 ~ c'2*3/2 bes2*3/2 ~ bes2 ~ bes2*3/2 ~ bes2 \divisioMinima
d'2*4/2 bes2*7/4 aes2*3/2 g2*3/2 \finalis
d'2*3/2 ~ d'2 ~ d'2*3/2 bes2*4/2 \divisioMaior
ees'2 ~ ees'2 f'2*3/2 ~ f'2 \divisioMinima
bes2 c'2*3/4 ~ c'2*3/2 ees'2*9/4 ~ ees'2*4/2 f'2*3/2 g'2 ees'2 d'2 ~ d'2 ~ \divisioMinima
d'2 ~ d'2*3/2 ees'2*3/2 ~ ees'2 d'2 \divisioMaxima
c'2 ~ c'2*3/2 ~ c'2 ~ c'2 ~ c'2 \divisioMinima
bes2*11/4 ~ bes2*3/2 ~ bes2 c'2*3/2 d'2 ~ d'2*3/2 ~ d'2*3/2 c'2 g2 ~ g4 \divisioMaxima
r4 aes2 bes2*4/2 ~ bes2*3/2 ~ bes2*3/2 ~ bes2*7/4 aes2*4/2 bes2*3/2 c'2*3/2 d'2 bes4 ~ bes2*5/2 ~ bes2*4/2 ~ bes2*5/2 ~ bes2 ~ \divisioMinima
bes2*3/2 ~ bes2*3/4 ~ bes2*3/2 aes2 ~ aes2*3/2 bes4 \finalis
}

tenorMusic = {
ees2*3/2 f4 g2*3/2 ~ g2*3/2 ees2*3/2 ~ ees2 ~ ees2*3/2 ~ ees2*3/2 ~ ees2*7/4 f2*3/2 ~ \divisioMaior
f4 g2*3/2 ~ g2*3/2 ~ g2*3/2 f2*3/2 g4 aes2*4/2 bes4 g2*3/2 f2*3/2 ees2*3/2 f2*4/2 g2*3/2 \divisioMaxima
ees4 ~ ees2*4/2 d2*3/2 ees2 d2*4/2 \divisioMinima
bes2*4/2 ~ bes2 g2 ~ g2*3/2 ~ g2*5/4 ~ g2 d2 ees2*3/2 ~ ees2*4/2 ~ ees2*4/2 d2*3/2 \divisioMaxima
g2 ~ g2*5/2 ~ g2 ~ g2*3/2 ~ g2*3/4 ~ g2*3/2 ~ g2*3/2 d2 ees2*3/2 g2 \divisioMinima
d2*4/2 ees2*7/4 ~ ees2*3/2 ~ ees2*3/2 \finalis
bes2*3/2 ~ bes2 ~ bes2*3/2 ~ bes2*4/2 ~ \divisioMaior
bes2 ~ bes2 ~ bes2*3/2 a2 \divisioMinima
g2*7/4 ~ g2*3/2 c'2*9/4 bes2*4/2 ~ bes2*3/2 c'2 bes2*4/2 ~ bes2 ~ \divisioMinima
bes2 ~ bes2*3/2 ~ bes2*3/2 c'2 bes2 \divisioMaxima
g2 ~ g2*3/2 ~ g2 ~ g2 ~ g2 \divisioMinima
ees2*11/4 ~ ees2*3/2 g2 a2*3/2 g2 ~ g2*3/2 ~ g2*5/2 f2 ees4 \divisioMaxima
r4 f2 ees2*4/2 d2*3/2 ees2*3/2 ~ ees2*7/4 ~ ees2*4/2 ~ ees2*3/2 ~ ees2*3/2 d2 ~ d4 ees2*5/2 ~ ees2*4/2 ~ ees2*5/2 d2 \divisioMinima
ees2*3/2 d2*3/4 c2*3/2 ~ c2 ees2*3/2 ~ ees4 \finalis
}

bassMusic = {
c2*3/2 ~ c4 ~ c2*3/2 bes,2*3/2 ~ bes,2*3/2 aes,2 g,2*3/2 f,2*3/2 c2*7/4 d2*3/2 ~ \divisioMaior
d4 c2*3/2 d2*3/2 ees2*3/2 f2*3/2 ~ f4 ~ f2*4/2 ees4 r2*6/2 c2*3/2 ~ c2*4/2 ~ c2*3/2 \divisioMaxima
r4 g,2*4/2 ~ g,2*3/2 ~ g,2 bes,2*4/2 ~ \divisioMinima
bes,2*4/2 c2 ~ c2 d2*3/2 c2*5/4 bes,2 ~ bes,2 g,2*3/2 f,2*4/2 g,2*4/2 ~ g,2*3/2 \divisioMaxima
ees2 d2*5/2 c2 bes,2*3/2 ~ bes,2*3/4 aes,2*3/2 g,2*3/2 ~ g,2 bes,2*3/2 g,2 \divisioMinima
bes,2*4/2 c2*7/4 f,2*3/2 c2*3/2 \finalis
r2*3/2 a2 g2*3/2 ~ g2*4/2 \divisioMaior
ees2 c2 d2*3/2 ~ d2 ~ \divisioMinima
d2*7/4 c2*3/2 ~ c2*9/4 ees2*4/2 g2*3/2 c'2 g2*4/2 bes2 \divisioMinima
a2 g2*3/2 ~ g2*3/2 ~ g2 ~ g2 \divisioMaxima
c2 d2*3/2 ees2 d2 c2 ~ \divisioMinima
c2*11/4 g,2*3/2 ~ g,2 ~ g,2*3/2 ~ g,2 bes,2*3/2 c2*5/2 ~ c2 ~ c4 ~ \divisioMaxima
c4 f,2 g,2*4/2 ~ g,2*3/2 ~ g,2*3/2 ees,2*7/4 f,2*4/2 g,2*3/2 c2*3/2 bes,2 ~ bes,4 r2*5/2 d2*4/2 c2*5/2 d2 \divisioMinima
g,2*3/2 ~ g,2*3/4 c2*3/2 f,2 ~ f,2*3/2 c4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Gradual"
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
