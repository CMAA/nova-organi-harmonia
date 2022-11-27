\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.181
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Levabo oculos" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Levabo oculos"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Levabo oculos" }
    \line {}
  }
}

chantText = \lyricmode {
Le -- vá -- _ bo 
\set stanza = " * " ó -- cu -- los me -- os, _ _ 
et con -- si -- de -- rá -- _ bo _ mi -- ra -- bí -- li -- a tu -- a, _ Dó -- mi -- _ ne, 
ut dó -- _ _ ce -- _ as _ me 
ju -- stí -- _ ti -- am _ tu -- _ _ am: _ 
da mi -- hi in -- _ tel -- lé -- _ ctum, _ 
ut di -- _ _ scam _ man -- dá -- _ ta _ tu -- _ a. }

chantMusic = {
\tieDown   c'4 ( ees'4) ees'4 ( f'4) g'4 ( f'4) f'4 \divisioMinima
 f'4 ( g'4) f'4 f'4 f'4 f'4. ees'4 ( ees'4 ees'4) ~ ees'4 ( f'4) \divisioMaior
 c'4 ees'4 ( g'4 f'4) g'4 \forceBreak
 f'4 ( ees'4) ees'4 ( f'4 g'4) ~ g'4 ( f'4) g'4 ( f'4) ~ f'4 ( ees'4) \divisioMinima
 f'4 g'4 bes'4 ( a'4 bes'4) g'4 ( f'4) f'4 f'4 ( g'4 ees'4) f'4 bes'4 ( bes'4 a'4 g'4 a'\prall bes'4 a'4 g'4 \forceBreak
) g'4 ( f'4) f'4 ( g'4) bes'4 ( g'4 a'4) g'4 ( f'4) \divisioMaxima
 ees'4 ( f'4) f'4 ( bes'4) ~ bes'4 ( bes'4 bes'4) c''4 ( d''4) bes'4 ( g'4 a'\prall bes'4) c''4 ( bes'4) bes'4 ( bes'4) ~ bes'4 ( g'4 f'4 ees'4  f'\prall g'4 aes'4 g'4) f'4 \forceBreak
 g'4 ( f'4) \divisioMaior
 f'4 g'4 ( bes'4 f'4) g'4 ( f'4) ees'4 ( f'4) f'4 bes'4 ( bes'4 a'4) bes'4 ( c''4 bes'4) c''4 ( a'4) bes'4 ( g'4 f'4 ees'4 f'\prall g'4 f'4 g'4) g'4 ( bes'4 g'4) ~ g'4 ( ees'4) \divisioMaxima \forceBreak

 c'4 ( d'\prall ees'4 f'4) f'4 ( g'4 a'4 g'4 f'4 g'4) g'4 ( f'4) f'4 ( a'4 g'4) a'4 ( f'4) f'4 ( \once \tweak #'font-size #-4 ees' ) ees'4 ( f'4) g'4 ( f'4 g'4) g'4 bes'4 ( bes'4 g'4 f'4) \divisioMaior
 f'4 ( \once \tweak #'font-size #-4 ees' ) ees'4. ~ ees'4 ( ees'4 ees'4 \forceBreak
) ~ ees'4 ( f'4 ees'4 f'4) c'4 ( ees'4 f'4 d'4) ees'4 ( f'4 c'4 bes4 c'4) \divisioMinima
 bes4 ( c'4) ees'4 ( f'\prall g'4 f'4) g'4 ( f'4 ees'4) f'4 bes'4 ( bes'4 a'4 g'4 a'\prall bes'4 a'4 g'4) f'4 ( g'4) bes'4 ( g'4 a'4) g'4 ( f'4) \finalis

}

altoMusic = {
c'2 ~ c'2 ~ c'2 ~ c'4 \divisioMinima
d'2*4/2 c'4 ~ c'2*3/4 ~ c'2*3/2 ~ c'2 ~ \divisioMaior
c'4 bes2*4/2 ~ bes2 c'2 d'2*4/2 c'2*3/2 ~ \divisioMinima
c'2 f'2*3/2 d'2*3/2 r2*4/2 d'2*3/2 ~ d'2*5/2 ~ d'2 f'2 ees'2*3/2 c'2 \divisioMaxima
r2 f'2 ~ f'2*3/2 ~ f'2 ~ f'2*4/2 ees'2 f'2 ees'2*3/2 c'2*3/2 ees'2*3/2 d'2 ~ \divisioMaior
d'4 ~ d'2*3/2 ~ d'2*5/2 f'2*3/2 ~ f'2*5/2 ees'2*3/2 ~ ees'2*5/2 ~ ees'2 ~ ees'2 bes4 \divisioMaxima
c'2*4/2 bes2*6/2 ees'2 f'2*5/2 ~ f'4 \tiny ees' \normalsize4 ees'2 ~ ees'2*4/2 f'2*3/2 ~ f'4 \divisioMaior
d'2 ~ d'2*3/4 c'2*3/2 bes2*4/2 ~ bes2*4/2 g2*5/2 \divisioMinima
r4 c'4 ~ c'2*4/2 ees'2*4/2 d'2*3/2 ~ d'2*5/2 f'2 ees'2*3/2 c'2 \finalis
}

tenorMusic = {
c'2 bes2 ~ bes2 a4 \divisioMinima
bes2*4/2 ~ bes4 a2*3/4 bes2*3/2 ~ bes4 a4 ~ \divisioMaior
a4 g2*4/2 ~ g2 ~ g2 bes2*4/2 g2*3/2 ~ \divisioMinima
g2 f2*3/2 a2*3/2 bes2*4/2 ~ bes2*3/2 c'2*5/2 bes2 ~ bes2 ~ bes2*3/2 ~ bes4 a4 \divisioMaxima
bes2 ~ bes2 g2*3/2 a2 bes2*4/2 ~ bes2 ~ bes2 ~ bes2*3/2 ~ bes2*3/2 c'2*3/2 bes2 ~ \divisioMaior
bes4 ~ bes2*3/2 ~ bes2*5/2 c'2*3/2 bes2*5/2 ~ bes2*3/2 ~ bes2*5/2 ~ bes2 ~ bes2 g4 ~ \divisioMaxima
g2*4/2 f2*6/2 bes2 a2*5/2 bes2 ~ bes2 ~ bes2*4/2 ~ bes2*4/2 ~ \divisioMaior
bes2 g2*3/4 ees2*3/2 g2*4/2 ees2*4/2 ~ ees2*5/2 \divisioMinima
f2 g2*4/2 c'2*4/2 ~ c'2*3/2 bes2*5/2 ~ bes2 ~ bes2*3/2 ~ bes4 a4 \finalis
}

bassMusic = {
r2*7/2 \divisioMinima
r2*13/4 g2*3/2 f2 ~ \divisioMaior
f4 c2*4/2 ~ c2 bes,2 ~ bes,2*4/2 c2*3/2 ~ \divisioMinima
c2 d2*3/2 ~ d2*3/2 g2*4/2 ~ g2*3/2 ~ g2*5/2 ~ g2 d2 c2*3/2 f2 \divisioMaxima
g2 d2 ~ d2*3/2 ~ d2 ~ d2*4/2 c2 d2 g2*3/2 ~ g2*3/2 f2*3/2 r2 \divisioMaior
r4 a2*3/2 g2*5/2 f2*3/2 d2*5/2 c2*3/2 g2*5/2 f2 ees2 ~ ees4 ~ \divisioMaxima
ees2*4/2 d2*6/2 c2 d2*5/2 g2 f2 ees2*4/2 d2*4/2 \divisioMaior
bes,2 c2*3/4 ~ c2*3/2 g,2*4/2 ~ g,2*4/2 c2*5/2 \divisioMinima
d2 c2*4/2 ~ c2*4/2 g2*3/2 ~ g2*5/2 d2 c2*3/2 f2 \finalis
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
        "VIII"
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
