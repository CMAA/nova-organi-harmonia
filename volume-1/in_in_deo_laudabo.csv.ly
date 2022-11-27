\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.231
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"In Deo laudabo" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "In Deo laudabo"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "In Deo laudabo" }
    \line {}
  }
}

chantText = \lyricmode {
In De -- o 
\set stanza = " * " lau -- dá -- bo _ ver -- bum, 
in Dó -- mi -- no lau -- dá -- bo ser -- mó -- nem: _ 
in De -- o spe -- rá -- _ vi, 
non ti -- mé -- _ bo quid fá -- _ ci -- at mi -- hi ho -- mo. Ps. 
Mi -- se -- ré -- re me -- i De -- us, quó -- ni -- am con -- cul -- cá -- vit me ho -- mo: 
\set stanza = " * " 
to -- ta di -- e im -- pú -- gnans tri -- bu -- lá -- vit me. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   f'4 g'4 ( bes'4) bes'4  bes'4 bes'4 ( a'4 bes'4 g'4) bes'4 ( g'4) ~ g'4 ( f'4) g'4 ( a'\prall bes'4 c''4) a'4 \divisioMaior
 a'4 ( bes'4) a'4 ( bes'4 c''4) bes'4 a'4 ( bes'4 a'4) \divisioMinima \forceBreak

 f'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( bes'4 a'4 g'4) a'4 ( g'4) ees'4 ( g'4) g'4 ( bes'4 a'4 f'4) f'4 ( g'4) a'4 ( f'4 g'4) \divisioMaxima
 f'4 f'4 ( g'4 a'4) f'4 g'4 f'4 ( g'4) a'4 ( f'4 g'4 \forceBreak
) f'4 ( g'4 f'4 d'4) \divisioMaior
 d'4 ( ees'4 f'4) f'4 g'4 ( f'4) g'4 ( a'\prall bes'4 bes'4) bes'4 ( c''4 bes'4 g'4) \divisioMinima
 g'4 ( f'4) g'4 ( f'4) g'4 ( a'\prall bes'4 bes'4) bes'4 ( c''4 bes'4 g'4) g'4 \forceBreak
 bes'4 ( g'4 a'\prall bes'4 a'4 g'4 f'4 g'4) f'4 d'4 ( f'4 ees'4 d'4) d'4 \finalis
 f'4 g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima \forceBreak

 bes'4 bes'4 bes'4 bes'4 bes'4 c''4 bes'4 bes'4 a'4 ( g'4) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 \forceBreak
 bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 a'4 f'4 ( g'4) \finalis
  f'4 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima \forceBreak

 bes'4 bes'4 c''4 bes'4 bes'4 a'4 \once \tweak #'font-size #-4 g'  bes'4 bes'4 bes'4 \divisioMaxima
 a'4 f'4 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima \forceBreak

 bes'4 c''4 bes'4 a'4 \once \tweak #'font-size #-4 g'  bes'4 bes'4 bes'4 \divisioMaxima
 a'4 f'4 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 a'4 g'4 f'4 g'4 a'4 f'4 g'4 \finalis

}

altoMusic = {
d'4 ~ d'2*4/2 ~ d'2*5/2 r2*3/2 f'2*5/2 ~ \divisioMaior
f'2 ~ f'2*4/2 ~ f'2*3/2 ~ \divisioMinima
f'2 d'2*4/2 ~ d'2 ees'2 ~ ees'2*4/2 d'2 ~ d'2*3/2 ~ \divisioMaxima
d'4 ees'2*5/2 f'2 ~ f'2*3/2 r2*4/2 \divisioMaior
d'2*3/2 ~ d'4 ~ d'2 ~ d'2*4/2 ees'2*4/2 \divisioMinima
d'2 ~ d'2 ~ d'2*4/2 ~ d'2*4/2 c'4 f'2*3/2 ees'2*6/2 c'2*4/2 bes4 \finalis
d'2*3/2 ~ d'2*4/2 ~ d'2 \divisioMinima
g'2*5/2 f'2*3/2 ~ f'2 d'2*3/2 \divisioMaxima
f'2 d'2 ~ d'2*3/2 ~ d'2 f'2*3/2 d'2 ~ d'2 ~ d'2 ~ d'2*4/2 ~ d'2*3/2 ~ d'2*3/2 ~ \divisioMinima
d'2 f'2*3/2 ~ f'2 d'2*3/2 \divisioMaxima
f'2 ~ f'2*6/2 ees'2*3/2 ~ \divisioMinima
ees'4 d'2 ~ d'2 ~ d'2*3/2 ~ \divisioMaxima
d'2 ~ d'2 ~ d'2*4/2 f'2*3/2 d'2*3/2 ~ d'4 ~ d'2 \finalis
}

tenorMusic = {
bes4 ~ bes2*4/2 g2*5/2 c'2*3/2 ~ c'2*5/2 ~ \divisioMaior
c'2 d'2*4/2 c'2*3/2 ~ \divisioMinima
c'2 ~ c'2*4/2 bes2 ~ bes2 ~ bes2*4/2 c'2 bes2*3/2 ~ \divisioMaxima
bes4 ~ bes2*5/2 ~ bes2 c'2*3/2 a2*4/2 \divisioMaior
bes2*3/2 a4 c'2 bes2*4/2 ~ bes2*4/2 ~ \divisioMinima
bes2 a2 bes2*4/2 g2*4/2 ~ g4 ~ g2*3/2 ~ g2*6/2 ~ g2*4/2 ~ g4 \finalis
bes2*3/2 ~ bes2*4/2 ~ bes2 ~ \divisioMinima
bes2*5/2 ~ bes2*3/2 c'2 bes2*3/2 \divisioMaxima
c'2 bes2 ~ bes2*3/2 ~ bes2 ~ bes2*3/2 a2 c'2 ~ c'4 bes4 ~ bes2*4/2 ~ bes2*3/2 ~ bes2*3/2 ~ \divisioMinima
bes2 ~ bes2*3/2 c'2 bes2*3/2 \divisioMaxima
c'2 bes2*6/2 ~ bes2*4/2 ~ bes2 c'2 bes2*3/2 \divisioMaxima
f2 ~ f2 g2*4/2 f2*3/2 a2*3/2 c'4 ~ c'4 bes4 \finalis
}

bassMusic = {
r4 a2*4/2 bes2*5/2 a2*3/2 f2*5/2 \divisioMaior
d2 ~ d2*4/2 ~ d2*3/2 ~ \divisioMinima
d2 g2*4/2 ~ g2 ~ g2 c2*4/2 g2 ~ g2*3/2 \divisioMaxima
bes,4 c2*5/2 d2 ~ d2*3/2 ~ d2*4/2 \divisioMaior
g2*3/2 ~ g4 ~ g2 ~ g2*4/2 ~ g2*4/2 ~ \divisioMinima
g2 ~ g2 ~ g2*4/2 f2*4/2 ees4 d2*3/2 c2*6/2 g,2*4/2 ~ g,4 \finalis
r2*3/2 a2*4/2 g2 \divisioMinima
ees2*5/2 d2*3/2 ~ d2 g2*3/2 \divisioMaxima
a2 bes2 a2*3/2 g2 d2*3/2 ~ d2 ~ d2 g2 r2*4/2 a2*3/2 g2*3/2 ~ \divisioMinima
g2 d2*3/2 ~ d2 g2*3/2 \divisioMaxima
d2 ~ d2*6/2 g2*4/2 ~ g2 ~ g2 ~ g2*3/2 \divisioMaxima
d2 bes,2 g,2*4/2 d2*3/2 ~ d2*3/2 ~ d4 g2 \finalis
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
