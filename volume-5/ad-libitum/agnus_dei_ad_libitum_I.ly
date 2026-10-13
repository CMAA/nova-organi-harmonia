\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.150
%(volume.page)

%Proofed 3/14

global = {
 \key f \mixolydian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
 \override Glissando #'breakable = ##t
}

chantText = \lyricmode {
A -- _ gnus De -- i, 
\set stanza = " * " qui _ tol -- lis pec -- cá -- ta mun -- di: 
mi -- se -- ré -- re no -- bis. 
A -- _ gnus De -- i, 
\set stanza = " * " qui _ tol -- lis pec -- cá -- ta mun -- di: 
mi -- se -- ré -- re no -- bis. 
A -- _ gnus De -- i, 
\set stanza = " * " qui _ tol -- lis pec -- cá -- ta mun -- di: 
do -- na nó -- bis pa -- cem. }

chantMusic = {
\tieDown   f'4 ( f'4) a'4 ( bes'4 g'4 g'4) f'4 f'4 ( a'4 g'4) ~ g'4 ( f'4) f'4 \divisioMinima
 d'4 ( c'4 f'4)  g'4 ( a'4 )  a'4 ( bes'4 g'4 g'4 )\forceBreak
 f'4 f'4 bes'4 c''4 ( d''4) d''4 c''4 ( bes'4 a'4) \divisioMaior
 a'4 bes'4 c''4 ( a'4) bes'4 ( a'4) ~ a'4 ( g'4 f'4) g'4 ( a'4 g'4) ~ g'4 ( f'4) f'4 \finalis
 \forceBreak
 f'4 ( f'4) a'4 ( bes'4 g'4 g'4) f'4 f'4 ( a'4 g'4) ~ g'4 ( f'4) f'4 \divisioMinima
 d'4 ( c'4 f'4) g'4 ( a'4) a'4 ( bes'4 g'4 g'4) f'4 f'4 bes'4 c''4 ( d''4) \forceBreak
 d''4 c''4 ( bes'4 a'4) \divisioMaior
 a'4 bes'4 c''4 ( a'4) bes'4 ( a'4) ~ a'4 ( g'4 f'4) g'4 ( a'4 g'4) ~ g'4 ( f'4) f'4 \finalis
 f'4 ( f'4) a'4 ( bes'4 g'4 g'4) f'4 \forceBreak
 f'4 ( a'4 g'4) ~ g'4 ( f'4) f'4 \divisioMinima
 d'4 ( c'4 f'4) g'4 ( a'4) a'4 ( bes'4 g'4 g'4) f'4 f'4 bes'4 c''4 ( d''4) d''4 c''4 ( bes'4 a'4) \divisioMaior
 \forceBreak
 a'4 bes'4 c''4 ( a'4) bes'4 ( a'4) ~ a'4 ( g'4 f'4) g'4 ( a'4 g'4) ~ g'4 ( f'4) f'4 \finalis

}

altoMusic = {
r2 d'2 ~ d'2*3/2 c'2 d'2*3/2 c'4 -\tweak Glissando.Y-offset #-0.8 \glissando \divisioMinima
d'4 c'2 ees'2 d'2 ~ d'2 \glissando f'2*3/2 ~ f'2 ~ f'4 ~ f'2*3/2 ~ \divisioMaior
f'2 ~ f'2*3/2 d'2 ~ d'2 ees'2 c'2*3/2 ~ c'4 \finalis
r4 f'4 ~ f'2 ~ f'2*3/2 ~ f'2 c'2*3/2 ~ c'4 -\tweak Glissando.Y-offset #-0.8 \glissando \divisioMinima
d'4 c'2 ees'2 d'2*4/2 f'2*3/2 ~ f'2 ~ f'4 ~ f'2*3/2 \divisioMaior
d'2 c'2*3/2 d'2*4/2 c'2 bes2*3/2 a4 \finalis
d'2 ees'2*5/2 f'2 -\tweak Glissando.Y-offset #-0.8 \glissando g'4 r2*3/2 \divisioMinima
r2*3/2 d'2 ~ d'2*4/2 f'2*3/2 ~ f'2 ~ f'4 ~ f'2*3/2 ~ \divisioMaior
f'2 ~ f'2*3/2 d'2 ~ d'2 ees'2 c'2*3/2 ~ c'4 \finalis
}

tenorMusic = {
c'2 ~ c'2 bes2*3/2 a2 bes2*3/2 ~ bes4 \divisioMinima
a2*3/2 bes2 c'2 bes2 ~ bes2*3/2 a2 bes4 f2*3/2 \divisioMaior
d'2 c'2*3/2 ~ c'2 bes2 ~ bes2 ~ bes2*3/2 a4 \finalis
d'2 c'2 bes2*3/2 a2 bes2*3/2 a4 ~ \divisioMinima
a2*3/2 bes2 ~ bes2*4/2 ~ bes2*3/2 a2 bes4 f2*3/2 ~ \divisioMaior
f2 f2*3/2 ~ f2*4/2 ~ f2 c2*3/2 ~ c4 \finalis
bes2 c'2*5/2 d'2 ~ d'2*3/2 c'4 \divisioMinima
bes2*3/2 ~ bes2 ~ bes2*4/2 ~ bes2*3/2 a2 bes4 f2*3/2 \divisioMaior
d'2 c'2*3/2 ~ c'2 bes2 ~ bes2 ~ bes2*3/2 a4 \finalis
}

bassMusic = {
a2 g2 ~ g2*3/2 \shiftRight a2*5/2 f4 ~ \divisioMinima
f2*3/2 c2 g2 ~ g2 d2*3/2 ~ d2 ~ d4 ~ d2*3/2 ~ \divisioMaior
d2 ~ d2*3/2 g2 ~ g2 ees2 f2*3/2 ~ f4 \finalis
d2 ~ d2 ~ d2*3/2 ~ d2 f2*3/2 ~ f4 ~ \divisioMinima
f2*3/2 c2 bes,2*4/2 d2*3/2 ~ d2 ~ d4 ~ d2*3/2 ~ \divisioMaior
d2 a,2*3/2 bes,2*4/2 f,2 ~ f,2*3/2 ~ f,4 \finalis
s2*9/2 bes2*3/2 a4 \divisioMinima
s2*3/2 a2 g2*4/2 d2*3/2 ~ d2 ~ d4 ~ d2*3/2 ~ \divisioMaior
d2 ~ d2*3/2 g2 ~ g2 ees2 f2*3/2 ~ f4 \finalis
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
  
