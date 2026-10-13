\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.97
%(volume.page)

%Proofed 3/14

global = {
 \key f \mixolydian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
A -- gnus De -- i, 
\set stanza = " * " qui tol -- lis pec -- cá -- ta mun -- di: mi -- se -- ré -- re no -- bis. 
A -- gnus De -- i, 
\set stanza = " * " qui tol -- lis pec -- cá -- ta mun -- di: mi -- se -- ré -- re no -- bis. 
A -- gnus De -- i, 
\set stanza = " * " qui tol -- lis pec -- cá -- ta mun -- di: do -- na nó -- bis pa -- cem. }

chantMusic = {
\tieDown   f'4 f'4 f'4 ( g'4) g'4 \divisioMinima
 g'4 g'4 g'4 f'4 g'4 ees'4 f'4 g'4 \divisioMinima
 f'4 g'4 \forceBreak
 a'4 f'4 g'4 ( f'4) f'4 \finalis
 f'4 f'4 f'4 ( g'4) g'4 \divisioMinima
 g'4 g'4 g'4 f'4 g'4 ees'4 f'4 g'4 \divisioMinima
 \forceBreak
 f'4 g'4 a'4 f'4 g'4 ( f'4) f'4 \finalis
 f'4 f'4 f'4 ( g'4) g'4 \divisioMinima
 g'4 g'4 g'4 f'4 g'4 ees'4 \forceBreak
 f'4 g'4 \divisioMinima
 f'4 g'4 a'4 f'4 g'4 ( f'4) f'4 \finalis

}

altoMusic = {
d'2 ~ d'2 ~ d'4 ~ \divisioMinima
d'4 c'2*3/2 ees'2 f'2 ~ \divisioMinima
\set tieWaitForNote = ##t f'2 ~ s4 f'4 \set tieWaitForNote = ##f c'2 ~ c'4 \finalis
d'2 c'2 bes4 ~ \divisioMinima
bes4 ~ bes2*3/2 ~ bes2 ~ bes2 \divisioMinima
c'2 ~ c'2 bes2 a4 \finalis
d'2 ~ d'2 ~ d'4 ~ \divisioMinima
d'4 c'2*3/2 ees'2 d'2 \divisioMinima
c'2 d'2 ~ d'2 c'4 \finalis
}

tenorMusic = {
bes2 ~ bes2 ~ bes4 ~ \divisioMinima
bes4 ~ bes2*3/2 ~ bes2 ~ bes2 \divisioMinima
c'2 ~ c'2 bes2 a4 \finalis
d2 ~ d2 ~ d4 ~ \divisioMinima
d4 ees2*3/2 ~ ees2 d2 ~ \divisioMinima
d2 ~ d2 c2 ~ c4 \finalis
bes2 ~ bes2 ~ bes4 ~ \divisioMinima
bes4 ~ bes2*3/2 ~ bes2 ~ bes2 \divisioMinima
a2 f2 ~ f2 a4 \finalis
}

bassMusic = {
r2 a2 g4 ~ \divisioMinima
g4 ees2*3/2 c2 d2 ~ \divisioMinima
d2 f2 ~ f2 ~ f4 \finalis
bes,2 a,2 g,4 ~ \divisioMinima
g,4 ~ g,2*3/2 c2 bes,2 \divisioMinima
a,2 f,2 ~ f,2 ~ f,4 \finalis
r2 a2 g4 ~ \divisioMinima
g4 ees2*3/2 c2 g2 \divisioMinima
d2 c2 bes,2 f,4 \finalis
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
        ""
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
