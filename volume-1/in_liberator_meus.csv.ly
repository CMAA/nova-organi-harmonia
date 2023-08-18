\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.287
%(volume.page)

global = {
 \key bes \major
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Liberator meus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Liberator meus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Liberator meus" }
    \line {}
  }
}

chantText = \lyricmode {
Li -- be -- rá -- tor me -- _ _ us 
\set stanza = " * " de gén -- ti -- bus i -- ra -- cún -- dis: 
ab in -- sur -- gén -- ti -- bus in me _ _ ex -- al -- tá -- _ bis me: 
a vi -- _ ro in -- í -- quo _ 
e -- rí -- pi -- es me, Dó -- _ mi -- ne. Ps. 
Dí -- li -- gam te Dó -- mi -- ne, for -- ti -- tú -- do me -- a: 
\set stanza = " * " 
Dó -- mi -- nus fir -- ma -- mén -- tum me -- um, et re -- fú -- gi -- um me -- um, et li -- be -- rá -- tor me -- us. 
Li -- be -- rá -- tor. }

chantMusic = {
\tieDown   f'4 f'4 f'4 g'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( bes'4 f'4) f'4 ( g'4) \divisioMinima
 ees'4 d'4 ( ees'4 g'4) g'4 g'4 \forceBreak
 g'4 ( bes'4 f'4) f'4 ( d'4) ees'4 ( f'4) d'4 \divisioMaxima
 f'4 ( d'4) ees'4 f'4 f'4 ( \once \tweak #'font-size #-4 g' ) f'4 f'4 g'4  f'4 ( aes'4 g'4) aes'4 ( f'4) ~ f'4 ( ees'4) \divisioMinima \forceBreak

 f'4 f'4 ( g'4 bes'4 a'4) bes'4 ( bes'4) ~ bes'4 ( g'4) g'4 ( ees'4 f'\prall g'4 f'4 g'4) g'4 ( f'4) \divisioMaxima
 f'4 f'4 bes'4 ( bes'4 g'4) g'4 ees'4 ( g'4) bes'4 ( g'4 bes'4 a'4 f'4 \forceBreak
) f'4 ( g'4) a'4 ( f'4 g'4) \divisioMaior
 d'4 ( ees'4) f'4 ( g'4) f'4 ( ees'4) ees'4 ( g'4 bes'4 a'4) bes'4 \divisioMinima
 bes'4 ( bes'4 g'4) bes'4 ( bes'4 f'4) f'4 ( d'4) ees'4 ( f'4 ees'4 d'4) \finalis \forceBreak

 f'4 g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 c''4 bes'4 a'4 ( g'4) bes'4 ( bes'4 bes'4) \divisioMaxima \forceBreak

 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima \forceBreak

 bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 a'4 f'4 ( g'4) \finalis
 f'4 f'4 f'4 g'4 ( \once \tweak #'font-size #-4 bes' ) \finalis

}

altoMusic = {
d'2 ~ d'4 ~ d'2 f'2 ees'2 f'2 ~ f'4 d'2 \divisioMinima
r4 d'2*5/2 ~ d'2*3/2 ~ d'2 bes2 ~ bes4 ~ \divisioMaxima
bes2*4/2 ~ bes2*5/2 c'2*4/2 r2*3/2 \divisioMinima
ees'4 d'2*4/2 f'2 ees'2 ~ ees'2*6/2 c'2 \divisioMaxima
d'4 ~ d'4 ~ d'2*4/2 ees'2 f'2*5/2 ~ f'2 d'2 ~ d'4 \divisioMaior
bes2 ~ bes2 ~ bes2 ees'2*5/2 \divisioMinima
f'2*3/2 d'2*3/2 ~ d'2 bes2*4/2 \finalis
c'4 d'2*4/2 ~ d'2*5/2 f'2 ~ f'2 d'2*3/2 \divisioMaxima
f'2 ~ f'2*11/2 ~ f'2*5/2 ~ \divisioMinima
f'2 ~ f'2*3/2 d'2*3/2 ~ d'4 ~ d'2 ~ \finalis
d'2 ~ d'4 ~ d'2 \finalis
}

tenorMusic = {
bes2 ~ bes4 ~ bes2 ~ bes2 ~ bes2 ~ bes2*3/2 ~ bes2 ~ \divisioMinima
bes4 ~ bes2*5/2 c'2*3/2 bes2 g2 r4 \divisioMaxima
r2*4/2 r2*9/2 bes2*3/2 ~ \divisioMinima
bes4 ~ bes2*4/2 ~ bes2 ~ bes2 ~ bes2*6/2 ~ bes4 a4 \divisioMaxima
bes4 ~ bes4 ~ bes2*4/2 ~ bes2 ~ bes2*5/2 c'2 ~ c'2 bes4 \divisioMaior
r2*6/2 bes2*5/2 ~ \divisioMinima
bes2*3/2 ~ bes2*3/2 g2 f2*4/2 \finalis
r4 bes2*4/2 ~ bes2*5/2 ~ bes2 c'2 bes2*3/2 \divisioMaxima
c'2 bes2*11/2 d'2*5/2 ~ \divisioMinima
d'2 c'2*3/2 a2*3/2 c'4 bes2 ~ \finalis
bes2 ~ bes4 ~ bes2 \finalis
}

bassMusic = {
r2 a4 g2 ~ g2 ~ g2 d2*3/2 g2 ~ \divisioMinima
g4 ~ g2*5/2 ~ g2*3/2 ~ g2 ~ g2 ~ g4 \divisioMaxima
d2*4/2 ees2*5/2 aes2*4/2 g2*3/2 ~ \divisioMinima
g4 ~ g2*4/2 ~ g2 ~ g2 c2*6/2 f2 \divisioMaxima
r4 a4 g2*4/2 ~ g2 d2*5/2 ~ d2 g2 ~ g4 ~ \divisioMaior
g2 d2 c2 ~ c2*5/2 \divisioMinima
d2*3/2 bes,2*3/2 ~ bes,2 ~ bes,2*4/2 \finalis
a4 ~ a2*4/2 g2*5/2 d2 ~ d2 g2*3/2 \divisioMaxima
d2 ~ d2*11/2 ~ d2*5/2 ~ \divisioMinima
d2 ~ d2*3/2 ~ d2*3/2 g4 ~ g2 \finalis
r2 a4 g2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Introit"
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
