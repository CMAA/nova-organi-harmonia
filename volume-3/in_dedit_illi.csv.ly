\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.51
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Dedit illi" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Dedit illi"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Dedit illi" }
    \line {}
  }
}

chantText = \lyricmode {
De -- dit il -- li 
\set stanza = " * " De -- us sa -- pi -- én -- _ ti -- am, _ 
et pru -- dén -- _ _ ti -- am mul -- _ tam ni -- _ mis, 
et la -- ti -- tú -- _ di -- nem cor -- dis, 
qua -- _ si a -- ré -- nam _ _ 
quæ est in lít -- to -- re ma -- ris. Ps. 
Lau -- dá -- te pú -- e -- ri Dó -- mi -- num: 
\set stanza = " * " 
lau -- dá -- te no -- men Dó -- mi -- ni. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   d'4 ( d'4 ees'4) c'4 ( f'4) f'4 ( bes'4 g'4 f'4 bes'4) bes'4  bes'4 ( bes'4 bes'4) g'4 ( f'4) \divisioMinima
 g'4 ( a'4) g'4 ( f'4) bes'4. ~ bes'4 ( bes'4 bes'4) g'4 ( f'4) f'4 ( g'4 f'4 f'4) d'4 ( ees'4 d'4) \divisioMaior
 ees'4 ees'4 d'4 ( ees'4) f'4 ( ees'4 d'4) ees'4 ( f'4 g'4) f'4 f'4 f'4 bes'4 ( bes'4 g'4) g'4  ees'4 ( g'4) aes'4 ( f'4) f'4 \divisioMaxima
 ees'4 f'4 g'4 g'4 bes'4 ( bes'4 bes'4) g'4 f'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( ees'4 f'\prall g'4 f'4 g'4) g'4 ( f'4) \divisioMaior
 bes'4 ~ bes'4 ( bes'4 bes'4) g'4 g'4 ( f'4) g'4 ( a'4) f'4 ( g'4 a'\prall bes'4 a'4 g'4) a'4 ( bes'4 f'4 f'4) d'4 ( ees'4 d'4) \divisioMaior
 ees'4 d'4 ( ees'4 g'4) g'4 g'4 ( a'\prall bes'4) f'4 f'4 ( g'4 f'4 d'4) ees'4 ( f'4 ees'4 d'4) d'4 \finalis
 f'4 g'4 ( bes'4) bes'4 c''4 bes'4 bes'4 bes'4 a'4 ( g'4) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( bes'4) bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 a'4 f'4 ( g'4) \finalis
  f'4 g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 c''4 bes'4 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 c''4 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 a'4 f'4 ( g'4) \finalis

}

altoMusic = {
bes2*3/2 c'2 d'2*5/2 ~ d'4 ~ d'2*3/2 c'2 \divisioMinima
d'2 ~ d'2 ~ d'2*3/4 ~ d'2*3/2 ~ d'2 ~ d'2*4/2 bes2*3/2 ~ \divisioMaior
bes2 ~ bes2*5/2 ~ bes2*3/2 ~ bes2*3/2 ~ bes2*4/2 ~ bes2 c'2 ~ c'4 \divisioMaxima
bes2*4/2 ~ bes2*6/2 ~ bes2*6/2 ~ bes2 ~ \divisioMaior
bes4 ~ bes2*4/2 c'2 d'2 ~ d'2*6/2 bes2*4/2 ~ bes2*3/2 ~ \divisioMaior
bes4 ~ bes2*4/2 ~ bes2*4/2 ~ bes2*4/2 ~ bes2*4/2 ~ bes4 \finalis
d'4 ~ d'2*3/2 ~ d'2 ~ d'4 ~ d'2*3/2 ~ d'2*3/2 ~ \divisioMaxima
d'2 ~ d'2 ~ d'4 ees'2*3/2 d'2 ~ d'2 ~ d'2 ~ d'2*4/2 ~ d'2*3/2 ~ d'2*3/2 ~ \divisioMinima
d'2 ~ d'2 ~ d'4 ees'2 d'2*3/2 ~ \divisioMaxima
d'2 ~ d'2 g'2*4/2 f'2*3/2 ~ \divisioMinima
f'4 ees'2 ~ ees'2 d'2*3/2 ~ \divisioMaxima
d'2 ~ d'2 g'2*4/2 f'2*3/2 d'2 ~ d'4 ~ d'4 ~ d'2 \finalis
}

tenorMusic = {
g2*3/2 a2 bes2*5/2 r4 bes2*3/2 a2 \divisioMinima
bes2 c'2 bes2*3/4 g2*3/2 a2 bes2*4/2 f2*3/2 \divisioMaior
ees2 f2*5/2 c2*3/2 d2*3/2 ~ d2*4/2 ees2 ~ ees2 ~ ees4 ~ \divisioMaxima
ees2*4/2 d2*6/2 ees2*6/2 d2 ~ \divisioMaior
d4 ~ d2*4/2 ~ d2 ~ d2 f2*6/2 ~ f2*4/2 g2*3/2 ~ \divisioMaior
g4 ~ g2*4/2 d2*4/2 ~ d2*4/2 c2*4/2 bes,4 \finalis
bes4 ~ bes2*3/2 a2 g4 c'2*3/2 bes2*3/2 \divisioMaxima
c'2 ~ c'2 bes4 c'2*3/2 bes2 a2 bes2 ~ bes2*4/2 ~ bes2*3/2 ~ bes2*3/2 \divisioMinima
g2 a2 bes4 c'2 bes2*3/2 \divisioMaxima
c'2 bes2 ~ bes2*4/2 ~ bes2*3/2 ~ \divisioMinima
bes4 ~ bes2 c'2 bes2*3/2 \divisioMaxima
c'2 bes2 ~ bes2*4/2 ~ bes2*3/2 a2 bes4 c'4 bes2 \finalis
}

bassMusic = {
r2*10/2 g4 ~ g2*3/2 a2 \divisioMinima
g2 ~ g2 ~ g2*3/4 ~ g2*3/2 d2 bes,2*4/2 ~ bes,2*3/2 \divisioMaior
c2 bes,2*5/2 ~ bes,2*3/2 ~ bes,2*3/2 g,2*4/2 ~ g,2 f,2 aes,4 \divisioMaxima
g,2*4/2 ~ g,2*6/2 ~ g,2*6/2 bes,2 \divisioMaior
a,4 g,2*4/2 a,2 bes,2 ~ bes,2*6/2 d2*4/2 g2*3/2 \divisioMaior
r4 g,2*4/2 ~ g,2*4/2 bes,2*4/2 ~ bes,2*4/2 ~ bes,4 \finalis
r4 g2*3/2 ~ g2 ~ g4 ~ g2*3/2 ~ g2*3/2 \divisioMaxima
d2 g2 ~ g4 ~ g2*3/2 ~ g2 ~ g2 ~ g2 r2*4/2 a2*3/2 g2*3/2 ~ \divisioMinima
g2 ~ g2 ~ g4 ~ g2 ~ g2*3/2 ~ \divisioMaxima
g2 ~ g2 ees2*4/2 d2*3/2 ~ \divisioMinima
d4 c2 ~ c2 g2*3/2 ~ \divisioMaxima
g2 ~ g2 ees2*4/2 d2*3/2 ~ d2 g4 ~ g4 ~ g2 \finalis
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
