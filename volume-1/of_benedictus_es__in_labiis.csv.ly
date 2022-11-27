\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.150
%(volume.page)

global = {
 \key d \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Benedictus es... in labiis" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Benedictus es... in labiis"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Benedictus es... in labiis" }
    \line {}
  }
}

chantText = \lyricmode {
Be -- ne -- dí -- ctus es 
\set stanza = " * " Dó -- mi -- ne, 
do -- ce me ju -- sti -- _ fi -- ca -- ti -- ó -- _ _ _ nes tu -- _ as: 
be -- ne -- dí -- ctus es Dó -- mi -- ne, 
do -- ce me ju -- sti -- _ fi -- ca -- ti -- ó -- _ _ _ nes tu -- _ _ _ as: _ _ _ 
in lá -- bi is me -- is _ _ _ 
pro -- nun -- ti -- á -- _ _ _ _ vi _ _ _ 
ó -- mni -- a _ _ ju -- dí -- ci -- a o -- _ _ ris _ tu -- _ _ _ i. }

chantMusic = {
\tieDown   f'4 f'4 a'4 ( c''4 bes'4) g'4 ( a'\prall bes'4) bes'4 ( a'4)  a'4 a'4 ( c''4 bes'4 bes'4) bes'4 ( a'4) \divisioMaior
 bes'4 bes'4 ( a'4) bes'4 ( a'4) g'4 g'4 \forceBreak
 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 f'4 f'4 bes'4 ( bes'4) ~ bes'4 ( g'4) c''4 ( bes'4 a'4 bes'4) a'4 ( g'4) f'4 ( g'4) bes'4 ( g'4 ees'4) f'4 ( ees'4) \divisioMaxima
 f'4 f'4 \forceBreak
 a'4 ( c''4 bes'4) g'4 ( a'\prall bes'4) bes'4 ( a'4) a'4 a'4 ( c''4 bes'4 bes'4) bes'4 ( a'4) \divisioMaior
 bes'4 bes'4 ( a'4) bes'4 ( a'4) g'4 g'4 bes'4 ( bes'4 a'4) g'4 ( f'4 \forceBreak
) g'4 f'4 f'4 bes'4 ( bes'4) ~ bes'4 ( g'4) c''4 ( bes'4 a'4 bes'4) a'4 ( g'4) \divisioMinima
 f'4 ( g'4) bes'4 ( bes'4) c''4 ( d''4 bes'4) ~ bes'4 ( bes'4 g'4 a'\prall bes'4 a'4) bes'4 ( bes'4) ~ bes'4 ( a'4 g'4 \forceBreak
) bes'4 ( g'4 g'4) ees'4 ( f'4 ees'4) \divisioMaxima
 d'4 ( ees'4) d'4 ( ees'4) f'4 f'4 ( g'4 a'4) g'4 ( g'4 f'4 g'4) g'4 bes'4 ( bes'4) c''4 ( g'4) ~ g'4 ( f'4) \divisioMaior
 bes'4 bes'4 g'4 ( a'\prall bes'4 \forceBreak
) a'4 ( bes'4 g'4) ~ g'4 ( f'4) \divisioMinima
 bes'4 ( bes'4) ~ bes'4 ( g'4) c''4 ( bes'4 a'4) bes'4 ( bes'4) ~ bes'4 ( a'4 g'4) bes'4 ( g'4 g'4) ees'4 ( f'4 ees'4) \divisioMaxima
 c'4 ( f'4) f'4 bes'4 ( a'4) bes'4 ( g'4 \forceBreak
) bes'4 ( a'4 g'4) f'4 g'4 ( bes'4 g'4 a'\prall bes'4) f'4 ees'4 ( f'4) \divisioMinima
 f'4 bes'4 ( bes'4 f'4) bes'4 ( bes'4 bes'4) f'4 bes'4 ( bes'4 bes'4)  g'4 ( f'4 \forceBreak
) g'4 ( aes'4 f'4 ees'4) f'4 ( g'4 ees'4 d'4) ees'4 ( f'4 ees'4 d'4) d'4 \finalis

}

altoMusic = {
f'2 ~ f'2*3/2 ~ f'2*3/2 ~ f'2*3/2 ~ f'2*4/2 ~ f'2 ~ \divisioMaior
f'4 ees'2 d'2 ~ d'2 f'2*3/2 d'2 ~ d'2*3/2 ~ d'2 f'2 ees'2*4/2 d'2 c'2 d'2*3/2 c'2 \divisioMaxima
f'2 ~ f'2*3/2 ~ f'2*3/2 ~ f'2*3/2 ~ f'2*4/2 ~ f'2 ~ \divisioMaior
f'4 g'2 ~ g'2*4/2 f'2*3/2 ~ f'2 d'2*3/2 ~ d'2 ~ d'2 g'2 ~ g'2 d'2 ~ \divisioMinima
d'2 ~ d'2 f'2*3/2 ~ f'2 ~ f'2*4/2 ees'2 c'2*3/2 bes2*3/2 ~ bes2*3/2 ~ \divisioMaxima
bes2 ~ bes2*3/2 c'2*3/2 ~ c'2*4/2 d'4 ~ d'2*3/2 c'2*3/2 \divisioMaior
d'2 ees'2*3/2 f'2 d'2*3/2 ~ \divisioMinima
d'2 ~ d'2 g'2*3/2 f'2 ees'2*3/2 d'2*3/2 c'2*3/2 ~ \divisioMaxima
c'2 ~ c'4 bes2*4/2 d'2*4/2 ~ d'2 ees'2 bes2*4/2 \divisioMinima
c'4 d'2*3/2 ~ d'2*4/2 ~ d'2*3/2 ~ d'2 ees'2*4/2 bes2*4/2 a2*4/2 bes4 \finalis
}

tenorMusic = {
d'2 ~ d'2*3/2 ~ d'2*3/2 c'2 d'4 ~ d'2*4/2 ~ d'2 ~ \divisioMaior
d'4 c'2 ~ c'2 d'2 bes2*3/2 a2 ~ a2 ~ a4 g2 ~ g2 ~ g2*4/2 ~ g2 ~ g2 ~ g2*3/2 ~ g2 \divisioMaxima
f2 ~ f2*3/2 bes2*3/2 c'2 d'4 ~ d'2*4/2 ~ d'2 ~ \divisioMaior
d'4 ~ d'2 c'2 bes2 ~ bes2*3/2 a2 ~ a2*3/2 ~ a2 g2 ~ g2 c'2 bes2 \divisioMinima
a2 g2 f2*3/2 g2 bes2*4/2 ~ bes2 ees2*3/2 f2*3/2 g2*3/2 \divisioMaxima
r2 g2*3/2 f2*3/2 d2*4/2 ~ d4 g2*3/2 a2*3/2 \divisioMaior
bes2 ~ bes2*3/2 ~ bes2 a2*3/2 \divisioMinima
g2 ~ g2 ~ g2*3/2 ~ g2 ~ g2*3/2 ~ g2*3/2 ~ g2*3/2 \divisioMaxima
f2 d4 ~ d2*4/2 g2*4/2 ~ g2 ~ g2 f2*4/2 ~ \divisioMinima
f4 ~ f2*3/2 ~ f2*4/2 g2*3/2 bes2 ~ bes2*4/2 ees2*4/2 g2*4/2 ~ g4 \finalis
}

bassMusic = {
r2 c'2*3/2 bes2*3/2 f2 ~ f4 g2*4/2 d'2 \divisioMaior
g4 ~ g2 ~ g2 bes2 d2*3/2 ~ d2 c2 bes,4 ~ bes,2 d2 c2*4/2 bes,2 a,2 g,2*3/2 c2 \divisioMaxima
r2 d2*3/2 ~ d2*3/2 f2 ~ f4 g2*4/2 d'2 \divisioMaior
r4 g2 ~ g2 ~ g2 d2*3/2 ~ d2 c2*3/2 bes,2 ~ bes,2 ees2 ~ ees2 g2 ~ \divisioMinima
g2 ~ g2 d2*3/2 ~ d2 ~ d2*4/2 c2 ~ c2*3/2 d2*3/2 ees2*3/2 \divisioMaxima
g,2 ~ g,2*3/2 a,2*3/2 ~ a,2*4/2 bes,4 ~ bes,2*3/2 ~ bes,2*3/2 ~ \divisioMaior
bes,2 c2*3/2 d2 ~ d2*3/2 \divisioMinima
r2 f2 ees2*3/2 d2 c2*3/2 bes,2*3/2 c2*3/2 \divisioMaxima
a,2 ~ a,4 g,2*4/2 ~ g,2*4/2 bes,2 c2 d2*4/2 ~ \divisioMinima
d4 bes,2*3/2 a,2*4/2 g,2*3/2 ~ g,2 ees,2*4/2 g,2*4/2 ~ g,2*4/2 ~ g,4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Offertory"
        "III"
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
