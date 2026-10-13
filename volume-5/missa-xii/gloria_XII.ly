\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.69
%(volume.page)

%Proofed 3/14

global = {
 \key e \phrygian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
Gló -- ri -- a in ex -- cél -- sis De -- o. 
Et in ter -- ra pax ho -- mí -- ni -- bus bo -- næ vo -- lun -- tá -- tis. 
Lau -- dá -- mus te. 
Be -- ne -- dí -- ci -- mus te. 
Ad -- o -- rá -- mus te. 
Glo -- ri -- fi -- cá -- mus te. 
Grá -- ti -- as á -- gi -- mus ti -- bi pro -- pter ma -- gnam gló -- ri -- am tu -- am. 
Dó -- mi -- ne De -- us, Rex cœ -- lé -- stis, De -- us Pa -- ter o -- mní -- po -- tens. 
Dó -- mi -- ne Fi -- li u -- ni -- gé -- ni -- te Je -- su Chri -- ste. 
Dó -- mi -- ne De -- us, A -- gnus De -- i, Fí -- li -- us Pa -- tris. 
Qui tol -- lis pec -- cá -- ta mun -- di, mi -- se -- ré -- re no -- bis. 
Qui tol -- lis pec -- cá -- ta mun -- di, sús -- ci -- pe de -- pre -- ca -- ti -- ó -- nem no -- stram. 
Qui se -- des ad déx -- te -- ram Pa -- tris, mi -- se -- ré -- re no -- bis. 
Quó -- ni -- am tu so -- lus san -- ctus. 
Tu so -- lus Dó -- mi -- nus. 
Tu so -- lus Al -- tís -- si -- mus, Je -- su Chri -- ste. 
Cum San -- cto Spí -- ri -- tu, in gló -- ri -- a De -- i Pa -- tris. 
A -- _ men. }

chantMusic = {
\tieDown   d'4 ( a'4) a'4 g'4 ( f'4 e'4) d'4 e'4 f'4 g'4 a'4 ( g'4 f'4 e'4) e'4 \finalis
 d'4 e'4 f'4 g'4 \forceBreak
 a'4 a'4 g'4 f'4 g'4 \divisioMinima
 a'4 g'4 e'4 ( f'4) g'4 e'4 e'4 \finalis
 d'4 f'4 ( e'4) d'4 e'4 \finalis
 \forceBreak
 d'4 e'4 ( f'4) g'4 g'4 f'4 ( e'4) e'4 \finalis
 g'4 f'4 g'4 f'4 ( e'4) e'4 \finalis
 a'4 g'4 f'4 g'4 f'4 ( e'4) e'4 \finalis
 \forceBreak
 e'4 g'4 a'4 a'4 g'4 a'4 b'4 ( c''4) a'4 \divisioMinima
 a'4 a'4 a'4 g'4 f'4 g'4 g'4 ( a'4) g'4 e'4 \finalis
 \forceBreak
 f'4 e'4 d'4 e'4 f'4 g'4 f'4 g'4 g'4 \divisioMinima
 a'4 a'4 g'4 f'4 a'4 g'4 f'4 ( e'4) e'4 \finalis
 \forceBreak
 f'4 e'4 d'4 e'4 f'4 g'4 f'4 g'4 g'4 f'4 \divisioMinima
 a'4 g'4 f'4 ( e'4) e'4 \finalis
 a'4 g'4 a'4 \forceBreak
 b'4 ( c''4) a'4 \divisioMinima
 g'4 d'4 e'4 ( f'4) g'4 \divisioMinima
 g'4 f'4 ( e'4) d'4 e'4 e'4 \finalis
 g'4 f'4 g'4 a'4 g'4 f'4 \forceBreak
 g'4 a'4 \divisioMinima
 g'4 f'4 g'4 ( a'4) g'4 ( f'4) e'4 e'4 \finalis
 c'4 d'4 e'4 f'4 g'4 f'4 g'4 g'4 \divisioMinima
 \forceBreak
 a'4 g'4 f'4 g'4 f'4 g'4 a'4 f'4 g'4 e'4 e'4 \finalis
 a'4 g'4 a'4 a'4 \forceBreak
 a'4 g'4 a'4 b'4 ( c''4) a'4 \divisioMinima
 g'4 f'4 ( d'4) e'4 f'4 ( g'4) e'4 e'4 \finalis
 c'4 c'4 ( d'4) d'4 d'4 \forceBreak
 f'4 ( e'4) d'4 e'4 f'4 \finalis
 g'4 g'4 f'4 g'4 g'4 g'4 \finalis
 a'4 g'4 f'4 a'4 g'4 f'4 ( e'4) e'4 \divisioMinima
 \forceBreak
 a'4 g'4 ( a'4) b'4 ( c''4) a'4 \finalis
 g'4 g'4 d'4 e'4 ( f'4 g'4) f'4 ( e'4) e'4 \divisioMinima
 e'4 f'4 e'4 d'4 \forceBreak
 e'4 f'4 g'4 a'4 \finalis
 g'4 ( f'4 )( \quil g' a'4 g'4 f'4) g'4 ( f'4 e'4) d'4 ( e'4) \finalis

}

altoMusic = {
r2*15/2 \finalis
d'2 ~ d'2 c'2 ~ c'2*3/2 \divisioMinima
b2 d'2*3/2 ~ d'4 c'4 \finalis
d'4 ~ d'2*3/2 c'4 \finalis
d'4 ~ d'2 c'2 ~ c'2 ~ c'4 \finalis
c'2 a4 ~ a2 ~ a4 \finalis
r2*4/2 d'2 c'4 \finalis
e'2*3/2 d'2*3/2 ~ d'2 c'4 ~ \divisioMinima
c'2 ~ c'2 ~ c'2 b2 c'2 \finalis
c'2*3/2 ~ c'2 ~ c'2 ~ c'2 ~ \divisioMinima
c'2 ~ c'2*3/2 ~ c'4 b2 c'4 \finalis
a2*3/2 c'2 ~ c'2 ~ c'2 ~ c'4 ~ \divisioMinima
c'2 ~ c'2 ~ c'4 \finalis
e'2*3/2 ~ e'2 ~ e'4 \divisioMinima
c'2 ~ c'2 ~ c'4 ~ \divisioMinima
c'4 ~ c'2 -\tweak Glissando.Y-offset #-0.8 \glissando d'4 ~ d'4 c'4 \finalis
r4 c'2*3/2 ~ c'2 ~ c'2 ~ \divisioMinima
c'2 ~ c'2 ~ c'2 ~ c'2 \finalis
c'4 ~ c'2*3/2 ~ c'2 ~ c'2 ~ \divisioMinima
c'2*3/2 ~ c'2 ~ c'2 d'2 ~ d'4 c'4 \finalis
r4 c'2*3/2 b2*3/2 d'2 c'4 ~ \divisioMinima
c'4 a2 b2*3/2 c'2 \finalis
a4 ~ a2*4/2 ~ a2*3/2 ~ a2 \finalis
r4 c'2 ~ c'2 ~ c'4 \finalis
r4 c'2*3/2 ~ c'4 ~ c'2 ~ c'4 \divisioMinima
e'2*3/2 ~ e'2 ~ e'4 \finalis
r4 a2 c'2*3/2 ~ c'2 ~ c'4 ~ \divisioMinima
c'4 a2*3/2 c'2 ~ c'2 \finalis
c'2*3/2 ~ c'2*3/2 b2*3/2 ~ b4 c'4 \finalis
}

tenorMusic = {
s2*15/2 \finalis
s2*9/2 \divisioMinima
s2*7/2 \finalis
r4 a2*3/2 ~ a4 \finalis
r4 a2 g2 a2 g4 \finalis
e2*3/2 d2 e4 \finalis
r2*3/2 b4 ~ b2 c'4 \finalis
e2*3/2 ~ e2*3/2 ~ e2*3/2 \divisioMinima
f2 e2 d2 ~ d2 a2 \finalis
a2*3/2 ~ a2 ~ a2 g2 \divisioMinima
f2 g2*3/2 a4 ~ a2 ~ a4 \finalis
f2*3/2 g2 f2 e2 f4 \divisioMinima
e2 d2 a4 \finalis
e'2*3/2 d'2 c'4 ~ \divisioMinima
c'2 ~ c'2 ~ c'4 ~ \divisioMinima
c'4 a2*3/2 ~ \shiftRight a2 \finalis
r4 f2*3/2 e2 d2 \divisioMinima
e2 f2 g2 a2 \finalis
a2*4/2 g2 ~ g2 \divisioMinima
f2*3/2 a2 ~ a2 ~ a2 ~ a2 \finalis
r4 e2*3/2 ~ e2*3/2 ~ e2 ~ e4 ~ \divisioMinima
e4 f2 ~ f2*3/2 g2 \finalis
f4 ~ f2*4/2 ~ f2*3/2 g4 f4 \finalis
r4 f2 d2 e4 \finalis
r4 f2*3/2 e4 d2 a4 \divisioMinima
b2*3/2 d'2 c'4 \finalis
r4 f2 g2*3/2 a2 g4 ~ \divisioMinima
g4 f2*3/2 g2 e4 ~ e4 \finalis
f2*3/2 e2*3/2 d2*3/2 a2 \finalis
}

bassMusic = {
s2*15/2 \finalis
d2 e2 f2 e2*3/2 ~ \divisioMinima
e2 ~ e2*3/2 a2 \finalis
d4 ~ d2*3/2 a,4 \finalis
d4 ~ d2 e2 f2 c4 \finalis
c2*3/2 \shiftRight d2 a,4 \finalis
a2*3/2 ~ a4 ~ a2 ~ a4 \finalis
r2*6/2 a,2*3/2 ~ \divisioMinima
a,2 ~ a,2 ~ a,2 ~ a,2 ~ a,2 \finalis
r2*3/2 g2 f2 e2 \divisioMinima
d2 ~ d2*3/2 ~ d4 ~ d2 \shiftRight a4 \finalis
d2*3/2 c2 ~ c2 ~ c2 a,4 ~ \divisioMinima
a,2 ~ a,2 ~ a,4 \finalis
a2*3/2 ~ a2 ~ a4 \divisioMinima
e2 d2 e4 ~ \divisioMinima
e4 f2*3/2 a2 \finalis
r4 a,2*3/2 ~ a,2 ~ a,2 ~ \divisioMinima
a,2 ~ a,2 ~ a,2 ~ a,2 \finalis
f2*4/2 ~ f2 e2 \divisioMinima
d2*3/2 ~ d2 e2 f2 \shiftRight a2 \finalis
r4 a,2*3/2 ~ a,2*3/2 ~ a,2 ~ a,4 ~ \divisioMinima
a,4 d2 ~ d2*3/2 c2 \finalis
r4 e2*4/2 d2*3/2 ~ d2 \finalis
r4 c2 ~ c2 ~ c4 \finalis
r4 a,2*3/2 ~ a,4 ~ a,2 ~ a,4 \divisioMinima
e2*3/2 ~ e2 a4 \finalis
r4 d2 c2*3/2 ~ c2 ~ c4 ~ \divisioMinima
c4 d2*3/2 c2 ~ c4 a,4 \finalis
a,2*3/2 ~ a,2*3/2 ~ a,2*3/2 ~ a,2 \finalis
}

voiceLines = {
\voiceLineStyle


s2*202/2
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "up" "up" e'2*1/2 e'2*1/2


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
  \layout{
  }
  
}
