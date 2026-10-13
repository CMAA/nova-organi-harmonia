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
	Dó -- mi -- ne Je -- su Chri -- ste, \set stanza = "*"
 Rex _ gló -- _ _ ri -- ae, li -- bé -- ra á -- ni -- mas ó -- mni -- um fi -- dé -- li -- um de -- func -- tó -- rum de poe -- nis in -- fér -- ni, et de pro -- fún -- do la -- cu: lí -- be -- ra e -- as de o -- re le -- ó -- nis, ne ab -- sór -- be -- at e -- as tár -- ta -- rus, ne ca -- dant in ob -- scú -- rum: sed sí -- gni -- fer sanc -- tus Mí -- cha -- el re -- prae -- sén -- tet e -- as in lu -- cem san -- _ ctam: \set stanza = "*"
 Quam o -- lim A -- bra -- hae pro -- mi -- sí -- sti, et sé -- _ _ _
 _ mi -- ni e -- _ jus. \set stanza = "℣."
 Hó -- sti -- as et pre -- ces ti -- bi Dó -- mi -- ne lau -- dis of -- fé -- ri -- mus: tu sú -- sci -- pe pro a -- ni -- má -- bus il -- lis, qua -- rum hó -- di -- e me -- mó -- ri -- am fá -- ci -- mus: fac e -- as, Dó -- mi -- ne, de mor -- te tran -- sí -- re ad vi -- tam. \set stanza = "*"
 Quam o -- lim. 
}

chantMusic = {
  \tieDown
	\key f \major
g'4 f'4( g'4) g'4 
g'4 g'4( f'4) 
g'4 g'4( bes'4 g'4) ~ g'4( f'4) 
\divisioMinima
bes'4. a'4( bes'4 c''4) 
a'4( g'4 bes'4.) a'4( bes'4 g'4) a'4( g'4) f'4( g'4) g'4( bes'4 g'4) ~ g'4( f'4) 
\bar "" \break

\divisioMaior
a'4 f'4( g'4) g'4 
g'4( a'4) g'4 g'4 
\divisioMinima
g'4( \once \tweak #'font-size #-4 a'4) g'4 g'4 
a'4 a'4( g'4 bes'4) g'4( a'4 f'4) f'4 
f'4( g'4 bes'4) a'4( bes'4) g'4( a'4 g'4) g'4 
\bar "" \break

\divisioMaior
g'4 
f'4( g'4) g'4 
g'4 g'4( \quil a'4 bes'4 g'4) g'4 
\divisioMinima
a'4 
f'4 
g'4 bes'4 a'4 
g'4( a'4 g'4) g'4 
\divisioMaxima
a'4 f'4 g'4 
bes'4 bes'4( a'4) 
g'4 
a'4 g'4 
\bar "" \break
c''4 c''4( c''4 bes'4 g'4 f'4) g'4( \quil a'4 bes'4 a'4) 
\divisioMaior
f'4 
g'4 bes'4 a'4 g'4 
a'4 g'4 
a'4( bes'4 g'4) f'4( g'4) g'4 
\bar "" \break

\divisioMaior
g'4 
g'4 f'4( \once \tweak #'font-size #-4 d'4) 
f'4 
g'4( a'4) a'4( g'4 \quil a'4 bes'4 g'4) g'4 
\divisioMaxima
g'4( a'4 \quil bes'4 c''4) 
bes'4( \once \tweak #'font-size #-4 a'4) g'4( a'4) a'4 
a'4( \once \tweak #'font-size #-4 g'4) g'4( \quil a'4 bes'4 a'4) 
\bar "" \break

g'4( a'4 g'4) f'4( g'4) g'4 
\divisioMaior
g'4 g'4 bes'4( \once \tweak #'font-size #-4 a'4) bes'4( c''4) 
c''4( c''4 bes'4 g'4 f'4) g'4( a'4) 
\divisioMinima
f'4( \once \tweak #'font-size #-4 a'4) 
a'4( g'4 \quil a'4 bes'4) a'4( \once \tweak #'font-size #-4 g'4) 
\bar "" \break

f'4( a'4) bes'4( \once \tweak #'font-size #-4 g'4) g'4 
\divisioMaxima
g'4 
g'4 f'4( \once \tweak #'font-size #-4 d'4) 
f'4 g'4( a'4) a'4( g'4) 
bes'4 bes'4( a'4) g'4( a'4) g'4( g'4 f'4) 
\divisioMaior
bes'4( c''4) 
a'4( g'4) bes'4( c''4 bes'4 g'4)~ g'4( f'4.) 
\bar "" \break
g'4( bes'4 a'4) bes'4( c''4 a'4)
\divisioMinima
g'4( bes'4 a'4) g'4( a'4 f'4) f'4( d'4) 
f'4( \quil g'4 a'4) bes'4( \once \tweak #'font-size #-4 g'4) g'4 
\finalis
f'4 g'4( bes'4) bes'4( a'4) 
g'4( \once \tweak #'font-size #-4 f'4) 
g'4( bes'4) bes'4( bes'4 a'4) 
\bar "" \break

\divisioMinima
f'4 g'4( bes'4) 
bes'4 g'4( a'4 g'4 f'4) f'4 
\divisioMinima
a'4( \once \tweak #'font-size #-4 g'4) a'4( bes'4) 
a'4( g'4) f'4 f'4( g'4) g'4 
\divisioMaxima
g'4( a'4 \quil bes'4 c''4) 
bes'4( a'4) g'4( a'4) a'4 
\bar "" \break

\divisioMinima
g'4 
g'4 f'4 g'4( bes'4) a'4( bes'4 a'4) 
g'4 g'4 
\divisioMaior
c''4( bes'4) c''4( d''4 c''4) 
bes'4 a'4( bes'4) g'4 
\divisioMinima
g'4 g'4( f'4) g'4 bes'4( a'4) 
\bar "" \break

g'4( a'4) g'4( f'4) f'4 
\divisioMaxima
g'4( a'4) 
f'4 f'4( d'4) 
f'4 f'4( g'4) g'4 
\divisioMinima
bes'4 
a'4( g'4 g'4) f'4 
a'4( bes'4 \once \tweak #'font-size #-4 c''4) c''4( c''4 bes'4) a'4( g'4) 
\bar "" \break

a'4( bes'4 a'4) 
g'4 g'4 
\finalis
g'4 
g'4 f'4( d'4) 
\finalis
}

altoMusic = {
	d'2*8/4~ 
d'4 
c'2*4/4 
d'4~ 
d'2*4/4~
d'2*6/4
f'2*3/4~ 
f'2*6/4 
d'2*7/4~ 
d'2*10/4~ 
d'2*4/4~ 
d'2*4/4 
c'2*6/4 
d'2*8/4~ 
d'2*8/4~ 
d'2*10/4~ 
d'2*6/4~ 
d'2*8/4~ 
d'2*10/4~ 
d'2*6/4~ 
d'4 
s4 
c'2*8/4 
d'2*8/4~ 
d'4~ 
d'2*6/4 
ees'2*4/4 
d'2*6/4~ 
d'4 
f'2*6/4~ 
f'4 
ees'2*6/4 
d'2*4/4~
s4
d'2*10/4~ 
d'2*4/4~ 
d'2*4/4 
f'2*4/4~ 
f'2*6/4 
ees'2*4/4 
d'2*6/4~ 
d'2*4/4~ 
d'4~ 
d'2*4/4~ 
d'2*4/4 
c'2*6/4~ 
c'2*10/4 
bes4 
d'2*8/4 
f'2*4/4 
d'2*6/4~ 
d'2*4/4~ 
d'2*8/4~ 
d'2*6/4~ 
d'2*4/4~ 
d'4~ 
d'2*4/4 
f'2*4/4 
g'2*4/4 
f'2*6/4~ 
f'2*4/4~ 
f'2*4/4~ 
f'2*4/4 
d'2*8/4~ 
d'2*4/4~ 
d'2*4/4~ 
d'2*4/4~ 
d'4 
bes4 
a2*6/4~ 
a4 
d'2*4/4~ 
d'2*6/4 
ees'2*4/4~ 
ees'2*4/4 
d'2*6/4~ 
d'2*4/4~ 
d'2*4/4~ 
d'2*6/4 
c'2*7/4 
d'2*6/4 
f'2*6/4~ 
f'2*6/4 
d'2*6/4 
c'2*4/4~ 
c'2*6/4~ 
c'2*4/4 
bes4 
s4 
g'2*4/4 
f'2*8/4~ 
f'2*4/4~ 
f'2*6/4~ 
f'4 
d'2*6/4~ 
d'2*4/4~ 
d'2*4/4 
c'4 
f'2*4/4~ 
f'2*4/4 
d'2*4/4~ 
d'4 
c'2*4/4 
d'4~ 
d'2*8/4 
f'2*4/4 
d'2*4/4~ 
d'4~ 
d'2*4/4~ 
d'4 
f'2*4/4~ 
f'2*6/4 
d'2
f'2*4/4~ 
f'2*6/4~ 
f'4 
d'2*4/4~ 
d'4~ 
d'4 
c'2*6/4 
d'2*4/4~ 
d'2*4/4 
c'2*4/4 
d'4~ 
d'2*4/4 
c'4 
bes2*4/4 
a4 
c'2*4/4 
bes4~ 
bes4 
d'2*6/4 
s4 
d'2*6/4 
f'2*6/4~ 
f'2*4/4 
d'2*6/4~ 
d'2 
bes4 
a2*6/4
}

tenorMusic = {
	\key f \major
d'4 
c'2*6/4 
bes4 
a2*6/4 
\shiftRight g2*4/4 
a2*6/4 
\divisioMinima
bes2*3/4 
d'2*6/4~ 
d'2*7/4 
c'2*10/4 
a2*4/4 
bes2*4/4 
\shiftRight a2*6/4~ 
\divisioMaior
a4 
c'2*6/4~ 
c'2*8/4 
\divisioMinima
bes2*10/4~ 
\shiftRight bes2*6/4~ 
bes2*8/4~ 
bes2*10/4 
c'2*6/4 
bes4 
\divisioMaior
s4 
c'2*8/4 
\shiftRight bes2
c'2*4/4 
bes4 
\divisioMinima
d'2*6/4 
c'2*4/4~ 
c'2*6/4 
bes4 
\divisioMaxima
c'2*6/4 
g4~ 
g2*6/4~ 
g2*4/4~ 
g4~ 
g2*10/4~ 
g2*4/4 
f2*4/4 
\divisioMaior
a2*4/4 
g2*6/4~ 
g2*4/4~ 
g2*6/4 
a2*4/4 
bes4~ 
\divisioMaior
bes4~ 
bes4 
a2*4/4 
\shiftRight d4~ 
d2*4/4~ 
d2*10/4~ 
d4 
\divisioMaxima
g2*8/4 
f2*4/4 
e!2*4/4 
f4~ 
f2*4/4 
g2*8/4 
a2*6/4 
c'2*4/4~ 
c'4 
\divisioMaior
bes2*4/4 
c'2*4/4~ 
c'2*4/4 
d'2*6/4 
a2*4/4~ 
a2*4/4 
\divisioMinima
c'2*4/4~ 
c'2*8/4 
bes2*4/4 
a2*4/4 
\shiftRight g2*4/4 
bes4 
\divisioMaxima
d4~ 
\shiftRight d2*6/4~ 
d4~ 
d2*4/4 
g2*6/4~ 
g2*4/4 
bes2*4/4 
a2*6/4 
\divisioMaior
s2*4/4 
c'2*4/4 
bes2*6/4 
a2*7/4 
\shiftRight g2*6/4 
f2*6/4 
\divisioMinima
bes2*6/4 
a2*6/4 
\shiftRight d2*4/4~ 
d2*6/4~ 
d2*4/4~ 
d4 
\finalis
s4 
ees'2*4/4 
d'2*4/4~ 
d'2*4/4~ 
d'2*4/4~ 
\shiftRight d'2*6/4 
\divisioMinima
c'4 
bes2*4/4~ 
bes4 
c'2*4/4 
bes2*4/4 
\shiftRight a4 
\divisioMinima
d'2*4/4 
c'2*4/4~ 
c'2*4/4 
a4~ 
a2*4/4 
bes4 
\divisioMaxima
g2*8/4 
f2*4/4 
e2*4/4 
f4 
\divisioMinima
g4 
a2*4/4 
bes2*4/4 
c'2*6/4 
bes2*4/4 
\divisioMaior
a2*4/4 
bes2*6/4 
c'4~ 
c'2*4/4~ 
c'4 
\divisioMinima
bes4 
a2*6/4 
\shiftRight g2*4/4 
a2*4/4~ 
a2*4/4~ 
a4 
\divisioMaxima
g2*12/4 
d2*6/4~ 
\divisioMinima
d4~ 
d4 
g2*6/4 
f2*6/4 
d'2*6/4 
c'2*4/4~ 
c'2*6/4~ 
c'4 
bes4 
\finalis
d4~ 
d2*6/4
\finalis
}

bassMusic = {
	g2*8/4~ 
g2*8/4~ 
g2*4/4 
d2*6/4~ 
d2*3/4~ 
d2*6/4 
g2*7/4~ 
g2*10/4~ 
g2*4/4~ 
g2*4/4 
a2*6/4 
d4~ 
d2*6/4 
g2*8/4~ 
g2*10/4 
bes2*6/4 
a2*8/4 
g2*10/4~ 
g2*6/4~ 
g4 
a4~ 
a2*8/4 
bes2*10/4 
s2*10/4 
g2*6/4~ 
g4 
d2*6/4~ 
d4 
c2*6/4 
bes,2*4/4 
a,4 
g,2*10/4 
bes,2*4/4 
d2*4/4~ 
d2*4/4~ 
d2*6/4 
c2*4/4 
bes,2*6/4~ 
bes,2*4/4~ 
bes,4~ 
bes,4 
d2*6/4~ 
d4 
a,2*4/4 
g,2*10/4~ 
g,4 
s2*8/4 
d2*4/4~ 
d2*4/4~ 
d4 
c2*4/4 
bes,2*8/4 
d2*6/4~ 
d2*4/4 
g4~ 
g2*4/4 
f2*4/4 
ees2*4/4 
d2*6/4~ 
d2*4/4~ 
d2*4/4~ 
d2*4/4~ 
d2*8/4 
g2*4/4~ 
g2*4/4~ 
g2*4/4~ 
g4 
g,4 
d2*6/4 
c4 
bes,2*4/4~ 
bes,2*6/4 
c2*4/4~ 
c2*4/4 
d2*6/4 
g2*4/4~ 
g2*4/4~ 
g2*6/4~ 
g2*7/4~ 
g2*6/4 
d2*6/4~ 
d2*6/4~ 
d2*6/4~ 
d2*4/4 
a,2*6/4 
g,2*4/4~ 
g,4 
s2*10/4 
a2*4/4 
bes2*4/4 
d'2*6/4 
a4~ 
a2*4/4 
g4~ 
g2*4/4~ 
g2*4/4 
a4 
d2*4/4~ 
d2*4/4 
g2*4/4~ 
g4~ 
g2*4/4~ 
g4 
bes,2*8/4 
d2*4/4~ 
d2*4/4~ 
d4~ 
d2*6/4~ 
d2*4/4~ 
d2*6/4 
g2*4/4 
d2*4/4~ 
d2*6/4~ 
d4 
g2*4/4~ 
g4~ 
g4~ 
g2*6/4~ 
g2*4/4 
d2*4/4~ 
d2*4/4~ 
d4 
g,2*12/4~
g,2*6/4~ 
g,4 
bes,2*8/4 
d2*6/4~ 
d2*6/4~ 
d2*4/4 
f2*6/4 
g2
g,4 
\shiftRight d2*6/8
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
        "Offert."
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
