\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.264
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Laetetur cor" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Laetetur cor"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Laetetur cor" }
    \line {}
  }
}

chantText = \lyricmode {
Læ -- té -- tur cor _ 
\set stanza = " * " quæ -- rén -- ti -- um _ Dó -- mi -- num: 
quǽ -- ri -- te Dó -- mi -- num, _ 
et con -- fir -- má -- mi -- ni: 
quǽ -- ri -- te _ fá -- ci -- em e -- jus _ sem -- per. Ps. 
Con -- fi -- té -- mi -- ni Dó -- mi -- no, et in -- vo -- cá -- te no -- men e -- jus 
\set stanza = " * " 
an -- nun -- ti -- á -- te in -- ter gen -- tes ó -- pe -- ra e -- jus. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   d'4 f'4 ( g'4) g'4 g'4 ( bes'4 g'4) ~ g'4 ( f'4) \divisioMinima
 g'4 bes'4 ( bes'4) bes'4 bes'4 ( a'4) bes'4 ( c''4 d''4 bes'4 a'4 bes'4 \forceBreak
) g'4 g'4 ( a'4 g'4) g'4 \divisioMaxima
 bes'4 c''4 ( bes'4 bes'4) g'4 ( bes'4 a'4) bes'4 ( a'4 bes'4 g'4) g'4 g'4. f'4 ( g'4 f'4 d'4) \divisioMaior
 f'4 f'4 ( g'4 bes'4 a'4 \forceBreak
) bes'4 ( bes'4 bes'4) g'4 ( a'\prall bes'4) g'4 ( a'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMaxima
 g'4 g'4 ( f'4 g'4) g'4 f'4 ( g'4 f'4 d'4) \divisioMinima
 g'4 ( a'4 f'4) g'4 bes'4 ( bes'4 \forceBreak
) bes'4 bes'4 ( a'4) bes'4 ( c''4 d''4 bes'4 a'4 bes'4) g'4 ( a'4 g'4) g'4 \finalis
 f'4 g'4 ( f'4) f'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima \forceBreak

 bes'4 bes'4 bes'4 bes'4 bes'4 ( a'4) bes'4 ( c''4) c''4 bes'4 ( c''4) bes'4 \divisioMaxima
 bes'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 \forceBreak
 bes'4 bes'4 c''4 bes'4 ( g'4) bes'4 a'4 ( f'4) g'4 ( a'4 g'4) \finalis
  f'4 g'4 ( f'4) f'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima \forceBreak

 bes'4 bes'4 bes'4 ( a'4) bes'4 ( c''4) c''4 bes'4 ( c''4.) bes'4 \divisioMaxima
 bes'4 ( g'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima \forceBreak

 bes'4 ( a'4) bes'4 ( c''4) c''4 bes'4 ( c''4) bes'4 \divisioMaxima
 bes'4 ( g'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 c''4 bes'4 ( g'4) bes'4 a'4 ( f'4) g'4 ( a'4 g'4) \finalis

}

altoMusic = {
r4 c'2 d'4 ~ d'2 c'2*3/2 ~ \divisioMinima
c'4 d'2*3/2 ~ d'2 ~ d'2*6/2 ~ d'4 ~ d'2*3/2 ~ d'4 ~ \divisioMaxima
d'4 ~ d'2*3/2 ~ d'2*3/2 f'2*5/2 d'2*3/4 ~ d'2*3/2 ~ d'4 ~ \divisioMaior
d'4 ~ d'2*4/2 ~ d'2*3/2 ees'2*3/2 d'2*5/2 c'2 \divisioMaxima
d'4 ~ d'2*3/2 ees'4 d'2*3/2 ~ d'4 \divisioMinima
f'2*4/2 ~ f'2 d'4 ~ d'2 ~ d'2*6/2 ~ d'2*3/2 ~ d'4 ~ \finalis
d'4 c'2 d'2*4/2 ~ d'2*3/2 ~ \divisioMinima
d'2*3/2 ees'4 f'2 ~ f'2*3/2 d'2*3/2 \divisioMaxima
f'2 ees'2*3/2 ~ ees'2*4/2 d'2 f'4 ~ f'2*3/2 ~ f'2 d'2 ~ d'4 ~ d'4 c'2 d'2 ~ d'2*3/2 ~ d'2*3/2 ~ \divisioMinima
d'2 f'2 ~ f'2*3/2 d'2*7/4 \divisioMaxima
f'2 ees'2 ~ ees'2*4/2 f'2*3/2 ~ \divisioMinima
f'2 ~ f'2*3/2 d'2*3/2 \divisioMaxima
ees'2 d'2 ~ d'2*3/2 f'2 ~ f'2*3/2 ~ f'2 d'2 ~ d'4 \finalis
}

tenorMusic = {
d'4 bes2 ~ bes4 ~ bes2 a2*3/2 ~ \divisioMinima
a4 r2*3/2 c'2 bes2*6/2 a4 c'2*3/2 bes4 \divisioMaxima
r4 a2*3/2 bes2*3/2 ~ bes2*5/2 a2*3/4 g2*3/2 f4 ~ \divisioMaior
f4 ~ f2*4/2 g2*3/2 ~ g2*3/2 ~ g2*5/2 a2 \divisioMaxima
g4 bes2*3/2 ~ bes4 a2*4/2 \divisioMinima
bes2*4/2 c'2 ~ c'4 bes2 a2*6/2 c'2*3/2 bes4 ~ \finalis
bes2*3/2 ~ bes2*4/2 ~ bes2*3/2 ~ \divisioMinima
bes2*3/2 ~ bes4 c'2 a2*3/2 bes2*3/2 ~ \divisioMaxima
bes2 ~ bes2*3/2 g2*4/2 ~ g2 ~ g4 bes2*3/2 c'2 ~ c'2 bes4 ~ bes2*3/2 ~ bes2 ~ bes2*3/2 ~ bes2*3/2 ~ \divisioMinima
bes2 c'2 a2*3/2 bes2*7/4 ~ \divisioMaxima
bes2 ~ bes2 g2*4/2 f2*3/2 \divisioMinima
bes2 a2*3/2 g2*3/2 ~ \divisioMaxima
g2 ~ g2 ~ g2*3/2 ~ g2 bes2*3/2 c'2 ~ c'2 bes4 \finalis
}

bassMusic = {
r2*4/2 g2 a2*3/2 \divisioMinima
r4 g2*3/2 ~ g2 ~ g2*6/2 ~ g4 ~ g2*3/2 ~ g4 ~ \divisioMaxima
g4 ~ g2*3/2 ~ g2*3/2 d2*5/2 ~ d2*3/4 ~ d2*3/2 ~ d4 ~ \divisioMaior
d4 bes,2*4/2 ~ bes,2*3/2 c2*3/2 bes,2*5/2 a,2 \divisioMaxima
bes,4 ~ bes,2*3/2 c4 d2*4/2 ~ \divisioMinima
d2*4/2 ~ d2 g4 ~ g2 ~ g2*6/2 ~ g2*3/2 ~ g4 \finalis
r2*7/2 a2*3/2 \divisioMinima
g2*3/2 ~ g4 f2 ~ f2*3/2 g2*3/2 \divisioMaxima
d2 c2*3/2 ~ c2*4/2 g,2 d4 ~ d2*3/2 ~ d2 g2 ~ g4 r2*5/2 a2*3/2 g2*3/2 ~ \divisioMinima
g2 f2 ~ f2*3/2 g2*7/4 \divisioMaxima
d2 c2 ~ c2*4/2 d2*3/2 ~ \divisioMinima
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
