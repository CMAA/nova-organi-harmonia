\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.148
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Jubilate Domino" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Jubilate Domino"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Jubilate Domino" }
    \line {}
  }
}

chantText = \lyricmode {
Ju -- bi -- lá -- _ te _ 
\set stanza = " * " Dó -- _ mi -- no _ _ 
o -- mnis ter -- ra: _ _ _ _ _ _ 
ser -- ví -- te _ Dó -- mi -- no _ 
in _ _ læ -- tí -- _ _ _ _ _ _ ti -- a. _ ℣. 
In -- trá -- te in con -- spé -- ctu e -- _ _ jus, 
in ex -- sul -- ta -- ti -- _ ó -- ne. _ _ _ ℣. 
Sci -- tó -- te quod _ Dó -- mi -- nus _ 
i -- _ _ pse est De -- _ _ _ _ _ us. _ ℣ 
I -- pse fe -- _ cit nos, 
et _ non i -- pse nos: _ _ _ _ _ _ _ _ _ 
nos au -- tem pó -- _ pu -- lus _ e -- jus, _ _ _ 
et o -- ves pá -- _ scu -- æ 
\set stanza = " * " e -- jus. _ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   f'4 f'4 f'4 g'4 ( a'4 g'4) f'4 g'4 ( g'4 f'4)  f'4 ( bes'4) ~ bes'4 ( c''4) g'4 f'4 ( ees'4) f'4 ( g'4) ~ g'4 ( f'4) \divisioMaior
 a'4 ( bes'4) g'4 ( bes'4 a'4) bes'4 \forceBreak
 bes'4 ( bes'4) ~ bes'4 ( c''4 g'4) ~ g'4 ( f'4) g'4 ( f'4) bes'4 ( bes'4 g'4) bes'4 ( f'4) ~ f'4 ( ees'4) \divisioMaxima
 f'4 g'4 ( ees'4 f'4) f'4 ( g'4) bes'4 ( a'4) bes'4 g'4 ( a'\prall bes'4) a'4 ( bes'4 g'4) ~ g'4 ( f'4) \divisioMaior \forceBreak

  ees'4 ( g'4) aes'4 ( g'4) aes'4 ( \once \tweak #'font-size #-4 f' ) bes'4 bes'4. a'4 ( bes'4 f'4.)  bes'4 ( bes'4 g'4 f'4) g'4 ( aes'4 f'4 ees'4) \divisioMinima
  g'4 ( bes'4) g'4 ( a'4) f'4 ( ees'4) f'4 f'4 g'4 ( g'4 f'4) \finalis \forceBreak

 f'4 f'4 ( g'\prall a'4 bes'4) bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) f'4 g'4 ( f'4) g'4 ( a'\prall bes'4 a'4 g'4) a'4 ( bes'4 g'4) g'4 ( f'4) \divisioMaior
 ees'4 ees'4 ( g'4 bes'4 \forceBreak
) a'4 ( f'4 g'4) f'4 ( ees'4 f'4) f'4 ( g'4) bes'4 ( a'4 bes'4) bes'4 ( g'4 a'\prall bes'4) bes'4 ( bes'4) ~ bes'4 ( a'4 g'4) a'4 ( g'4 f'4) g'4 ( f'4) \finalis
 ees'4 g'4 ( bes'4) a'4 ( f'4 g'4 \forceBreak
) f'4 ( ees'4 f'4) g'4 ( bes'4 a'4) bes'4 g'4 ( a'\prall bes'4) a'4 ( bes'4 g'4) ~ g'4 ( f'4) \divisioMaior
  ees'4 ( g'4) aes'4 ( g'4) aes'4 ( f'4) bes'4 bes'4 bes'4. a'4 ( bes'4 f'4.)  bes'4 ( bes'4 g'4 f'4 \forceBreak
) g'4 ( aes'4 f'4 ees'4) \divisioMinima
  g'4 bes'4 ( g'4) a'4 ( f'4) f'4 g'4 ( g'4 f'4) \finalis
 bes'4 ( bes'4 a'4 bes'4 a'4) a'4 ( f'4) bes'4. a'4 ( bes'4 a'4) a'4 ( g'4 g'4) f'4 \divisioMaior
 g'4 ( f'4) ~ f'4 ( ees'4 \forceBreak
) f'4 ( g'4 f'4 g'4) g'4 ( bes'4 a'4 bes'4) g'4 ( f'4) f'4 ( ees'4 f'4) bes'4. g'4 ( c''4 bes'4 a'4) g'4 ( bes'4 a'4 g'4) f'4 ( a'4 g'4 f'4) \divisioMinima
 g'4 ( f'4) g'4 ( f'4) g'4 ( f'4 \forceBreak
) bes'4 ( bes'4 g'4) bes'4 ( f'4) ~ f'4 ( ees'4) \divisioMaxima
 ees'4 g'4 ( bes'4) a'4 ( f'4 g'4) f'4 ( ees'4) f'4 ( g'4) f'4 f'4 ( g'4) bes'4 ( a'4 bes'4) bes'4 ( g'4 a'\prall bes'4) bes'4 ( bes'4) ~ bes'4 ( a'4 g'4 \forceBreak
) a'4 ( g'4 f'4) g'4 ( f'4) \divisioMaior
 f'4 ( g'4) f'4 ( g'4) f'4 g'4 ( f'4) g'4 ( a'\prall bes'4) f'4 ( g'4 f'4 ees'4) ees'4 ( g'4 bes'4)  bes'4 bes'4 ( a'4 bes'4 g'4 f'4) ~ f'4 ( f'4) g'4 ( \forceBreak
 f'4) ~ f'4 ( ees'4 f'4) \divisioMinima
 bes'4 ( bes'4 bes'4) c''4 ( bes'4 a'4 g'4) ~ g'4 ( f'4) g'4 ( bes'4 a'4 g'4 f'4) ~ f'4 ( g'4 ees'4) \divisioMinima
 g'4 ( a'\prall bes'4 a'4 g'4) a'4 ( g'4) ~ g'4 ( f'4) \finalis

}

altoMusic = {
r2 d'4 ~ d'2*4/2 ~ d'2*4/2 ~ d'2*4/2 bes2*3/2 c'2*3/2 \divisioMaior
f'2 ~ f'2*4/2 g'2 d'2 c'2*5/2 d'2*4/2 c'2*3/2 \divisioMaxima
r4 d'2*3/2 ~ d'2*4/2 ~ d'4 ees'2*3/2 d'2 ~ d'2*3/2 ees'2 f'2*5/2 ~ f'2*3/4 ~ f'2 ~ f'2*3/4 ees'2*4/2 ~ ees'2*3/2 ~ ees'4 r4 d'2 c'2*4/2 a4 c'2 ~ c'4 \finalis
d'4 ~ d'2*5/2 ees'2 f'2*4/2 ~ f'2 d'2*5/2 ~ d'2*3/2 c'2 \divisioMaior
r4 ees'4 ~ ees'2 c'2*3/2 ~ c'2*3/2 d'2 ~ d'2*3/2 ees'2*4/2 f'2 ~ f'2*3/2 c'2*3/2 ~ c'2 \finalis
ees'4 ~ ees'2 d'2*3/2 ~ d'2*3/2 ~ d'2*4/2 ~ d'2*3/2 c'2 d'2*3/2 ees'2 ~ ees'2*4/2 f'2 d'2*3/4 ~ d'2 ~ d'2*3/4 ~ d'2 ees'2 ~ ees'2*4/2 ~ ees'4 d'2*4/2 ~ d'4 c'2 ~ c'4 \finalis
f'2*5/2 ~ f'2 ~ f'2*3/4 ~ f'2*3/2 ees'2*3/2 r4 \divisioMaior
r4 d'2*3/2 ~ d'2*4/2 ~ d'2*4/2 c'2 bes2*3/2 ~ bes2*3/4 d'2*4/2 ~ d'2*4/2 ~ d'2*4/2 ~ \divisioMinima
d'2*4/2 ees'2 f'2*4/2 ~ f'4 ~ f'4 ees'4 ~ \divisioMaxima
ees'4 d'2 ~ d'2*3/2 c'2 d'2*3/2 ~ d'2 ~ d'2*3/2 ees'2*4/2 f'2 ~ f'2*3/2 c'2*3/2 ~ c'2 \divisioMaior
d'2 ~ d'2*3/2 ~ d'2 ~ d'2*3/2 ~ d'2*4/2 c'2*3/2 ~ c'4 bes2*3/2 d'2 ~ d'2*3/2 c'2*3/2 ~ c'4 \divisioMinima
d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*4/2 ~ d'2*3/2 ees'4 ~ \divisioMinima
ees'2 f'2 c'2 ~ c'2 ~ c'4 \finalis
}

tenorMusic = {
r2*3/2 bes2*4/2 ~ bes2*4/2 ~ bes2*4/2 ~ bes2*3/2 a2*3/2 \divisioMaior
d'2 ~ d'2*3/2 ~ d'4 ~ d'2 bes2 a2*5/2 bes2 ~ bes2 c'2*3/2 \divisioMaxima
r4 bes2*3/2 ~ bes2*4/2 ~ bes4 a2*3/2 bes2 ~ bes2*3/2 ~ bes2 c'2*5/2 ~ c'2*3/4 bes2*7/4 ~ bes2*4/2 aes2*4/2 g4 ~ g2*4/2 bes2 g4 bes2 a4 \finalis
r4 bes2*5/2 ~ bes2 ~ bes2*4/2 a2 g2 c'2*3/2 bes2*3/2 a2 \divisioMaior
bes2 ~ bes2 f2*3/2 g2*3/2 a2 g2*3/2 ~ g2*4/2 f2 bes2*3/2 ~ bes2*3/2 ~ bes4 a2 c'2 bes2*3/2 ~ bes2*3/2 ~ bes2*3/2 g4 ~ g2*3/2 ~ g2 a2*3/2 bes2 c'2*4/2 ~ c'2 bes2*3/4 a2 bes2*3/4 ~ bes2 ~ bes2 c'2*4/2 ~ c'4 d'2 c'2 bes4 ~ bes2 a4 \finalis
bes2*5/2 c'2 d'2*3/4 bes2*3/2 ~ bes2*3/2 a4 ~ \divisioMaior
a4 bes2*3/2 a2*4/2 g2*4/2 ~ g2 ~ g2*3/2 d2*3/4 ~ d2*4/2 g2*4/2 a2*4/2 \divisioMinima
bes2*4/2 ~ bes2 ~ bes2*4/2 ~ bes2*3/2 \divisioMaxima
g'4 g2 f2*3/2 g2 a2*3/2 ~ a2 g2*3/2 ~ g2*4/2 f2 bes2*3/2 ~ bes2*3/2 a2 ~ \divisioMaior
a2 ~ a2*3/2 ~ a2 g2*3/2 ~ g2*4/2 ~ g4 ees2 ~ ees4 f2*3/2 a2 bes2*3/2 ~ bes2*3/2 a4 \divisioMinima
r2*3/2 f2*3/2 a2*3/2 bes2*4/2 g2*3/2 ~ g4 \divisioMinima
bes2 ~ bes2 ~ bes2 ~ bes2 a4 \finalis
}

bassMusic = {
r2*7/2 a2*4/2 g2*4/2 ~ g2*3/2 a2*3/2 \divisioMaior
r2 bes2*3/2 a4 g2 ~ g2 ~ g2*5/2 ~ g2 bes2 r2*3/2 \divisioMaxima
r4 r2*3/2 a2*4/2 g4 ~ g2*3/2 ~ g2 bes2*3/2 g2 ees2*5/2 d2*3/4 ~ d2*7/4 c2*4/2 ~ c2*4/2 ~ c4 g2*4/2 ~ g2*3/2 f2 ~ f4 \finalis
bes,4 ~ bes,2*5/2 c2 d2*4/2 ~ d2 g2 ~ g2*3/2 ~ g2*3/2 a2 \divisioMaior
g2 c2 d2*3/2 ~ d2*3/2 c2 bes,2*3/2 c2*4/2 d2 ~ d2*3/2 ees2*3/2 f2*3/2 r2*5/2 g2*3/2 f2*3/2 ~ f4 ees2*3/2 ~ ees2 d2*3/2 c2 ~ c2*4/2 d2 g2*3/4 ~ g2 ~ g2*3/4 ~ g2 ~ g2 c'2*4/2 r4 g2 ~ g2 ~ g4 ees2 f4 \finalis
d2*5/2 ~ d2 ~ d2*3/4 ~ d2*3/2 c2*3/2 d4 ~ \divisioMaior
d4 bes,2*3/2 ~ bes,2*4/2 ~ bes,2*4/2 a,2 g,2*3/2 ~ g,2*3/4 bes,2*8/2 ~ bes,2*4/2 ~ \divisioMinima
bes,2*4/2 c2 d2*4/2 g2*3/2 \divisioMaxima
c4 bes,2 d2*3/2 ~ d2 ~ d2*3/2 c2 bes,2*3/2 c2*4/2 d2 ~ d2*3/2 ees2*3/2 f2 \divisioMaior
d2 c2*3/2 bes,2 ~ bes,2*3/2 c2*4/2 ~ c4 ~ c2 ees4 d2*3/2 ~ d2 g2*3/2 ~ g2*3/2 ~ g4 ~ \divisioMinima
g2*3/2 d2*3/2 ~ d2*3/2 bes,2*4/2 c2*3/2 ~ c4 ~ \divisioMinima
c2 d2 ees2 f2 ~ f4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Tract"
        "VIII."
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
