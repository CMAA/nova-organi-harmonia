\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.199
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Laudate... omnes gentes" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Laudate... omnes gentes"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Laudate... omnes gentes" }
    \line {}
  }
}

chantText = \lyricmode {
Lau -- dá -- _ te _ 
\set stanza = " * " Dó -- _ mi -- num _ _ 
o -- mnes gen -- tes: _ _ _ _ _ _ 
et col -- lau -- dá -- te _ e -- um _ _ _ 
o -- _ _ mnes pó -- _ _ _ _ _ pu -- li. _ ℣. 
Quó -- ni -- am con -- fir -- má -- _ ta est su -- per nos _ _ _ 
mi -- se -- ri -- cór -- di -- a e -- _ _ jus: _ _ _ _ _ 
et vé -- ri -- tas _ Dó -- mi -- ni _ 
ma -- _ net 
\set stanza = " * " in æ -- ter -- _ _ _ _ _ _ num. _ _ _ _ }

chantMusic = {
\tieDown   f'4 f'4 g'4 ( a'4 g'4) f'4 g'4 ( g'4 f'4) \divisioMinima
 f'4 ( bes'4) ~ bes'4 ( c''4) g'4 f'4 ( ees'4) f'4 ( g'4) ~ g'4 ( f'4) \divisioMaior
 a'4 ( bes'4) g'4 ( bes'4 a'4 \forceBreak
) bes'4 bes'4 ( bes'4) ~ bes'4 ( c''4 g'4) ~ g'4 ( f'4) g'4 ( f'4) bes'4 ( bes'4 g'4) bes'4 ( f'4) ~ f'4 ( ees'4) \divisioMaxima
 ees'4 g'4 ( bes'4) a'4 ( f'4 g'4) f'4 ( ees'4 f'4) f'4 ( g'4) bes'4 ( a'4 bes'4 \forceBreak
) bes'4 ( g'4 a'\prall bes'4) bes'4 ( bes'4) ~ bes'4 ( a'4 g'4) a'4 ( g'4 f'4) g'4 ( f'4) \divisioMaior
  ees'4 ( g'4) aes'4 ( g'4) aes'4 ( \once \tweak #'font-size #-4 f' ) bes'4 bes'4. a'4 ( bes'4 f'4.)  bes'4 ( bes'4 g'4 f'4 \forceBreak
) g'4 ( aes'4 f'4 ees'4) \divisioMinima
  g'4 bes'4 ( g'4) a'4 ( f'4) ees'4 ( f'4) f'4 g'4 ( g'4 f'4) \finalis
 f'4 f'4 f'4 ( \once \tweak #'font-size #-4 c' ) f'4 ( \once \tweak #'font-size #-4 g' ) f'4 \forceBreak
 f'4 ( g'4) bes'4 ( a'4 bes'4) bes'4 bes'4 \divisioMinima
 bes'4 ( bes'4 a'4) f'4 g'4 ( f'4) g'4 ( a'\prall bes'4 a'4 g'4) a'4 ( bes'4 g'4) ~ g'4 ( f'4) \divisioMaior
 f'4 f'4 ( g'4 f'4) ees'4 ( f'4) f'4 ( g'4 \once \tweak #'font-size #-4 bes'  \forceBreak
) bes'4 ( a'4) a'4 a'4 ( c''4) d''4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( g'4) ~ g'4 ( f'4) g'4 ( f'4) bes'4 ( bes'4 g'4) bes'4 ( f'4) ~ f'4 ( ees'4) \divisioMaxima
 ees'4 g'4 ( bes'4) a'4 ( f'4 g'4) f'4 ( ees'4 f'4 \forceBreak
) g'4 ( bes'4 a'4) bes'4 g'4 ( a'\prall bes'4) a'4 ( bes'4 g'4) ~ g'4 ( f'4) \divisioMaior
 g'4 ( f'4) g'4 ( a'\prall bes'4) f'4 ( g'4 f'4 ees'4)  ees'4 ( g'4 bes'4) bes'4 bes'4 ( a'4 bes'4 g'4 f'4 \forceBreak
) ~ f'4 ( f'4) g'4 ( f'4) ~ f'4 ( ees'4 f'4) \divisioMinima
 bes'4 ( bes'4 bes'4) c''4 ( bes'4 a'4 g'4) ~ g'4 ( f'4) f'4 ( g'4 f'4 ees'4) \divisioMinima
 g'4 ( a'\prall bes'4 a'4 bes'4) ~ bes'4 ( g'4) a'4 ( g'4) ~ g'4 ( f'4) \finalis

}

altoMusic = {
d'4 c'2*4/2 ~ c'4 ~ c'2*3/2 \divisioMinima
d'4 ~ d'2*4/2 ees'2*3/2 c'2*3/2 \divisioMaior
f'2 d'2*3/2 ~ d'4 ees'2 f'2 d'2*3/2 ~ d'2 ~ d'2*4/2 bes2 ~ bes4 \divisioMaxima
f'4 ees'2 ~ ees'2*3/2 r2*3/2 d'2 ~ d'2*3/2 ~ d'2*4/2 f'2 ees'2*3/2 c'2*3/2 ~ c'2 ees'2 ~ ees'2*4/2 f'4 ~ f'2*7/4 ~ f'2*3/4 ees'2*4/2 ~ ees'2 ~ ees'2 ~ ees'2*3/2 c'2 ~ c'2 ~ c'4 ~ c'2 ~ c'4 \finalis
d'2 c'2 ~ c'2*3/2 d'2*6/2 ~ d'4 \divisioMinima
f'2*3/2 ~ f'4 d'2 ~ d'2 d;2*5/2 d'2*3/2 ~ \divisioMaior
d'4 ~ d'2*3/2 ees'2 f'2*3/2 ~ f'2*3/2 ~ f'2*3/2 ~ f'2*4/2 ees'2*3/2 d'2 ~ d'2*4/2 r2*3/2 \divisioMaxima
f'4 ees'2 ~ ees'2*3/2 r2*3/2 d'2*3/2 ~ d'4 ~ d'2*3/2 ~ d'2 ~ d'2*3/2 ~ \divisioMaior
d'2 ~ d'2*3/2 r2*3/2 ees'4 ~ ees'2*3/2 f'4 ~ f'2*4/2 ~ f'4 c'2*3/2 ~ c'2*3/2 ~ c'4 \divisioMinima
f'2*3/2 ees'2*3/2 ~ ees'2*3/2 r2*4/2 \divisioMinima
d'2*4/2 f'2*4/2 c'2 ~ c'4 \finalis
}

tenorMusic = {
bes4 ~ bes2*4/2 ~ bes4 a2*3/2 \divisioMinima
bes4 ~ bes2*4/2 ~ bes2*3/2 ~ bes2 a4 \divisioMaior
c'2 ~ c'2*3/2 bes4 ~ bes2 ~ bes2 a2*3/2 ~ a2 g2*4/2 aes2 g4 \divisioMaxima
r4 bes2 c'2*3/2 bes2*3/2 ~ bes2 ~ bes2*3/2 ~ bes2*4/2 ~ bes2 ~ bes2*3/2 ~ bes2*3/2 a2 bes2 ~ bes2*4/2 ~ bes4 c'2*7/4 bes2*3/4 ~ bes2*4/2 ~ bes2 g2 bes2*3/2 ~ bes2 g2 a4 bes2 a4 \finalis
bes2 ~ bes2 a2*3/2 bes2*6/2 ~ bes4 \divisioMinima
c'2*4/2 bes2 ~ bes2 ~ bes2*5/2 a2*3/2 ~ \divisioMaior
a4 bes2*3/2 ~ bes2 ~ bes2*3/2 c'2*3/2 a2*3/2 bes2*4/2 ~ bes2*3/2 a2 g2*4/2 bes2*3/2 \divisioMaxima
r4 bes2 c'2*3/2 bes2*3/2 a2*3/2 g4 c'2*3/2 bes2 a2*3/2 \divisioMaior
bes2 ~ bes2*3/2 ~ bes2*4/2 ~ bes2*0/2 ~ bes2*3/2 ~ bes4 c'2*5/2 bes2*3/2 g2*3/2 a4 \divisioMinima
f2*3/2 g2*3/2 c'2*3/2 bes2*4/2 ~ \divisioMinima
bes2*4/2 ~ bes2*4/2 ~ bes2 a4 \finalis
}

bassMusic = {
r2*6/2 a2*3/2 ~ \divisioMinima
a4 g2*4/2 c2*3/2 f2*3/2 ~ \divisioMaior
f2 g2*3/2 ~ g4 ~ g2 d2 ~ d2*3/2 c2 bes,2*4/2 ees2 ~ ees4 \divisioMaxima
c4 ~ c2 ~ c2*3/2 g2*3/2 bes2 a2*3/2 g2*4/2 d2 c2*3/2 f2*3/2 ~ f2 g2 c2*4/2 d4 ~ d2*7/4 ~ d2*3/4 g2*4/2 ees2 ~ ees2 c2*3/2 f2 ~ f2 ~ f4 ~ f2 ~ f4 \finalis
r2*4/2 a2*3/2 ~ a2*6/2 g4 \divisioMinima
f2*4/2 bes2 a2 g2*5/2 d2*3/2 ~ \divisioMaior
d4 bes,2*3/2 c2 d2*3/2 ~ d2*3/2 ~ d2*3/2 g2*4/2 ~ g2*3/2 ~ g2 ~ g2*4/2 ~ g2*3/2 \divisioMaxima
c4 ~ c2 ~ c2*3/2 g2*3/2 ~ g2*3/2 ~ g4 ~ g2*3/2 ~ g2 d2*3/2 \divisioMaior
r2 a2*3/2 g2*4/2 ees2*0/2 d2*3/2 ~ d4 ~ d2*5/2 f2*3/2 ~ f2*3/2 ~ f4 \divisioMinima
d2*3/2 c2*3/2 ~ c2*3/2 g2*4/2 ~ \divisioMinima
g2*4/2 d2*4/2 f2 ~ f4 \finalis
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
        "8"
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
