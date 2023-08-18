\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.209
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Redime me" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Redime me"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Redime me" }
    \line {}
  }
}

chantText = \lyricmode {
Re -- di -- me me 
\set stanza = " * " Dó -- mi -- ne, et mi -- se -- ré -- _ re me -- i: 
pes e -- nim me -- us ste -- tit in vi -- a re -- cta: _ 
in ec -- clé -- si -- is be -- ne -- dí -- cam Dó -- mi -- _ num. Ps. 
Jú -- di -- ca me Dó -- mi -- ne, quó -- ni -- am e -- go in in -- no -- cén -- ti -- a me -- a in -- grés -- sus sum: 
\set stanza = " * " 
et in Dó -- mi -- no spe -- rans, non in -- fir -- má -- bor. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   g'4 bes'4 ( a'4) bes'4 c''4  c''4 bes'4 c''4 ( bes'4 bes'4) \divisioMinima
 a'4 ( \once \tweak #'font-size #-4 f' ) g'4 bes'4 ( a'4) a'4 ( bes'4) c''4 ( bes'4 c''4) bes'4 ( a'4) g'4 ( a'4 bes'4 a'4 g'4 a'4 \forceBreak
) a'4 ( g'4) \divisioMaxima
 g'4 ( c''4) c''4 ( d''4 c''4) bes'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( bes'4) bes'4 ( c''4) c''4 ( d''4 c''4) bes'4 ( bes'4 bes'4) \divisioMinima
 a'4 ( \once \tweak #'font-size #-4 f' ) g'4 bes'4 a'4 ( c''4) bes'4 ( c''4 bes'4) ~ bes'4 ( bes'4) \divisioMaxima \forceBreak

 g'4 a'4 ( bes'4) c''4 ( d''4) c''4 ( d''4 bes'4 a'4) g'4 ( a'\prall bes'4) \divisioMinima
 g'4 a'4 ( bes'4) c''4 c''4 ( \once \tweak #'font-size #-4 a' ) bes'4 ( c''4 bes'4 a'4) bes'4 ( a'4) ~ a'4 ( g'4 a'4) a'4 ( g'4) \finalis \forceBreak

 f'4 g'4 ( f'4) f'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \forceBreak
 bes'4 ( a'4) bes'4 ( c''4) c''4 bes'4 ( c''4) bes'4 bes'4 \divisioMaxima
 bes'4 ( g'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 c''4 bes'4 ( g'4) bes'4 a'4 ( f'4) g'4 ( a'4 g'4) \finalis \forceBreak

  f'4 g'4 f'4 f'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 bes'4 a'4 bes'4 c''4 c''4 bes'4 c''4 bes'4 \divisioMaxima \forceBreak

 bes'4 g'4 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 a'4 bes'4 c''4 c''4 bes'4 c''4 bes'4 \divisioMaxima
 bes'4 g'4 g'4 bes'4 \forceBreak
 bes'4 bes'4 bes'4 bes'4 c''4 bes'4 g'4 bes'4 a'4 f'4 g'4 a'4 g'4 \finalis

}

altoMusic = {
r4 d'2*4/2 g'2 f'2*3/2 ~ \divisioMinima
f'2 ~ f'4 d'2 f'2*7/2 d'2*6/2 ~ d'2 \divisioMaxima
g'2 ~ g'2*3/2 f'2 ees'2 f'2 ~ f'2*3/2 ~ f'2*3/2 ~ \divisioMinima
f'2 d'2 ~ d'2 f'2*3/2 g'2 ~ \divisioMaxima
g'4 ~ g'2 f'2 ~ f'2*4/2 ~ f'2*3/2 ~ \divisioMinima
f'4 ees'2*3/2 f'2 ~ f'2*5/2 d'2*4/2 ~ d'2 ~ \finalis
d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 \divisioMinima
g'2*8/2 f'2*3/2 ~ f'2 ~ f'2*3/2 ~ f'2*3/2 d'4 \divisioMaxima
f'2 ees'2 f'2*6/2 d'2*3/2 ~ d'2 ~ d'2*3/2 ~ d'4 c'2 d'2 ~ d'2*3/2 ~ d'2*3/2 ~ \divisioMinima
d'2 f'2 ~ f'2*3/2 d'2*3/2 \divisioMaxima
f'2 ~ f'2 ees'2*4/2 f'2*3/2 ~ \divisioMinima
f'2 ~ f'2*3/2 d'2*3/2 \divisioMaxima
ees'2 f'2 d'2*3/2 f'2 ~ f'2*3/2 ~ f'2 d'2 ~ d'4 \finalis
}

tenorMusic = {
g4 ~ g2*4/2 ~ g2 ~ g2*3/2 \divisioMinima
a2 bes4 ~ bes2 c'2*7/2 ~ c'2*6/2 bes2 ~ \divisioMaxima
bes2 a2*3/2 bes2 ~ bes2 ~ bes2 a2*3/2 g2*3/2 \divisioMinima
a2 bes2 c'2 d'2*3/2 ~ d'2 \divisioMaxima
c'2*3/2 ~ c'2 a2*4/2 bes2*3/2 ~ \divisioMinima
bes2*4/2 ~ bes2 c'2*5/2 ~ c'2*4/2 bes2 ~ \finalis
bes2*3/2 ~ bes2*3/2 ~ bes2*3/2 ~ \divisioMinima
bes2*8/2 ~ bes2*3/2 c'2 a2*3/2 ~ a2*3/2 bes4 ~ \divisioMaxima
bes2 ~ bes2 ~ bes2*6/2 ~ bes2*3/2 c'2 bes2*3/2 ~ bes2*3/2 ~ bes2 ~ bes2*3/2 ~ bes2*3/2 ~ \divisioMinima
bes2 c'2 a2*3/2 bes2*3/2 ~ \divisioMaxima
bes2 f2 g2*4/2 f2*3/2 \divisioMinima
bes2 a2*3/2 g2*3/2 ~ \divisioMaxima
g2 ~ g2 ~ g2*3/2 ~ g2 bes2*3/2 c'2 ~ c'2 bes4 \finalis
}

bassMusic = {
r4 f2*4/2 ees2 d2*3/2 ~ \divisioMinima
d2 g4 ~ g2 f2*7/2 g2*6/2 ~ g2 \divisioMaxima
ees2 ~ ees2*3/2 d2 c2 d2 ~ d2*3/2 ~ d2*3/2 ~ \divisioMinima
d2 g2 ~ g2 ~ g2*3/2 ~ g2 \divisioMaxima
ees2*3/2 d2 ~ d2*4/2 ~ d2*3/2 ~ \divisioMinima
d4 c2*3/2 d2 ~ d2*5/2 g2*4/2 ~ g2 \finalis
r2*3/2 a2*3/2 g2*3/2 \divisioMinima
ees2*8/2 d2*3/2 f2 ~ f2*3/2 g2*3/2 ~ g4 \divisioMaxima
d2 c2 d2*6/2 g2*3/2 ~ g2 ~ g2*3/2 r2*5/2 a2*3/2 g2*3/2 ~ \divisioMinima
g2 f2 ~ f2*3/2 g2*3/2 \divisioMaxima
d2 ~ d2 c2*4/2 d2*3/2 ~ \divisioMinima
d2 ~ d2*3/2 g2*3/2 \divisioMaxima
c2 bes,2 g,2*3/2 d2 ~ d2*3/2 ~ d2 g2 ~ g4 \finalis
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
