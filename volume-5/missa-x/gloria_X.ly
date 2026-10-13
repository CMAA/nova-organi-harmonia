\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.59
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
Qui tol -- lis pec -- cá -- ta mun -- di, mi -- se -- ré -- re no -- bis. 
Qui tol -- lis pec -- cá -- ta mun -- di, sús -- _ ci -- pe de -- pre -- ca -- ti -- ó -- nem no -- stram. 
Qui se -- des ad déx -- te -- ram Pa -- tris, mi -- se -- ré -- re no -- bis. 
Quó -- ni -- am tu so -- lus san -- ctus. 
Tu so -- lus Dó -- mi -- nus. 
Tu so -- lus Al -- tís -- si -- mus, Je -- su Chri -- ste. 
Cum San -- cto Spí -- ri -- tu, in gló -- ri -- a De -- i Pa -- tris. 
A -- _ _ _ men. }

chantMusic = {
\tieDown   c''4 a'4 ( g'4) g'4 e'4 f'4 g'4 a'4 ( b'4) a'4 ( g'4) g'4 \finalis
 e'4 f'4 g'4 a'4 ( b'4 a'4) g'4 \forceBreak
 g'4 ( e'4) f'4 e'4 d'4 \divisioMinima
 g'4 g'4 f'4 a'4 a'4 g'4 \finalis
 c''4 a'4 c''4 g'4 \finalis
 g'4 f'4 \forceBreak
 e'4 f'4 g'4 g'4 \finalis
 g'4 f'4 e'4 f'4 ( g'4) g'4 \finalis
 g'4 f'4 e'4 f'4 g'4 g'4 \finalis
 \forceBreak
 g'4 f'4 ( e'4) d'4 e'4 d'4 e'4 c'4 c'4 \divisioMinima
 g'4 a'4 ( b'4) c''4 ( b'4) a'4 b'4 ( c''4) a'4 ( g'4) f'4 ( \once \tweak #'font-size #-4 g' ) g'4 g'4 \finalis
 \forceBreak
 g'4 f'4 ( e'4) d'4 e'4 d'4 ( e'4 c'4) \divisioMinima
 f'4 ( e'4) f'4 a'4 g'4 \divisioMaior
 g'4 a'4 ( b'4) b'4 b'4 ( a'4) c''4 ( \once \tweak #'font-size #-4 b' ) \forceBreak
 a'4 ( g'4) f'4 ( g'4) g'4 \finalis
 g'4 a'4 ( b'4) b'4 b'4 b'4 a'4 c''4 b'4 a'4 g'4 \divisioMinima
 e'4 f'4 g'4 g'4 \finalis
 \forceBreak
 g'4 f'4 ( e'4) d'4 e'4 d'4 \divisioMinima
 e'4 d'4 ( e'4) c'4 c'4 \divisioMinima
 f'4 e'4 f'4 a'4 g'4 \finalis
 g'4 d'4 ( \once \tweak #'font-size #-4 g' ) g'4 g'4 \forceBreak
 a'4 g'4 g'4 ( f'4 a'4) a'4 \divisioMinima
 a'4 a'4 ( g'4) f'4 ( e'4) f'4 ( g'4 f'4) g'4 g'4 \finalis
 g'4 d'4 ( \once \tweak #'font-size #-4 g' ) g'4 g'4 \forceBreak
 a'4 g'4 g'4 ( f'4 a'4) a'4 \divisioMinima
 a'4 ( b'4) c''4 ( b'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 f'4 ( \once \tweak #'font-size #-4 g' ) g'4 g'4 \finalis
 \forceBreak
 g'4 ( c''4 b'4) c''4 ( d''4) d''4 b'4 d''4 c''4 b'4 a'4 g'4 \divisioMinima
 g'4 a'4 e'4 f'4 g'4 g'4 \finalis
 \forceBreak
 g'4 ( a'4) g'4 ( f'4) g'4 a'4 ( c''4) c''4 ( b'4) a'4 c''4 ( \once \tweak #'font-size #-4 d'' ) d''4 \finalis
 b'4 d''4 c''4 c''4 ( b'4) a'4 ( c''4) c''4 ( g'4) \finalis
 \forceBreak
 g'4 a'4 ( b'4) b'4 b'4 ( \once \tweak #'font-size #-4 a' ) c''4 a'4 g'4 ( a'4 g'4) \divisioMinima
 e'4 f'4 g'4 g'4 \finalis
 g'4 a'4 g'4 a'4 g'4 ( f'4) f'4 \divisioMinima
 \forceBreak
 a'4 ( \once \tweak #'font-size #-4 c'' ) c''4 ( c''4 b'4) a'4 ( g'4) g'4 g'4 a'4 e'4 ( f'4 g'4) g'4 \finalis
 g'4 ( e'4) f'4 ( e'4 d'4.) g'4 a'4 ( b'4 a'4 a'4) a'4 ( g'4) \finalis

}

altoMusic = {
r2*12/2 \finalis
e'2 ~ e'4 ~ e'2*4/2 c'2 d'2*3/2 ~ \divisioMinima
d'2*4/2 ~ d'2 \finalis
r4 e'2 ~ e'4 \finalis
s2*6/2 \finalis
r2*3/2 d'2 ~ d'4 \finalis
e'2 ~ e'4 c'2 d'4 \finalis
c'2*4/2 b2*3/2 c'4 c'4 \divisioMinima
g'2*3/2 f'2*3/2 e'2*4/2 c'2 d'2 \finalis
c'2*4/2 ~ c'4 -\tweak Glissando.Y-offset #-0.8 \glissando d'4 e'4 c'4 ~ \divisioMinima
c'2*3/2 d'2 \divisioMaior
g'2*3/2 ~ g'4 e'2*4/2 ~ e'2 c'2 d'4 \finalis
e'2*4/2 ~ e'2*4/2 ~ e'2*3/2 ~ \divisioMinima
e'4 f'4 d'2 \finalis
c'2*4/2 ~ c'2 ~ \divisioMinima
c'2*3/2 ~ c'4 c'4 ~ \divisioMinima
c'2*3/2 d'2 \finalis
r4 d'2*4/2 ~ d'2 -\tweak Glissando.Y-offset #-0.8 \glissando g'4 r2*3/2 \divisioMinima
r4 f'2 ~ f'4 r4 d'2*3/2 ~ d'2 \finalis
r4 d'2*4/2 ~ d'2 -\tweak Glissando.Y-offset #-0.8 \glissando g'4 r2*3/2 \divisioMinima
f'2*6/2 ~ f'2*4/2 ~ f'4 c'2 d'2 \finalis
g'2*3/2 ~ g'2 ~ g'2 ~ g'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando a'4 g'4 \divisioMinima
r2*4/2 d'2 \finalis
r2*5/2 e'2 g'2*3/2 ~ g'2 ~ g'4 \finalis
r4 g'2 e'2*4/2 g'2 \finalis
r4 e'2*3/2 ~ e'2 g'2 ~ g'4 r2 \divisioMinima
r2 d'2 \finalis
r4 e'2 ~ e'4 -\tweak Glissando.Y-offset #-0.8 \glissando g'4 f'4 f'4 ~ \divisioMinima
f'2 g'2*6/2 ~ g'4 r4 c'2*3/2 d'4 \finalis
c'2 ~ c'2*9/4 ~ c'2 ~ c'2 d'2 \finalis
}

tenorMusic = {
r2*12/2 \finalis
c'2 b4 a2*4/2 ~ a2 g2*3/2 \divisioMinima
a2*4/2 c'4 b4 \finalis
r4 c'2 ~ c'4 \finalis
c'2 ~ c'2 ~ c'4 b4 \finalis
c'4 ~ c'2 ~ c'2 b4 \finalis
c'2*3/2 a2 b4 \finalis
a2*4/2 g2*3/2 ~ g2 \divisioMinima
c'2*3/2 ~ c'2*3/2 ~ c'2*4/2 a2 ~ a4 b4 \finalis
e2*4/2 f4 g2*3/2 \divisioMinima
a2*3/2 b2 \divisioMaior
c'2*3/2 ~ c'4 ~ c'2*4/2 ~ c'2 a2 b4 \finalis
c'2*4/2 ~ c'2*4/2 d'2*3/2 \divisioMinima
c'2 ~ c'4 b4 \finalis
e2*4/2 f2 \divisioMinima
g2*3/2 a2 ~ \divisioMinima
a2*3/2 c'4 b4 \finalis
r4 a2*4/2 b2 c'2*4/2 ~ \divisioMinima
c'4 ~ c'2 ~ c'2 ~ c'2*3/2 b2 \finalis
r4 a2*4/2 b2 c'2*4/2 ~ \divisioMinima
c'2*6/2 ~ c'2*4/2 ~ c'4 a2 b2 \finalis
c'2*3/2 a2 b2 c'2*3/2 b2 ~ \divisioMinima
b2 c'2 ~ c'4 b4 \finalis
e'2 c'2*3/2 ~ c'2 ~ c'2*3/2 ~ c'2 b4 \finalis
r4 b2 c'2*4/2 ~ c'2 \finalis
c'4 ~ c'2*3/2 ~ c'2 ~ c'2 b2*3/2 \divisioMinima
c'2 ~ c'4 b4 \finalis
c'4 ~ c'2 ~ c'4 ~ c'2*3/2 ~ \divisioMinima
c'2 ~ c'2*6/2 ~ c'2 a2*3/2 b4 \finalis
g2 ~ g2*9/4 c'2 ~ c'2 ~ c'4 b4 \finalis
}

bassMusic = {
r2*12/2 \finalis
c2 ~ c4 ~ c2*4/2 d2 ~ d2*3/2 ~ \divisioMinima
d2*4/2 g2 \finalis
a4 ~ a2 \shiftRight c'4 \finalis
e2 a2 g2 \finalis
e4 a2 g2 ~ g4 \finalis
r2*3/2 g2 ~ g4 \finalis
r2*4/2 r2*3/2 e2 ~ \divisioMinima
e2*3/2 d2*3/2 f2*4/2 g2 ~ g2 \finalis
c2*4/2 ~ c4 ~ c2*3/2 \divisioMinima
d2*3/2 e2 ~ \divisioMaior
e2*3/2 a4 ~ a2*4/2 f2 g2 ~ g4 \finalis
r2*4/2 a2*4/2 e2*3/2 \divisioMinima
a2 g2 \finalis
c2*4/2 ~ c2 ~ \divisioMinima
c2*3/2 ~ c2 \divisioMinima
d2*3/2 g2 \finalis
g4 ~ g2*4/2 ~ g2 a2*4/2 ~ \divisioMinima
a4 f2 d2 g2*3/2 ~ g2 \finalis
g4 ~ g2*4/2 ~ g2 a2*4/2 \divisioMinima
d2*6/2 f2*4/2 g4 ~ g2 ~ g2 \finalis
e2*3/2 g2 ~ g2 ~ g2*3/2 ~ g2 \divisioMinima
e2 a2 g2 \finalis
c'2 a2*3/2 ~ a2 e2*3/2 g2 ~ g4 \finalis
g4 ~ g2 a2*4/2 e2 \finalis
r2*4/2 a2 e2 ~ e2*3/2 \divisioMinima
a2 g2 \finalis
r4 r2 a4 ~ a2*3/2 \divisioMinima
d2 e2*6/2 f2 g2*3/2 ~ g4 \finalis
c2 d2*9/4 e2 f2 g2 \finalis
}

voiceLines = {
\voiceLineStyle


s2*46/2
\allowVoiceLineBreak
\voiceLine "down" "up" c'2*3/2 c'2*1/2


s2*17/2
\allowVoiceLineBreak
\voiceLine "down" "up" c'2*4/2 c'2*1/2


s2*24/2
\allowVoiceLineBreak
\voiceLine "down" "up" c'2*2/2 c'2*1/2


s2*28/2
\allowVoiceLineBreak
\voiceLine "up" "down" c'2*3/2 c'2*1/2


s2*43/2
\allowVoiceLineBreak
\voiceLine "down" "up" c'2*1/2 c'2*1/2


s2*21/2
\allowVoiceLineBreak
\voiceLine "down" "down" c'2*2/2 c'2*1/2


s2*49/2
\allowVoiceLineBreak
\voiceLine "down" "up" c'2*2/2 c'2*1/2


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
