\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.236
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Ego clamavi" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Ego clamavi"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Ego clamavi" }
    \line {}
  }
}

chantText = \lyricmode {
E -- go cla -- má -- vi, 
\set stanza = " * " 
quó -- ni -- am _ ex -- au -- dí -- sti me, De -- _ us: 
in -- clí -- na au -- rem tu -- am, _ _ 
et ex -- _ áu -- di ver -- ba me -- a: 
cu -- stó -- di me, _ Dó -- mi -- ne, 
ut pu -- píl -- lam ó -- cu -- li: 
sub um -- bra _ a -- lá -- rum tu -- á -- rum _ 
pró -- _ te -- ge me. Ps. 
Ex -- áu -- di Dó -- mi -- ne ju -- stí -- ti -- am me -- am: 
\set stanza = " * " 
in -- tén -- de de -- pre -- ca -- ti -- ó -- nem me -- am. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   ees'4 ees'4 ( ees'4 ees'4) c'4 ( f'4) f'4 ( bes'4 g'4 f'4) bes'4 bes'4 \divisioMaior
 bes'4 bes'4 ( a'4 bes'4 g'4) bes'4 ( a'4) bes'4 ( g'4 f'4 g'4) \divisioMinima
 f'4 g'4 ( bes'4 \forceBreak
) a'4 ( a'4 bes'4) g'4 ( f'4) g'4 ( a'4) g'4. f'4 ( g'4 f'4 ees'4) ees'4 \divisioMaxima
 ees'4 d'4 ( ees'4 f'4 g'4) f'4 f'4 f'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( f'4 \forceBreak
)  f'4 ( aes'4 g'4) aes'4 ( f'4) ~ f'4 ( ees'4) \divisioMaior
 f'4 f'4 ( g'4) bes'4 ( a'4) bes'4 ( bes'4 bes'4) g'4 f'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 ( a'4 bes'4 g'4) g'4 ( ees'4 f'\prall g'4 f'4 g'4) g'4 ( f'4) \divisioMaxima \forceBreak

 f'4 ( c'4) f'4 g'4 ( bes'4 a'4) bes'4 ( bes'4) ~ bes'4 ( g'4 c''4) bes'4 ( a'4) a'4 ( c''4 bes'4 bes'4) bes'4 ( a'4) \divisioMaior
 a'4 ( bes'4) g'4 ( f'4) f'4 ( \once \tweak #'font-size #-4 ees' ) g'4 g'4 ( bes'4 a'4 bes'4 \forceBreak
) bes'4 ( g'4 a'4 f'4) f'4 \divisioMaxima
 f'4 a'4 g'4 ( bes'4.) a'4 ( bes'4 g'4) f'4 f'4 ( ees'4 g'4 f'4) f'4 f'4 f'4 ( g'4 a'\prall bes'4 \forceBreak
) bes'4 ( bes'4) ~ bes'4 ( g'4 f'4) \divisioMaior
 f'4 ( ees'4) g'4 ( bes'4 g'4 a'\prall bes'4) f'4 ( d'4) ees'4 ( f'4 ees'4 d'4) d'4 \finalis
 f'4 g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 \forceBreak
 bes'4 c''4 bes'4 bes'4 a'4 ( g'4) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 \forceBreak
 a'4 f'4 ( g'4) \finalis
  f'4 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 c''4 bes'4 bes'4 a'4 \once \tweak #'font-size #-4 g'  bes'4 bes'4 bes'4 \divisioMaxima \forceBreak

 a'4 f'4 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 c''4 bes'4 a'4 \once \tweak #'font-size #-4 g'  bes'4 bes'4 bes'4 \divisioMaxima
 a'4 f'4 g'4 bes'4 \forceBreak
 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 a'4 g'4 f'4 g'4 a'4 f'4 g'4 \finalis

}

altoMusic = {
r4 c'2*3/2 ~ c'2 bes2*5/2 ~ bes4 \divisioMaior
ees'4 ~ ees'2*4/2 f'2 d'2*3/2 ~ d'4 ~ \divisioMinima
d'4 ~ d'2 ~ d'2*3/2 ~ d'2 c'2 bes2*3/4 ~ bes2*4/2 ~ bes4 \divisioMaxima
r4 bes2*5/2 c'4 ~ c'2 ~ c'2 ~ c'2*4/2 r2*3/2 \divisioMaior
r4 d'2 ~ d'2 ~ d'2*4/2 ~ d'2 ~ d'2*4/2 ees'2*6/2 c'2 \divisioMaxima
r4 c'4 ~ c'4 d'2*3/2 ~ d'2 ees'2*3/2 f'2 ~ f'2*4/2 ~ f'2 ~ \divisioMaior
f'2 d'2 r4 \tiny ees' \normalsize4 ees'4 d'2*4/2 f'2*3/2 ~ f'4 c'4 \divisioMaxima
f'2 ~ f'2*5/4 ~ f'2*4/2 ~ f'4 r2*4/2 ees'4 d'2*4/2 ees'2 f'2 ~ f'4 \divisioMaior
bes2*4/2 ~ bes2*3/2 ~ bes2 ~ bes2*4/2 ~ bes4 \finalis
d'4 ~ d'2*3/2 ~ d'2*3/2 ~ d'4 f'2*3/2 ~ f'2 d'2*3/2 ~ \divisioMaxima
d'2 ~ d'2*6/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'4 ~ d'2 ~ d'2*4/2 ~ d'2*3/2 ~ d'2*3/2 ~ \divisioMinima
d'2 f'2*3/2 ~ f'2 d'2*3/2 \divisioMaxima
f'2 ~ f'2*6/2 ees'2*3/2 ~ \divisioMinima
ees'4 d'2 ~ d'2 ~ d'2*3/2 ~ \divisioMaxima
d'2 ~ d'2 ~ d'2*4/2 f'2*3/2 d'2*3/2 ~ d'4 ~ d'2 \finalis
}

tenorMusic = {
r4 g2*3/2 ~ g2 f2*5/2 ~ f4 ~ \divisioMaior
f4 g2*4/2 f2 g2*3/2 bes4 ~ \divisioMinima
bes4 ~ bes2 g2*3/2 ~ g2 ~ g2 ees2*3/4 f2*4/2 g4 ~ \divisioMaxima
g4 ~ g2*5/2 aes4 a2 bes2 aes2*4/2 bes2*3/2 ~ \divisioMaior
bes4 ~ bes2 ~ bes2 ~ bes2*4/2 a2 g2*4/2 bes2*6/2 ~ bes4 a4 \divisioMaxima
r2*3/2 bes2*3/2 ~ bes2 ~ bes2*3/2 c'2 ~ c'2*4/2 d'2 \divisioMaior
c'2 a2 bes2*3/2 ~ bes2*4/2 c'2*3/2 bes4 a4 \divisioMaxima
d'2 bes2*5/4 c'2*4/2 bes2*6/2 ~ bes2*4/2 ~ bes2 ~ bes2*3/2 \divisioMaior
r2*4/2 ees2*3/2 d2 ~ d2*4/2 g4 \finalis
bes4 ~ bes2*3/2 ~ bes2*3/2 ~ bes4 ~ bes2*3/2 c'2 bes2*3/2 \divisioMaxima
f2 ~ f2*6/2 g2*3/2 a2*3/2 c'4 ~ c'4 bes4 ~ bes2*4/2 ~ bes2*3/2 ~ bes2*3/2 ~ \divisioMinima
bes2 ~ bes2*3/2 c'2 bes2*3/2 \divisioMaxima
c'2 bes2*6/2 ~ bes2*4/2 ~ bes2 c'2 bes2*3/2 \divisioMaxima
f2 ~ f2 g2*4/2 f2*3/2 a2*3/2 c'4 ~ c'4 bes4 \finalis
}

bassMusic = {
ees4 ~ ees2*3/2 d2 ~ d2*5/2 ~ d4 \divisioMaior
c4 ~ c2*4/2 d2 g2*3/2 ~ g4 ~ \divisioMinima
g4 ~ g2 f2*3/2 ees2 ~ ees2 ~ ees2*3/4 ~ ees2*4/2 ~ ees4 \divisioMaxima
r4 g2*5/2 ~ g4 f2 ~ f2 ~ f2*4/2 g2*3/2 ~ \divisioMaior
g4 bes2 a2 g2*4/2 ~ g2 ~ g2*4/2 c2*6/2 f2 \divisioMaxima
a2 ~ a4 ~ a2*3/2 g2 ~ g2*3/2 f2 d2*4/2 ~ d2 ~ \divisioMaior
d2 ~ d2 g2*3/2 ~ g2*4/2 f2*4/2 ~ f4 \divisioMaxima
d2 ~ d2*5/4 ~ d2*4/2 g2*6/2 ~ g2*4/2 ~ g2 d2*3/2 \divisioMaior
c2*4/2 ~ c2*3/2 d2 g,2*4/2 ~ g,4 \finalis
r4 a2*3/2 g2*3/2 ~ g4 d2*3/2 ~ d2 g2*3/2 \divisioMaxima
d2 bes,2*6/2 ~ bes,2*3/2 d2*3/2 ~ d4 g2 r2*4/2 a2*3/2 g2*3/2 ~ \divisioMinima
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
