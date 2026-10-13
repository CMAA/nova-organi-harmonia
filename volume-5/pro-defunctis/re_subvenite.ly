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
	Sub -- ve -- ní -- te \set stanza = "*"
 Sanc -- ti De -- i, _ _ oc -- cúr -- _ ri -- te An -- ge -- li _ _ Dó -- mi -- ni: \set stanza = "*"
 Su -- sci -- pi -- én -- tes á -- ni -- mam e -- jus _ \set stanza = "*"
 Of -- fe -- rén -- tes e -- am in con -- spé -- ctu Al -- _ _ _ tís -- si -- mi. \set stanza = "℣."
 Su -- scí -- pi -- at te _ _ Chri -- stus, qui vo -- cá -- vit te: et in si -- num A -- bra -- hae An -- ge -- li de -- dú -- _ cant _ te. \set stanza = "*"
 Su -- sci -- pi -- én -- tes á -- ni -- mam e -- jus: _ \set stanza = "+"
 Of -- fe -- rén -- tes e -- am in con -- spé -- ctu Al -- _ _ _ tís -- si -- mi. \set stanza = "℣."
 Ré -- qui -- em _ _ ae -- tér -- nam do -- na e -- i Dó -- mi -- ne: et lux per -- pé -- tu -- a lú -- ce -- at _ e -- _ i \set stanza = "+"
 Of -- fe -- rén -- tes e -- am in con -- spé -- ctu Al -- _ _ _ tís -- si -- mi. 
}

chantMusic = {
  \tieDown
	\key ees \major
f'4 aes'4( f'4) g'4( aes'4) aes'4 

aes'4 aes'4 
aes'4( g'4) g'4( bes'4 aes'4 g'4) aes'4( g'4 f'4) g'4( f'4) 
\divisioMaior
g'4( aes'4) bes'4( c''4 bes'4) c''4( des''4) c''4 c''4 
\bar "" \break

\divisioMinima
c''4 bes'4( aes'4) aes'4( bes'4 c''4) des''4( bes'4) c''4( bes'4) 
g'4 g'4( bes'4 aes'4 aes'4) aes'4( g'4) 
\divisioMaxima
aes'4 g'4 aes'4 bes'4 aes'4 
bes'4 aes'4 aes'4 
\bar "" \break

aes'4( \once \tweak #'font-size #-4 g'4 \once \tweak #'font-size #-4 f'4) aes'4( f'4) g'4( aes'4 g'4) 
\divisioMaxima
ees'4 f'4( aes'4) aes'4 ees'4 
f'4( ees'4) ees'4( ees'4 des'4) 
\divisioMinima
ees'4 
f'4( \once \tweak #'font-size #-4 aes'4) aes'4( g'4 f'4) aes'4( bes'4) 
\bar "" \break

bes'4. aes'4( bes'4 c''4) des''4( bes'4) c''4( bes'4) g'4 g'4( bes'4 aes'4 aes'4) aes'4( g'4) 
\finalis
c''4 c''4 c''4 bes'4( c''4) 
bes'4( aes'4 \quil bes'4 c''4 bes'4) c''4( bes'4 bes'4) g'4( aes'4 g'4) 
\bar "" \break

\divisioMinima
bes'4 bes'4( aes'4) 
bes'4( c''4) 
bes'4( aes'4) g'4 g'4( \quil aes'4 bes'4 aes'4) 
aes'4( g'4) 
\divisioMaxima
aes'4 
f'4( aes'4) 
aes'4 aes'4 
g'4( aes'4) aes'4 aes'4 
\divisioMinima
aes'4 aes'4 g'4( \quil aes'4 bes'4 aes'4 g'4) 
\bar "" \break

bes'4 c''4( bes'4) c''4( bes'4 aes'4) g'4( aes'4) bes'4( g'4 aes'4) 
g'4( f'4) 
\finalis
aes'4 g'4 aes'4 bes'4 aes'4 
bes'4 aes'4 aes'4 
aes'4( \once \tweak #'font-size #-4 g'4 \once \tweak #'font-size #-4 f'4) aes'4( f'4) g'4( aes'4 g'4) 
\bar "" \break

\divisioMaxima
ees'4 f'4( aes'4) aes'4 ees'4 
f'4( ees'4) ees'4( ees'4 des'4) 
\divisioMinima
ees'4 
f'4( \once \tweak #'font-size #-4 aes'4) aes'4( g'4 f'4) aes'4( bes'4) 
bes'4. aes'4( bes'4 c''4) des''4( bes'4) c''4( bes'4) g'4
\bar "" \break

g'4( bes'4 aes'4 aes'4) aes'4( g'4) 
\finalis
c''4 bes'4( c''4) bes'4( aes'4)( \quil bes'4 c''4 bes'4) c''4( bes'4 bes'4) g'4( aes'4 g'4) 
bes'4 bes'4( c''4) bes'4 
\divisioMinima
bes'4 bes'4( aes'4) 
bes'4( c''4) bes'4( aes'4) 
\bar "" \break

g'4 g'4( \quil aes'4 bes'4 aes'4) aes'4( g'4) 
\divisioMaxima
aes'4 
f'4( aes'4) 
aes'4 g'4( aes'4) aes'4 aes'4 
\divisioMinima
g'4( \quil aes'4 bes'4 aes'4 g'4) bes'4 c''4( bes'4) c''4( bes'4 aes'4) 
g'4( aes'4) bes'4( g'4 aes'4) g'4( f'4) 
\finalis
\bar "" \break

ees'4 f'4( aes'4) aes'4 ees'4 
f'4( ees'4) ees'4( ees'4 des'4) 
\divisioMinima
ees'4 
f'4( \once \tweak #'font-size #-4 aes'4) aes'4( g'4 f'4) aes'4( bes'4) 
\bar "" \break

bes'4. aes'4( bes'4 c''4) des''4( bes'4) c''4( bes'4) g'4 g'4( bes'4 aes'4 aes'4) aes'4( g'4) 
\finalis
}

altoMusic = {
	c'2*6/4~ 
c'2*10/4 
ees'2*4/4 
c'2*8/4~ 
c'2*6/4~ 
c'2*4/4~ 
c'2*4/4 
f'2*6/4~ 
f'2*8/4~ 
f'2*6/4 
ees'2*6/4 
des'2*8/4 
c'2*6/4 
ees'2*4/4~ 
ees'2*4/4 
c'2*6/4~ 
c'2*4/4~ 
c'2*6/4~ 
c'2*6/4 
ees'2*4/4 
c'2*6/4 
ees'4~ 
ees'2*4/4~ 
ees'2*4/4 
c'2*4/4 
bes2*6/4~ 
bes4 
c'2*4/4 
des'2*6/4 
ees'2*4/4 
f'2*3/4~ 
f'2*6/4~ 
f'2*4/4 
g'2*4/4 
f'4 
ees'2*4/4~ 
ees'2*4/4~ 
ees'2*4/4 
s4 
c'2*4/4 
ees'2*4/4 
f'2*10/4 
g'2*6/4 
f'2*6/4~ 
f'2*14/4~ 
f'4 
ees'2*8/4~ 
ees'2*4/4~ 
ees'4 
c'2*8/4~ 
c'2*4/4~ 
c'2*4/4~ 
c'2*4/4~ 
c'2*10/4
s4
ees'2*10/4~ 
ees'2*10/4 
c'2*4/4~ 
c'2*6/4~ 
c'2*4/4~ 
c'2*6/4~ 
c'2*6/4 
ees'2*4/4 
c'2*6/4 
ees'4~ 
ees'2*4/4~ 
ees'2*4/4 
c'2*4/4 
bes2*6/4~ 
bes4 
des'2*4/4 
ees'2*6/4~ 
ees'2*4/4 
f'2*3/4~ 
f'2*6/4~ 
f'2*4/4 
g'2*4/4 
f'4 
ees'2*4/4~ 
ees'2*4/4~ 
ees'2*4/4 
s4 
ees'2*4/4 
f'2*6/4 
g'2*10/4~ 
g'2*8/4~ 
g'2*6/4~ 
g'4 
f'2*4/4~ 
f'2*8/4~ 
f'4 
ees'2*8/4~ 
ees'2*4/4
ees'4 
c'2*6/4~ 
c'2*6/4~ 
c'4~ 
c'2*4/4~ 
c'2*8/4 
ees'2*10/4~ 
ees'2*10/4 
c'2*4/4 
bes4 
aes2*4/4~ 
aes2*4/4 
c'2*4/4 
bes2*6/4~ 
bes4 
c'2*4/4 
des'2*6/4 
ees'2*4/4 
f'2*3/4~ 
f'2*6/4~ 
f'2*4/4 
g'2*4/4 
f'4 
ees'2*4/4~ 
ees'2*4/4~ 
ees'2*4/4 
}

tenorMusic = {
	\key ees \major
aes4~ 
aes2*4/4~ 
aes2*10/4 
bes2*4/4 
g2*8/4 
\shiftRight f2*6/4 
aes2*4/4~ 
\divisioMaior
aes2*4/4~ 
aes2*6/4~ 
aes2*8/4~ 
\divisioMinima
aes2*6/4~ 
aes2*6/4 
f2*8/4~ 
f4 
ees2*8/4 
c'2*4/4 
\divisioMaxima
f2*6/4 
g2*4/4 
f2*6/4~ 
f2*6/4~ 
f2*4/4 
ees2*6/4 
\divisioMaxima
bes4 
aes2*4/4 
f2*4/4~ 
f2*4/4~ 
f2*6/4~ 
\divisioMinima
f4~ 
f2*4/4~ 
f2*6/4 
ees2*4/4 
\shiftRight des2*3/4 
c'2*6/4 
bes2*4/4~ 
bes2*6/4 
c'2*4/4~ 
c'2*4/4~ 
c'2*4/4 
\finalis
s2*10/4 
des'2*10/4 
ees'2*6/4 
\shiftRight des'2*6/4~ 
\divisioMinima
des'4 
c'2*4/4~ 
c'2*8/4~ 
c'4~ 
c'2*8/4~ 
c'2*4/4 
\divisioMaxima
bes4 
aes2*8/4 
bes2*4/4 
aes2*4/4 
\divisioMinima
f2*4/4 
\set tieWaitForNote=##t
g2*10/4~
s4
g2*4/4 
aes2*6/4 
bes2*10/4~ 
bes4 
aes4 
\finalis
f2*6/4 
g2*4/4 
f2*6/4~ 
f2*6/4~ 
f2*4/4 
ees2*6/4 
\divisioMaxima
bes4 
aes2*4/4 
f2*4/4~ 
f2*4/4~ 
f2*6/4~ 
\divisioMinima
f4 
bes2*4/4~ 
bes2*6/4 
aes2*4/4~ 
aes2*3/4
c'2*6/4 
bes2*4/4~ 
bes2*6/4 
c'2*4/4~ 
c'2*4/4~ 
c'2*4/4 
\finalis
s2*6/4 
des'2*6/4 
ees'2*10/4~ 
ees'2*8/4~ 
ees'2*6/4 
\divisioMinima
c'4~ 
c'2*4/4~ 
c'2*8/4~ 
c'4~ 
c'2*8/4~ 
c'2*4/4 
\divisioMaxima
bes4 
aes2*6/4 
bes2*4/4 
aes2*4/4 
\divisioMinima
c'2*4/4 
g2*8/4~ 
g2*4/4 
aes2*6/4 
bes2*10/4~ 
bes4 
aes4 
\finalis
s2*6/4 
f2*4/4~ 
f2*4/4~ 
f2*6/4~ 
\divisioMinima
f4~ 
f2*4/4~ 
f2*6/4~ 
f2*4/4~ 
f2*3/4 
c'2*6/4 
bes2*4/4~ 
bes2*6/4 
c'2*4/4~ 
c'2*4/4~ 
c'2*4/4 
\finalis
}

bassMusic = {
	s4 
g2*4/4 
f2*10/4 
ees2*4/4~ 
ees2*8/4 
f2*6/4~ 
f2*4/4 
s2*4/4 
g2*6/4 
f2*8/4 
ees4 
des2*4/4 
c2*6/4 
bes,2*8/4 
c2*10/4~ 
c2*4/4 
f,2*6/4~ 
f,2*4/4~ 
f,2*6/4 
aes,2*6/4 
c2*4/4~ 
c2*6/4~ 
c4~ 
c2*4/4~ 
c2*4/4 
aes,2*4/4 
bes,2*6/4~ 
bes,4 
aes,2*4/4 
bes,2*6/4 
c2*4/4 
des2*3/4~ 
des2*6/4~ 
des2*4/4 
ees2*6/4~ 
ees2*4/4 
f2*4/4 
c2*4/4 
s2*6/4 
c'2*4/4~ 
c'2*10/4~ 
c'2*6/4 
des'2*6/4 
s4 
f2*4/4 
aes2*8/4 
bes4 
\shiftRight c'2*8/4 
c2*4/4 
c4 
f2*8/4~ 
f2*4/4~ 
f2*4/4 
ees2*4/4~ 
ees2*10/4
s4
c2*4/4~ 
c2*6/4~ 
c2*10/4 
f2*4/4 
f,2*6/4~ 
f,2*4/4~ 
f,2*6/4 
aes,2*6/4 
c2*4/4~ 
c2*6/4~ 
c4~ 
c2*4/4~ 
c2*4/4 
aes,2*4/4 
bes,2*6/4~ 
bes,4~ 
bes,2*4/4 
c2*6/4~ 
c2*4/4 
des2*3/4~ 
des2*6/4~ 
des2*4/4 
ees2*6/4~ 
ees2*4/4 
f2*4/4 
c2*4/4 
c'2*6/4~ 
c'2*6/4~ 
c'2*10/4 
\shiftRight ees'2*8/4 
ees2*6/4~ 
ees4 
f2*4/4 
aes2*8/4 
bes4 
\shiftRight c'2*8/4 
c2*4/4 
c4 
f2*6/4~ 
f2*4/4~ 
f2*4/4 
ees2*4/4~ 
ees2*8/4 
c2*4/4~ 
c2*6/4~ 
c2*10/4 
f2*4/4 
g,4 
f,2*4/4~ 
f,2*4/4 
aes,2*4/4 
bes,2*6/4~ 
bes,4 
aes,2*4/4 
bes,2*6/4 
c2*4/4 
des2*3/4~ 
des2*6/4~ 
des2*4/4 
ees2*6/4~ 
ees2*4/4 
f2*4/4 
c2
}

voiceLines = {
  \voiceLineStyle

  s2*65 s4 s8
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
        "IV."
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
