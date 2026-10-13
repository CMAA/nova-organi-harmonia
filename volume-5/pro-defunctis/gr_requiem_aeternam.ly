\version "2.22.0"
\include "gregorian.ly"
\include "noh2.ily"

%Proofed 3/14

global = {
  \cadenzaOn
  \override Glissando #'thickness = #2.0
  \set tieWaitForNote=##t
}

chantText = \lyricmode {
	Ré -- qui -- em \set stanza = "*"
 ae -- tér -- _ _ _ nam do -- _ na e -- is _ Dó -- _ mi -- ne: _ _ _ _ _ et lux per -- pé -- _ _ _ _ _ tu -- a _ _ _ _ lú -- _
 ce -- at e -- _ is. _ _ _ _ _ _ _ \set stanza = "℣."
 In me -- mó -- ri -- a ae -- tér -- _ _ _ _ _ _ _ _
 _ _
 na e -- rit ju -- _ _ _ _ _ _ _ _ stus: ab au -- di -- ti -- ó -- ne ma -- _ _ _ la _ _ _ \set stanza = "*"
 non _
 ti -- mé -- _ bit. _ _ _ 
}

chantMusic = {
  \tieDown
	\key a \major
e'4( gis'4 fis'4) fis'4 fis'4 

fis'4 a'4( fis'4 gis'4) a'4( fis'4 e'4) gis'4( e'4) fis'4( gis'4) fis'4 
\divisioMaior
a'4( fis'4) a'4( b'4 cis''4) \forceBreak
a'4( gis'4 fis'4) 
fis'4 fis'4( e'4) g'4( fis'4 e'4) 
\divisioMinima
e'4( d'4) fis'4( e'4 fis'4) fis'4( e'4 fis'4) fis'4( d'4) e'4( fis'4) a'4( a'4 fis'4 e'4) fis'4( \quil gis'4 a'4) b'4( a'4 a'4) fis'4( gis'4 fis'4) 
\divisioMaxima \forceBreak
a'4( a'4) 
a'4 
a'4 a'4( gis'4) a'4( b'4) cis''4( a'4 gis'4) a'4( a'4 gis'4) 
\divisioMinima
b'4( a'4) b'4( a'4 fis'4) fis'4 fis'4( a'4 fis'4 e'4) fis'4( a'4)~ a'4( fis'4) \forceBreak
a'4( a'4 gis'4 fis'4) a'4( e'4) e'4( d'4) 
\divisioMaxima
d'4( e'4 fis'4) a'4( gis'4 fis'4 gis'4) e'4 fis'4 
a'4( fis'4) a'4( b'4) b'4( a'4) b'4( cis''4 b'4 a'4) 
\divisioMinima \forceBreak
cis''4( a'4) cis''4( d''4 b'4 gis'4) a'4( fis'4 e'4) fis'4( \quil gis'4 a'4 b'4.) a'4( b'4 cis''4) 
\divisioMinima
b'4( cis''4 b'4 cis''4 a'4 fis'4)( \quil gis'4 a'4 fis'4) 
\finalis \forceBreak
fis'4 
a'4 a'4( b'4) b'4 b'4 
b'4( cis''4) cis''4( b'4 a'4 gis'4) a'4( fis'4 e'4) 
\divisioMinima
gis'4( e'4) fis'4 a'4( a'4) b'4( cis''4 b'4 cis''4) 
\divisioMinima \forceBreak
a'4( cis''4 d''4 b'4 gis'4) a'4( fis'4 e'4.) fis'4( gis'4 fis'4 e'4 fis'4) 
\divisioMinima
b'4( \quil cis''4 d''4 cis''4) d''4( cis''4 b'4 cis''4) cis''4( b'4) 
\divisioMaxima
b'4( \quil cis''4 d''4 cis''4 b'4)( \quil cis''4 d''4 cis''4 b'4) \forceBreak
b'4( cis''4) 
cis''4( a'4) cis''4( b'4 a'4)~ a'4( fis'4) a'4( a'4 fis'4) a'4. a'4( a'4) a'4( fis'4) 
\divisioMinima
a'4( b'4 cis''4 b'4 a'4) cis''4( b'4 a'4) b'4( fis'4) fis'4 
\divisioMaxima \forceBreak
a'4( a'4) 
a'4 a'4 a'4 a'4 a'4( b'4) 
b'4( a'4 gis'4 e'4) fis'4( a'4 gis'4 e'4) fis'4( a'4) 
\divisioMinima
gis'4( b'4 cis''4 a'4 fis'4) fis'4( a'4 fis'4 e'4) \forceBreak
fis'4( a'4)~ a'4( fis'4) a'4( a'4 gis'4 fis'4) a'4( e'4)~ e'4( d'4) 
\divisioMaxima
d'4( e'4 fis'4) a'4( gis'4 fis'4 gis'4) 
e'4( fis'4) a'4( fis'4) a'4( b'4) b'4( cis''4 a'4 gis'4) a'4( b'4) 
\divisioMinima \forceBreak
e'4( fis'4 a'4)~ a'4( cis''4 b'4 a'4 gis'4)( fis'4 \quil gis'4 a'4 fis'4) 
\finalis
}

altoMusic = \relative b {
  b2*3/2 cis~ cis2*3~ cis2*2~ cis4
  fis2~ fis2*3/2 cis2*3/2~ cis4 b2*5/2 -\tweak Glissando.Y-offset #-0.8 \glissando e4
  d4~ d2*3/2~ d~ d2*2 e2*3/2~ e4 d2*3/2 cis~ cis2~ cis4
  fis2*2 e2*7/2~ e2*3/2~ e2 fis2*3/2~ fis4 cis2*5/2~ cis2*3/2
  e2*3/2~ e2~ e4~ e d a2*3/2 cis2*2~ cis2~ cis2*2~ cis2~ cis2*2
  d2~ d2*2 e2~ e4 cis2*3/2~ cis2*3/4~ cis2*3/2 e2*5/2 d2 cis2
  fis2~ fis2*2~ fis2~ fis2*2 e2*3/2~ e2*1/2~ e4 s4 fis2~ fis2*2~ fis2~ fis2*3/2 cis2*7/4~ cis2~ cis2*3/2
  fis2*2~ fis gis2 d2*2 fis2*5/2~ fis2~ fis2*2~ fis2*3/2 e d2*3/4 cis2~ cis~ cis2*5/2 fis2*3/2 e2 d4
  a2*5/2~ a4 cis2~ cis2*2~ cis2*3 e2~ e2*3/2 cis2*2~ s4 cis2*3/2~ cis2*5/2 a2*3/2
  d2*3/2 e2*2~ e2 cis2*2 cis e2~ e2~ e d2*2 b2*3/2 cis4
}

tenorMusic = \relative gis {
  \key a \major
  gis2*3/2 a2*3/2~ a2*3 b2*2 a4 \divisioMaior
  d2 cis2*3/2 b a4 g2*5/2 \divisioMinima
  a2*5/2~ a2*3/2~ a2*2~ a~ a2*3/2~ a b2 a4 \divisioMaxima
  a2*2~ a2*7/2 b2*3/2 \divisioMinima
  cis2~ cis2*3/2 b2*3 a2*3/2~ a2*3/2 e2 fis2*3/2 \divisioMaxima
  fis2*3/2~ fis2*2 gis2 fis2*2~ fis2~ fis2*2~ \divisioMinima
  fis2 a2*2~ a2*3/2~ a2*3/2 gis2*3/4 a2*3/2~ \divisioMinima
  a2*5/2~ a2~ a \finalis
  s2 d2*2~ d2 cis2*2~ cis2*3/2~ \divisioMinima
  cis2*3/2~ cis2~ cis a2~ \divisioMinima
  a2 gis2*3/2 \shiftRight fis2*7/4~ fis2 a2*3/2~ \divisioMinima
  a2*2 b2*2~ b2 \divisioMaxima
  fis2*2~ fis2*5/2 gis2 a2*2 cis2*3/2~ cis b2*3/4~ b2 a \divisioMinima
  fis2*5/2~ fis2*3/2~ fis2~ fis4 \divisioMaxima
  cis2*5/2 fis4~ fis2~ fis2*2~ fis2*3 \divisioMinima
  e2 a2*3/2~ a2*3/2 gis2*1/2 s4 \shiftRight fis2*3/2~ fis2*5/2~ fis2*3/2 \divisioMaxima
  a2*3/2~ a2*2 b2~ b2*2 a2*2 fis2 \divisioMinima
  gis2 a2~ a2*2~ a2*3/2~ a4 \finalis
}

bassMusic = \relative fis {
  s2*3 fis2*3~ fis2*2~ fis4~ fis2~ fis2*3/2~ fis2*3/2~ fis4 \shiftRight g2*5/2
  fis2*5/2 e2*3/2 d2*2 cis b2*3/2 fis'~ fis2~ fis4
  d2*2 cis2*7/2~ cis2*3/2~ cis2 fis2*3/2~ fis2*3~ fis2*3/2
  cis2*3/2~ cis2 b2*3/2
  fis2*3/2~ fis2*2~ fis2~ fis2*2 gis2 a2*2
  b2~ b2*2 cis2*3/2 fis2*3/2~ fis2*3/4~ fis2*3/2
  cis2*5/2 b2 fis'
  s2*3 b2 a2*2 \shiftRight cis2*3/2
  b2*3/2 a2 gis2~ gis
  fis2~ fis2*3/2~ fis2*7/4 e2~ e2*3/2
  d2*2~ d e2
  b2*2 d2*5/2~ d2 fis2*2~ fis2*3/2~ fis2*3/2~ fis2*3/4~ fis2~ fis
  e2*5/2 d2*3/2 cis2 b4
  fis2*3~ fis2 gis2*2 a2*3
  cis2~ cis2*3/2 fis2*3/2~ fis2*1/2~ s4 fis2*3/2 a,2*5/2 fis2*3/2
  b2*3/2 cis2*2~ cis2 fis2*2~ fis e2~
  e2 cis2 b2*2 d2*3/2 fis4
}

voiceLines = {
  \voiceLineStyle

  s2*208/2
  s8
  \allowVoiceLineBreak
  \offsetVoiceLineY
  \voiceLine "down" "down" fis2 fis2*1/2

  s4*62
  \allowVoiceLineBreak
  \offsetVoiceLineY
  \voiceLine "down" "down" fis2*2 fis2*1/2
}

\score{
  <<
    \new Lyrics
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Grad."
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
