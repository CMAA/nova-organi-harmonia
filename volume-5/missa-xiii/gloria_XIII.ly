\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.74
%(volume.page)

%Proofed 3/14

global = {
 \key d \dorian
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
A -- men. }

chantMusic = {
\tieDown   a'4 g'4 ( f'4) g'4 ( a'4) g'4 e'4 f'4 d'4 ( e'4) f'4 ( e'4 d'4) d'4 \finalis
 d'4 d'4 ( \once \tweak #'font-size #-4 a' ) a'4 g'4 ( a'4) \forceBreak
 a'4 a'4 c''4 ( c''4) g'4 ( a'4) a'4 \divisioMinima
 a'4 g'4 f'4 g'4 ( \once \tweak #'font-size #-4 a' ) a'4 a'4 \finalis
 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 f'4 ( e'4) d'4 \finalis
 \forceBreak
 c'4 d'4 ( f'4) f'4 d'4 c'4 ( d'4) d'4 \finalis
 a'4 g'4 ( f'4) g'4 g'4 ( a'4) a'4 \finalis
 a'4 c''4 c''4 ( d''4) d''4 c''4 ( b'4) a'4 \finalis
 \forceBreak
 a'4 g'4 f'4 g'4 ( a'4) f'4 g'4 f'4 d'4 \divisioMinima
 c'4 d'4 ( \once \tweak #'font-size #-4 f' ) f'4 ( \once \tweak #'font-size #-4 g' ) f'4 f'4 ( e'4) d'4 c'4 ( \once \tweak #'font-size #-4 d' ) d'4 d'4 \finalis
 \forceBreak
 a'4 g'4 f'4 g'4 ( a'4) a'4 \divisioMinima
 a'4 g'4 ( f'4) g'4 ( g'4) d'4 \divisioMinima
 c'4 d'4 ( f'4) f'4 ( g'4) f'4 f'4 ( e'4) d'4 c'4 ( d'4) d'4 \finalis
 \forceBreak
 a'4 g'4 f'4 g'4 ( a'4) a'4 \divisioMinima
 a'4 g'4 ( f'4) g'4 f'4 ( e'4) d'4 \divisioMinima
 f'4 ( f'4 e'4) c'4 ( d'4) d'4 d'4 \finalis
 \forceBreak
 a'4 g'4 f'4 g'4 ( a'4) a'4 \divisioMinima
 a'4 ( \once \tweak #'font-size #-4 g' ) f'4 g'4 ( a'4) a'4 \divisioMinima
 a'4 g'4 f'4 g'4 ( a'4) a'4 \finalis
 d'4 ( a'4 g'4) \forceBreak
  a'4 ( bes'4) a'4 a'4 g'4 f'4 g'4 ( \once \tweak #'font-size #-4 a' ) a'4 \divisioMinima
 f'4 g'4 ( a'4) a'4 ( g'4 f'4) g'4 g'4 ( f'4) d'4 \finalis
 d'4 ( a'4 g'4)  a'4 ( bes'4) a'4 a'4 \forceBreak
 g'4 f'4 g'4 ( \once \tweak #'font-size #-4 a' ) a'4 \divisioMinima
 f'4 g'4 ( a'4) a'4 a'4 f'4 g'4 e'4 f'4 ( g'4) f'4 ( e'4) d'4 d'4 \finalis
 \forceBreak
 c'4 c'4 ( d'4) d'4 d'4 f'4 f'4 ( e'4) d'4 ( e'4) d'4 ( d'4) c'4 \divisioMinima
 e'4 f'4 ( g'4) f'4 ( e'4) d'4 ( f'4) e'4 ( d'4) d'4 \finalis
 \forceBreak
 c'4 c'4 ( d'4) d'4 ( a'4) a'4 g'4 f'4 g'4 ( \once \tweak #'font-size #-4 a' ) a'4 \finalis
 d'4 ( a'4) g'4 f'4 g'4 g'4 ( a'4) a'4 \finalis
 \forceBreak
 d'4 ( a'4) a'4 g'4 g'4 ( a'4) g'4 f'4 ( e'4) d'4 \divisioMinima
 f'4 ( f'4 e'4) c'4 ( d'4) d'4 d'4 \finalis
 d'4 ( a'4) g'4 f'4 g'4 \forceBreak
 g'4 ( a'4) a'4 \divisioMinima
 f'4 g'4 ( a'4) a'4 a'4 a'4 ( g'4 f'4) g'4 g'4 ( f'4) d'4 \finalis
 f'4 ( f'4 e'4 c'4 d'4) d'4 \finalis

}

altoMusic = {
r2*14/2 \finalis
r4 d'2 ~ d'2*3/2 ~ d'2 e'2 ~ e'2 ~ e'4 \divisioMinima
f'2*3/2 d'2 e'2 \finalis
e'2 d'4 a2 ~ a4 \finalis
a4 ~ a2 ~ a2 ~ a2 ~ a4 \finalis
e'2*3/2 ~ e'4 d'2 c'4 \finalis
a'2 ~ a'2 e'4 ~ e'2 ~ e'4 \finalis
c'2*3/2 a2*4/2 ~ a2 ~ \divisioMinima
a4 ~ a2 ~ a2*3/2 g2*3/2 a2 ~ a2 \finalis
f'2*3/2 e'2 f'4 \divisioMinima
e'2*3/2 d'2*3/2 \divisioMinima
c'2*3/2 bes2*3/2 a2*3/2 ~ a2 ~ a4 \finalis
c'2*3/2 ~ c'2*3/2 \divisioMinima
a2*3/2 ~ a4 ~ a2 ~ a4 \divisioMinima
c'2*3/2 a2 ~ a2 \finalis
f'2*3/2 e'2 f'4 \divisioMinima
e'2*3/2 d'2 e'4 \divisioMinima
d'2*3/2 ~ d'2 e'4 \finalis
d'2*3/2 ~ d'2*4/2 ~ d'2 ~ d'2 ~ d'4 ~ \divisioMinima
d'4 c'2 ~ c'2*4/2 a2 ~ a4 \finalis
d'2*3/2 e'2*4/2 d'2 ~ d'2 e'4 \divisioMinima
c'4 ~ c'2*3/2 ~ c'2 ~ c'2 d'2 ~ d'2 a2 \finalis
r4 g2 a2 c'4 ~ c'2 ~ c'2 g2 ~ g4 \divisioMinima
e'2*3/2 d'2 a2 ~ a2 ~ a4 \finalis
a4 ~ a2 ~ a2*3/2 d'2 ~ d'2 ~ d'4 \finalis
d'2 ~ d'2*3/2 ~ d'2 c'4 \finalis
d'2 ~ d'2 ~ d'2 a4 ~ a2 ~ a4 \divisioMinima
c'2*3/2 a2 ~ a2 \finalis
d'2 ~ d'2 ~ d'4 ~ d'2 c'4 ~ \divisioMinima
c'4 ~ c'2*4/2 ~ c'2*4/2 a2 ~ a4 \finalis
c'2*3/2 a2 ~ a4 \finalis
}

tenorMusic = {
s2*14/2 \finalis
s4 s2*9/2 b2 c'4 ~ \divisioMinima
c'2*3/2 ~ c'2 ~ c'2 \finalis
a2 ~ a4 g2 f4 \finalis
f4 ~ f2 ~ f2 e2 f4 \finalis
a4 e2 ~ e2*3/2 ~ e4 \finalis
r2 e'2*3/2 d'2 c'4 \finalis
f2*3/2 ~ f2*4/2 ~ f2 \divisioMinima
e4 \shiftRight d2 ~ d2*3/2 ~ d2*3/2 e2 f2 \finalis
d'2*3/2 ~ d'2 ~ d'4 \divisioMinima
c'2*3/2 bes2*3/2 \divisioMinima
a2*3/2 g2*3/2 a2*3/2 g2 f4 \finalis
f2*3/2 ~ f2*3/2 ~ \divisioMinima
f2*3/2 e4 g2 f4 \divisioMinima
g2*3/2 ~ g2 ~ g4 f4 \finalis
d'2*3/2 ~ d'2 ~ d'4 \divisioMinima
c'2*3/2 ~ c'2 ~ c'4 ~ \divisioMinima
c'2*3/2 bes2 a4 \finalis
a2*3/2 f2*4/2 g2 e2 f4 ~ \divisioMinima
f4 ~ f2 e2*4/2 g2 f4 \finalis
d'2*3/2 c'2*4/2 ~ c'2 bes2 a4 ~ \divisioMinima
a4 ~ a2*3/2 ~ a2 ~ a2 ~ a2 g2 ~ g4 f4 \finalis
r4 e2 f2 ~ f4 g2 f2 ~ f2 e4 \divisioMinima
a2*3/2 ~ a2 ~ a2 g2 f4 \finalis
f4 ~ f2 ~ f2*3/2 a2 e2 f4 \finalis
f2 ~ f2*3/2 d2 e4 \finalis
f2 e2 a2*3/2 g2 f4 \divisioMinima
g2*3/2 ~ g2 ~ g4 f4 \finalis
f2 ~ f2 d4 e2*3/2 ~ \divisioMinima
e4 d2*4/2 e2*4/2 g2 f4 \finalis
g2*3/2 ~ g2 a4 \finalis
}

bassMusic = {
r2*14/2 \finalis
r4 d2 e2*3/2 f2 a2 ~ a2 ~ a4 ~ \divisioMinima
a2*3/2 ~ a2 ~ a2 \finalis
c2 d4 ~ d2 ~ d4 \finalis
r4 e2 d2 ~ d2 ~ d4 \finalis
c4 ~ c2 b,2*3/2 a,4 \finalis
a2 ~ a2*3/2 ~ a2 ~ a4 \finalis
r2*3/2 e2*4/2 d2 ~ \divisioMinima
d4 ~ d2 c2*3/2 bes,2*3/2 a,2 d2 \finalis
r2*6/2 \divisioMinima
r2*6/2 \divisioMinima
r2*6/2 d2*3/2 ~ d2 ~ d4 \finalis
r2*3/2 e2*3/2 \divisioMinima
d2*3/2 ~ d4 ~ d2 ~ d4 \divisioMinima
c2*3/2 e2 d2 \finalis
r2*6/2 \divisioMinima
r2*6/2 \divisioMinima
r2*6/2 \finalis
d2*3/2 ~ d2*4/2 ~ d2 ~ d2 ~ d4 ~ \divisioMinima
d4 a,2 ~ a,2*4/2 d2 ~ d4 \finalis
s2*12/2 \divisioMinima
s4 g2*3/2 f2 e2 d2 ~ d2 ~ d2 \finalis
r2*3/2 d2 c4 ~ c2 ~ c2 ~ c2 ~ c4 ~ \divisioMinima
c2*3/2 d2 ~ d2 ~ d2 ~ d4 \finalis
r4 e2 d2*3/2 ~ d2 ~ d2 ~ d4 \finalis
c2 bes,2*3/2 ~ bes,2 a,4 \finalis
d2 ~ d2 ~ d2*3/2 ~ d2 ~ d4 \divisioMinima
c2*3/2 e2 d2 \finalis
c2 bes,2 ~ bes,4 a,2*3/2 ~ \divisioMinima
a,4 ~ a,2*4/2 ~ a,2*4/2 d2 ~ d4 \finalis
c2*3/2 e2 d4 \finalis
}

voiceLines = {
\voiceLineStyle


s2*221/2
\allowVoiceLineBreak
\voiceLine "up" "down" a2*3/2 a2*1/2


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
  \layout{
  }
  
}
