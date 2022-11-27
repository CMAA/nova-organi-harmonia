\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.167
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Invocabit me" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Invocabit me"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Invocabit me" }
    \line {}
  }
}

chantText = \lyricmode {
In -- vo -- cá -- bit me, 
\set stanza = " * " et e -- _ go ex -- áu -- di -- am e -- um: 
e -- rí -- pi -- am e -- um, 
et glo -- ri -- _ fi -- cá -- _ _ bo e -- um: 
lon -- gi -- tú -- di -- ne di -- é -- rum 
ad -- im -- plé -- bo e -- um. Ps. 
Qui há -- bi -- tat in ad -- ju -- tó -- ri -- o Al -- tís -- si -- mi, 
\set stanza = " * " 
in pro -- te -- cti -- ó -- ne De -- i cœ -- li com -- mo -- rá -- bi -- tur. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   f'4 ( \once \tweak #'font-size #-4 ees' ) f'4 f'4 ( bes'4 a'4 bes'4) g'4 ( \once \tweak #'font-size #-4 ees' ) f'4 \divisioMinima
 g'4 ( ees'4 f'4) f'4 ( g'4) bes'4 ( a'4) bes'4 bes'4 bes'4 ( bes'4 bes'4) g'4 ( f'4 \forceBreak
) f'4 ( g'4 a'\prall bes'4) bes'4 ( g'4 a'4 f'4) f'4 \divisioMaxima
 g'4 ( ees'4 f'4) f'4 ( bes'4 bes'4) g'4 g'4 ( ees'4 g'4) g'4 ( a'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMaior
 f'4 ( \once \tweak #'font-size #-4 g' ) f'4 \forceBreak
 f'4 ( g'4) bes'4 ( a'4) a'4 a'4 ( c''4) d''4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( a'4) bes'4 ( a'4 bes'4 g'4) g'4 \divisioMaxima
 bes'4 ( \once \tweak #'font-size #-4 a' ) bes'4 c''4 bes'4 \forceBreak
 bes'4 ( bes'4 bes'4) g'4 g'4 ( a'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMaior
 f'4 ( g'4 a'4) a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4 f'4 d'4) d'4 ( f'4 g'4) g'4 ( a'4 g'4 f'4 g'4) g'4 ( f'4) \finalis \forceBreak

 f'4 g'4 ( f'4) f'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 ( a'4) bes'4 ( c''4) c''4 bes'4 ( c''4) bes'4 bes'4 \divisioMaxima
 bes'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( bes'4) bes'4 bes'4 \forceBreak
 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) f'4 ( g'4) bes'4 ( a'4) g'4 g'4 f'4 \finalis
  f'4 g'4 ( f'4) f'4 ( bes'4) bes'4 bes'4 bes'4 \forceBreak
 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 bes'4 ( a'4) bes'4 ( c''4) c''4 bes'4 ( c''4) bes'4 \divisioMaxima
 bes'4 ( g'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima \forceBreak

 bes'4 ( a'4) bes'4 ( c''4) c''4 bes'4 ( c''4) bes'4 \divisioMaxima
 bes'4 ( g'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) f'4 ( g'4) bes'4 ( a'4) g'4 f'4 \finalis

}

altoMusic = {
d'2*3/2 ~ d'2*4/2 ees'2 ~ ees'4 \divisioMinima
d'2*3/2 ~ d'2 ~ d'2*4/2 f'2*3/2 ~ f'2 ~ f'2*4/2 ~ f'2 ~ f'2 ~ f'4 \divisioMaxima
d'2*4/2 ~ d'2*3/2 ees'2*3/2 c'2*5/2 d'2 ~ \divisioMaior
d'2*3/2 ~ d'2 ees'2*3/2 f'2*3/2 ~ f'2*3/2 ~ f'2 d'2*4/2 ~ d'4 \divisioMaxima
g'2*3/2 f'2 ees'2*4/2 c'2*5/2 ~ c'2 \divisioMaior
f'2*3/2 ~ f'2 ~ f'2 ~ f'2 d'2*3/2 ~ d'2*3/2 ~ d'2 c'2 \finalis
d'2*3/2 ~ d'2*4/2 ~ d'2*3/2 f'2 ~ f'2*3/2 d'2*3/2 ~ d'4 \divisioMaxima
ees'2 d'2*4/2 ~ d'2*5/2 f'2*5/2 ees'2 c'2 ~ c'4 f'2*3/2 ~ f'2*5/2 g'2*3/2 \divisioMinima
d'2 f'2*5/2 ~ f'2*3/2 \divisioMaxima
ees'2 d'2*5/2 ~ d'2*4/2 \divisioMinima
f'2 ~ f'2*3/2 d'2*3/2 \divisioMaxima
ees'2 ~ ees'2 f'2*4/2 ~ f'2*3/2 ~ f'2 ees'2 c'2 \finalis
}

tenorMusic = {
bes2*3/2 ~ bes2*4/2 ~ bes2 ~ bes4 ~ \divisioMinima
bes2*3/2 ~ bes2 ~ bes2*4/2 ~ bes2*3/2 a2 bes2*4/2 c'2 bes2 a4 \divisioMaxima
bes2*3/2 a4 g2*3/2 ~ g2*3/2 ~ g2*5/2 a2 ~ \divisioMaior
a2*3/2 ~ a2 g2 ees4 d2*3/2 d'2*3/2 c'2 ~ c'2*4/2 bes4 ~ \divisioMaxima
bes2*3/2 ~ bes2 ~ bes2*4/2 ~ bes2*5/2 ~ bes4 a4 ~ \divisioMaior
a2*3/2 c'2 bes2 a2 ~ a4 f2 ~ f2*3/2 bes2 ~ bes4 a4 \finalis
bes2*3/2 ~ bes2*4/2 ~ bes2*3/2 c'2 g2 a4 g2*3/2 bes4 \divisioMaxima
c'2 ~ c'2*4/2 bes2*5/2 ~ bes2*5/2 ~ bes2 ~ bes2 a4 d'2*3/2 ~ d'2*5/2 ~ d'2*3/2 \divisioMinima
bes2 c'2 a2*3/2 bes2*3/2 \divisioMaxima
c'2 ~ c'2*5/2 bes2*4/2 \divisioMinima
c'2 g2 a4 g2*3/2 ~ \divisioMaxima
g2 bes2 ~ bes2*4/2 ~ bes2*3/2 a2 bes2 ~ bes4 a4 \finalis
}

bassMusic = {
r2*3/2 g2*4/2 ~ g2 bes4 \divisioMinima
r2*3/2 a2 g2*4/2 d2*3/2 ~ d2 ~ d2*4/2 f2 ~ f2 ~ f4 \divisioMaxima
bes,2*4/2 bes2*3/2 c2*3/2 ees2*5/2 d2 \divisioMaior
c2*3/2 bes,2 c2 ~ c4 d2*3/2 ~ d2*3/2 ~ d2 g2*4/2 ~ g4 \divisioMaxima
ees2*3/2 d2 c2*4/2 ees2*5/2 f2 \divisioMaior
d2*3/2 ~ d2 ~ d2 ~ d2 c2*3/2 bes,2*3/2 ~ bes,2 f2 \finalis
r2*3/2 a2*4/2 g2*3/2 f2 ~ f2 ~ f4 g2*3/2 ~ g4 \divisioMaxima
c2 g2*4/2 ~ g2*5/2 d2*5/2 c2 f2 ~ f4 bes2*3/2 a2*5/2 g2*3/2 ~ \divisioMinima
g2 f2 ~ f2*3/2 d2*3/2 \divisioMaxima
c2 g2*5/2 ~ g2*4/2 \divisioMinima
f2 ~ f2 ~ f4 g2*3/2 \divisioMaxima
ees2 ~ ees2 ~ ees2*4/2 d2*3/2 ~ d2 c2 f2 \finalis
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
