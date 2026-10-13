\version "2.22.0"
\include "gregorian.ly"
\include "noh2.ily"

%Proofed 3/15

global = {
  \cadenzaOn
  \override Glissando #'thickness = #2.0
  \set tieWaitForNote = ##t
}

chantText = \lyricmode {
	Lí -- be -- ra me, Dó -- _ mi -- ne, \set stanza = "*"
 de mor -- te ae -- tér -- _ na, in di -- e il -- la tre -- mén -- _ da; \set stanza = "*"
 Quan -- do coe -- li mo -- _ vén -- di sunt et ter -- ra: \set stanza = "+"
 Dum vé -- _ _ _ ne -- ris ju -- di -- cá -- re saé -- _ cu -- lum per _ i -- _ gnem. \set stanza = "℣."
 Tre -- mens fa -- ctus sum e -- go, et tí -- me -- o, dum di -- scús -- si -- o vé -- ne -- rit, at -- que ven -- tú -- ra i -- ra. \set stanza = "*"
 Quan -- do coe -- li mo -- _ vén -- di sunt et ter -- ra. \set stanza = "℣."
 Di -- es il -- la, di -- es i -- rae, ca -- la -- mi -- tá -- tis et mi -- sé -- ri -- ae, di -- es ma -- gna et a -- má -- ra va -- lde. \set stanza = "+"
 Dum vé -- _ _ _ ne -- ris ju -- di -- cá -- re saé -- _ cu -- lum per _ i -- _ gnem. \set stanza = "℣."
 Ré -- qui -- em ae -- tér -- nam do -- na e -- is Dó -- mi -- ne: et lux per -- pé -- tu -- a lú -- ce -- at e -- is. 
}

chantMusic = {
  \tieDown
	\key c \major
d'4 d'4( c'4) d'4 
f'4 
e'4( d'4) e'4( f'4 d'4) c'4( d'4) d'4 
\divisioMinima
e'4( f'4 g'4) 
g'4( \once \tweak #'font-size #-4 f'4) d'4 
f'4 e'4( d'4) f'4( f'4 d'4) d'4 
\bar "" \break

\divisioMaior
d'4( e'4 \once \tweak #'font-size #-4 c'4) 
d'4 d'4( g'4) 
g'4 g'4( f'4)~ f'4( e'4) 
d'4( c'4) d'4( e'4) f'4( \once \tweak #'font-size #-4 e'4 \once \tweak #'font-size #-4 c'4) d'4( c'4) 
\divisioMaxima
c'4( \once \tweak #'font-size #-4 d'4) d'4 
e'4( f'4 g'4) g'4( f'4 e'4) 
\bar "" \break

e'4( g'4) a'4( bes'4 g'4) f'4 e'4( f'4) 
d'4 
\divisioMinima
d'4( e'4 d'4 c'4) 
d'4( \quil e'4 f'4) e'4( d'4) 
\divisioMaxima
a'4 
a'4( g'4 a'4 f'4.) g'4 a'4( bes'4 g'4) f'4( e'4 d'4) e'4( d'4) d'4 
\bar "" \break

\divisioMinima
a'4 a'4( g'4) a'4( c''4 b'4 g'4) g'4( a'4 g'4 f'4 e'4 d'4) 
e'4( f'4) g'4( e'4 f'4 e'4) c'4( d'4) d'4 
\divisioMinima
c'4( f'4 e'4) f'4( g'4) 
\bar "" \break

g'4( c'4) d'4( \quil e'4 f'4) e'4( d'4) 
\finalis
f'4 e'4 
f'4 e'4 
d'4 
e'4 d'4 
\divisioMinima
d'4( c'4) 
d'4( \quil e'4 f'4 e'4) d'4( c'4) c'4 
\divisioMinima
\bar "" \break

e'4 
f'4 g'4 f'4 e'4 
f'4 e'4( d'4) d'4 
\divisioMinima
d'4( e'4 d'4 d'4) c'4 
e'4( \once \tweak #'font-size #-4 g'4) g'4( e'4) f'4( e'4) 
c'4( d'4) d'4 
\finalis
c'4( \once \tweak #'font-size #-4 d'4) d'4 
e'4( f'4 g'4) g'4( f'4 e'4) 
\bar "" \break

e'4( g'4) a'4( bes'4 g'4) f'4 e'4( f'4) 
d'4 
\divisioMinima
d'4( e'4 d'4 c'4) 
d'4( \quil e'4 f'4) e'4( d'4) 
\finalis
f'4 e'4 
f'4 d'4 
e'4 d'4( c'4) 
\bar "" \break

d'4( e'4) d'4 
\divisioMinima
d'4 e'4 f'4 g'4 g'4( a'4) 
g'4( \once \tweak #'font-size #-4 f'4) 
d'4 f'4 g'4( f'4) f'4 
\divisioMaior
e'4 f'4 
g'4 f'4 
\divisioMinima
f'4( e'4) 
d'4( c'4) d'4 f'4 
\bar "" \break

e'4( \once \tweak #'font-size #-4 d'4 \once \tweak #'font-size #-4 c'4) d'4 
\finalis
a'4 
a'4( g'4 a'4 f'4.) g'4 a'4( bes'4 g'4) f'4( e'4 d'4) e'4( d'4) d'4 
\divisioMinima
a'4 a'4( g'4) a'4( c''4 b'4 g'4) g'4( a'4 g'4 f'4 e'4 d'4) 
\bar "" \break

e'4( f'4) g'4( e'4 f'4 e'4) c'4( d'4) d'4 
\divisioMinima
c'4( f'4 e'4) f'4( g'4) 
g'4( c'4) d'4( \quil e'4 f'4) e'4( d'4) 
\finalis
f'4 e'4 f'4 
d'4 e'4 d'4 
\bar "" \break

\divisioMinima
d'4 e'4 
f'4 g'4 
g'4( f'4) d'4( c'4) c'4 
\divisioMaior
f'4( a'4) 
a'4( g'4) 
f'4 g'4 f'4( e'4) d'4 
\divisioMinima
d'4( c'4) e'4 f'4( e'4) 
d'4 d'4 
\bar "" \break

\finalis
}

altoMusic = {
	a4~ 
a2*8/4~ 
a2*10/4~ 
a2*4/4~ 
a4~ 
a2*6/4~ 
a2*8/4 
bes2*4/4 
a2*6/4~ 
a4 
g2*6/4 
a4~ 
a2*4/4 
c'2*4/4~ 
c'2*6/4~ 
c'2*4/4~ 
c'2*4/4 
bes2*6/4 
a2*4/4 
f2*6/4 
a2*6/4 
c'2*6/4 
d'2*4/4~ 
d'2*6/4~ 
d'4 
a2*6/4~ 
a2*4/4 
g2*4/4 
a2*6/4 
f2*4/4 
c'4~ 
c'2*9/4 
d'2*8/4~ 
d'2*4/4~ 
d'4 
a2*4/4~ 
a4~ 
a4 
d'2*4/4 
c'2*8/4~ 
c'2*6/4~ 
c'2*6/4 
a2*8/4~ 
a2*4/4~ 
a2*4/4~ 
a4 
c'2*10/4~ 
c'2*4/4 
bes2*6/4 
a2*4/4 
c'2*10/4~ 
c'2*4/4 
a2*12/4~ 
a2*4/4 
g4 
a2*4/4~ 
a2*8/4~ 
a2*4/4~ 
a4~ 
a2*4/4 
g2*6/4 
a2*4/4 
c'2*8/4~ 
c'2*4/4 
a4 
f2*6/4 
a2*6/4 
c'2*6/4 
d'2*4/4~ 
d'2*6/4~ 
d'4 
a2*6/4~ 
a2*4/4 
g2*4/4 
a2*6/4 
f2*4/4 
c'2*10/4~ 
c'2*4/4 
a2*6/4~ 
a2*8/4~ 
a2*4/4~ 
a2*6/4 
d'4~ 
d'2*4/4 
c'4~ 
c'2*4/4~ 
c'2*4/4~ 
c'2*4/4~ 
c'2*4/4 
a2*4/4~ 
a2*6/4~ 
a4 
c'4~ 
c'2*9/4 
d'2*8/4~ 
d'2*4/4~ 
d'4 
a2*4/4~ 
a4~ 
a4 
d'2*4/4 
c'2*8/4~ 
c'2*6/4~ 
c'2*6/4 
a2*4/4~ 
a2*8/4~ 
a2*4/4~ 
a4 
c'2*6/4~ 
c'2*4/4~ 
c'2*4/4 
bes2*6/4 
a2*4/4 
c'2*8/4~ 
c'2*4/4 
d'2*8/4~
d'2*4/4~ 
d'4 
s4 
c'4~ 
c'2*4/4~ 
c'2*6/4 
a2*6/4~ 
a4 
g2*6/4 
a2*4/4~ 
a2
}

tenorMusic = {
	\key c \major
f4~ 
f2*6/4~ 
f4 
g2*10/4 
e2*4/4 
f4 
\divisioMinima
e2*6/4 
\shiftRight d2*8/4 
g2*4/4~ 
g2*6/4 
f4 
\divisioMaior
e2*6/4 
f4~ 
f2*4/4~ 
f2*4/4 
g2*6/4 
e2*4/4 
f2*4/4~ 
f2*6/4 
e2*4/4 
\divisioMaxima
d2*6/4~ 
d2*6/4 
e2*6/4 
g2*4/4 
e2*6/4 
\shiftRight d4 
g2*6/4 
\divisioMinima
f2*4/4 
\shiftRightB e2*4/4 
d2*6/4~ 
d2*4/4 
\divisioMaxima
e4 
f2*9/4~ 
f4 
g2*6/4 
a2*6/4 
g2*4/4 
f4~ 
\divisioMinima
f4 
e2*4/4~ 
e2*8/4 
f2*6/4 
a2*6/4~ 
a2*8/4 
g2*4/4~ 
g2*4/4 
f4~ 
\divisioMinima
f2*6/4 
d2*4/4 
e2*4/4 
f2*6/4~ 
f2*4/4 
\finalis
a2*4/4~ 
a2*6/4~ 
a2*4/4 
\divisioMinima
f2*4/4~ 
f2*8/4 
e2*4/4~ 
e4~ 
\divisioMinima
e2*4/4 
\shiftRight d2*6/4 
e4 
g2*4/4 
f4~ 
\divisioMinima
f2*4/4 
e2*6/4~ 
e2*4/4~ 
e2*4/4 
g2*4/4~ 
g2*4/4 
f4 
\finalis
d2*6/4~ 
d2*6/4 
e2*6/4 
g2*4/4 
e2*6/4 
\shiftRight d4 
g2*4/4 
s4 
\divisioMinima
f2*4/4 
e2*4/4 
\shiftRight d2*6/4~ 
d2*4/4 
\finalis
a2*8/4~ 
a4~ 
a2*4/4 
f2*6/4~ 
\divisioMinima
f2*6/4 
e4~ 
e2*4/4 
d2*6/4~ 
d4 
e2*4/4 
f4 
\divisioMaior
g2*4/4 
a2*4/4 
\divisioMinima
g2*4/4~ 
g2*4/4 
\shiftRight f2*4/4 
g2*6/4 
f4 
\finalis
e4 
f2*9/4~ 
f4 
g2*6/4 
a2*6/4 
g2*4/4 
f4~ 
\divisioMinima
f4 
e2*4/4~ 
e2*8/4 
f2*6/4 
a2*6/4~ 
a2*4/4~ 
a2*8/4 
g2*4/4 
f4~ 
\divisioMinima
f2*6/4 
d2*4/4 
e2*4/4 
f2*6/4~ 
f2*4/4 
\finalis
a2*8/4~ 
a2*4/4~ 
\divisioMinima
a2*8/4~ 
a2*4/4 
f2*4/4 
g4 
\divisioMaior
f2*4/4~ 
f2*6/4~ 
f4 
g2*4/4 
f4 
\divisioMinima
s2*10/4 
g4 
f4 
\finalis
}

bassMusic = {
	s4 
e2*6/4 
d4~ 
d2*10/4~ 
d2*4/4~ 
d4 
c2*6/4 
d2*8/4~ 
d2*4/4~ 
d2*6/4~ 
d4 
s2*8/4 
e2*4/4 
d4 
s4 
c2*6/4~ 
c2*4/4 
a,2*4/4 
g,2*6/4 
a,2*4/4 
d,2*6/4 
f,2*6/4 
a,2*6/4 
bes,2*4/4~ 
bes,2*6/4 
d4~ 
d2*6/4~ 
d2*4/4~ 
d2*4/4~ 
\shiftRight d2*6/4 
d,2*4/4 
a,4~ 
a,2*9/4 
bes,4~ 
bes,2*6/4 
d2*6/4~ 
d2*4/4~ 
d4~ 
d4 
b,!2*4/4 
a,2*8/4~ 
a,2*6/4~ 
a,2*6/4 
c2*8/4~ 
c2*4/4 
e2*4/4 
\shiftRight f4 
a,2*10/4~ 
a,2*4/4 
g,2*6/4 
d2*4/4 
s2*4/4 
g2*6/4 
f2*4/4 
e2*4/4 
d2*8/4 
\shiftRight e2*4/4 
s4 
c2*4/4 
d2*6/4~ 
d4~ 
d2*4/4~ 
d4 
s2*10/4 
c2*4/4 
a,2*4/4~ 
a,2*4/4 
d2*4/4~ 
d4 
d,2*6/4 
f,2*6/4 
a,2*6/4 
bes,2*4/4~ 
bes,2*6/4 
d4~ 
d2*6/4~ 
d2*4/4~ 
d2*4/4~ 
d2*6/4 
d,2*4/4 
s2*8/4 
g4 
f2*4/4 
e2*6/4 
d2*6/4~ 
d4 
c2*4/4~ 
c2*6/4 
bes,4~ 
bes,2*4/4 
a,4~ 
a,2*4/4~ 
a,2*4/4 
c2*4/4 
e2*4/4 
f2*4/4 
d2*6/4~ 
d4 
a,4~ 
a,2*9/4 
bes,4~ 
bes,2*6/4 
d2*6/4~ 
d2*4/4~ 
d4~ 
d4 
b,!2*4/4 
a,2*8/4~ 
a,2*6/4~ 
a,2*6/4 
c2*4/4 
d2*8/4 
e2*4/4 
\shiftRight f4 
a,2*10/4~ 
a,2*4/4 
g,2*6/4 
d2*4/4 
s2*8/4 
f2*4/4 
e2*8/4 
d2*4/4~ 
d2*4/4 
e4 
f2*4/4 
a,2*6/4 
d4~ 
d2*4/4~ 
d4 
e2*6/4 
d2*4/4~ 
d2*4/4 
}

voiceLines = {
  \voiceLineStyle

  s2*63 s4 s8
  \allowVoiceLineBreak
  \offsetVoiceLineY
  \voiceLine "down" "down" f2 f2*1/2

  s2*31
  s4
  \allowVoiceLineBreak
  \offsetVoiceLineY
  \voiceLine "down" "down" f2 f2*1/2
}

\score{
  <<
    \new Lyrics
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "I."
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
