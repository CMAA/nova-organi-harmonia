\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.94
%(volume.page)

global = {
 \key ees \major
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

\header {
  title = \markup \center-column {"Sanctus XVII." \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page ""
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "" }
    \line {}
  }
}

chantText = \lyricmode {
San -- ctus, 
\set stanza = " * " San -- _ ctus, San -- _ ctus Dó -- mi -- nus De -- us Sá -- ba -- oth. 
Ple -- ni sunt cœ -- li et ter -- ra gló -- ri -- a tu -- a. 
Ho -- sán -- na _ in ex -- cél -- sis. 
Be -- ne -- dí -- ctus qui ve -- nit in nó -- mi -- ne Dó -- mi -- ni. 
Ho -- sán -- na _ in ex -- cél -- sis. }

chantMusic = {
\tieDown   bes'4 ( bes'4 g'4) ~ g'4 ( \once \tweak #'font-size #-4 f' ) ees'4 \divisioMinima
 ees'4 ( g'4) bes'4 ( bes'4 c''4) bes'4 \divisioMinima
 bes'4 ( bes'4 g'4) g'4 ( \once \tweak #'font-size #-4 f' ) ees'4 \divisioMinima
 \forceBreak
 g'4 ees'4 g'4 bes'4 ( bes'4 c''4) bes'4 bes'4 ( c''\prall d''4 ees''4 c''4 bes'4) c''4 ( bes'4) bes'4 \divisioMaxima
 bes'4  a'4  g'4 ( a'4 bes'4) \forceBreak
  bes'4 ( a'4 f'4) g'4 f'4 ( g'4) ees'4 ( f'4 ees'4) ees'4 \divisioMinima
 ees'4 g'4 ( f'4) f'4 ( bes'4) bes'4 ( c''4 bes'4) bes'4 \divisioMaxima
 bes'4 ( c''\prall d''4 ees''4 c''4 bes'4) c''4 ( \once \tweak #'font-size #-4 bes' ) \forceBreak
  g'4 ( a'4 bes'4) bes'4 ( a'4 f'4) g'4 f'4 ( g'4) ees'4 ( f'4 ees'4) ees'4 \divisioMaxima
 ees'4 g'4 ( f'4) f'4 ( bes'4) bes'4 bes'4 bes'4 ( c''4) bes'4 \divisioMinima
 ees'4 g'4 ( f'4) \forceBreak
 f'4 ( bes'4) bes'4 bes'4 ( c''4) bes'4 bes'4 \divisioMaxima
 bes'4 ( c''\prall d''4 ees''4 c''4 bes'4) c''4 ( \once \tweak #'font-size #-4 bes' )  g'4 ( a'4 bes'4) bes'4 ( a'4 f'4) g'4 f'4 ( g'4) ees'4 ( f'4 ees'4) ees'4 \finalis

}

altoMusic = {
ees'2 d'2*3/2 c'4 \divisioMinima
ees'2 ~ ees'2*3/2 d'4 \divisioMinima
ees'2 d'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando ees'4 ~ \divisioMinima
ees'2*3/2 f'2*4/2 g'2*6/2 aes'2 f'4 \divisioMaxima
ees'2 c'2*3/2 ~ c'2*4/2 ~ c'2 ~ c'2*3/2 bes4 \divisioMinima
ees'4 ~ ees'2 f'2 g'2*3/2 f'4 \divisioMaxima
f'2*3/2 ees'2*3/2 d'2 c'2 ~ c'2*5/2 ~ c'2 bes2*3/2 ~ bes4 \divisioMaxima
r2 f'4 ~ f'2*4/2 ees'2 f'4 \divisioMinima
ees'4 ~ ees'2 f'2*3/2 ~ f'2*3/2 ~ f'4 \divisioMaxima
f'2*3/2 ees'2*3/2 d'2 c'2 ~ c'2*5/2 ~ c'2 bes2*3/2 ~ bes4 \finalis
}

tenorMusic = {
g2 ~ g2*3/2 ~ g4 \divisioMinima
ees2 f2*3/2 ~ f4 \divisioMinima
g2 bes2*3/2 c'4 ~ \divisioMinima
c'2*3/2 d'2*4/2 ees'2*6/2 ~ ees'2 d'4 \divisioMaxima
ees2 ~ ees2*3/2 ~ ees2*4/2 f2 g2*3/2 ~ g4 ~ \divisioMinima
g4 bes2 ~ bes2 ~ bes2*3/2 ~ bes4 \divisioMaxima
f2*3/2 g2*3/2 f2 ees2 f2*5/2 aes2 ~ aes2*3/2 g4 \divisioMaxima
r4 ees'2 d'2*4/2 c'2 d'4 ~ \divisioMinima
d'4 r2 d'2*3/2 ees'2*3/2 d'4 \divisioMaxima
f2*3/2 g2*3/2 f2 ees2 f2*5/2 aes2 ~ aes2*3/2 g4 \finalis
}

bassMusic = {
ees2 bes,2*3/2 c4 \divisioMinima
c2 bes,2*3/2 ~ bes,4 \divisioMinima
r2*6/2 \divisioMinima
c'2*3/2 ~ c'2*4/2 ~ c'2*6/2 f2 bes4 \divisioMaxima
c2 bes,2*3/2 aes,2*4/2 ~ aes,2 ~ aes,2*3/2 g,4 \divisioMinima
c4 ~ c2 d2 ees2*3/2 d4 \divisioMaxima
d2*3/2 c2*3/2 ~ c2 bes,2 aes,2*5/2 ~ aes,2 ees2*3/2 ~ ees4 \divisioMaxima
r2*10/2 \divisioMinima
r4 c'2 ~ c'2*3/2 bes2*3/2 ~ bes4 \divisioMaxima
d2*3/2 c2*3/2 ~ c2 bes,2 aes,2*5/2 ~ aes,2 ees2*3/2 ~ ees4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "V"
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
