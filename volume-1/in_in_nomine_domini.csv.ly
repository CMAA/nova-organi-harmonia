\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.334
%(volume.page)

global = {
 \key bes \major
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"In nomine Domini" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "In nomine Domini"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "In nomine Domini" }
    \line {}
  }
}

chantText = \lyricmode {
In nó -- mi -- ne Dó -- mi -- ni 
\set stanza = " * " om -- ne ge -- nu fle -- ctá -- _ tur, 
cœ -- lé -- sti -- um, ter -- ré -- stri -- um et in -- fer -- nó -- rum: 
qui -- a Dó -- mi -- nus fa -- ctus ob -- é -- di -- ens us -- que ad mor -- tem, 
mor -- tem au -- tem cru -- _ cis: 
íd -- e -- o Dó -- mi -- nus Je -- sus Chri -- stus 
in gló -- ri -- a est De -- i Pa -- _ _ tris. Ps. 
Dó -- mi -- ne ex -- áu -- di o -- ra -- ti -- ó -- nem me -- am: 
\set stanza = " * " 
et cla -- mor me -- us ad te vé -- ni -- at. 
In nó -- mi -- ne. }

chantMusic = {
\tieDown   d'4 ( \once \tweak #'font-size #-4 c' ) f'4 g'4 ( bes'4) bes'4 a'4 ( bes'4) bes'4 bes'4 \divisioMinima
 a'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 bes'4 bes'4 ( bes'4 bes'4) g'4 ( a'4 f'4 \forceBreak
) g'4 ( a'\prall bes'4) c''4 ( bes'4 bes'4) bes'4 ( a'4) \divisioMaior
 g'4 ( f'4) g'4 ( a'4) g'4 g'4 \divisioMinima
 g'4 ( bes'4 a'4) bes'4 ( a'4 bes'4 g'4) g'4 ( f'4 g'\prall a'4 g'4 a'4) a'4 ( g'4) \divisioMinima \forceBreak

 f'4 g'4 ( bes'4) bes'4 ( bes'4 bes'4) a'4 ( c''4 bes'4 bes'4) bes'4 ( a'4) \divisioMaxima
 a'4 c''4 d''4 c''4 bes'4 c''4 bes'4 a'4 c''4 ( a'4 bes'4 \forceBreak
) g'4 ( f'4) g'4 \divisioMinima
 g'4 ( f'4) g'4 bes'4 a'4 ( c''4 bes'4 bes'4) bes'4 ( a'4) \divisioMaior
 f'4 g'4 ( \once \tweak #'font-size #-4 a' ) a'4 g'4 f'4 ( g'4) a'4 ( f'4 g'4 \forceBreak
) f'4 ( g'4 f'4 d'4) \divisioMaxima
 d'4 ( ees'\prall f'4 g'4) f'4 f'4 \divisioMinima
 f'4 ( g'4) f'4 f'4 f'4 f'4 g'4 ( f'4 g'\prall a'4 g'4 a'4) a'4 ( g'4) \divisioMaior \forceBreak

 g'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( a'\prall bes'4) f'4 g'4 f'4 \divisioMinima
 d'4 ( ees'4 g'4) g'4 f'4 ( ees'4) g'4 ( f'4 ees'4) f'4 ( ees'4 d'4) d'4 \finalis
 f'4 g'4 ( bes'4) bes'4 bes'4 \forceBreak
 bes'4 bes'4 bes'4 bes'4 bes'4 c''4 bes'4 a'4 ( g'4) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( bes'4) bes'4 bes'4 bes'4 \forceBreak
 bes'4 ( a'4) g'4 ( f'4) g'4 a'4 f'4 ( g'4) \finalis
 d'4 ( \once \tweak #'font-size #-4 c' ) f'4 g'4 ( bes'4) bes'4 \finalis

}

altoMusic = {
r2 d'4 ~ d'2*3/2 ~ d'2*4/2 ~ \divisioMinima
d'2*4/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ees'2*3/2 f'2 \divisioMaior
d'2 ~ d'2*4/2 ~ \divisioMinima
d'2*3/2 f'2*4/2 d'2*3/2 f'2*3/2 d'2 ~ \divisioMinima
d'4 ees'2 f'2*3/2 ~ f'2*4/2 ~ f'2 ~ \divisioMaxima
f'2 ~ f'2*3/2 ~ f'2*3/2 d'2*3/2 ~ d'2 ~ d'4 ~ \divisioMinima
d'2*4/2 ~ d'2*4/2 ~ d'2 ~ \divisioMaior
d'4 ~ d'2 c'2 ~ c'2*5/2 d'2*3/2 ~ d'4 ~ \divisioMaxima
d'2*4/2 c'2 \divisioMinima
bes2*4/2 c'2 d'2*6/2 ~ d'2 ~ \divisioMaior
d'2 ~ d'2*3/2 c'2*3/2 \divisioMinima
bes4 ~ bes2 ~ bes4 ~ bes2*5/2 a2*3/2 bes4 \finalis
d'4 ~ d'2*4/2 ~ d'2*5/2 ~ d'2 ~ d'2 ~ d'2*3/2 \divisioMaxima
f'2 ~ f'2*3/2 ees'2 f'2 d'2 ~ d'2 ~ d'2 \finalis
r2 d'4 ~ d'2*3/2 \finalis
}

tenorMusic = {
bes2 ~ bes4 ~ bes2*3/2 ~ bes2*4/2 \divisioMinima
c'2*4/2 bes2*3/2 a2*3/2 bes2*3/2 ~ bes2*3/2 c'2 ~ \divisioMaior
c'2 a2*3/2 bes4 ~ \divisioMinima
bes2*3/2 ~ bes2*4/2 a2*3/2 c'2*3/2 ~ c'4 bes4 ~ \divisioMinima
bes4 ~ bes2 ~ bes2*3/2 c'2*4/2 d'2 \divisioMaxima
c'2 bes2*3/2 a2*3/2 g2*3/2 a2 bes4 \divisioMinima
a2*4/2 g2*4/2 f2 ~ \divisioMaior
f4 ~ f2 ~ f2 g2*5/2 a2*3/2 f4 ~ \divisioMaxima
f2*4/2 ~ f2 ~ \divisioMinima
f2*4/2 ~ f2 ~ f2*6/2 bes2 \divisioMaior
g2 f2*3/2 ~ f2*3/2 ~ \divisioMinima
f4 ees2 d4 ees2*5/2 c2*3/2 d4 \finalis
bes4 ~ bes2*4/2 ~ bes2*5/2 a2 c'2 bes2*3/2 \divisioMaxima
c'2 bes2*3/2 ~ bes2 ~ bes2 a2 ~ a2 bes2 ~ \finalis
bes2 ~ bes4 ~ bes2*3/2 \finalis
}

bassMusic = {
r2 r4 a2*3/2 g2*4/2 ~ \divisioMinima
g2*4/2 ~ g2*3/2 ~ g2*3/2 ~ g2*3/2 ~ g2*3/2 f2 \divisioMaior
g2 ~ g2*3/2 ~ g4 ~ \divisioMinima
g2*3/2 d2*4/2 ~ d2*3/2 ~ d2*3/2 g2 ~ \divisioMinima
g4 ees2 d2*3/2 ~ d2*4/2 ~ d2 ~ \divisioMaxima
d2 ~ d2*3/2 ~ d2*3/2 g2*3/2 ~ g2 ~ g4 \divisioMinima
d2*4/2 ~ d2*4/2 ~ d2 ~ \divisioMaior
d4 bes,2 a,2 ~ a,2*5/2 d2*3/2 ~ d4 \divisioMaxima
bes,2*4/2 a,2 \divisioMinima
g,2*4/2 a,2 bes,2*6/2 ~ bes,2 ~ \divisioMaior
bes,2 ~ bes,2*3/2 a,2*3/2 \divisioMinima
g,4 ~ g,2 ~ g,4 ~ g,2*5/2 ~ g,2*3/2 ~ g,4 \finalis
r4 a2*4/2 g2*5/2 ~ g2 ~ g2 ~ g2*3/2 \divisioMaxima
d2 ~ d2*3/2 c2 d2 ~ d2 g2 ~ g2 \finalis
r2*3/2 a2*3/2 \finalis
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
