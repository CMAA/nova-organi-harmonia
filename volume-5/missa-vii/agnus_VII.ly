\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.46
%(volume.page)

%Proofed 3/14

global = {
 \key f \mixolydian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
A -- gnus De -- _ i, 
\set stanza = " * " qui _ tol -- lis pec -- cá -- ta mun -- di: 
mi -- se -- ré -- _ re no -- _ bis. 
A -- gnus De -- _ i, 
\set stanza = " * " qui _ tol -- lis pec -- cá -- ta mun -- di: 
mi -- se -- ré -- _ re no -- _ bis. 
A -- gnus De -- _ i, 
\set stanza = " * " qui tol -- lis pec -- cá -- ta mun -- di: 
do -- na nó -- _ bis pa -- _ cem. }

chantMusic = {
\tieDown   g'4 ( f'4 bes'4) bes'4 ( c''4) c''4 ( bes'4) c''4 ( g'4) g'4 \divisioMinima
 g'4 ( ees'4) g'4 ( f'4) f'4 ( g'4 f'4) f'4 c'4 ( ees'4) ees'4 ( g'4) g'4 ( g'4 f'4) \forceBreak
 ees'4 ( \once \tweak #'font-size #-4 f' ) f'4 \divisioMaior
 f'4 f'4 ( g'4) g'4 ( f'4 bes'4.) g'4 ( bes'4 f'4) f'4 f'4 ( ees'4) g'4 ( f'4) f'4 \finalis
 g'4 ( f'4 bes'4) bes'4 ( c''4) c''4 ( bes'4) c''4 ( g'4) g'4 \divisioMinima
 \forceBreak
 g'4 ( ees'4) g'4 ( f'4) f'4 ( g'4 f'4) f'4 c'4 ( ees'4) ees'4 ( g'4) g'4 ( g'4 f'4) ees'4 ( \once \tweak #'font-size #-4 f' ) f'4 \divisioMaior
 f'4 f'4 ( g'4) g'4 ( f'4 bes'4.) g'4 ( bes'4 f'4) f'4 \forceBreak
 f'4 ( ees'4) g'4 ( f'4) f'4 \finalis
 bes'4 ( a'4) bes'4 ( c''4) c''4 ( bes'4 a'4 g'4) bes'4 ( f'4) f'4 \divisioMinima
 ees'4 f'4 ( \once \tweak #'font-size #-4 g' ) g'4 ees'4 f'4 ( ees'4 ees'4) c'4 ( bes4) \forceBreak
 f'4 ( ees'4 g'4) g'4 \divisioMaior
 ees'4 g'4 ( bes'4) bes'4 ( a'4 g'4) bes'4 ( f'4) f'4 f'4 ( ees'4) g'4 ( f'4) f'4 \finalis

}

altoMusic = {
d'2*3/2 ~ d'2 ~ d'2*4/2 ~ d'4 \divisioMinima
bes2 ~ bes2 ~ bes2*3/2 ~ bes4 ~ bes2 ~ bes2 c'2*3/2 bes2 a4 \divisioMaior
bes4 ~ bes2 c'2 bes2*3/4 ~ bes2*3/2 ~ bes4 ~ bes2 c'2 ~ c'4 \finalis
d'2*3/2 ~ d'2 ~ d'2*4/2 ~ d'4 \divisioMinima
ees'2 bes2 ~ bes2*4/2 c'2 bes2 c'2*3/2 ~ c'2 ~ c'4 \divisioMaior
bes4 ~ bes2 ~ bes2 ~ bes2*3/4 ~ bes2*3/2 ~ bes4 ~ bes2*4/2 ~ bes4 \finalis
g'2 f'2 ees'2*4/2 d'2 c'4 \divisioMinima
bes4 ~ bes2 ~ bes2 ~ bes2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando c'4 bes4 c'2*3/2 ees'4 ~ \divisioMaior
ees'2*3/2 ~ ees'2*3/2 d'2 -\tweak Glissando.Y-offset #-0.8 \glissando f'4 c'2*4/2 ~ c'4 \finalis
}

tenorMusic = {
bes2*3/2 ~ bes2 a2*4/2 \shiftRight g4 ~ \divisioMinima
g2 ees2 ~ ees2*3/2 d4 ees2 c2 ~ c2*3/2 ~ c2 ~ c4 \divisioMaior
d4 c2 ~ c2 d2*3/4 ~ d2*3/2 f4 g2 ~ g2 a4 \finalis
bes2*3/2 ~ bes2 a2*4/2 bes4 ~ \divisioMinima
bes2 ~ bes2 f2*4/2 g2 ~ g2 ~ g2*3/2 bes2 a4 \divisioMaior
bes4 f2 ~ f2 ees2*3/4 d2*3/2 ~ d4 c2*4/2 d4 \finalis
ees'2 d'2 c'2*4/2 bes2 a4 \divisioMinima
g4 f2 ees2 ~ ees2*3/2 f2 g2*3/2 bes4 \divisioMaior
c'2*3/2 bes2*3/2 ~ bes2 ~ bes4 ~ bes2*4/2 a4 \finalis
}

bassMusic = {
r2*3/2 g2 ~ g2*4/2 ~ g4 \divisioMinima
g,2 ~ g,2 bes,2*3/2 ~ bes,4 c2 bes,2 a,2*3/2 g,2 f,4 \divisioMaior
bes,4 ~ bes,2 a,2 ~ a,2*3/4 g,2*3/2 ~ g,4 ~ g,2 c2 f4 \finalis
r2*3/2 g2 ~ g2*4/2 ~ g4 \divisioMinima
ees2 d2 ~ d2*4/2 ees2 ~ ees2 c2*3/2 ~ c2 f4 \divisioMaior
d4 ~ d2 g,2 ~ g,2*3/4 ~ g,2*3/2 bes,4 ~ bes,2*4/2 ~ bes,4 \finalis
r2*11/2 \divisioMinima
r2*5/2 c2*3/2 d2 c2*3/2 ~ c4 ~ \divisioMaior
c2*3/2 ~ c2*3/2 bes,2 d4 ees2*4/2 f4 \finalis
}

voiceLines = {
\voiceLineStyle



}

\score{
  <<
    \new Lyrics
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "VIII."
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
    \context Lyrics {
      \lyricsto chant {
      \chantText
    }
    }
  >>
  \layout{
  }
  
}
