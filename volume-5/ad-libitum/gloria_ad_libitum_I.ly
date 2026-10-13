\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.139
%(volume.page)

%Proofed 3/14

global = {
 \key ees \mixolydian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
 \override Glissando #'breakable = ##t
}

chantText = \lyricmode {
Gló -- ri -- a in ex -- cél -- sis De -- o, 
Et in ter -- ra pax ho -- mí -- ni -- bus bo -- næ vo -- lun -- tá -- tis. 
Lau -- dá -- mus te. 
Be -- ne -- dí -- ci -- mus te. 
Ad -- o -- rá -- mus te. 
Glo -- ri -- fi -- cá -- mus te. 
Grá -- ti -- as á -- gi -- mus ti -- bi 
pro -- pter ma -- gnam gló -- ri -- am tu -- am. 
Dó -- mi -- ne De -- us, Rex cœ -- lé -- stis, 
De -- us Pa -- ter o -- mní -- po -- tens. 
Dó -- mi -- ne Fi -- li u -- ni -- gé -- ni -- te Je -- su Chri -- ste. 
Dó -- mi -- ne De -- us, A -- gnus De -- i, Fí -- li -- us Pa -- tris. 
Qui tol -- lis pec -- cá -- ta mun -- di, 
mi -- se -- ré -- re no -- bis. 
Qui tol -- lis pec -- cá -- ta mun -- di, 
sús -- ci -- pe de -- pre -- ca -- ti -- ó -- nem no -- stram. 
Qui se -- des ad déx -- te -- ram Pa -- tris, 
mi -- se -- ré -- re no -- bis, 
Quó -- ni -- am tu so -- lus san -- ctus. 
Tu so -- lus Dó -- mi -- nus. 
Tu so -- lus Al -- tís -- si -- mus, Je -- su Chri -- ste. 
Cum San -- cto Spí -- ri -- tu, in gló -- ri -- a De -- i Pa -- tris. 
A -- _ _ _ _ men. }

chantMusic = {
\tieDown   ees'4 c'4 ( ees'4) ees'4 ees'4 f'4 ( g'4) aes'4 ( f'4 ees'4) ~ ees'4 ( \once \tweak #'font-size #-4 f' ) ees'4 c'4 ( des'4 ees'4) ees'4 \finalis
 ees'4 aes'4 g'4 ( aes'4 \once \tweak #'font-size #-4 bes' ) \forceBreak
 bes'4 bes'4 aes'4 ( g'4) aes'4 ( bes'4) aes'4 ( g'4) g'4 \divisioMinima
 aes'4 ( bes'4) bes'4 ( aes'4 g'4) f'4 ( ees'4) f'4 ( aes'4) ees'4 ees'4 \finalis
 bes4 ( c'4 \once \tweak #'font-size #-4 ees' ) f'4 c'4 bes4 ( c'4 ees'4) \finalis
 \forceBreak
 ees'4 g'4 aes'4 ( bes'4 aes'4 g'4 f'4 ees'4) f'4 ( aes'4 f'4) f'4 ees'4 \finalis
 f'4 bes4 c'4 ( des'4 ees'4) f'4 ( ees'4) c'4 ( des'4 ees'4) \finalis
 \forceBreak
 des'4 f'4 ( aes'4 g'4 f'4) ees'4 ( f'4 bes4) c'4 ( des'4 ees'4) f'4 ( ees'4) c'4 ( des'4 ees'4) \finalis
 ees'4 ( aes'4 g'4) aes'4 ( bes'4) bes'4 c''4 ( bes'4) aes'4 g'4 aes'4 ( bes'4) bes'4 \divisioMaior
 \forceBreak
 bes'4 ees'4 f'4 ( aes'4) ees'4 ( \once \tweak #'font-size #-4 des' ) bes4 ( des'4) c'4 des'4 ( \once \tweak #'font-size #-4 ees' ) ees'4 ees'4 \finalis
 aes'4 g'4 f'4 aes'4 ( bes'4) bes'4  \forceBreak
 c''4 ( bes'4) aes'4 ( g'4) aes'4 ( bes'4) ees'4 \divisioMaior
 f'4 aes'4 bes'4 aes'4 ( g'4 ees'4) f'4 ( aes'4 ees'4 ees'4) bes4 des'4 ( ees'4) ees'4 \finalis
 \forceBreak
 bes'4 aes'4 bes'4 bes'4 aes'4 bes'4 des''4 ees''4 des''4 ( c''4) aes'4 \divisioMinima
 aes'4 ( g'4) f'4 ( aes'4) ees'4 ees'4 \finalis
 \forceBreak
 bes'4 aes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 ees''4 des''4 ( ees''4) ees''4 \divisioMinima
 f''4 ees''4 des''4 ( ees''4) ees''4 aes'4 \finalis
 \forceBreak
 bes'4 des''4 ees''4 bes'4 aes'4 ( bes'4) f'4 aes'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 \divisioMaior
 ees'4 ( f'4 g'4) f'4 ( aes'4) ees'4 des'4 ( c'4 bes4) des'4 ( ees'4) ees'4 \finalis
 \forceBreak
 bes'4 des''4 ees''4 bes'4 aes'4 ( bes'4) f'4 aes'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 \divisioMaior
 bes'4 ( ees''4 f''4) ees''4 ees''4 ees''4 des''4 ees''4 aes'4 ( g'4) f'4 \forceBreak
 aes'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 bes'4 \finalis
 ees'4 ( f'4) ees'4 des'4 ( c'4 bes4) ees'4 f'4 ( aes'4 g'4) f'4 ees'4 aes'4 ( bes'4) bes'4 \divisioMaior
 ees'4 ( f'4 g'4) f'4 ( aes'4) ees'4 \forceBreak
 des'4 ( c'4 bes4) des'4 ( ees'4) ees'4 \finalis
 aes'4 g'4 f'4 aes'4 ( bes'4) des''4 ( c''4) bes'4 aes'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 \finalis
 ees'4 ( bes'4) aes'4 des''4 c''4 ( bes'4) aes'4 ( bes'4) bes'4 \finalis
 \forceBreak
 bes'4 ( ees''4) des''4 ees''4 f''4 ( ees''4) des''4 c''4 bes'4 \divisioMinima
 aes'4 ( g'4) f'4 ( aes'4) ees'4 ees'4 \finalis
 bes4 des'4 ( \once \tweak #'font-size #-4 ees' ) ees'4 ees'4 ( aes'4 g'4) aes'4 ( bes'4 aes'4) bes'4 \divisioMinima
 \forceBreak
 bes'4 ( c''4) bes'4 aes'4 ( g'4) f'4 ( ees'4) f'4 ( aes'4) f'4 ( ees'4) c'4 ( des'4 ees'4) des'4 ( c'4 bes4) \finalis
 ees'4 ( f'4) aes'4 ( g'4 f'4) aes'4 ( ees'4.) c'4 ( des'4) ees'4 ( f'4 ees'4) des'4 ( ees'4) \finalis

}

altoMusic = {
r2*17/2 \finalis
ees'2 ~ ees'2*3/2 ~ ees'2 ~ ees'2 des'2 ees'2 ~ ees'4 ~ \divisioMinima
ees'2 ~ ees'2*3/2 ~ ees'2 des'2 bes2 \finalis
bes2*3/2 aes2 g2*3/2 \finalis
ees'2 c'2*6/2 des'2*3/2 bes2 \finalis
bes4 ~ bes4 aes2*3/2 bes2 c'2*3/2 \finalis
r4 c'2*4/2 bes2 ~ bes4 c'2*3/2 bes2 aes2 bes4 \finalis
ees'2*3/2 ~ ees'2*3/2 ~ ees'2*4/2 ~ ees'2 ~ ees'4 \divisioMaior
bes2 c'2 bes2 ~ bes2*3/2 aes2 ~ aes4 g4 \finalis
c'2 f'4 ~ f'2*3/2 ees'2*4/2 ~ ees'2 ~ ees'4 \divisioMaior
des'2*3/2 ees'2 ~ ees'4 des'2 bes2 ~ bes4 aes2 bes4 \finalis
f'2*3/2 ees'2 f'2 ees'4 ~ ees'2*3/2 \divisioMinima
des'2*4/2 bes2 \finalis
g'2*3/2 f'2 \divisioMinima
g'2 aes'2 bes'4 \divisioMinima
c''2 aes'2 ~ aes'4 ~ aes'4 \finalis
r4 des'2*3/2 c'2*3/2 ees'2 des'4 \divisioMaior
ees'2*3/2 ~ ees'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando des'4 c'4 bes4 aes2 bes4 \finalis
r4 aes'2*3/2 f'2*3/2 ~ f'2 ~ f'4 \divisioMaior
bes'2*5/2 aes'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando aes'4 r2 aes'2 ~ aes'4 g'4 \finalis
c'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando des'4 r2*3/2 c'2*3/2 des'2 ees'2 ~ ees'4 ~ \divisioMaior
\once \override Glissando.breakable = ##t 
\once \override Glissando.after-line-breaking = ##t
ees'2*3/2 c'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando \forceBreak des'4 r2 aes2 bes4 \finalis
r2*3/2 aes'2 ~ aes'2*3/2 f'2 ~ f'4 \finalis
ees'2 ~ ees'2 ~ ees'2 ~ ees'2 des'4 \finalis
bes'2 aes'2 ~ aes'2 f'2*3/2 \divisioMinima
des'2 c'2 -\tweak Glissando.Y-offset #-0.8 \glissando ees'4 ees'4 \finalis
bes4 ~ bes2 c'4 ~ c'2*3/2 ~ c'2*3/2 ees'4 ~ \divisioMinima
ees'2*3/2 c'2*4/2 des'2*4/2 aes2*3/2 f2 ~ f4 \finalis
bes2 ~ bes2*3/2 aes2*5/4 ~ aes2 ~ aes2*3/2 f4 g4 \finalis
}

tenorMusic = {
r2*17/2 \finalis
c'2 bes2*3/2 g2 aes2 ~ aes2 bes2 c'4 \divisioMinima
aes2 g2*3/2 aes2 ~ aes2 ~ aes4 g4 \finalis
ees2*3/2 ~ ees2 ~ ees2*3/2 \finalis
bes2 aes2*6/2 ~ aes2*3/2 ~ aes4 g4 \finalis
f2 ~ f2*3/2 g2 aes2*3/2 \finalis
aes2*5/2 g2*3/2 aes2*3/2 g2 f2 g4 \finalis
aes2*3/2 ~ aes2*3/2 g2*4/2 f2 g4 \divisioMaior
ees2 ~ ees2 f2 ~ f2*3/2 bes,2 ~ bes,2 \finalis
aes2*3/2 ~ aes2*3/2 ~ aes2*4/2 g2*3/2 \divisioMaior
aes2*3/2 ~ aes2*3/2 ~ aes2 ~ aes2 g4 f2 g4 \finalis
f2*3/2 ~ f2 ~ f2 g4 aes2*3/2 ~ \divisioMinima
aes2*4/2 ~ aes4 g4 \finalis
ees'2*3/2 des'2 \divisioMinima
ees'2 f'2 g'4 ~ \divisioMinima
g'2 f'2 ees'2 \finalis
r4 f2*3/2 ees2*3/2 f2 ~ f4 \divisioMaior
bes2*3/2 aes2*3/2 ~ aes2*3/2 f2 g4 \finalis
r4 f'2*3/2 ees'2*3/2 des'2 ~ des'4 \divisioMaior
bes2*5/2 ~ bes2*3/2 c'2*3/2 des'2 ees'2 \finalis
aes2*3/2 ~ aes2*4/2 ~ aes2*3/2 \shiftRight bes2 c'2 bes4 ~ \divisioMaior
bes2*3/2 aes2*3/2 ~ aes2*3/2 f2 g4 \finalis
c'2*3/2 des'2 ees'2*3/2 ~ ees'2 des'4 \finalis
g2 f2 g2 f2 ~ f4 \finalis
ees'2 f'2 c'2 bes2*3/2 ~ \divisioMinima
bes2 aes2 bes2 \finalis
r4 aes2*3/2 ~ aes2*3/2 ~ aes2*3/2 ~ aes4 \divisioMinima
g2*3/2 aes2*4/2 ~ aes2*4/2 f2*3/2 ees2 des4 \finalis
ees2 c2*3/2 ~ c2*5/4 bes,2 ~ bes,2*3/2 ~ bes,2 \finalis
}

bassMusic = {
r2*17/2 \finalis
aes2 ees2*3/2 ~ ees2 f2 ~ f2 c2 ~ c4 ~ \divisioMinima
c2 ~ c2*3/2 ~ c2 des2 ees2 \finalis
g,2*3/2 f,2 c2*3/2 \finalis
ees2 f2*6/2 des2*3/2 ees2 \finalis
des2 \shiftRight f2*8/2 \finalis
f2*5/2 \shiftRight g2*8/2 ees2 ~ ees4 \finalis
c2*3/2 ees2*3/2 ~ ees2*4/2 ~ ees2 ~ ees4 \divisioMaior
g,2 aes,2 ~ aes,2 bes,2*3/2 f,2 ees,2 \finalis
f2*3/2 des2*3/2 c2*4/2 ~ c2*3/2 \divisioMaior
bes,2*3/2 c2*3/2 des2 ees2 ~ ees4 ~ ees2 ~ ees4 \finalis
des2*3/2 c2 des2 c4 ~ c2*3/2 \divisioMinima
bes,2*4/2 ees2 \finalis
r2*5/2 ees'2 ~ ees'2 ~ ees'4 \divisioMinima
c'2 ~ c'2 ~ c'2 \finalis
r4 bes,2*3/2 ~ bes,2*3/2 ~ bes,2 ~ bes,4 \divisioMaior
c2*3/2 ~ c2*3/2 f2*3/2 ees2 ~ ees4 \finalis
r2*9/2 bes4 \divisioMaior
g2*5/2 f2*3/2 ~ f2*3/2 ~ f2 ees2 \finalis
r2*3/2 f2*4/2 ~ f2*3/2 bes2 aes2 ~ aes4 \divisioMaior
g2*3/2 ~ g2*3/2 f2*3/2 ees2 ~ ees4 \finalis
f2*3/2 ~ f2 ~ f2*3/2 bes2 ~ bes4 \finalis
ees2 ~ ees2 ~ ees2 bes,2 ~ bes,4 \finalis
g2 bes2 aes2 ~ aes2*3/2 \divisioMinima
f2 ~ f2 g2 \finalis
r2*4/2 g2*3/2 f2*3/2 ees4 ~ \divisioMinima
ees2*3/2 f2*4/2 bes,2*4/2 ~ bes,2*3/2 ~ bes,2 ~ bes,4 \finalis
g,2 f,2*3/2 ~ f,2*5/4 ~ f,2 ees,2*3/2 ~ ees,2 \finalis
}

voiceLines = {
\voiceLineStyle


s2*101/2
\allowVoiceLineBreak
\voiceLine "down" "down" ees2*1/2 ees2*1/2


s2*5/2
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" bes,2*3/2 bes,2*1/2


s2*79/2
\allowVoiceLineBreak
\voiceLine "down" "up" aes2*3/2 aes2*1/2

s2*3/2
\allowVoiceLineBreak
\voiceLine "down" "up" f'2*3/2 f'2*1/2


s2*4/2
\allowVoiceLineBreak
\voiceLine "down" "down" bes2*1/2 bes2*1/2


s2*35/2
\allowVoiceLineBreak
\voiceLine "down" "up" aes2*3/2 aes2*1/2


s2*55/2
\allowVoiceLineBreak
\voiceLine "down" "up" aes2*4/2 aes2*0

%s2*0/2
%\allowVoiceLineBreak
%\voiceLine "down" "up" aes2*3/2 aes2*1/2

}

voiceLinesTwo = {
\voiceLineStyle


s2*103/2
s2*9/2

s2*79/2
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" f2*3/2 f2*1/2

s2*7/2
s2*6/2


s2*35/2
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" f2*3/2 f2*1/2

s2*59/2
\allowVoiceLineBreak
\voiceLine "down" "up" f2*3/2 f2*0

}


\score{
  <<
    \new Lyrics
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
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
	\new Voice {
        \voiceThree \global \voiceLinesTwo
        }
      >>
    >>
    \context Lyrics {
      \lyricsto chant {
      \chantText
    }
    }
  >>
  \layout{
  }
  
}
