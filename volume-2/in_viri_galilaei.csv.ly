\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.66
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Viri Galilaei" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Viri Galilaei"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Viri Galilaei" }
    \line {}
  }
}

chantText = \lyricmode {
Vi -- ri Ga -- li -- lǽ -- _ i, 
\set stanza = " * " quid ad -- mi -- rá -- mi -- _ ni a -- spi -- ci -- én -- tes in cœ -- lum? al -- le -- _ lú -- ia: 
quem -- ád -- mo -- dum vi -- dí -- stis e -- um as -- cen -- dén -- tem in cœ -- lum, i -- ta vé -- ni -- et, 
al -- le -- lú -- _ ia, al -- le -- _ lú -- ia, al -- le -- _ lú -- ia. Ps. 
Om -- nes gen -- tes pláu -- di -- te má -- ni -- bus: 
\set stanza = " * " 
ju -- bi -- lá -- te De -- o in vo -- ce ex -- sul -- ta -- ti -- ó -- nis. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   f'4 f'4 f'4 ( bes'4 a'4) bes'4 c''4 ( bes'4) d''4 ( c''4) c''4 \divisioMinima
 c''4 c''4 c''4 c''4 ( d''4 c''4 bes'4) bes'4 ( bes'4) ~ bes'4 ( c''4) bes'4 \divisioMinima \forceBreak

 bes'4 a'4 bes'4 ( c''4) c''4 f'4 g'4 bes'4 ( c''4 bes'4) bes'4 ( a'4 bes'4) \divisioMinima
 g'4 g'4. ees'4 ( g'4 f'4) f'4 ( g'4 f'4) f'4 \divisioMaxima \forceBreak

 g'4 bes'4 ( bes'4 c''4) bes'4 bes'4 bes'4 a'4 bes'4 ( c''4) c''4 ( bes'4) bes'4 \divisioMinima
 a'4 bes'4 ( \once \tweak #'font-size #-4 c'' ) c''4 bes'4 ( a'4) g'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 ( c''4 bes'4 a'4) bes'4 \divisioMinima \forceBreak

 bes'4 bes'4 bes'4 ( bes'4 bes'4) g'4 ( f'4) f'4 \divisioMaxima
 g'4 bes'4 ( c''4) ees''4 ( c''4) ees''4 ( \tiny d'' c'' 4) c''4 \divisioMinima
 f'4 ( \once \tweak #'font-size #-4 g' ) g'4. f'4 ( g'4 ees'4) f'4 ( \once \tweak #'font-size #-4 g' ) g'4 \divisioMinima \forceBreak

 g'4 bes'4 ( c''4 bes'4.) a'4 ( bes'4 g'4 f'4) f'4 ( g'4 f'4) f'4 \finalis
 f'4 ( bes'4 a'4) bes'4 ( c''4) c''4 c''4 c''4 ( ees''4) d''4 d''4 d''4 d''4 ( c''4) c''4 ( d''4) \divisioMaxima \forceBreak

 c''4 ( a'4) bes'4 ( c''4) c''4 c''4 c''4 c''4 c''4 c''4 c''4 c''4 c''4 ( d''\prall ees''4) c''4 bes'4 bes'4 ( bes'4 bes'4) g'4 ( f'4) \finalis
  f'4 ( bes'4 a'4) bes'4 ( c''4) c''4 \forceBreak
 c''4 c''4 c''4 c''4 c''4 c''4 \divisioMinima
 c''4 c''4 c''4 ( ees''4) d''4 d''4 d''4 ( \once \tweak #'font-size #-4 c'' ) c''4 ( d''4) \divisioMaxima
 c''4 ( a'4) bes'4 ( c''4) c''4 c''4 c''4 c''4 c''4 c''4 c''4 \divisioMinima \forceBreak

 c''4 c''4 ( ees''4) d''4 d''4 ( \once \tweak #'font-size #-4 c'' ) c''4 ( d''4) \divisioMaxima
 c''4 ( a'4) bes'4 ( c''4) c''4 c''4 c''4 c''4 c''4 ( d''\prall ees''4) c''4 ( bes'4) bes'4 ( bes'4 bes'4) g'4 ( f'4) \finalis

}

altoMusic = {
d'2 f'2*4/2 ~ f'2 ~ f'2 ~ f'4 ~ \divisioMinima
f'2*3/2 a'2*4/2 ~ a'2 g'2 ~ g'4 ~ \divisioMinima
g'2 ~ g'2 f'2*3/2 ~ f'2*3/2 ees'2*3/2 ~ \divisioMinima
ees'4 d'2*3/4 ees'2*3/2 c'2*3/2 ~ c'4 \divisioMaxima
d'4 ~ d'2*3/2 ees'2*3/2 f'2*3/2 ~ f'2 ~ f'4 ~ \divisioMinima
f'2*3/2 ~ f'4 ~ f'2 d'2 g'2*4/2 f'4 ~ \divisioMinima
f'2 ees'2*3/2 c'2 ~ c'4 \divisioMaxima
r4 f'2 ees'2 ~ ees'2*3/2 f'4 \divisioMinima
d'2 ~ d'2*3/4 c'2*3/2 ~ c'2 ~ c'4 ~ \divisioMinima
c'4 f'2*7/4 ~ f'2 d'2 c'2*3/2 ~ c'4 \finalis
r2*3/2 bes'2 a'2 g'2*4/2 ~ g'4 a'2 ~ a'2 \divisioMaxima
f'2*4/2 ~ f'2*8/2 g'2*3/2 f'2 ees'2*3/2 c'2 r2*3/2 bes'2*6/2 a'2*3/2 ~ \divisioMinima
a'2 g'2*4/2 a'2 ~ a'2 \divisioMaxima
f'2*8/2 g'2*4/2 ees'2*3/2 f'2 ~ f'2 ~ \divisioMaxima
f'2*4/2 ~ f'2*4/2 g'2*3/2 f'2 ees'2*3/2 c'2 \finalis
}

tenorMusic = {
bes2 ~ bes2*4/2 a2 bes2 a4 \divisioMinima
c'2*3/2 d'2*4/2 ~ d'2 ~ d'2 ~ d'4 ~ \divisioMinima
d'2 c'2 ~ c'2*3/2 bes2*3/2 ~ bes2*3/2 ~ \divisioMinima
bes4 ~ bes2*3/4 ~ bes2*3/2 ~ bes2*3/2 a4 \divisioMaxima
r4 g2*3/2 ~ g2*3/2 f4 g2 a2 bes4 \divisioMinima
r4 g2 a4 c'2 bes2 ~ bes2*4/2 ~ bes4 \divisioMinima
g2 ~ g2*3/2 ees2 f4 \divisioMaxima
ees4 f2 g2 bes2*3/2 ~ bes4 \divisioMinima
a2 g2*3/4 ~ g2*3/2 ~ g2 ees4 ~ \divisioMinima
ees4 d2*7/4 bes2 ~ bes2 ~ bes2*3/2 a4 \finalis
f'2*3/2 ~ f'2 ~ f'2 c'2*4/2 ees'4 f'2 ~ f'2 \divisioMaxima
a2*4/2 ~ a2*8/2 bes2*3/2 ~ bes2 ~ bes2*3/2 ~ bes4 a4 r2*3/2 f'2*6/2 ~ f'2*3/2 ~ \divisioMinima
f'2 ees'2*4/2 f'2 ~ f'2 \divisioMaxima
a2*8/2 bes2*4/2 ~ bes2*3/2 a2 bes2 \divisioMaxima
d'2*4/2 c'2*4/2 bes2*3/2 ~ bes2 ~ bes2*3/2 ~ bes4 a4 \finalis
}

bassMusic = {
bes,2 d2*4/2 ~ d2 ~ d2 f4 \divisioMinima
a2*3/2 f2*4/2 g2 ~ g2 ~ g4 \divisioMinima
ees2 ~ ees2 d2*3/2 ~ d2*3/2 c2*3/2 ~ \divisioMinima
c4 bes,2*3/4 c2*3/2 f2*3/2 ~ f4 \divisioMaxima
g,4 ~ g,2*3/2 c2*3/2 d4 ~ d2 ~ d2 ~ d4 \divisioMinima
f4 ~ f2 ~ f4 ~ f2 g2 ees2*4/2 d4 ~ \divisioMinima
d2 c2*3/2 bes,2 a,4 \divisioMaxima
r4 d2 c2 ~ c2*3/2 f4 ~ \divisioMinima
f2 ees2*3/4 d2*3/2 c2 ~ c4 ~ \divisioMinima
c4 d2*7/4 ~ d2 ees2 f2*3/2 ~ f4 \finalis
r2*14/2 d'2 \divisioMaxima
d2*4/2 f2*8/2 ees2*3/2 d2 c2*3/2 f2 r2*14/2 c'2*4/2 f'2 d'2 \divisioMaxima
f2*8/2 ees2*4/2 c2*3/2 f2 bes2 \divisioMaxima
d2*4/2 ~ d2*4/2 ees2*3/2 d2 c2*3/2 f2 \finalis
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
        "VII"
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
