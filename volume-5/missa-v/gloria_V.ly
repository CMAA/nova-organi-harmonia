\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.30
%(volume.page)

%Proofed 3/14

global = {
 \key g \mixolydian
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
Dó -- mi -- ne De -- us, Rex cœ -- lé -- stis, 
De -- us Pa -- ter o -- mní -- po -- tens. 
Dó -- mi -- ne Fi -- li u -- ni -- gé -- ni -- te Je -- su Chri -- ste. 
Dó -- mi -- ne De -- us, A -- gnus De -- i, Fí -- li -- us Pa -- tris. 
Qui tol -- lis pec -- cá -- ta mun -- di, mi -- se -- _ ré -- re no -- bis. 
Qui tol -- lis pec -- cá -- ta mun -- di, sús -- ci -- pe de -- pre -- ca -- ti -- ó -- nem no -- stram. 
Qui se -- des ad déx -- te -- ram Pa -- tris, mi -- se -- _ ré -- re no -- bis. 
Quó -- ni -- am tu so -- lus san -- ctus. 
Tu so -- lus Dó -- mi -- nus. 
Tu so -- lus Al -- tís -- si -- mus, Je -- su Chri -- ste. 
Cum San -- cto Spí -- ri -- tu, in gló -- ri -- a De -- i Pa -- tris. 
A -- _ _ _ _ men. }

chantMusic = {
\tieDown   g'4 f'4 ( e'4 d'4) d'4 d'4 e'4 ( f'4 g'4) g'4 ( \once \tweak #'font-size #-4 f' ) a'4 g'4 g'4 \finalis
 g'4 b'4 c''4 ( \once \tweak #'font-size #-4 d'' ) \forceBreak
 d''4 b'4 d''4 ( c''4 b'4 a'4 g'4) a'4 ( b'4) a'4 ( g'4) g'4 \divisioMinima
 c''4 a'4 ( g'4) a'4 e'4 ( d'4 g'4) a'4 ( g'4) g'4 \finalis
 \forceBreak
 c''4 g'4 a'4 ( g'4) e'4 ( f'4 e'4 d'4) \finalis
 d'4 e'4 ( f'4 g'4) g'4 f'4 a'4 ( a'4) g'4 \finalis
 \forceBreak
 g'4 b'4 c''4 ( d''4) d''4 b'4 ( a'4 b'4) \finalis
 d''4 d''4 c''4 ( b'4) a'4 ( g'4) a'4 ( b'4 a'4) g'4 \finalis
 \forceBreak
 c''4 ( a'4 g'4) a'4 ( g'4) e'4 ( f'4 e'4 d'4) \divisioMinima
 d'4 ( e'4 f'4 g'4) g'4 f'4 a'4 g'4 \divisioMinima
 g'4 b'4 ( c''4 d''4) d''4 b'4 ( a'4 b'4) \forceBreak
 d''4 ( c''4 b'4 a'4 g'4) a'4 a'4 ( b'4 a'4) g'4 g'4 \finalis
 c''4 ( a'4 g'4) a'4 ( g'4) e'4 ( f'4 e'4 d'4) d'4 e'4 ( f'4 g'4) \divisioMinima
 \forceBreak
 g'4 f'4 a'4 ( a'4) g'4 \divisioMaior
 g'4 b'4 ( c''4 d''4) d''4 b'4 ( a'4 b'4) d''4 ( c''4 b'4 a'4 g'4) a'4 ( b'4) a'4 ( g'4) g'4 \finalis
 \forceBreak
 c''4 ( a'4 g'4) a'4 ( g'4) e'4 ( f'4 e'4 d'4) \divisioMinima
 d'4 e'4 ( f'4 g'4) g'4 g'4 g'4 g'4 g'4 \divisioMinima
 g'4 ( f'4) a'4 g'4 g'4 \finalis
 \forceBreak
 g'4 b'4 c''4 ( d''4) d''4 b'4 ( a'4 b'4) \divisioMinima
 d''4 ( c''4 b'4 a'4 g'4) a'4 ( b'4 a'4) g'4 g'4 \divisioMinima
 c''4 a'4 ( g'4) a'4 ( g'4) e'4 ( f'4 e'4 d'4) d'4 \finalis
 \forceBreak
 d'4 e'4 ( f'4 g'4) g'4 g'4 g'4 f'4 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 \divisioMinima
 g'4 b'4 ( c''4) d''4 ( b'4) d''4 ( c''4 b'4 a'4 g'4) a'4 ( b'4 a'4) \forceBreak
 g'4 g'4 \finalis
 c''4 ( a'4 g'4) a'4 ( g'4) e'4 ( f'4 e'4 d'4) \divisioMinima
 d'4 e'4 ( f'4 g'4) f'4 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 \divisioMinima
 g'4 b'4 c''4 ( d''4) \forceBreak
 d''4 b'4 ( a'4 b'4) d''4 c''4 ( b'4 a'4 g'4) a'4 a'4 ( b'4 a'4) g'4 g'4 \finalis
 c''4 ( a'4 g'4) a'4 ( g'4) e'4 ( f'4 e'4 d'4) \divisioMinima
 d'4 \forceBreak
 e'4 ( f'4 g'4) g'4 f'4 a'4 g'4 \divisioMinima
 g'4 b'4 ( c''4) d''4 ( b'4) d''4 ( c''4 b'4 a'4 g'4) a'4 ( b'4 a'4) g'4 g'4 \finalis
 \forceBreak
 c''4 ( a'4 g'4) a'4 ( g'4)
 e'4 ( f'4 e'4 d'4) d'4 e'4 ( f'4 g'4) f'4 g'4 ( g'4) f'4 \finalis
 d'4 e'4 ( f'4 g'4) f'4 a'4 f'4 ( g'4) g'4 \finalis
 g'4 b'4 ( c''4 d''4) b'4 ( a'4 b'4) \forceBreak
 d''4 ( c''4 b'4 a'4 g'4) a'4 ( b'4) a'4 ( g'4) g'4 \divisioMinima
 c''4 ( a'4 g'4) a'4 ( g'4) e'4 ( f'4 e'4 d'4) d'4 \finalis
 d'4 e'4 ( f'4 g'4) f'4 a'4 f'4 ( g'4) g'4 \divisioMinima
 \forceBreak
 g'4 b'4 c''4 d''4 d''4 b'4 ( a'4 b'4) d''4 ( c''4 b'4 a'4 g'4) g'4 \finalis
 c''4 ( a'4 g'4) a'4. e'4 ( f'4 e'4 d'4.) e'4 ( f'4 g'4) a'4 ( f'4 g'4) g'4 \finalis

}

altoMusic = {
r2*14/2 \finalis
g'2 ~ g'2 ~ g'2 e'2*3/2 d'2 e'2*4/2 d'4 \divisioMinima
e'4 d'2 c'4 e'4 d'4 ~ d'4 ~ d'2 ~ d'4 \finalis
c'4 d'4 c'2 a2*4/2 \finalis
r4 e'2*3/2 d'2 ~ d'2*3/2 \finalis
d'2 ~ d'2*3/2 ~ d'2*3/2 \finalis
f'2 e'2 ~ e'2 ~ e'2*3/2 ~ e'4 \finalis
c'2*3/2 ~ c'2 a2*4/2 ~ \divisioMinima
a2*4/2 c'2 d'2 ~ \divisioMinima
d'4 g'2*3/2 f'4 ~ f'2*3/2 e'2*3/2 d'2*3/2 c'2*3/2 ~ c'4 b4 \finalis
e'2*3/2 d'2 c'2*4/2 b4 c'2*3/2 \divisioMinima
d'2 ~ d'2 ~ d'4 \divisioMaior
g'4 ~ g'2*3/2 f'4 ~ f'2*3/2 e'2*5/2 d'2 ~ d'2 ~ d'4 \finalis
e'2*3/2 d'2 c'2 a2 ~ \divisioMinima
a4 c'2*3/2 ~ c'2 ~ c'2*3/2 ~ \divisioMinima
c'2 ~ c'4 ~ c'4 b4 \finalis
g'2 ~ g'2 ~ g'4 ~ g'2*3/2 \divisioMinima
d'2*5/2 e'2*3/2 d'2 \divisioMinima
c'2*3/2 b2 a2*4/2 ~ a4 \finalis
a4 ~ a2*3/2 c'2 ~ c'2 d'2*3/2 ~ \divisioMinima
d'4 ~ d'2*4/2 ~ d'2*5/2 c'2*3/2 ~ c'4 b4 \finalis
e'2*3/2 d'2 c'2*4/2 \divisioMinima
b4 c'2*4/2 d'2 ~ d'4 \divisioMinima
g'2 ~ g'2 f'4 ~ f'2*3/2 ~ f'4 g'2*4/2 f'4 d'2*3/2 ~ d'2 \finalis
c'2*3/2 ~ c'2 a2*4/2 ~ \divisioMinima
a4 ~ a2*3/2 c'2 d'2 ~ \divisioMinima
d'4 ~ d'2*4/2 e'2*3/2 d'2 c'2*3/2 ~ c'4 b4 \finalis
e'2*3/2 d'2 c'2*4/2 b4 c'2*4/2 d'2*3/2 \finalis
a4 c'2*3/2 ~ c'4 ~ c'4 ~ c'2 b4 \finalis
g'4 ~ g'2*3/2 ~ g'2*3/2 e'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando a'4 g'4 e'2 d'2 ~ d'4 \divisioMinima
c'2*3/2 b2 a2*4/2 ~ a4 \finalis
a4 c'2*3/2 ~ c'4 ~ c'4 ~ c'2 b4 \divisioMinima
d'4 ~ d'2*3/2 f'4 ~ f'2*3/2 e'2*5/2 d'4 \finalis
c'2*3/2 ~ c'2*3/4 ~ c'2*3/2 a2*3/4 c'2*3/2 ~ c'2*3/2 b4 \finalis
}

tenorMusic = {
r2*14/2 \finalis
r2 a2 b2 \shiftRight a2*3/2 b2 c'2*4/2 b4 \divisioMinima
c'4 b2 a4 b2 ~ b4 c'2 b4 \finalis
e4 ~ e4 ~ e2 f2*4/2 \finalis
r4 c'2*3/2 ~ c'2 b2*3/2 \finalis
b2 a2*3/2 g2*3/2 \finalis
a2 g2 b2 d'2*3/2 e'4 \finalis
e2*3/2 g2 ~ g2*4/2 \divisioMinima
f2*4/2 d2 ~ d2 \divisioMinima
g4 ~ g2*3/2 a4 f2*3/2 g2*3/2 ~ g2*3/2 ~ g2*3/2 d2 \finalis
c'2*3/2 b2 a2*4/2 ~ a4 ~ a2*3/2 ~ \divisioMinima
a2 c'2 b4 ~ \divisioMaior
b4 g2*3/2 a4 f2*3/2 g2*5/2 ~ g2 a2 b4 \finalis
g2*3/2 ~ g2 ~ g2 ~ g2 \divisioMinima
f4 g2*3/2 f2 e2*3/2 \divisioMinima
d2 ~ d4 ~ d2 \finalis
g2 a2 b4 d'2*3/2 \divisioMinima
b2*5/2 c'2*3/2 ~ c'4 b4 \divisioMinima
a2*3/2 \shiftRight g2 ~ g2*4/2 f4 \finalis
f4 e2*3/2 ~ e2 d2 ~ d2 ~ d4 \divisioMinima
b4 a2*4/2 g2*5/2 ~ g2*3/2 d2 \finalis
c'2*3/2 b2 a2*4/2 ~ \divisioMinima
a4 ~ a2*4/2 c'2 b4 ~ \divisioMinima
b2 a2 ~ a4 d'2*3/2 c'4 ~ c'2*4/2 ~ c'4 ~ c'2*3/2 ~ c'4 b4 \finalis
e2*3/2 g2 ~ g2*4/2 \divisioMinima
f4 e2*3/2 d2 ~ d2 ~ \divisioMinima
d4 g2*4/2 ~ g2*3/2 ~ g2 ~ g2*3/2 d2 \finalis
c'2*3/2 b2 a2*4/2 ~ a4 ~ a2*4/2 b2*3/2 \finalis
f4 g2*3/2 d4 ~ d4 c2 d4 \finalis
r2*4/2 d'2*3/2 ~ d'2*3/2 ~ d'2 c'2 ~ c'2 b4 \divisioMinima
a2*3/2 e2 ~ e2*4/2 f4 \finalis
f4 g2*3/2 d4 ~ d4 c2 d4 ~ \divisioMinima
d4 g2*3/2 a4 f2*3/2 g2*5/2 ~ g4 \finalis
e2*3/2 d2*3/4 g2*3/2 f2*3/4 e2*3/2 d2*3/2 ~ d4 \finalis
}

bassMusic = {
r2*14/2 \finalis
g2 ~ g2 ~ g2 a2*3/2 ~ a2 ~ a2*4/2 r4 \divisioMinima
r2*4/2 g2 ~ g4 ~ g2 ~ g4 \finalis
a,4 b,4 c2 d2*4/2 \finalis
r4 r2*8/2 \finalis
g2 ~ g2*3/2 ~ \shiftRight g2*3/2 \finalis
d2 e2 ~ e2 ~ e2*3/2 ~ e4 \finalis
a,2*3/2 ~ a,2 d2*4/2 ~ \divisioMinima
d2*4/2 c2 b,2 ~ \divisioMinima
b,4 e2*3/2 d4 ~ d2*3/2 c2*3/2 b,2*3/2 g,2*3/2 ~ g,2 \finalis
r2*13/2 \divisioMinima
d2 ~ d2 g4 \divisioMaior
e4 ~ e2*3/2 d4 ~ d2*3/2 c2*5/2 b,2 d2 g4 \finalis
c2*3/2 b,2 a,2 d2 ~ \divisioMinima
d4 c2*3/2 ~ c2 ~ c2*3/2 \divisioMinima
a,2 f,4 g,2 \finalis
r2*5/2 g2*3/2 ~ \divisioMinima
g2*5/2 ~ g2*3/2 ~ g2 ~ \divisioMinima
g2*3/2 ~ g2 d2*4/2 ~ d4 \finalis
d4 ~ d2*3/2 c2 ~ c2 ~ c2 b,4 ~ \divisioMinima
b,4 ~ b,2*4/2 ~ b,2*5/2 g,2*3/2 ~ g,2 \finalis
r2*9/2 \divisioMinima
r2*8/2 \divisioMinima
e2 ~ e2 d4 ~ d2*3/2 ~ d4 e2*4/2 f4 ~ f2*3/2 g2 \finalis
a,2*3/2 ~ a,2 d2*4/2 ~ \divisioMinima
d4 ~ d2*3/2 c2 b,2 ~ \divisioMinima
b,4 ~ b,2*4/2 c2*3/2 b,2 g,2*3/2 ~ g,2 \finalis
r2*17/2 \finalis
d4 c2*3/2 ~ c4 a,4 ~ a,2 g,4 \finalis
r4 g2*3/2 ~ g2*3/2 a2*3/2 b2 r2*5/2 \divisioMinima
r2*5/2 d2*4/2 ~ d4 \finalis
d4 c2*3/2 ~ c4 a,4 ~ a,2 g,4 \divisioMinima
b,4 ~ b,2*3/2 d4 ~ d2*3/2 c2*5/2 b,4 \finalis
c2*3/2 ~ c2*3/4 ~ c2*3/2 d2*3/4 a,2*3/2 ~ a,2*3/2 g,4 \finalis
}

voiceLines = {
\voiceLineStyle


s2*84/2
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" d2*4/2 d2*1/2


s2*181/2
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" d2*3/2 d2*1/2


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
      >>
    >>
    \context Lyrics {
      \lyricsto chant {
      \chantText
    }
    }
  >>
}
