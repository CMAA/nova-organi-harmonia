\version "2.22.0"
\include "gregorian.ly"
\include "noh2.ily"

%Proofed 3/14

global = {
  \cadenzaOn
  \override Glissando #'thickness = #2.0
  \set tieWaitForNote = ##t
}

chantText = \lyricmode {
	A -- gnus De -- i, \set stanza = "*"
 qui tol -- lis pec -- cá -- ta mun -- di: do -- na e -- is ré -- qui -- em. A -- gnus De -- i, \set stanza = "*"
 qui tol -- lis pec -- cá -- ta mun -- di: do -- na e -- is ré -- qui -- em. A -- gnus De -- i, \set stanza = "*"
 qui tol -- lis pec -- cá -- ta mun -- di: do -- na e -- is ré -- qui -- em \set stanza = "**"
 sem -- pi -- tér -- nam. 
}

chantMusic = {
  \tieDown
	\key c \major
g'4 g'4 
g'4( a'4) a'4 
\divisioMinima
a'4 
a'4 a'4 
g'4 a'4 f'4 
g'4 a'4 
\divisioMinima
g'4 a'4 b'4 g'4 
a'4 g'4 g'4 
\finalis
\bar "" \break

g'4 g'4 
g'4( a'4) a'4 
\divisioMinima
a'4 
a'4 a'4 
g'4 a'4 f'4 
g'4 a'4 
\divisioMinima
g'4 a'4 b'4 g'4 
a'4 g'4 g'4 
\finalis
\bar "" \break
g'4 g'4 
g'4( a'4) a'4 
\divisioMinima
a'4 
a'4 a'4 
g'4 a'4 f'4 
g'4 a'4 
\divisioMinima
g'4 a'4 
b'4 g'4 
a'4 g'4 g'4
f'4 a'4 a'4( \once \tweak #'font-size #-4 g'4) g'4
\finalis
}

altoMusic = {
	e'2*4/4~ 
e'2*4/4~ 
e'4~ 
e'4~ 
e'2*6/4 
f'2*4/4~ 
f'2*4/4 
g'2*4/4~ 
g'2*4/4 
e'2*4/4 
d'4 
c'2*4/4 
d'2*4/4 
c'4~ 
c'4~ 
c'2*6/4~ 
c'2*4/4~ 
c'2*4/4 
d'2*4/4 
e'2*4/4~ 
e'2*4/4 
d'4 
e'2*4/4~ 
e'2*4/4~ 
e'4~ 
e'4~ 
e'2*6/4 
f'2*4/4~ 
f'2*4/4 
g'2*4/4~ 
g'4 
s4 
e'2*4/4 
d'4 
c'2~ 
c'2 
b4 
}

tenorMusic = {
	\key c \major
c'2*4/4~ 
c'2*4/4~ 
c'4~ 
\divisioMinima
c'4~ 
c'2*6/4~ 
c'2*4/4~ 
c'2*4/4 
\divisioMinima
b2*4/4 
c'2*4/4~ 
c'2*4/4 
\shiftRight g4 
\finalis
e2*4/4~ 
e2*4/4~ 
e4~ 
\divisioMinima
e4 
g2*6/4 
f2*4/4 
e2*4/4 
\divisioMinima
s2*4/4 
g2*4/4~ 
g2*4/4~ 
g4 
\finalis
c'2*4/4~ 
c'2*4/4~ 
c'4~ 
\divisioMinima
c'4~ 
c'2*6/4~ 
c'2*4/4~ 
c'2*4/4 
\divisioMinima
d'2*4/4 
c'2*4/4~ 
c'2*4/4 
g4 
d2~ 
d2~ 
d4 
\finalis
}

bassMusic = {
	s2*4/4 
b2*4/4 
a4~ 
a4 
g2*6/4 
f2*4/4 
d2*4/4 
e2*4/4~ 
e2*4/4 
f2*4/4 
g4 
c2*4/4 
b,2*4/4 
a,4~ 
a,4~ 
a,2*6/4~ 
a,2*4/4~ 
a,2*4/4 
e2*4/4 
d2*4/4 
c2*4/4 
b,4 
s2*4/4 
b2*4/4 
a4~ 
a4 
g2*6/4 
f2*4/4 
d2*4/4 
e2*4/4~ 
e2*4/4 
f2*4/4 
\shiftRight g4
s2
g,2~ 
g,4 
}

voiceLines = {
  \voiceLineStyle

  % Manually add line break
  %s2
  %\allowVoiceLineBreak
  %\voiceLine "down" "down" a2*3/2 a2*1/2
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
}
