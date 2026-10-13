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
	Ab -- sól -- _ ve, _ \set stanza = "*"
 Dó -- mi -- ne, _ á -- ni -- mas ó -- mni -- um fi -- dé -- li -- um de -- fun -- ctó -- _ rum _ _ _ ab o -- mni vín -- _ cu -- lo de -- lí -- _ ctó -- rum. _ _ _ \set stanza = "℣."
 Et grá -- ti -- a tu -- a il -- lis suc -- cur -- rén -- _ te, _ _ _ me -- re -- án -- tur e -- vá -- de -- re ju -- dí -- ci -- um ul -- ti -- _ ó -- nis. _ _ _ \set stanza = "℣."
 Et lu -- cis ae -- tér -- _ nae _ _ _ be -- a -- ti -- tú -- _ di -- ne \set stanza = "*"
 pér -- fru -- i. _ _ _ _ _ _ _ _ _ _ 
}

chantMusic = {
  \tieDown
	\key a \major
e'4 e'4 fis'4( gis'4 fis'4) e'4 fis'4( fis'4 e'4) 
\divisioMinima
e'4( a'4)~ a'4( b'4) fis'4 e'4( d'4) e'4( fis'4)~ fis'4( e'4) 
\divisioMaior \bar "" \break
e'4( a'4) a'4 a'4 
a'4 a'4 a'4

a'4 fis'4( a'4) a'4 a'4 
\divisioMinima
a'4 a'4 gis'4( b'4) cis''4( a'4)~ a'4( fis'4) \bar "" \break
a'4( fis'4)~ fis'4( e'4) fis'4( e'4) a'4( a'4 fis'4) a'4( e'4)~ e'4( d'4) 
\divisioMaxima
d'4 
fis'4( a'4) gis'4( e'4 fis'4) 
e'4( d'4) e'4( fis'4) e'4 e'4 
\divisioMinima \bar "" \break
e'4 e'4( fis'4) a'4( gis'4 a'4) a'4( fis'4 \quil gis'4 a'4) a'4( a'4) a'4( gis'4 fis'4) gis'4( fis'4 e'4) fis'4( e'4)
\finalis
e'4 
e'4( a'4) a'4 a'4 
a'4 a'4 
\divisioMinima \bar "" \break
a'4 a'4 
a'4 a'4 gis'4( b'4) cis''4( a'4)~ a'4( fis'4) a'4( fis'4)~ fis'4( e'4) fis'4( e'4) a'4( a'4 fis'4) a'4( e'4)~ e'4( d'4) 
\bar "" \break
\divisioMaxima
d'4 d'4 fis'4( a'4) gis'4( e'4 fis'4) 
e'4( d'4) e'4( fis'4) e'4 e'4 
\divisioMinima
e'4 e'4( fis'4) e'4 e'4 
e'4 e'4( fis'4) a'4( gis'4 a'4) \bar "" \break
a'4( fis'4 \quil gis'4 a'4) a'4( a'4) a'4( gis'4 fis'4) gis'4( fis'4 e'4) fis'4( e'4) 


\finalis
e'4 
e'4( a'4) a'4 
a'4 gis'4( b'4) cis''4( a'4)~ a'4( fis'4) \bar "" \break
a'4( fis'4)~ fis'4( e'4) fis'4( e'4) a'4( a'4 fis'4) a'4( e'4)~ e'4( d'4) 
\divisioMaxima
e'4 e'4 e'4 fis'4( e'4) fis'4( \quil gis'4 a'4) e'4( fis'4 e'4 d'4) d'4 
\bar "" \break

\divisioMinima
d'4( fis'4)( \quil gis'4 a'4 b'4) a'4 a'4( gis'4 a'4 fis'4 e'4) e'4( e'4) fis'4( \shiftRight e'4)~ e'4 d'4 e'4 
\divisioMinima
a'4( a'4 a'4) b'4( a'4 gis'4 fis'4)~ fis'4( e'4) \bar "" \break
fis'4( a'4 gis'4 fis'4 e'4)~ e'4( fis'4 d'4) 
\divisioMinima
fis'4( \quil gis'4 a'4 gis'4 fis'4) gis'4( fis'4)~ fis'4( e'4) 
\finalis
}

altoMusic = {
	s2*16/4 
  e'4~
e'2*10/4~
e'4
s2*4/4 
b2*6/4 
cis'2*8/4~ 
cis'2*8/4 
b2*8/4 
e'2*4/4~ 
e'2*4/4
s4
cis'2*4/4~ 
cis'2*2/4~
s4
cis'2*10/4~ 
cis'2*4/4~ 
cis'2*4/4 \glissando
e'4
s2*4/4 
d'4~
d'2*4/4 
b2*6/4 
a2*10/4
b4~
b4 
e'2*4/4~ 
e'2*6/4 
d'2*8/4 
e'2*4/4~ 
e'2*6/4~ 
e'2*6/4 
b2*4/4 
s4 
cis'2*8/4 
e'2*4/4~ 
e'2*8/4~ 
e'2*6/4~ \glisDown \glissando
e'2*8/4
fis'4
s2*6/4 
e'4~
e'2*8/4~
e'4
s2*4/4 
d'2*4/4~ 
d'2*4/4 
b2*6/4 
a2*8/4~ 
a2*4/4~ 
a4~ 
a2*10/4 
d'2*4/4 
e'2*6/4~ 
e'4 
b2*6/4 
cis'2*10/4~ 
cis'2*6/4 
b2*4/4 
s4 
cis'2*8/4~ 
cis'2*6/4~ 
cis'2*6/4~ 
s4
cis'2*6/4~ 
cis'2*4/4~
cis'2*8/4 \glissando
e'4
s2*4/4 
cis'2*6/4~ 
cis'2*4/4~ 
cis'2*6/4 
a2*8/4~ 
a4 
d'2*6/4~ 
d'2*6/4 
e'2*8/4~
e'4
cis'2*6/4 
d'2*4/4~ 
d'4 \glissando
e'4
cis'2*6/4 
e'2*6/4 
cis'2*6/4~ 
cis'2*8/4~ \glisDown \glissando
cis'2*6/4
d'4
b2*8/4~ 
b2*4/4 
a2*4/4 
gis4 
}

tenorMusic = {
	\key a \major
s4 
cis'4~ 
cis'2*8/4 
b2*6/4~ 
\divisioMinima
b4 
cis'2*8/4 
a2*6/4 
gis2*6/4 
\divisioMaior
a2*8/4 
fis2*8/4~ 
fis2*8/4 
\divisioMinima
e2*4/4 
b2*4/4~
s4
b2*4/4 
a2*2/4
s4
\shiftRight gis2*10/4 
fis2*4/4 
a2*4/4 
b2*6/4
\divisioMaxima
b4 
a2*4/4 
e2*6/4 
\shiftRight fis2*10/4 
gis4~ 
\divisioMinima
gis4 
a2*4/4 
fis2*6/4~ 
fis4 
a2*6/4~ 
a2*4/4 
b2*6/4 
a2*6/4~ 
a4 
gis4 
\finalis
s4 
e2*8/4~ 
e2*4/4 
\divisioMinima
a2*8/4 
b2*6/4 
cis'2*8/4~ 
cis'2*6/4 
b2*4/4 
cis'2*4/4~ 
cis'2*4/4 
\shiftRight b2*6/4 
\divisioMaxima
b2*4/4 
a2*4/4 
e2*6/4 
fis2*4/4 
d2*4/4~ 
d2*4/4~ 
\divisioMinima
d4 
cis2*10/4 
\shiftRight b,2*4/4 
s2*3/2
fis4
fis2*6/4~ 
\shiftRight fis2*4/4~ 
fis2*6/4 
a2*6/4~ 
a4 
gis4 
\finalis
s4 
a2*8/4 
gis2*6/4 
\shiftRight fis2*6/4
s4
s2*6/4
a2*4/4~ 
a2*4/4~ 
\shiftRight a2*4/4 
b2*6/4 
\divisioMaxima
a2*6/4 
gis2*4/4 
fis2*6/4~ 
fis2*8/4~ 
fis4 
\divisioMinima
b2*6/4 
a2*6/4~ 
a2*10/4~ 
a2*6/4~ 
a2*6/4 
gis4 
\divisioMinima
\shiftRight fis2*6/4 
e2*6/4 
gis2*6/4 
fis2*8/4~ 
fis2*6/4~ 
fis4~ 
\divisioMinima
fis2*4/4 
\shiftRight d2~ 
d2*4/4 
b,2*4/4~ 
b,4 
\finalis
}

bassMusic = {
	s2*4/4 
a2*8/4 
gis2*6/4~ 
gis4 
fis2*8/4~ 
fis2*6/4~ 
fis2*6/4~ 
fis2*8/4 
e2*8/4 
d2*8/4 
cis2*4/4~ 
cis2*4/4
s4
fis2*4/4~ 
fis2*2/4
s4
gis2*10/4 
s2*14/4 
b,4~ 
b,2*4/4 
cis2*6/4 
fis2*10/4 
s2*4/4 
cis2*4/4~ 
cis2*6/4 
b,4~ 
b,2*6/4 
cis2*4/4 
e2*6/4~ 
e2*6/4~ 
e2*4/4 
s4 
a,2*8/4 
cis2*4/4~ 
cis2*8/4~ 
cis2*6/4 
fis2*8/4 
gis2*6/4~ 
gis2*4/4 
fis2*4/4 
a2*4/4 
b2*6/4 
b,2*4/4~ 
b,2*4/4 
cis2*6/4 
fis,2*4/4~ 
fis,2*4/4 
a,2*4/4~ 
a,4~ 
a,2*10/4 
b,2*4/4 
cis2*6/4~ 
cis4 
d2*6/4 
fis2*4/4 
e2*6/4~ 
e2*6/4~ 
e2*4/4 
s2*10/4 
e2*6/4 
fis2*6/4 
s4 
gis2*6/4~ 
gis2*4/4 
fis2*4/4 
a2*4/4 
s2*6/4 
a,2*6/4~ 
a,2*4/4~ 
a,2*6/4 
fis,2*8/4 
b,4~ 
b,2*6/4~ 
b,2*6/4 
cis2*10/4 
fis2*6/4~ 
fis2*6/4~ 
fis4~ 
fis2*6/4 
cis2*6/4~ 
cis2*6/4 
a,2*8/4 
b,2*6/4~ 
b,4 
d2*4/4~ 
d2*4/4 
d,2*4/4 
e,2~
e,4 
}

voiceLines = {
  \voiceLineStyle

  % Manually add line break
  s2*10
  \allowVoiceLineBreak
  \voiceLine "down" "down" gis2*2 gis2*2
}

\score{
  <<
    \new Lyrics
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Tract."
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
