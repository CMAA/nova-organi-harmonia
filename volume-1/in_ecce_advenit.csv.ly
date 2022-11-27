\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.99
%(volume.page)

global = {
 \key g \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Ecce advenit" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Ecce advenit"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Ecce advenit" }
    \line {}
  }
}

chantText = \lyricmode {
Ec -- ce 
\set stanza = " * " ad -- vé -- nit do -- mi -- ná -- tor Dó -- mi -- _ nus: 
et re -- gnum in ma -- _ _ nu e -- _ _ jus, 
et po -- té -- stas, et im -- pé -- ri -- _ um. Ps. 
De -- us, ju -- dí -- ci -- um tu -- um re -- gi da: 
\set stanza = " * " 
et ju -- stí -- ti -- am tu -- am fí -- li -- o re -- gis. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   d'4 ( f'4 g'4 a'4) g'4 \divisioMinima
 g'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( a'\prall bes'4 g'4) g'4 \divisioMinima
 f'4 bes'4 ( bes'4) bes'4 bes'4 bes'4 ( c''4 bes'4 a'4) bes'4 ( a'4) ~ a'4 ( g'4 a'4) a'4 ( g'4) \divisioMaxima \forceBreak

 f'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 bes'4 ( bes'4 bes'4) \divisioMinima
 g'4 ( \once \tweak #'font-size #-4 f' ) g'4 bes'4 ( bes'4 g'4) a'4 ( g'4) f'4 ( g'4) g'4 ( bes'4) ~ bes'4 ( g'4) a'4 ( g'4 f'4) g'4 ( f'4) \divisioMaxima
 g'4 bes'4 ( bes'4) bes'4 ( c''4) g'4 \divisioMinima \forceBreak

 g'4 ( bes'4 c''4) c''4 bes'4 ( c''4 bes'4 a'4) bes'4 ( a'4) ~ a'4 ( g'4 a'4) a'4 ( g'4) \finalis
 f'4 g'4 ( f'4) f'4 ( bes'4) bes'4 bes'4 bes'4 ( a'4) bes'4 ( c''4) c''4 bes'4 ( c''4) bes'4 bes'4 \divisioMaxima \forceBreak

 bes'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 c''4 bes'4 ( g'4) bes'4 a'4 ( f'4) g'4 ( a'4 g'4) \finalis
  f'4 g'4 ( f'4) f'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima \forceBreak

 bes'4 bes'4 bes'4 a'4 bes'4 c''4 c''4 bes'4 c''4 bes'4 \divisioMaxima
 bes'4 g'4 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 a'4 \forceBreak
 bes'4 c''4 c''4 bes'4 c''4 bes'4 \divisioMaxima
 bes'4 g'4 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 c''4 bes'4 g'4 bes'4 a'4 f'4 g'4 a'4 g'4 \finalis

}

altoMusic = {
d'2*4/2 ~ d'4 \divisioMinima
c'2 d'2*4/2 ~ d'4 \divisioMinima
f'2*3/2 ~ f'2 ees'2*3/2 ~ ees'2 f'2*4/2 d'2 ~ \divisioMaxima
d'2*3/2 ~ d'2*3/2 \divisioMinima
c'2*3/2 d'2*3/2 ~ d'2 ~ d'2 ~ d'4 ees'2*3/2 ~ ees'2*3/2 d'2 \divisioMaxima
r4 d'2 ~ d'2*3/2 ~ \divisioMinima
d'2*3/2 ~ d'4 ees'2*5/2 c'2*4/2 bes2 \finalis
r4 d'2 ~ d'2*4/2 ~ d'2 ~ d'2*3/2 ~ d'2*3/2 ~ d'4 ~ \divisioMaxima
d'2 ees'2*5/2 f'2*3/2 ~ f'2*3/2 ~ f'2 d'2*3/2 r4 d'2*4/2 ~ d'2*3/2 ~ d'2*3/2 ~ \divisioMinima
d'2 f'2 ~ f'2*3/2 d'2*3/2 ~ \divisioMaxima
d'2 ees'2*6/2 f'2*3/2 ~ \divisioMinima
f'2 ees'2*3/2 d'2*3/2 ~ \divisioMaxima
d'2 ~ d'2 ~ d'2*5/2 f'2*3/2 c'2 bes2*3/2 \finalis
}

tenorMusic = {
a2*4/2 bes4 \divisioMinima
a2 g2*4/2 bes4 ~ \divisioMinima
bes2*3/2 f2 g2*3/2 c'2 ~ c'2*4/2 bes2 ~ \divisioMaxima
bes2*3/2 g2*3/2 ~ \divisioMinima
g2*3/2 ~ g2*3/2 ~ g2 a2 g4 ~ g2*3/2 bes2*3/2 a2 \divisioMaxima
g2*3/2 ~ g2*3/2 ~ \divisioMinima
g2*3/2 a4 g2*5/2 f2*4/2 d2 \finalis
r4 bes2 ~ bes2*4/2 ~ bes2 a2*3/2 g2*3/2 bes4 ~ \divisioMaxima
bes2 ~ bes2*5/2 ~ bes2*3/2 d'2*3/2 c'2 bes2*3/2 r4 bes2*4/2 ~ bes2*3/2 ~ bes2*3/2 ~ \divisioMinima
bes2 c'2 a2*3/2 g2*3/2 ~ \divisioMaxima
g2 ~ g2*6/2 f2*3/2 \divisioMinima
bes2 ~ bes2*3/2 ~ bes2*3/2 \divisioMaxima
g2 a2 g2*5/2 f2*3/2 ~ f2 d2*3/2 \finalis
}

bassMusic = {
d2*4/2 g4 ~ \divisioMinima
g2 ~ g2*4/2 ~ g4 \divisioMinima
d2*3/2 ~ d2 ~ d2*3/2 c2 d2*4/2 g2 \divisioMaxima
bes,2*3/2 ~ bes,2*3/2 \divisioMinima
a,2*3/2 g,2*3/2 bes,2 ~ bes,2 ~ bes,4 c2*3/2 ~ c2*3/2 d2 \divisioMaxima
r2*3/2 g,2*3/2 \divisioMinima
bes,2*3/2 ~ bes,4 c2*5/2 d2*4/2 g,2 \finalis
r4 r2 a2*4/2 g2 ~ g2*3/2 ~ g2*3/2 ~ g4 \divisioMaxima
bes,2 c2*5/2 d2*3/2 ~ d2*3/2 ~ d2 g2*3/2 r2*5/2 a2*3/2 g2*3/2 ~ \divisioMinima
g2 f2 ~ f2*3/2 g2*3/2 \divisioMaxima
bes,2 c2*6/2 d2*3/2 ~ \divisioMinima
d2 c2*3/2 g2*3/2 \divisioMaxima
g,2 ~ g,2 ~ g,2*5/2 d2*3/2 ~ d2 g,2*3/2 \finalis
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
