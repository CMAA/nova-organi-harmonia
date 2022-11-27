\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.12
%(volume.page)

global = {
 \key d \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Deus tu convertens" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Deus tu convertens"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Deus tu convertens" }
    \line {}
  }
}

chantText = \lyricmode {
De -- us 
\set stanza = " * " tu _ con -- vér -- _ tens 
vi -- vi -- fi -- _ cá -- _ _ bis _ nos, _ _ _ _ _ _ 
et plebs tu -- a _ _ _ _ 
læ -- tá -- _ bi -- _ tur in te: 
o -- stén -- de _ _ no -- _ _ _ bis, _ Dó -- mi -- ne, 
mi -- se -- ri -- cór -- di -- am tu -- _ am _ 
et sa -- _ lu -- tá -- re tu -- um _ da _ _ _ _ _ _ no -- _ bis. }

chantMusic = {
\tieDown   f'4 ( g'4 bes'4) bes'4  bes'4 ( c''4 bes'4) ~ bes'4 ( a'4) bes'4 ( bes'4 bes'4) bes'4 ( bes'4) ~ bes'4 ( \once \tweak #'font-size #-4 g' ) a'4 ( bes'4 a'4.) \divisioMaior
 f'4 ( a'4 g'4) bes'4 bes'4 ( bes'4) ~ bes'4 ( g'4 f'4) f'4 bes'4 ( bes'4 \forceBreak
) ~ bes'4 ( bes'4 bes'4) g'4 ( c''4 bes'4) ~ bes'4 ( a'4 f'4) g'4 ( f'4) g'4 bes'4 ( bes'4) ~ bes'4 ( g'4 f'4) g'4 ( g'4) f'4 ( a'4 g'4 f'4) g'4 ( ees'4) ~ ees'4 ( d'4.) \divisioMaxima
 ees'4 d'4 ( ees'4 f'4) g'4 ( f'4 bes'4) bes'4. \forceBreak
 ~ bes'4 ( bes'4) ~ bes'4 ( a'4 g'4) bes'4 ( f'4) ~ f'4 ( ees'4.) \divisioMaior
 f'4 f'4 ( bes'4) ~ bes'4 ( a'4) bes'4 ( bes'4) ~ bes'4 ( a'4 g'4) g'4 g'4 ( a'4 g'4 f'4) g'4 ( f'4.) \divisioMaxima
 f'4 f'4 ( a'4) a'4 ( c''4 a'4) bes'4 ( c''4 g'4) ~ g'4 ( f'4 \forceBreak
) a'4 ( f'4) g'4 bes'4 ( bes'4) c''4 ( bes'4) ~ bes'4 ( a'4) bes'4 ( bes'4) ~ bes'4 ( a'4 g'4) \divisioMinima
 g'4 ( bes'4) f'4 ( g'4 f'4 ees'4 d'4 ees'4) ees'4 ( d'4.) \divisioMaior
 d'4 ( ees'4) d'4 ( ees'4) d'4 d'4 ( ees'4 g'4 \forceBreak
) g'4 ( bes'4 f'4) f'4 f'4 ( ees'4) f'4 ( ees'4 d'4) ees'4 ( ees'4 ees'4) c'4 ( d'4 c'4.) \divisioMaxima
 f'4 ( \once \tweak #'font-size #-4 bes' ) bes'4. ~ bes'4 ( bes'4 bes'4) g'4 g'4 ( a'4 g'4) f'4 f'4 ( g'4 f'4 ees'4 \forceBreak
) f'4 ( g'4 a'4) ~ a'4 ( g'4.) \divisioMinima
 bes'4. ~ bes'4 ( bes'4 bes'4) f'4 ( a'4 g'4 f'4) ~ f'4 ( ees'4) f'4 ( g'4 a'\prall bes'4) c''4 ( bes'4) ~ bes'4 ( a'4 g'4) ees'4 ( g'4 f'4 ees'4) f'4 ( ees'4 d'4) d'4 \finalis

}

altoMusic = {
d'2*4/2 ~ d'2 ~ d'2*3/2 ~ d'2*3/2 f'2 ~ f'2*11/4 ~ \divisioMaior
f'2*4/2 ~ f'2 d'2*4/2 ~ d'2 ees'2*3/2 ~ ees'2 f'2*4/2 ~ f'2*3/2 d'2 ~ d'2*3/2 ~ d'2 c'2*5/2 bes2*7/4 \divisioMaxima
r4 d'2*3/2 ~ d'2*3/2 ~ d'2*3/4 ees'2 bes2*4/2 c'2*7/4 ~ \divisioMaior
c'2 bes2*3/2 d'2 ~ d'2*4/2 ees'2 ~ ees'2 c'2*5/4 \divisioMaxima
r4 c'2 ~ c'2*5/2 ~ c'2*3/2 d'2*3/2 ~ d'2*3/2 ees'2*3/2 f'2 ~ f'2*3/2 \divisioMinima
d'2 ~ d'2*6/2 bes2*5/4 ~ \divisioMaior
bes2*5/2 ~ bes2*3/2 ~ bes2*4/2 c'2*5/2 ~ c'2*3/2 ~ c'4 d'4 c'2*3/4 ~ \divisioMaxima
c'2 bes2*3/4 ees'2*4/2 d'2*4/2 c'2*4/2 ~ c'2 d'2*7/4 \divisioMinima
bes2*3/4 d'2*3/2 ~ d'2*3/2 c'2*3/2 f'2*5/2 d'2*4/2 bes2*4/2 a2*3/2 bes4 \finalis
}

tenorMusic = {
bes2*4/2 ~ bes2 c'2*3/2 bes2*3/2 ~ bes2 d'2*11/4 \divisioMaior
c'2*4/2 bes2 ~ bes2*3/2 a4 g2 ~ g2*3/2 bes2 ~ bes2*4/2 a2*3/2 g2 a2*3/2 bes2 a2*5/2 bes2*7/4 \divisioMaxima
r4 bes2*3/2 a2*3/2 g2*3/4 ~ g2 f2*4/2 g2*7/4 \divisioMaior
d2 ~ d2*3/2 g2 ~ g2*4/2 ~ g2 bes2 ~ bes4 a2*3/4 \divisioMaxima
f4 ~ f2 ~ f2*5/2 a2*3/2 ~ a2*3/2 g2*3/2 ~ g2*3/2 f2 bes2*3/2 ~ \divisioMinima
bes2 a2*3/2 g2*3/2 f2*5/4 \divisioMaior
g2*5/2 ~ g2*3/2 f2*4/2 g2*5/2 ~ g2*3/2 f2*7/4 ~ \divisioMaxima
f2 ~ f2*3/4 g2*4/2 ~ g2*4/2 ~ g2*4/2 d2 ~ d2*7/4 ~ \divisioMinima
d2*3/4 g2*3/2 ~ g2*3/2 ~ g2*3/2 f2*5/2 g2*4/2 ~ g2*4/2 ~ g2*3/2 ~ g4 \finalis
}

bassMusic = {
r2*4/2 g2 ~ g2*3/2 ~ g2*3/2 d2 ~ d2*11/4 ~ \divisioMaior
d2*4/2 ~ d2 bes,2*4/2 ~ bes,2 c2*3/2 ~ c2 d2*4/2 ~ d2*3/2 g2 ~ g2*3/2 ~ g2 a2*17/4 \divisioMaxima
r4 bes,2*3/2 ~ bes,2*3/2 ~ bes,2*3/4 c2 d2*4/2 c2*7/4 \divisioMaior
a,2 g,2*3/2 ~ g,2 bes,2*4/2 c2 ~ c2 f2*5/4 \divisioMaxima
r4 d2 a,2*5/2 ~ a,2*3/2 bes,2*3/2 ~ bes,2*3/2 c2*3/2 d2 ~ d2*3/2 \divisioMinima
bes,2 ~ bes,2*3/2 ~ bes,2*3/2 ~ bes,2*5/4 \divisioMaior
r2*5/2 ees2*3/2 d2*4/2 c2*5/2 bes,2*3/2 a,2*7/4 \divisioMaxima
d2 ~ d2*3/4 c2*4/2 bes,2*4/2 c2*4/2 ~ c2 bes,2*7/4 \divisioMinima
g,2*3/4 a,2*3/2 bes,2*3/2 c2*3/2 d2*5/2 g2*4/2 r2*7/2 g,4 \finalis
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
