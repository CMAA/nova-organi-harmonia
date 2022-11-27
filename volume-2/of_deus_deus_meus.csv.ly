\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.44
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Deus, Deus meus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Deus, Deus meus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Deus, Deus meus" }
    \line {}
  }
}

chantText = \lyricmode {
De -- us, _ 
\set stanza = " * " De -- us me -- _ _ us, 
ad te de lu -- _ ce _ _ ví -- gi -- lo: 
et in nó -- mi -- ne tu -- _ _ o 
le -- vá -- _ _ bo ma -- _ nus me -- as, 
al -- le -- _ _ _ _ _ lú -- ia. }

chantMusic = {
\tieDown   f'4 ( g'4) g'4 ( bes'4 g'4) ~ g'4 ( f'4) \divisioMinima
 g'4 ( a'\prall bes'4) bes'4 ( a'4) bes'4 ( bes'4) ~ bes'4 ( g'4 f'4) g'4 ( a'\prall bes'4 g'4) g'4 \divisioMaior
 g'4 ( \once \tweak #'font-size #-4 f' ) g'4 \forceBreak
 bes'4 ( a'4) bes'4 ( g'4) c''4 ( d''4) bes'4 ( c''4 bes'4 a'4) bes'4 ( a'4 g'4 f'4) g'4 ( f'4) \divisioMinima
 g'4 ( bes'4 a'4 g'4) f'4 ( g'4 a'4 g'4 f'4) f'4 \divisioMaxima
 bes'4 ( a'4) bes'4 ( \once \tweak #'font-size #-4 c''  \forceBreak
) c''4 bes'4 bes'4 ( d''4 c''4 bes'4 a'4 g'4 bes'4) f'4 bes'4 ( bes'4 bes'4) c''4 ( bes'4) bes'4 \divisioMaior
 g'4 ( bes'4 a'4) bes'4 ( bes'4) ~ bes'4 ( g'4) a'4 ( bes'4 a'4) g'4 ( f'4) \divisioMinima
 g'4 bes'4 ( bes'4 bes'4) g'4 ( bes'4 a'4 g'4) g'4 \forceBreak
 g'4 ( bes'4 a'4 g'4) \divisioMaior
 g'4 ( a'4) f'4 bes'4 ( bes'4 bes'4) ~ bes'4 ( c''4 bes'4 f'4) g'4 bes'4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( c''4 bes'4 c''4) g'4 ( a'4 g'4) g'4 \finalis

}

altoMusic = {
d'2 ~ d'2 c'2*3/2 \divisioMinima
d'2*3/2 g'2 f'2 ~ f'2 ~ f'4 ees'2*4/2 d'4 ~ \divisioMaior
d'2*3/2 ~ d'2 ees'2 f'2 ~ f'2*4/2 ~ f'2*3/2 ~ f'4 d'2 ~ \divisioMinima
d'2*4/2 ~ d'2 c'2*3/2 ~ c'4 \divisioMaxima
f'2 ~ f'2 ~ f'2 ~ f'2*3/2 ~ f'2*4/2 ~ f'4 d'2*3/2 ~ d'2 ~ d'4 \divisioMaior
g'2*3/2 f'2 ~ f'2 ees'2*3/2 d'2*3/2 ~ d'2*3/2 ees'2*4/2 ~ ees'4 d'2*4/2 ~ \divisioMaior
d'2 f'4 ~ f'2*3/2 ~ f'2*3/2 ~ f'2 ees'2 ~ ees'2 f'2*4/2 d'2*3/2 ~ d'4 \finalis
}

tenorMusic = {
bes2 ~ bes2 a2*3/2 \divisioMinima
bes2*3/2 ~ bes2 ~ bes2 ~ bes2*3/2 ~ bes2*4/2 ~ bes4 ~ \divisioMaior
bes2*3/2 g2 ~ g2 f2 d'2*4/2 c'2 bes2 a2 \divisioMinima
bes2*4/2 ~ bes2*5/2 a4 \divisioMaxima
f2 g2 a2 bes2*3/2 ~ bes2*4/2 c'4 ~ c'2*3/2 a2 bes4 \divisioMaior
c'2*3/2 ~ c'2 bes2 ~ bes2*3/2 a2 ~ \divisioMinima
a4 g2*3/2 ~ g2*4/2 c'4 ~ c'2*3/2 bes4 \divisioMaior
a2*3/2 g2*3/2 f2*5/2 g2 c'2 ~ c'2*4/2 ~ c'2*3/2 bes4 \finalis
}

bassMusic = {
r2 g2 a2*3/2 \divisioMinima
r2*3/2 ees2 ~ ees2 d2*3/2 c2*4/2 g4 \divisioMaior
bes,2*3/2 ~ bes,2 c2 d2 ~ d2*4/2 ~ d2 ~ d2 ~ d2 \divisioMinima
g2*4/2 ees2*5/2 f4 \divisioMaxima
d2 ~ d2 ~ d2 ~ d2*3/2 ~ d2*4/2 ~ d4 g2*3/2 ~ g2 ~ g4 \divisioMaior
ees2*3/2 d2 ~ d2 c2*3/2 d2 \divisioMinima
bes,4 ~ bes,2*3/2 c2*4/2 ~ c4 g2*3/2 ~ g4 \divisioMaior
d2*3/2 ~ d2*3/2 ~ d2*5/2 c2 ~ c2 d2*4/2 g2*3/2 ~ g4 \finalis
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
        "II"
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
