\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.306
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Timete Dominum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Timete Dominum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Timete Dominum" }
    \line {}
  }
}

chantText = \lyricmode {
Ti -- mé -- te Dó -- mi -- num 
\set stanza = " * " o -- mnes san -- cti e -- jus, _ 
quó -- ni -- am ni -- hil _ de -- est ti -- mén -- ti -- bus e -- _ um: 
dí -- vi -- tes e -- gu -- é -- runt, et e -- su -- ri -- é -- _ runt: 
in -- qui -- rén -- _ tes _ au -- tem Dó -- mi -- num 
non de -- fí -- ci -- ent o -- _ _ _ mni bo -- no. Ps. 
Be -- ne -- dí -- cam Dó -- mi -- num in o -- mni tém -- po -- re: 
\set stanza = " * " 
sem -- per laus e -- jus in o -- re me -- o. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   f'4 f'4 ( bes'4 g'4 f'4 bes'4) bes'4 bes'4 bes'4 ( bes'4 bes'4) a'4 ( g'4) \divisioMinima
 g'4 ( bes'4 a'4 bes'4) a'4 ( g'4) g'4 g'4 ( c''4) c''4 ( \once \tweak #'font-size #-4 bes' ) bes'4 ( c''4 bes'4) ~ bes'4 ( a'4) \divisioMaior
 f'4 f'4 ( g'4) g'4 bes'4 bes'4 ( bes'4) ~ bes'4 ( \once \tweak #'font-size #-4 g' ) a'4 g'4 \divisioMinima
 g'4 g'4 ( a'4) g'4 ( f'4) g'4 ( a'4) g'4 ( f'4) g'4 ( f'4 d'4) d'4 \divisioMaxima
 f'4 ( d'4) ees'4 f'4 f'4 f'4 f'4 ( g'4) f'4 \divisioMinima
 f'4 f'4 f'4 f'4 f'4 ( g'4) bes'4 ( g'4 ees'4 f'\prall g'4 f'4 g'4) g'4 ( f'4) \divisioMaxima
 f'4 f'4 f'4 ( g'4) bes'4 ( a'4) bes'4 ( bes'4) ~ bes'4 ( g'4) bes'4 bes'4 ( bes'4 bes'4) g'4 ( bes'4 a'4 bes'4) g'4 f'4 ( g'4 f'4) \divisioMaior
 f'4 f'4 ( g'4 f'4 d'4) ees'4 ( f'\prall g'4 f'4) f'4 ( ees'4 f'\prall g'4 f'4 g'4) g'4 ( f'4) \divisioMinima
 f'4 bes'4 ( bes'4 f'4.) bes'4 ( bes'4) ~ bes'4 ( \once \tweak #'font-size #-4 f' ) f'4 ( d'4) ees'4 ( f'4 ees'4 d'4) d'4 \finalis
 f'4 g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 c''4 bes'4 bes'4 a'4 ( g'4) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 a'4 f'4 ( g'4) \finalis
  f'4 g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 c''4 bes'4 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 c''4 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 a'4 f'4 ( g'4) \finalis

}

altoMusic = {
r4 d'2*6/2 ~ d'4 ~ d'2*5/2 ~ \divisioMinima
d'2*6/2 ~ d'4 c'2 f'2 ~ f'2 ~ f'2*3/2 \divisioMaior
d'4 ~ d'2*4/2 ~ d'2 ~ d'2*3/2 ~ d'4 ~ \divisioMinima
d'4 c'2*4/2 d'2*4/2 a2*3/2 ~ a4 \divisioMaxima
d'2*6/2 c'2*3/2 ~ \divisioMinima
c'2*4/2 d'2 ~ d'2 c'2 ~ c'2*3/2 ~ c'2 \divisioMaxima
r2 f'2*4/2 ~ f'2 ees'2 d'4 ~ d'2*3/2 ~ d'2*5/2 c'2*3/2 ~ \divisioMaior
c'4 bes2*4/2 ~ bes2 ~ bes2 c'2*3/2 ~ c'2*3/2 ~ c'2 ~ \divisioMinima
c'4 f'2*7/4 ees'2 d'2 ~ d'2 c'2*4/2 bes4 \finalis
r4 g'2 f'2 ~ f'2*4/2 g'2 ~ g'4 ees'2 g'2*3/2 \divisioMaxima
d'2*5/2 ~ d'2 f'2*3/2 ees'2*3/2 d'2 ~ d'4 r4 g'2*3/2 f'2*3/2 ~ f'2*3/2 ~ \divisioMinima
f'2 g'2*3/2 ees'2 g'2*3/2 \divisioMaxima
d'2*4/2 ~ d'2*4/2 g'2*3/2 ~ \divisioMinima
g'4 f'2 ~ f'2 ~ f'2*3/2 \divisioMaxima
d'2*4/2 ~ d'2*4/2 f'2*3/2 ees'2*3/2 d'2 ~ d'4 \finalis
}

tenorMusic = {
r4 bes2*6/2 f4 g2*5/2 \divisioMinima
bes2*6/2 ~ bes4 ~ bes2 ~ bes2 c'2 d'2*3/2 \divisioMaior
a4 g2*4/2 f2 ~ f2*3/2 g4 ~ \divisioMinima
g4 ~ g2*4/2 ~ g2*4/2 ~ g2*3/2 f4 \divisioMaxima
r2*9/2 \divisioMinima
r2*4/2 bes2 ~ bes2 ~ bes2 ~ bes2*3/2 a2 ~ \divisioMaxima
a2 bes2*4/2 ~ bes2 ~ bes2 d'4 c'2*3/2 bes2*5/2 a2*3/2 ~ \divisioMaior
a4 g2*4/2 ~ g2 ~ g2 ~ g2*3/2 bes2*3/2 a2 ~ \divisioMinima
a4 bes2*7/4 ~ bes2 ~ bes2 a2 g2*4/2 f4 \finalis
f'4 ees'2 ~ ees'2 d'2*4/2 ees'2 d'4 c'2 d'2*3/2 \divisioMaxima
c'2*5/2 bes2 ~ bes2*3/2 ~ bes2*3/2 c'2 bes4 f'4 ees'2*3/2 ~ ees'2*3/2 d'2*3/2 ~ \divisioMinima
d'2 ees'2*3/2 ~ ees'2 d'2*3/2 \divisioMaxima
c'2*4/2 bes2*4/2 ~ bes2*3/2 ~ \divisioMinima
bes4 ~ bes2 c'2 bes2*3/2 \divisioMaxima
c'2*4/2 bes2*4/2 ~ bes2*3/2 ~ bes2*3/2 c'2 bes4 \finalis
}

bassMusic = {
r4 bes,2*6/2 ~ bes,4 ~ bes,2*5/2 ~ \divisioMinima
bes,2*6/2 ees4 ~ ees2 d2 ~ d2 ~ d2*3/2 ~ \divisioMaior
d4 ~ d2*4/2 ~ d2 c2*3/2 bes,4 ~ \divisioMinima
bes,4 a,2*4/2 bes,2*4/2 d2*3/2 ~ d4 \divisioMaxima
bes2*6/2 a2*3/2 ~ \divisioMinima
a2*4/2 ~ a2 g2 ~ g2 ees2*3/2 f2 \divisioMaxima
d2 ~ d2*4/2 g2 ~ g2 ~ g4 ~ g2*3/2 ~ g2*5/2 ~ g2*3/2 ~ \divisioMaior
g4 ~ g2*4/2 f2 ees2 ~ ees2*3/2 ~ ees2*3/2 f2 ~ \divisioMinima
f4 d2*7/4 c2 bes,2 ~ bes,2 ~ bes,2*4/2 ~ bes,4 \finalis
r2*9/2 c'2 ~ c'4 ~ c'2 g2*3/2 ~ \divisioMaxima
g2*5/2 ~ g2 ~ g2*3/2 ~ g2*3/2 ~ g2 ~ g4 r2*10/2 \divisioMinima
r2 c'2*3/2 ~ c'2 g2*3/2 ~ \divisioMaxima
g2*4/2 ~ g2*4/2 ees2*3/2 ~ \divisioMinima
ees4 d2 ~ d2 ~ d2*3/2 ~ \divisioMaxima
d2*4/2 g2*4/2 ~ g2*3/2 ~ g2*3/2 ~ g2 ~ g4 \finalis
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
