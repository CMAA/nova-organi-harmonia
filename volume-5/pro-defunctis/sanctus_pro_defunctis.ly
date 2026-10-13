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
	San -- ctus, \set stanza = "*"
 San -- ctus, San -- ctus Dó -- mi -- nus De -- us Sá -- ba -- oth. Ple -- ni sunt cæ -- li et ter -- ra gló -- ri -- a tu -- a. Ho -- sán -- na in ex -- cél -- sis. Be -- ne -- díc -- tus qui ve -- nit in nó -- mi -- ne Dó -- mi -- ni. Ho -- sán -- na in ex -- cél -- sis. 
}

chantMusic = {
  \tieDown
	\key c \major
b'4 b'4( a'4) 
\divisioMinima
b'4 b'4( a'4) 
\divisioMinima
g'4 a'4 
b'4 b'4 b'4 
b'4 b'4 
b'4 a'4 b'4 
\divisioMaxima \bar "" \break
g'4 a'4 
b'4 
b'4 b'4 
b'4 
b'4 a'4 
c''4 b'4 b'4 
a'4 g'4 
\divisioMaxima
g'4 a'4 b'4 
b'4 
b'4 a'4 b'4 
\divisioMaxima
\bar "" \break
g'4 a'4 b'4 b'4 
b'4 
b'4 b'4 
a'4 
c''4 b'4 a'4 
b'4 a'4 g'4 
\divisioMaxima
e'4 g'4( \once \tweak #'font-size #-4 a'4) a'4 
a'4 
b'4 a'4( \once \tweak #'font-size #-4 g'4) g'4( a'4) 
\finalis
}

altoMusic = {
	g'4 
e'2*4/4 
g'4 
e'2*4/4 
g'2*10/4~ 
g'2*4/4 
f'2*4/4 
e'4 
e'2*6/4~ 
e'2*6/4~ 
e'2*4/4~ 
e'2*6/4~ 
e'2*4/4 
d'2*6/4~ 
d'4 
f'2*4/4 
e'4 
g'2*4/4~ 
g'2*12/4~ 
g'2*6/4~ 
g'2*4/4~ 
g'4 
s4 
d'2*6/4 
e'2*4/4 
d'2*4/4 
c'2*4/4 
}

tenorMusic = {
	\key c \major
e'4 
d'4 
c'4 
\divisioMinima
e'4 
d'4 
c'4 
\divisioMinima
s2*10/4 
e'2*8/4~ 
e'4 
\divisioMaxima
b2*6/4 
g2*6/4~ 
g2*4/4 
a2*6/4 
b2*4/4 
\divisioMaxima
s4 
g2*4/4~ 
g4 
f4 
c'4 
b4 
\divisioMaxima
s2*4/4 
e'2*12/4~ 
e'2*6/4~ 
e'2*4/4~ 
e'4 
\divisioMaxima
e2*8/4~ 
e2*4/4~ 
e2*4/4~ 
e2*4/4 
\finalis
}

bassMusic = {
	s4 
a2*4/4 
e4 
a2*4/4 
s2*20/4 
e2*6/4 
d2*6/4 
c2*4/4~ 
c2*6/4 
e2*4/4 
b,4~ 
b,2*4/4~ 
b,4 
d2*4/4 
e4 
s2*16/4 
a2*6/4 
c'2*4/4 
\shiftRight e'4 
s2*8/4 
c2*4/4 
b,2*4/4 
a,2*4/4 
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
