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
	In pa -- ra -- dí -- sum \set stanza = "*"
 de -- dú -- cant te An -- ge -- li: in tu -- o ad -- vén -- tu su -- scí -- pi -- ant te Már -- tyr -- es, et per -- dú -- cant te in ci -- vi -- tá -- tem sanc -- tam Je -- rú -- sa -- lem. Cho -- rus An -- ge -- ló -- rum te su -- scí -- pi -- at, et cum Lá -- za -- ro quon -- dam páu -- pe -- re ae -- tér -- nam há -- be -- as ré -- qui -- em. 
}

chantMusic = {
  \tieDown
	\key a \major
e'4 
gis'4 a'4 b'4 b'4 
\divisioMinima
b'4 cis''4 b'4 
a'4 
gis'4 a'4( b'4) b'4 
\divisioMaior
fis'4 
a'4 a'4 
a'4 a'4( b'4) a'4 
\divisioMinima
\bar "" \break

gis'4( a'4) b'4 a'4 gis'4 
fis'4 
e'4 fis'4( a'4) a'4( gis'4) 
\divisioMaior
gis'4 
a'4 b'4 b'4 
b'4 
\divisioMinima
b'4 
b'4 b'4 cis''4 b'4 
a'4( a'4 \once \tweak #'font-size #-4 b'4)
\bar "" \break

b'4( fis'4) 
gis'4( fis'4) gis'4 e'4 e'4 
\finalis
e'4( a'4) fis'4 
fis'4( e'4) d'4 e'4( fis'4) e'4 
\divisioMinima
gis'4( a'4) 
b'4( a'4 fis'4) a'4 a'4 gis'4 
\divisioMaior
\bar "" \break

gis'4 
a'4 
b'4( cis''4) a'4 fis'4 
a'4 gis'4( \once \tweak #'font-size #-4 e'4) 
fis'4 e'4 d'4 
\divisioMaior
d'4 fis'4( \once \tweak #'font-size #-4 e'4) e'4( fis'4 \quil gis'4 a'4 gis'4 fis'4) 
e'4 fis'4 fis'4( gis'4) 
e'4 e'4 e'4 
\finalis
}

altoMusic = {
	e'2*6/4~ 
e'2*4/4~ 
e'2*6/4~ 
e'2*4/4~ 
e'2*4/4~ 
e'4~ 
e'4 
d'2*4/4~ 
d'4 
e'2*6/4~ 
e'2*4/4 
cis'2*4/4~ 
cis'2*6/4~ 
cis'2*4/4 
e'2*4/4~ 
e'2*4/4~ 
e'2*4/4~ 
e'4~ 
e'4 
fis'2*4/4 
e'2*4/4~ 
e'2*6/4 
d'2*8/4 
b2*4/4~ 
b4 
cis'2*6/4 
d'2*4/4~ 
d'4 
b2*6/4 
e'2*4/4 
fis'2*6/4~ 
fis'2*4/4 
e'4 
gis'2*4/4 
fis'2*6/4~ 
fis'4 
e'4~ 
e'2*4/4 
d'2*4/4~ 
d'4~ 
d'4 
cis'2*4/4 
b2*6/4 
a2*6/4~ 
a2*4/4 
b2*4/4 
a2*4/4 
gis4 
}

tenorMusic = {
	\key a \major
s4 
b2*4/4 
a2*4/4 
\divisioMinima
gis4~ 
gis2*4/4 
fis2*4/4~ 
fis2*4/4 
gis4 
\divisioMaior
b2*6/4 
a4~ 
a2*6/4 
\divisioMinima
e2*4/4 
\shiftRight fis2*4/4 
a2*4/4~ 
a4~ 
a2*4/4 
b2*4/4 
\divisioMaior
cis'2*4/4 
a2*4/4 
gis4~ 
\divisioMinima
gis4 
fis2*4/4 
gis2*4/4 
a2*6/4~ 
a2*8/4~ 
a2*4/4 
gis4 
\finalis
a2*6/4~ 
a2*6/4 
gis2*6/4 
\divisioMinima
b2*4/4~ 
b2*6/4 
cis'2*4/4 
b4 
\divisioMaior
cis'2*4/4~ 
cis'2*8/4~ 
cis'4 
b2*4/4 
a2*4/4~ 
a4 
\divisioMaior
fis2*6/4~ 
fis2*6/4~ 
fis2*6/4 
cis2*4/4 
d2*4/4 
b,2*4/4 
e4 
\finalis
}

bassMusic = {
	e2*6/4~ 
e2*4/4~ 
e4 
cis2*4/4~ 
cis2*4/4 
e2*4/4~ 
e4 
b,2*6/4~ 
b,4 
cis2*6/4~ 
cis2*4/4 
fis2*4/4~ 
fis2*4/4 
gis4 
\shiftRight a2*4/4 
e2*4/4~ 
e2*4/4~ 
e2*4/4~ 
e4~ 
e4 
d2*4/4 
cis2*4/4~ 
cis2*6/4 
b,2*8/4 
e2*4/4~ 
e4 
a,2*6/4 
b,2*6/4 
cis2*6/4~ 
cis2*4/4 
d2*6/4~ 
d2*4/4 
e4~ 
e2*4/4 
fis2*8/4 
cis4~ 
cis2*4/4 
b,2*4/4~ 
b,4~ 
b,4 
a,2*4/4 
gis,2*6/4 
fis,2*6/4~ 
fis,2*4/4 
d,2*4/4 
e,2*4/4~ 
e,4 
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
        "VII."
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
