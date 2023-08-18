\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.415
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Dignus est Agnus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Dignus est Agnus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Dignus est Agnus" }
    \line {}
  }
}

chantText = \lyricmode {
Di -- gnus est A -- gnus, 
\set stanza = " * " qui oc -- cí -- sus _ est, 
ac -- cí -- pe -- re vir -- tú -- _ tem et di -- vi -- ni -- tá -- tem, et sa -- pi -- én -- _ ti -- am, et for -- ti -- tú -- _ di -- nem, et ho -- nó -- rem. 
I -- psi gló -- ri -- _ a et im -- pé -- _ ri -- um 
in sǽ -- cu -- la sæ -- cu -- ló -- rum. Ps. 
De -- us ju -- dí -- ci -- um tu -- um Re -- gi da: 
\set stanza = " * " 
et ju -- stí -- ti -- am tu -- am Fí -- li -- o Re -- gis. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   d'4 ( d'4 ees'4) d'4 ( c'4) f'4 ( g'4) f'4 ( g'4 \once \tweak #'font-size #-4 bes' ) bes'4 \divisioMinima
 bes'4 bes'4 g'4 g'4 ( a'\prall bes'4) c''4 ( bes'4 bes'4) bes'4 ( a'4) \divisioMaior
 f'4 f'4 ( g'4) g'4 g'4 g'4 g'4 ( f'4) g'4 ( f'4 ees'4 f'4) f'4 ( ees'4) \divisioMinima
 f'4 g'4 ( a'4) a'4 ( a'4 bes'4) g'4 ( a'\prall bes'4) a'4 ( c''4 bes'4 bes'4) bes'4 ( a'4) \divisioMinima
 f'4 f'4 ( g'4) g'4 bes'4 ( bes'4) ~ bes'4 ( bes'4) a'4 ( g'4) g'4 \divisioMinima
 g'4 g'4 f'4 ( ees'4) ees'4 ( f'4 g'4 f'4) g'4 ( a'4) g'4 g'4 \divisioMinima
 f'4 ( g'4 bes'4 a'4) bes'4 ( bes'4 a'4 g'4 a'\prall bes'4 a'4 g'4) f'4 ( g'4 a'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMaxima
 g'4 f'4 ( g'4) g'4 ( c''4 bes'4) c''4 ( bes'4) ~ bes'4 ( g'4) g'4 \divisioMinima
 g'4 f'4 f'4 ( g'4) a'4 ( g'4 a'\prall bes'4) f'4 ( g'4 f'4 ees'4 d'4 ees'4) ees'4 ( d'4) \divisioMaior
 d'4 ( ees'4) d'4 ( ees'4 g'4) g'4 g'4 ( a'\prall bes'4) f'4 f'4 ( d'4) ees'4 ( f'4 ees'4 d'4) d'4 \finalis
 f'4 g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 c''4 bes'4 bes'4 a'4 ( g'4) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 a'4 f'4 ( g'4) \finalis
  f'4 g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 c''4 bes'4 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 c''4 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 a'4 f'4 ( g'4) \finalis

}

altoMusic = {
r2*4/2 c'4 ~ c'2 d'2*3/2 ~ d'4 \divisioMinima
c'2*3/2 d'2*3/2 ees'2*3/2 f'2 ~ \divisioMaior
f'4 bes2*5/2 ~ bes2 ~ bes2*4/2 ~ bes2 ~ \divisioMinima
bes4 d'2 ees'2*3/2 f'2*3/2 ~ f'2*4/2 ~ f'2 ~ \divisioMinima
f'4 ~ f'2*3/2 d'2 ~ d'2*4/2 ~ d'4 ~ \divisioMinima
d'2*4/2 c'2*4/2 d'2*4/2 ~ \divisioMinima
d'2*4/2 c'2*3/2 d'2*5/2 c'2*6/2 ~ c'2 \divisioMaxima
d'4 ~ d'2 ~ d'2*4/2 ees'2*3/2 ~ ees'4 ~ \divisioMinima
ees'2 f'2*3/2 ~ f'2*3/2 bes2*6/2 ~ bes2 ~ \divisioMaior
bes2 ~ bes2*4/2 c'2*3/2 ~ c'4 bes2 ~ bes2*4/2 ~ bes4 \finalis
f'2*4/2 g'2*3/2 f'2 ees'4 ~ ees'2 f'2*3/2 \divisioMaxima
d'2*4/2 ~ d'2*5/2 f'2*3/2 ees'2*3/2 d'2 ~ d'4 f'4 ~ f'2*3/2 g'2*3/2 f'2*3/2 ~ \divisioMinima
f'2 g'2*3/2 ees'2 g'2*3/2 \divisioMaxima
d'2 ~ d'2 ~ d'2*4/2 g'2*3/2 ~ \divisioMinima
g'4 f'2 ~ f'2 ~ f'2*3/2 \divisioMaxima
d'2 ~ d'2 ~ d'2*4/2 f'2*3/2 ees'2*3/2 d'2 ~ d'4 \finalis
}

tenorMusic = {
bes2*5/2 ~ bes2 ~ bes2*3/2 ~ bes4 ~ \divisioMinima
bes2*3/2 ~ bes2*3/2 ~ bes2*3/2 c'2 ~ \divisioMaior
c'4 f2*5/2 ees2 f2*4/2 g2 ~ \divisioMinima
g4 bes2 ~ bes2*3/2 ~ bes2*3/2 c'2*4/2 d'2 ~ \divisioMinima
d'4 a2*3/2 g2 c'2*4/2 bes4 ~ \divisioMinima
bes2*4/2 ~ bes2*4/2 ~ bes2*4/2 ~ \divisioMinima
bes2*4/2 ~ bes2*3/2 ~ bes2*5/2 ~ bes2*6/2 a2 \divisioMaxima
bes4 a2 g2*4/2 ~ g2*3/2 bes4 ~ \divisioMinima
bes2 a2*3/2 bes2*3/2 g2*6/2 ~ g2 ~ \divisioMaior
g2 ~ g2*4/2 ees2*3/2 f2*3/2 ~ f2*4/2 ~ f4 \finalis
d'2*4/2 ees'2*3/2 d'2 ~ d'4 c'2 d'2*3/2 \divisioMaxima
c'2*4/2 bes2*5/2 ~ bes2*3/2 ~ bes2*3/2 c'2 bes4 r4 d'2*3/2 ees'2*3/2 d'2*3/2 ~ \divisioMinima
d'2 ees'2*3/2 ~ ees'2 d'2*3/2 ~ \divisioMaxima
d'2 c'2 bes2*4/2 g2*3/2 ~ \divisioMinima
g4 a2 c'2 bes2*3/2 \divisioMaxima
d'2 c'2 bes2*4/2 ~ bes2*3/2 ~ bes2*3/2 c'2 bes4 \finalis
}

bassMusic = {
r2*7/2 a2*3/2 g4 ~ \divisioMinima
g2*3/2 ~ g2*3/2 ~ g2*3/2 f2 ~ \divisioMaior
f4 d2*5/2 ees2 ~ ees2*4/2 ~ ees2 ~ \divisioMinima
ees4 bes,2 c2*3/2 d2*3/2 ~ d2*4/2 ~ d2 ~ \divisioMinima
d4 ~ d2*3/2 g2 ~ g2*4/2 ~ g4 ~ \divisioMinima
g2*4/2 ~ g2*4/2 ~ g2*4/2 \divisioMinima
bes2*4/2 ~ bes2*3/2 bes,2*5/2 f2*6/2 ~ f2 \divisioMaxima
bes,2*3/2 ~ bes,2*4/2 c2*3/2 ~ c4 ~ \divisioMinima
c2 d2*3/2 ~ d2*3/2 ees2*6/2 g2 \divisioMaior
f2 ees2*4/2 ~ ees2*3/2 d2*3/2 c2*4/2 bes,4 \finalis
r2*12/2 bes2*3/2 \divisioMaxima
g2*4/2 ~ g2*5/2 ~ g2*3/2 ~ g2*3/2 ~ g2 ~ g4 r2*12/2 c'2*3/2 ~ c'2 g2*3/2 ~ \divisioMaxima
g2 ~ g2 ~ g2*4/2 ees2*3/2 ~ \divisioMinima
ees4 d2 ~ d2 ~ d2*3/2 \divisioMaxima
g2 ~ g2 ~ g2*4/2 ~ g2*3/2 ~ g2*3/2 ~ g2 ~ g4 \finalis
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
        "3"
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
