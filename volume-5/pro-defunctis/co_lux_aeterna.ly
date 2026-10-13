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
	Lux ae -- tér -- na \set stanza = "*"
 lu -- ce -- at e -- is, Dó -- mi -- ne: \set stanza = "*"
 Cum sanc -- tis tu -- is in ae -- tér -- num, qui -- a pi -- us es. \set stanza = "℣."
 Ré -- qui -- em ae -- tér -- nam do -- na e -- is Dó -- mi -- ne, et lux per -- pé -- tu -- a lú -- ce -- at e -- is. \set stanza = "*"
 Cum sanc -- tis tu -- is in ae -- tér -- num, qui -- a pi -- us es. 
}

chantMusic = {
  \tieDown
	\key c \major
a'4 
g'4( f'4) g'4( a'4) g'4 
\divisioMinima
a'4 c''4 b'4 
c''4 a'4 
g'4 f'4( g'4) g'4 
\divisioMaxima
a'4 
c''4 b'4 
c''4 a'4 
b'4 
c''4 a'4 g'4( a'4 g'4) 
\bar "" \break

\divisioMinima
e'4 f'4 
g'4( a'4) a'4 
g'4 
\finalis
g'4 a'4 c''4 
c''4 c''4 c''4 
c''4 c''4 
c''4 d''4 
d''4 c''4 c''4 
\divisioMaior
a'4 
c''4 
c''4 c''4 c''4 c''4 
\bar "" \break

c''4 b'4 c''4 
a'4 g'4 
\finalis
a'4 
c''4 b'4 
c''4 a'4 
b'4 
c''4 a'4 g'4( a'4 g'4) 
\divisioMinima
e'4 f'4 
g'4( a'4) a'4 
g'4 
\finalis
}

altoMusic = {
	s2*4/4 
f'4~ 
f'2*4/4 
e'4 
f'2*6/4 
g'2*4/4~ 
g'4 
d'2*4/4~ 
d'4 
e'2*6/4 
f'2*4/4~ 
f'2*4/4 
e'4 
d'2*4/4 
c'4~ 
c'2*4/4~ 
c'2*4/4~ 
c'4 
b4 
g'2*6/4~
s2*6/4 
g'2*4/4 
a'2*4/4 
b'2*4/4 
a'4~ 
a'4~ 
a'2*4/4 
g'2*6/4 
f'2*6/4 
d'2*4/4 
e'2*6/4 
f'2*4/4 
f'2*4/4 
e'4 
d'2*4/4 
c'4~ 
c'2*4/4~ 
c'2*4/4~ 
c'4 
b4 
}

tenorMusic = {
	\key c \major
c'2*6/4~ 
c'2*4/4~ 
c'4~ 
\divisioMinima
c'2*6/4~ 
c'2*4/4~ 
c'4~ 
c'2*4/4 
b4 
\divisioMaxima
s4 
a2*4/4~ 
a2*4/4 
c'2*4/4 
b2*6/4 
\shiftRight e4~ 
\divisioMinima
e2*4/4 
f2*4/4 
e4 
d4 
\finalis
e'2*6/4~ 
s2*6/4 
e'2*8/4~ 
e'2*6/4 
\divisioMaior
c'4~ 
c'2*4/4~ 
c'2*6/4~ 
c'2*6/4~ 
c'4 
b4 
\finalis
s4 
a2*4/4~ 
a2*4/4 
c'2*4/4 
b2*6/4 
\shiftRight e4~ 
\divisioMinima
e2*4/4 
f2*4/4 
e4 
d4 
\finalis
}

bassMusic = {
	f4 
a2*4/4 
\shiftRight c'2*4/4 
s4 
d2*6/4 
e2*4/4 
a4~ 
a2*4/4 
g4 
c4~ 
c2*4/4 
d2*4/4~ 
d2*4/4 
e2*6/4~ 
e4 
a,2*4/4 
f,2*4/4~ 
f,4 
g,4 
c'2*6/4
s2*6/4 
b2*8/4 
a2*6/4~ 
a4 
f2*4/4 
e2*6/4 
d2*6/4 
g2*4/4 
c4~ 
c2*4/4 
d2*4/4~ 
d2*4/4 
e2*6/4~ 
e4 
a,2*4/4 
f,2*4/4~ 
f,4 
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
        "Comm."
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
}
