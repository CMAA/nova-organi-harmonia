\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.157
%(volume.page)

global = {
 \key g \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Dominus fortitudio" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Dominus fortitudio"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Dominus fortitudio" }
    \line {}
  }
}

chantText = \lyricmode {
Do -- mi -- nus 
\set stanza = " * " for -- ti -- tú -- do ple -- bis su -- æ, 
et pro -- té -- ctor sa -- lu -- tá -- ri -- um Chri -- sti su -- i est: 
sal -- vum fac _ _ pó -- pu -- lum tu -- um, Dó -- mi -- ne, 
et bé -- ne -- dic hae -- re -- di -- tá -- ti tu -- æ, 
et re -- ge e -- os _ _ _ us -- que in sǽ -- _ cu -- lum. Ps. 
Ad te Dó -- mi -- ne cla -- má -- bo, De -- us me -- us ne sí -- le -- as a me: 
\set stanza = " * " 
ne -- quan -- do tá -- ce -- as a me, et as -- si -- mi -- lá -- bor de -- scen -- dén -- ti -- bus in la -- cum. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   d'4 ( f'4 \once \tweak #'font-size #-4 g' ) g'4 g'4 \divisioMinima
 g'4 ( a'4 g'4) f'4 g'4 f'4 bes'4 ( bes'4) c''4 ( bes'4 a'4 bes'4) g'4 ( a'4 g'4) g'4 \divisioMaior \forceBreak

 f'4 g'4 g'4 ( c''4) bes'4 bes'4 ( a'4 bes'4 g'4) f'4 ( bes'4) bes'4 ( a'4 bes'4 g'4) g'4 ( a'4 g'4) g'4 \divisioMinima
 f'4 ( g'4 bes'4) bes'4 ( bes'4 a'4 f'4 \forceBreak
) f'4 ( g'4 a'\prall bes'4 a'4 g'4) f'4 ( g'4) g'4 ( f'4 d'4) \divisioMaxima
 d'4 ( f'4 g'4 a'4) g'4 g'4 bes'4 ( bes'4 g'4) a'4 ( f'4 d'4) \divisioMinima
 d'4 f'4 ( g'4) g'4 \forceBreak
 bes'4 ( bes'4) bes'4 bes'4 bes'4 ( c''4 bes'4) bes'4 \divisioMaxima
 f'4 f'4 g'4 ( bes'4) bes'4 bes'4 ( bes'4 bes'4) g'4 ( bes'4) bes'4 ( bes'4 bes'4) g'4 f'4 ( a'4) a'4 ( c''4 bes'4 a'4) a'4 \divisioMaior \forceBreak

 a'4 ( \once \tweak #'font-size #-4 c'' ) c''4 bes'4 g'4 g'4 bes'4 ( bes'4) ~ bes'4 ( g'4) ~ g'4 ( f'4) \divisioMinima
 g'4 ( a'4 f'4) bes'4 ( bes'4) c''4 ( bes'4 a'4 bes'4) g'4. f'4 ( bes'4 a'4 g'4 \forceBreak
) g'4 ( a'4 g'4) g'4 \finalis
 f'4 g'4 ( f'4) f'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 bes'4 bes'4 bes'4 \forceBreak
 bes'4 ( a'4) bes'4 ( c''4) c''4 bes'4 ( c''4) bes'4 \divisioMaxima
 bes'4 ( g'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 bes'4 bes'4 \forceBreak
 bes'4 bes'4 bes'4 bes'4 bes'4 c''4 bes'4 ( g'4) bes'4 a'4 ( f'4) g'4 ( a'4 g'4) \finalis
  f'4 g'4 ( f'4) f'4 ( bes'4) bes'4 bes'4 bes'4 \forceBreak
 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 bes'4 ( a'4) bes'4 ( c''4) c''4 bes'4 ( c''4) bes'4 \divisioMaxima
 bes'4 ( g'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima \forceBreak

 bes'4 ( a'4) bes'4 ( c''4) c''4 bes'4 ( c''4) bes'4 \divisioMaxima
 bes'4 ( g'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 c''4 bes'4 ( g'4) bes'4 a'4 ( f'4) g'4 ( a'4 g'4) \finalis

}

altoMusic = {
d'4 ~ d'2*3/2 ~ d'4 ~ \divisioMinima
d'2*4/2 ~ d'2 ~ d'2 ~ d'2 ~ d'2 ~ d'2*3/2 ~ d'4 \divisioMaior
r4 g'4 ~ g'2*3/2 f'2*4/2 ~ f'2 ees'2*4/2 d'2*3/2 ~ d'4 ~ \divisioMinima
d'2*3/2 f'2*4/2 ~ f'2*3/2 ~ f'2*3/2 d'2 ~ d'2 ~ d'4 \divisioMaxima
a2 d'2 ~ d'2 ~ d'2*3/2 ~ d'2*3/2 ~ \divisioMinima
d'4 c'2*3/2 bes2*3/2 ees'4 e'2*3/2 d'4 \divisioMaxima
f'2 ~ f'2*3/2 ees'2*3/2 ~ ees'2 f'2*4/2 ~ f'2 ~ f'2*4/2 ~ f'4 ~ \divisioMaior
f'2 d'2 ees'2 f'2*3/2 d'2*3/2 ~ \divisioMinima
d'2*3/2 ~ d'2 ~ d'2*4/2 ~ d'2*3/4 ~ d'2 c'2 ~ c'2*3/2 bes4 \finalis
r2*3/2 d'2*3/2 <f' d'>2 ~ <f' d'>2 \divisioMinima
<g' d'>2*5/2 ~ <g' d'>2 g'2*3/2 f'2 ~ f'4 \divisioMaxima
d'2 ees'2*3/2 d'2*4/2 ~ d'2 ~ d'2*3/2 g'2*4/2 f'2 ees'2*3/2 c'2 ~ c'2 bes4 d'4 ~ d'2 ~ d'2 ~ d'2*3/2 ees'2*3/2 \divisioMinima
f'2 d'2 g'2*3/2 f'2 ~ f'4 \divisioMaxima
bes2 c'2 bes2*4/2 d'2*3/2 \divisioMinima
f'2 ees'2*3/2 e'2 d'4 ~ \divisioMaxima
d'2 ~ d'2 g'2*3/2 f'2 ees'2*3/2 c'2 ~ c'2 bes4 \finalis
}

tenorMusic = {
r2*5/2 \divisioMinima
r2*4/2 c'2 bes2 g2 c'2 ~ c'2*3/2 bes4 ~ \divisioMaior
bes2 ~ bes2*3/2 ~ bes2*4/2 g2 ~ g2*4/2 ~ g2*3/2 ~ g4 \divisioMinima
bes2*3/2 c'2*4/2 ~ c'2*3/2 f2*3/2 bes2 a2 f4 ~ \divisioMaxima
f2 ~ f2 g2 ~ g2*3/2 f2*3/2 \divisioMinima
d4 ~ d2*3/2 ~ d2*3/2 g4 f2*3/2 ~ f4 \divisioMaxima
bes2 ~ bes2*3/2 ~ bes2*3/2 ~ bes2 ~ bes2*3/2 ~ bes4 a2 d'2*4/2 c'4 ~ \divisioMaior
c'2 ~ c'2 bes2 ~ bes2*3/2 a2*3/2 ~ \divisioMinima
a2*3/2 g2 ~ g2*4/2 ~ g2*3/4 d2 ~ d2 ~ d2*3/2 ~ d4 \finalis
r4 bes2 ~ bes2*3/2 ~ bes2 a2 \divisioMinima
g2*5/2 f2 g2*3/2 bes2 ~ bes4 ~ \divisioMaxima
bes2 c'2*3/2 bes2*4/2 g4 ~ \divisioMinima
g4 ~ g2*3/2 ~ g2*4/2 ~ g2 ~ g2*3/2 f2 d2 ~ d4 r4 bes2 a2 g2*3/2 ~ g2*3/2 \divisioMinima
f2 g2 ~ g2*3/2 bes2 ~ bes4 \divisioMaxima
d2 ees2 d2*4/2 g2*3/2 ~ \divisioMinima
g2 ~ g2*3/2 ~ g2 ~ g4 ~ \divisioMaxima
g2 ~ g2 ~ g2*3/2 ~ g2 ~ g2*3/2 f2 d2 ~ d4 \finalis
}

bassMusic = {
r4 c'2*3/2 bes4 ~ \divisioMinima
bes2*4/2 a2 g2 ~ g2 ~ g2 ~ g2*3/2 ~ g4 \divisioMaior
d2 ees2*3/2 d2*4/2 ~ d2 c2*4/2 ~ c2*3/2 bes,4 ~ \divisioMinima
bes,2*3/2 f2*4/2 d2*3/2 ~ d2*3/2 ~ d2 ~ d2 ~ d4 ~ \divisioMaxima
d2 c2 bes,2 g,2*3/2 bes,2*3/2 ~ \divisioMinima
bes,4 a,2*3/2 g,2*3/2 ~ g,4 bes,2*3/2 ~ bes,4 \divisioMaxima
d2 ees2*3/2 g2*3/2 ees2 d2*3/2 f4 ~ f2 d2*4/2 f4 ~ \divisioMaior
f2 g2 ~ g2 d2*3/2 ~ d2*3/2 \divisioMinima
c2*3/2 bes,2 g,2*4/2 bes,2*3/4 d2 ~ d2 g,2*3/2 ~ g,4 \finalis
r2*3/2 r2*14/2 ees2*3/2 ~ ees2 d4 \divisioMaxima
g2 ~ g2*3/2 ~ g2*4/2 ~ g4 ~ \divisioMinima
g4 f2*3/2 ees2*4/2 d2 c2*3/2 d2 g,2 ~ g,4 bes,4 ~ bes,2 ~ bes,2 ~ bes,2*3/2 c2*3/2 \divisioMinima
d2 g2 ees2*3/2 ~ ees2 d4 \divisioMaxima
g,2*4/2 ~ g,2*4/2 ~ g,2*3/2 \divisioMinima
d2 c2*3/2 g,2 ~ g,4 \divisioMaxima
r2 f2 ees2*3/2 d2 c2*3/2 d2 g,2 ~ g,4 \finalis
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
