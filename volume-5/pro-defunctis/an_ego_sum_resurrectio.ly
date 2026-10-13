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
	E -- go sum \set stanza = "*"
 re -- sur -- ré -- cti -- o et vi -- ta: qui cre -- dit in me, é -- ti -- am si mór -- tu -- us fú -- e -- rit, vi -- vet: et o -- mnis qui vi -- vit et cre -- dit in me, non mo -- ri -- é -- tur in ae -- tér -- num. 
}

chantMusic = {
  \tieDown
	\key a \major
a'4 gis'4( a'4) 
fis'4 

fis'4 fis'4 fis'4 e'4 fis'4 
a'4 
fis'4( gis'4) fis'4( fis'4 e'4) 
\divisioMaior
a'4 
b'4( cis''4) b'4
\bar "" \break

a'4( b'4) 
a'4 
\divisioMinima
b'4 a'4 a'4 
a'4 
b'4 a'4 gis'4 
e'4 fis'4 a'4( gis'4) 
fis'4 fis'4 
\divisioMaxima
a'4 
b'4( a'4 b'4) fis'4 
fis'4 
\bar "" \break

a'4 gis'4 
fis'4 
a'4 gis'4 
fis'4 
e'4 
\divisioMaior
fis'4 
e'4 fis'4 a'4 gis'4( a'4) 
b'4 
a'4( gis'4) fis'4 fis'4 
\finalis
}

altoMusic = {
	cis'2*8/4~ 
cis'2*4/4~ 
cis'2*8/4~ 
cis'2*4/4 
b2*6/4 
e'4 
fis'2*6/4 
e'2*6/4 
d'2*8/4 
e'2*6/4~ 
e'2*4/4~ 
e'2*4/4 
cis'2*4/4~ 
cis'4 
fis'2*6/4~ 
fis'4 
s4 
d'2*6/4 
e'2*6/4~ 
e'4 
b2*6/4 
e'4 
d'2*6/4~ 
d'2*4/4 
cis'2*4/4 
}

tenorMusic = {
	\key a \major
s4 
a2*6/4~ 
a2*4/4 
gis2*6/4 
fis4 
a2*4/4 
gis2*6/4 
\divisioMaior
fis4~ 
fis2*6/4 
a2*6/4~ 
\divisioMinima
a2*8/4~ 
a2*6/4 
gis2*4/4 
b2*4/4 
a2*4/4 
\divisioMaxima
fis4~ 
fis2*6/4 
b2*4/4~ 
b2*6/4 
a2*6/4 
gis4~ 
\divisioMaior
gis2*6/4 
fis4~ 
fis2*6/4 
b2*4/4~ 
b4 
a4 
\finalis
}

bassMusic = {
	fis4~ 
fis2*6/4~ 
fis2*4/4~ 
fis2*6/4~ 
\shiftRight fis4 
s2*12/4 
d2*6/4 
cis2*6/4 
b,2*8/4 
cis2*6/4~ 
cis2*4/4~ 
cis2*4/4 
fis2*4/4 
s4 
d2*6/4~ 
d2*4/4 
b,2*6/4 
cis2*6/4~ 
cis4~ 
cis2*6/4~ 
cis4 
b,2*6/4~ 
b,2*4/4 
fis2*4/4 
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
        "II."
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
