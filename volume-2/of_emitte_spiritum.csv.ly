\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.75
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Emitte Spiritum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Emitte Spiritum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Emitte Spiritum" }
    \line {}
  }
}

chantText = \lyricmode {
E -- mít -- te 
\set stanza = " * " Spí -- ri -- tum tu -- _ um, _ 
et cre -- a -- bún -- _ _ tur, 
et re -- _ no -- vá -- _ bis _ _ _ 
fá -- _ ci -- em ter -- _ _ ræ: 
sit _ _ gló -- ri -- a _ _ Dó -- mi -- _ ni 
in sǽ -- _ _ cu -- la, 
al -- le -- _ _ _ _ lú -- ia. _ _ }

chantMusic = {
\tieDown   c'4 ( bes4 c'4) c'4 ( d'\prall ees'4) ees'4 ( f'4) \divisioMinima
 ees'4 ( g'4 bes'4 g'4) f'4 ( g'\prall a'4 g'4 f'4) g'4 ees'4 ( f'4 g'4) ~ g'4 ( f'4) g'4 bes'4 ( bes'4 bes'4) \divisioMaior \forceBreak

 f'4 ( ees'4) ees'4 ( g'4 bes'4 a'4) bes'4 ( c''4 bes'4) bes'4 ( bes'4) ~ bes'4 ( g'4) a'4 ( \tiny g' f' 4) g'4 ( f'4) \divisioMaxima
 ees'4 ees'4 ( g'4) bes'4 ( c''4 bes'4) bes'4 bes'4 ( c''4 bes'4) g'4 ( c''4 bes'4 \forceBreak
) bes'4 c''4 ( bes'4) c''4 ( a'4) bes'4 ( g'4 f'4 g'4) \divisioMaior
 f'4 ( g'4) bes'4 ( a'4) bes'4 ( c''4 bes'4 bes'4) g'4 ( bes'4) bes'4 ( bes'4 bes'4) d''4 ( c''4 bes'4) c''4 ( bes'4 a'4) a'4 \divisioMaxima \forceBreak

 f'4 bes'4 ( bes'4 bes'4) ~ bes'4 ( c''4 bes'4) c''4 ( c''4 bes'4) a'4 ( bes'4 c''4) c''4 ( d''4 bes'4) ~ bes'4 ( g'4) bes'4 ( a'4) bes'4 ( c''4 bes'4 g'4) g'4 ( f'4) bes'4 ( a'4) bes'4 \divisioMaior \forceBreak

 bes'4 ( \tiny a' g' 4) bes'4 ( bes'4) ~ bes'4 ( bes'4) ~ bes'4 ( bes'4 bes'4) f'4 ( g'4 a'4 f'4 ees'4) ees'4 \divisioMaior
 g'4 ( a'\prall bes'4) bes'4. ~ bes'4 ( bes'4) ~ bes'4 ( f'4) g'4 ( f'4 ees'4 f'4) \divisioMinima \forceBreak

 bes'4 ( bes'4 a'4 g'4 a'\prall bes'4 a'4 g'4) g'4 ( \once \tweak #'font-size #-4 f' ) f'4 ( bes'4 g'4) a'4 ( g'4) ~ g'4 ( f'4) \finalis

}

altoMusic = {
r2*3/2 bes2*3/2 ~ bes2 ~ \divisioMinima
bes2*4/2 d'2*6/2 c'2 d'2*4/2 ~ d'2*3/2 ~ \divisioMaior
d'2 ees'2*4/2 f'2*3/2 ~ f'2 d'2 f'2 ~ f'4 c'2 \divisioMaxima
r4 c'2 d'2*3/2 ees'4 g'2*6/2 f'4 ~ f'2 ees'2 d'2*4/2 ~ \divisioMaior
d'2 ~ d'2 ~ d'2*4/2 g'2 f'2*6/2 ~ f'2*3/2 ~ f'4 ~ \divisioMaxima
f'4 ~ f'2*3/2 g'2*3/2 f'2*3/2 ees'2*3/2 f'2 ~ f'2*3/2 ~ f'2 d'2*4/2 c'2 d'2*3/2 ~ \divisioMaior
d'2*3/2 c'2 f'2 ees'2*3/2 d'2*5/2 c'4 \divisioMaior
ees'2*3/2 f'2*3/4 g'2 f'2 c'2*3/2 ~ c'4 \divisioMinima
f'2*3/2 ees'2 f'2*3/2 d'2 f'2*4/2 c'2 ~ c'4 \finalis
}

tenorMusic = {
g2*3/2 ~ g2*3/2 ~ g2 ~ \divisioMinima
g2*4/2 ~ g2*6/2 ~ g2 ~ g2*4/2 ~ g2*3/2 ~ \divisioMaior
g2 ~ g2*4/2 f2*3/2 bes2 ~ bes2 c'2*3/2 bes4 a4 \divisioMaxima
bes4 ~ bes2 ~ bes2*3/2 ~ bes4 ~ bes2*6/2 ~ bes4 ~ bes2 ~ bes2 ~ bes2*4/2 ~ \divisioMaior
bes2 ~ bes2 ~ bes2*4/2 ~ bes2 ~ bes2*6/2 a2*3/2 d'4 \divisioMaxima
a4 bes2*3/2 ~ bes2*3/2 ~ bes2*3/2 ~ bes2*3/2 ~ bes2 d'2*3/2 c'2 bes2*4/2 a2 g2*3/2 ~ \divisioMaior
g2*3/2 ~ g2 ~ g2 ~ g2*3/2 ~ g2*5/2 ~ g4 \divisioMaior
bes2*3/2 ~ bes2*3/4 ~ bes2 ~ bes2 ~ bes2*3/2 a4 \divisioMinima
bes2*3/2 ~ bes2 ~ bes2*3/2 a2 bes2*4/2 ~ bes2 a4 \finalis
}

bassMusic = {
ees2*3/2 c2*3/2 d2 \divisioMinima
c2*4/2 bes,2*6/2 c2 bes,2*4/2 g,2*3/2 \divisioMaior
bes,2 c2*4/2 d2*3/2 ~ d2 g2 f2*3/2 ~ f2 \divisioMaxima
g4 ~ g2 ~ g2*3/2 ~ g4 ees2*6/2 ~ ees4 d2 c2 g2*4/2 \divisioMaior
r2 a2 g2*4/2 ees2 d2*6/2 ~ d2*3/2 ~ d4 ~ \divisioMaxima
d4 ~ d2*3/2 ees2*3/2 d2*3/2 c2*3/2 d2 ~ d2*3/2 f2 g2*4/2 a2 r2*3/2 \divisioMaior
f2*3/2 ees2 d2 c2*3/2 bes,2*5/2 c4 ~ \divisioMaior
c2*3/2 d2*3/4 ees2 d2 f2*3/2 ~ f4 \divisioMinima
d2*3/2 c2 d2*3/2 ~ d2 ~ d2*4/2 f2 ~ f4 \finalis
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
