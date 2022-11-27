\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.45
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Jubilate Deo" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Jubilate Deo"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Jubilate Deo" }
    \line {}
  }
}

chantText = \lyricmode {
Ju -- bi -- lá -- te De -- o 
\set stanza = " * " om -- nis ter -- ra, al -- le -- lú -- ia: 
psal -- mum _ _ dí -- ci -- te nó -- mi -- ni e -- jus, 
al -- le -- _ _ lú -- ia: 
da -- te gló -- ri -- am lau -- di e -- jus, 
al -- le -- lú -- ia, _ al -- le -- lú -- ia, al -- le -- _ lú -- ia. Ps. 
Dí -- ci -- te De -- o, quam ter -- ri -- bí -- li -- a sunt ó -- pe -- ra tu -- a, Dó -- mi -- ne! 
\set stanza = " * " 
in mul -- ti -- tú -- di -- ne vir -- tú -- tis tu -- æ men -- ti -- én -- tur ti -- bi in -- i -- mí -- ci tu -- i. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   f'4 f'4 g'4 ( bes'4 f'4) ees'4 f'4 ( g'4) g'4 \divisioMinima
 bes'4 ( bes'4) f'4 g'4 f'4 \divisioMinima
 g'4 f'4 f'4 ( g'4 f'4) f'4 \divisioMaxima \forceBreak

 f'4 ( \once \tweak #'font-size #-4 bes' ) bes'4. ~ bes'4 ( bes'4) ~ bes'4 ( g'4) g'4 ( a'\prall bes'4) g'4 ( f'4) f'4 ( ees'4) g'4 ( a'\prall bes'4) g'4 ( f'4 ees'4) g'4 g'4 ( \once \tweak #'font-size #-4 a' ) f'4 \divisioMaior
 f'4 ( \once \tweak #'font-size #-4 bes' ) bes'4. ~ bes'4 ( bes'4) ~ bes'4 ( g'4 \forceBreak
) g'4 ( bes'4 \tiny a' g' 4) g'4 \divisioMaxima
 a'4 ( a'4 bes'4) f'4 ( g'4 f'4 ees'4) g'4 ( a'\prall bes'4) g'4 ees'4 ( \once \tweak #'font-size #-4 f' ) f'4 ( \once \tweak #'font-size #-4 ees' ) g'4 ( ees'4 g'4 f'4) f'4 ( g'4 f'4) f'4 \divisioMaxima \forceBreak

 f'4 f'4 ees'4 ( d'4 ees'4) c'4 ees'4 ( ees'4 c'4 ees'4) \divisioMinima
 bes4 ( c'4) ees'4 ( f'4) f'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( f'4 g'4) \divisioMinima
 g'4 ( a'\prall bes'4) bes'4. a'4 ( bes'4 g'4 f'4) f'4 ( g'4 f'4) f'4 \finalis \forceBreak

 f'4 g'4 ( f'4) f'4 ( bes'4) bes'4 bes'4 \divisioMinima
 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 ( a'4) bes'4 ( c''4) c''4 \forceBreak
 bes'4 ( c''4) bes'4 bes'4 \divisioMaxima
 bes'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 bes'4 \forceBreak
 bes'4 bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) f'4 ( g'4) bes'4 ( a'4) g'4 f'4 \finalis
 f'4 g'4 ( f'4) f'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima \forceBreak

 bes'4 bes'4 bes'4 ( a'4) bes'4 ( c''4) c''4 bes'4 ( c''4) bes'4 \divisioMaxima
 bes'4 ( g'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4  \forceBreak
 bes'4 ( a'4) bes'4 ( c''4) c''4 bes'4 ( c''4) bes'4 \divisioMaxima
 bes'4 ( g'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) f'4 ( g'4) bes'4 ( a'4) g'4 f'4 \finalis

}

altoMusic = {
d'2 ~ d'2*3/2 ees'4 ~ ees'2*3/2 \divisioMinima
f'2*3/2 ~ f'2 \divisioMinima
ees'2 c'2*3/2 ~ c'4 \divisioMaxima
f'2 ~ f'2*3/4 ~ f'2 d'2 ~ d'2*3/2 ~ d'2 c'2 d'2*3/2 c'2*4/2 ~ c'2*3/2 \divisioMaior
d'2 ~ d'2*3/4 ees'2 ~ ees'2 d'2*4/2 ~ d'4 \divisioMaxima
bes2*3/2 c'2*4/2 d'2*4/2 ~ d'2 c'2 bes2*4/2 ~ bes2*3/2 ~ bes4 ~ \divisioMaxima
bes2 ~ bes2*4/2 ~ bes2*4/2 ~ \divisioMinima
bes2 ~ bes2 ~ bes2 c'2*3/2 \divisioMinima
d'2*3/2 ~ d'2*3/4 ees'2 ~ ees'2 c'2*3/2 ~ c'4 \finalis
r4 d'2 ~ d'2 ~ d'2*5/2 ees'2*6/2 f'2 ~ f'2*3/2 d'2*3/2 ~ d'4 \divisioMaxima
ees'2 ~ ees'2*9/2 f'2 \divisioMinima
d'2*7/2 f'2*3/2 ~ f'2 ~ f'2 c'2 \finalis
r4 d'2 ~ d'2*5/2 ~ d'2*3/2 ~ \divisioMinima
d'2 f'2 ~ f'2*3/2 ~ f'2*3/2 \divisioMaxima
ees'2 ~ ees'2*6/2 f'2*3/2 ~ f'2 ~ f'2*3/2 d'2*3/2 ~ \divisioMaxima
d'2 ees'2 f'2*4/2 ~ f'2*3/2 ~ f'2 ees'2 c'2 \finalis
}

tenorMusic = {
bes2 ~ bes2*4/2 ~ bes2*3/2 ~ \divisioMinima
bes2*3/2 a2 \divisioMinima
bes2 ~ bes2*3/2 a4 \divisioMaxima
bes2 d'2*3/4 c'2 ~ c'2 bes2*3/2 g2 ~ g2 ~ g2*3/2 ees2*4/2 f2*3/2 ~ \divisioMaior
f2 g2*3/4 ~ g2 c'2 ~ c'2*4/2 bes4 \divisioMaxima
f2*3/2 g2*4/2 ~ g2*4/2 ~ g2 ~ g2 ~ g2*4/2 ees2*3/2 d4 \divisioMaxima
f2 g2*4/2 ~ g2*4/2 \divisioMinima
f2 ees2 d2 ~ d2*3/2 ~ \divisioMinima
d2*3/2 g2*3/4 ~ g2 bes2 ~ bes2*3/2 a4 \finalis
bes2*3/2 ~ bes2 ~ bes2*5/2 ~ bes2*6/2 c'2 a2*3/2 g2*3/2 bes4 \divisioMaxima
c'2 bes2*9/2 ~ bes2 ~ \divisioMinima
bes2*7/2 c'2*3/2 ~ c'2 bes2 ~ bes4 a4 \finalis
r4 bes2 ~ bes2*5/2 ~ bes2*3/2 ~ \divisioMinima
bes2 c'2 a2*3/2 bes2*3/2 \divisioMaxima
c'2 bes2*6/2 ~ bes2*3/2 c'2 a2*3/2 g2*3/2 ~ \divisioMaxima
g2 ~ g2 f2*4/2 c'2*3/2 bes2 ~ bes2 ~ bes4 a4 \finalis
}

bassMusic = {
r2 g2*4/2 ees2*3/2 \divisioMinima
d2*3/2 ~ d2 \divisioMinima
c2 f2*3/2 ~ f4 \divisioMaxima
d2 ~ d2*3/4 ~ d2 g2 ~ g2*3/2 ~ g2 c2 bes,2*3/2 ~ bes,2*4/2 a,2*3/2 \divisioMaior
bes,2 ~ bes,2*3/4 c2 ~ c2 g2*4/2 ~ g4 \divisioMaxima
d2*3/2 c2*4/2 bes,2*4/2 c2 ~ c2 g,2*4/2 bes,2*3/2 ~ bes,4 \divisioMaxima
d2 c2*4/2 g,2*4/2 ~ \divisioMinima
g,2 ~ g,2 ~ g,2 a,2*3/2 \divisioMinima
bes,2*3/2 ~ bes,2*3/4 c2 ~ c2 f2*3/2 ~ f4 \finalis
r2*3/2 a2 g2*5/2 ~ g2*6/2 f2 ~ f2*3/2 g2*3/2 ~ g4 \divisioMaxima
c2 ~ c2*9/2 d2 \divisioMinima
g2*7/2 f2*3/2 ees2 d2 f2 \finalis
r4 r2 a2*5/2 g2*3/2 ~ \divisioMinima
g2 f2 ~ f2*3/2 d2*3/2 \divisioMaxima
c2 ~ c2*6/2 d2*3/2 f2 ~ f2*3/2 g2*3/2 \divisioMaxima
bes,2 c2 d2*4/2 ~ d2*3/2 ~ d2 c2 f2 \finalis
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
        "VIII"
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
