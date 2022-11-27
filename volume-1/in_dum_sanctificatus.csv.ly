\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.262
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Dum sanctificatus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Dum sanctificatus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Dum sanctificatus" }
    \line {}
  }
}

chantText = \lyricmode {
Dum _ san -- cti -- fi -- cá -- tus 
\set stanza = " * " fú -- e -- ro in vo -- _ bis, 
con -- gre -- gá -- bo _ vos de u -- ni -- vér -- sis ter -- ris: 
et ef -- fún -- _ dam su -- per _ vos 
a -- _ quam mun -- dam, 
et mun -- da -- bí -- mi -- _ ni 
ab ó -- _ mni -- bus in -- qui -- na -- mén -- tis ve -- _ stris: 
et da -- _ bo vo -- bis spí -- ri -- tum _ _ no -- vum. Ps. 
Be -- ne -- dí -- cam Dó -- mi -- num in o -- mni tem -- pó -- re: 
\set stanza = " * " 
sem -- per laus e -- jus in o -- re me -- o. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   d'4 ees'4 ( ees'4 ees'4) d'4 ( \once \tweak #'font-size #-4 c' ) f'4 ( g'4) f'4 g'4 ( bes'4) bes'4  bes'4 bes'4 bes'4 ( bes'4 bes'4) g'4 g'4 ( a'\prall bes'4) c''4 ( bes'4 bes'4) bes'4 ( a'4) \divisioMaior \forceBreak

 f'4 f'4 ( g'4) g'4 g'4 ( f'4) g'4 ( f'4 g'4) d'4 \divisioMinima
 d'4 ( c'4) f'4 g'4 ( bes'4) a'4 ( a'4 bes'4) g'4 ( c''4) bes'4 ( c''4 bes'4 bes'4) bes'4 ( a'4) \divisioMaxima \forceBreak

 bes'4 bes'4 bes'4 ( bes'4) ~ bes'4 ( bes'4 \once \tweak #'font-size #-4 g' ) a'4 ( g'4) f'4 ees'4 ( f'4 g'4 f'4) g'4 ( a'4) g'4 \divisioMaior
 f'4 ( g'4) bes'4 ( a'4) bes'4 ( bes'4 a'4 g'4 a'\prall bes'4 a'4 g'4 \forceBreak
) f'4 ( g'4 a'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMaxima
 g'4 f'4 g'4 g'4 ( c''4 bes'4) c''4 ( bes'4) ~ bes'4 ( g'4) g'4 \divisioMaior
 f'4 f'4 ( g'4) a'4 ( g'4 bes'4 \forceBreak
) f'4 ( g'4 f'4 ees'4 d'4 ees'4) ees'4 ( d'4) \divisioMinima
 d'4 ( \once \tweak #'font-size #-4 ees' ) d'4 ( ees'4) d'4 d'4 ( ees'4 g'4) g'4 ( a'\prall bes'4) f'4 ( ees'4) f'4 ( ees'4 c'4) c'4 \divisioMaxima
 f'4 ( \once \tweak #'font-size #-4 bes'  \forceBreak
) bes'4. ~ bes'4 ( bes'4 bes'4) f'4 g'4 ees'4 \divisioMinima
 ees'4 ( g'4) f'4 g'4 ( f'4) ~ f'4 ( ees'4) f'4 ( g'4 f'4) d'4 ( f'4 ees'4 ees'4) ees'4 ( d'4) \finalis \forceBreak

 f'4 g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 c''4 bes'4 bes'4 a'4 ( g'4) bes'4 ( bes'4 bes'4) \divisioMaxima \forceBreak

 a'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 a'4 f'4 ( g'4) \finalis
  f'4 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima \forceBreak

 bes'4 bes'4 c''4 bes'4 bes'4 a'4 \once \tweak #'font-size #-4 g'  bes'4 bes'4 bes'4 \divisioMaxima
 a'4 f'4 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima \forceBreak

 bes'4 c''4 bes'4 a'4 \once \tweak #'font-size #-4 g'  bes'4 bes'4 bes'4 \divisioMaxima
 a'4 f'4 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 a'4 g'4 f'4 g'4 a'4 f'4 g'4 \finalis

}

altoMusic = {
bes4 ~ bes2*3/2 a2 c'2*3/2 bes2*3/2 f'2 ees'2*4/2 d'2*6/2 ~ d'2 ~ \divisioMaior
d'4 c'2 bes4 ees'2 d'2*3/2 ~ d'4 ~ \divisioMinima
d'4 c'4 ~ c'4 d'2 f'2*3/2 g'2 f'2*4/2 ~ f'2 \divisioMaxima
d'2 ~ d'2 c'2*3/2 ~ c'2 ~ c'4 ~ c'2*4/2 d'2*3/2 ~ \divisioMaior
d'2 f'2 ees'2*3/2 ~ ees'2*5/2 c'2*6/2 ~ c'2 \divisioMaxima
r2*3/2 f'2*4/2 ees'2*3/2 d'4 ~ \divisioMaior
d'4 ~ d'2 ~ d'2*3/2 c'2*6/2 bes2 ~ \divisioMinima
bes2*4/2 ~ bes4 ~ bes2*3/2 ~ bes2*3/2 ~ bes2 c'2 ~ c'4 bes4 \divisioMaxima
f'2 d'2*3/4 ~ d'2*4/2 ees'2 ~ \divisioMinima
ees'2*4/2 c'2*3/2 d'2*3/2 bes2*4/2 ~ bes2 \finalis
d'4 ~ d'2 ~ d'2*6/2 f'2 ~ f'4 d'2 ~ d'2*3/2 \divisioMaxima
f'2 ~ f'2*5/2 ees'2*3/2 d'2*3/2 ~ d'4 ~ d'2 ~ d'4 ~ d'2*3/2 ~ d'2*6/2 ~ \divisioMinima
d'2 f'2*3/2 d'2 ~ d'2*3/2 \divisioMaxima
f'2 ~ f'2*6/2 ~ f'2*3/2 ~ \divisioMinima
f'4 ees'2 ~ ees'2 d'2*3/2 \divisioMaxima
f'2 ~ f'2*6/2 ees'2*3/2 d'2*3/2 ~ d'4 ~ d'2 \finalis
}

tenorMusic = {
g4 ~ g2*3/2 f2 ~ f2*3/2 ~ f2*3/2 g2 ~ g2*4/2 ~ g2*6/2 f2 ~ \divisioMaior
f4 ~ f2 ~ f4 bes2 ~ bes2*3/2 ~ bes4 \divisioMinima
a2 ~ a4 bes2 c'2*3/2 ~ c'2 ~ c'2*4/2 d'2 \divisioMaxima
g2 ~ g2 ~ g2*3/2 f2 g4 ~ g2*4/2 ~ g2*3/2 \divisioMaior
a2 f2 g2*3/2 bes2*5/2 ~ bes2*6/2 a2 \divisioMaxima
bes2*3/2 ~ bes2*4/2 ~ bes2*3/2 ~ bes4 ~ \divisioMaior
bes4 a2 g2*3/2 ~ g2*6/2 f2 \divisioMinima
g2*4/2 f4 ees2*3/2 d2*3/2 g2 ~ g2*3/2 ees4 \divisioMaxima
f2 g2*3/4 a2*4/2 bes2 ~ \divisioMinima
bes2*4/2 g2*3/2 ~ g2*3/2 f2*4/2 g2 \finalis
bes4 ~ bes2 ~ bes2*6/2 ~ bes2 c'4 ~ c'2 bes2*3/2 \divisioMaxima
c'2 bes2*5/2 ~ bes2*3/2 a2*3/2 c'4 ~ c'4 bes4 ~ bes4 ~ bes2*3/2 ~ bes2*6/2 ~ \divisioMinima
bes2 ~ bes2*3/2 c'2 bes2*3/2 \divisioMaxima
c'2 bes2*6/2 g2*3/2 ~ \divisioMinima
g4 ~ g2 c'2 bes2*3/2 \divisioMaxima
c'2 bes2*6/2 ~ bes2*3/2 a2*3/2 c'4 ~ c'4 bes4 \finalis
}

bassMusic = {
r2*6/2 d2*3/2 ~ d2*3/2 ~ d2 c2*4/2 bes,2*6/2 d2 ~ \divisioMaior
d4 ~ d2 ~ d4 c2 g2*3/2 ~ g4 ~ \divisioMinima
g2 ~ g4 ~ g2 d2*3/2 ees2 d2*4/2 ~ d2 \divisioMaxima
r2 f2 ees2*3/2 d2 ~ d4 c2*4/2 bes,2*3/2 \divisioMaior
d2 ~ d2 c2*3/2 ~ c2*5/2 f2*6/2 ~ f2 \divisioMaxima
ees2*3/2 d2*4/2 c2*3/2 bes4 \divisioMaior
bes,4 ~ bes,2 ~ bes,2*3/2 ~ bes,2*6/2 ~ bes,2 \divisioMinima
g,2*4/2 ~ g,4 ~ g,2*3/2 ~ g,2*3/2 ~ g,2 c2*3/2 ~ c4 \divisioMaxima
d2 g2*3/4 ~ g2*4/2 ~ g2 \divisioMinima
c2*4/2 ~ c2*3/2 bes,2*3/2 bes2*4/2 g,2 \finalis
r4 a2 g2*6/2 d2 ~ d4 g2 ~ g2*3/2 \divisioMaxima
d2 ~ d2*5/2 c2*3/2 d2*3/2 ~ d4 g2 r4 a2*3/2 g2*6/2 ~ \divisioMinima
g2 d2*3/2 g2 ~ g2*3/2 \divisioMaxima
d2 ~ d2*6/2 ~ d2*3/2 ~ \divisioMinima
d4 c2 ~ c2 g2*3/2 \divisioMaxima
d2 ~ d2*6/2 c2*3/2 d2*3/2 ~ d4 g2 \finalis
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
