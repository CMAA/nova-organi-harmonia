\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.141
%(volume.page)

%Proofed 3/14

global = {
 \key g \dorian
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
Glo -- ri -- fi -- cá -- mus te. _ _ _ 
Grá -- ti -- as _ á -- gi -- mus ti -- bi _ _ 
pro -- pter ma -- gnam gló -- ri -- am tu -- _ am. 
Dó -- mi -- ne De -- us, Rex cœ -- lé -- stis, 
De -- us Pa -- ter o -- mní -- po -- tens. 
Dó -- mi -- ne Fi -- li u -- ni -- gé -- ni -- te Je -- su Chri -- ste. _ 
Dó -- mi -- ne De -- us, A -- gnus De -- i, 
Fí -- li -- us Pa -- tris. 
Qui tol -- lis pec -- cá -- ta mun -- di, _ 
mi -- se -- ré -- re no -- bis. 
Qui tol -- lis pec -- cá -- ta mun -- di, _ 
sús -- ci -- pe de -- pre -- ca -- ti -- ó -- nem no -- stram. 
Qui _ _ se -- des ad déx -- te -- ram Pa -- tris, 
mi -- se -- ré -- re no -- bis, 
Quó -- ni -- am tu so -- lus san -- ctus. 
Tu so -- lus Dó -- mi -- nus. 
Tu so -- lus Al -- tís -- si -- mus, _ 
Je -- su Chri -- ste. _ 
Cum San -- cto Spí -- ri -- tu, 
in gló -- ri -- a De -- i Pa -- tris. 
A -- _ men. _ }

chantMusic = {
\tieDown   d'4 f'4 ( g'4) g'4 a'4 g'4 ( f'4) f'4 ( a'4) a'4 g'4 ( a'4 g'4) g'4 \finalis
 c'4 d'4 e'4 f'4 ( g'4) \forceBreak
 g'4 ( f'4) g'4 a'4 f'4 ( g'4) g'4 \divisioMinima
 g'4 g'4 ( f'4) g'4 ( a'4) a'4 g'4 ( a'4 g'4) g'4 \finalis
 g'4 ( \once \tweak #'font-size #-4 f' ) f'4 ( a'4) a'4 ( bes'4 a'4 f'4) g'4 ( a'4 g'4) \finalis
 \forceBreak
 g'4 g'4 g'4 ( f'4) f'4 ( a'4) a'4 ( bes'4 a'4 g'4) g'4 ( a'4 g'4) \finalis
 g'4 g'4 ( f'4) f'4 ( a'4) a'4 ( bes'4 a'4 g'4) g'4 ( a'4 g'4) \finalis
 \forceBreak
 g'4 a'4 bes'4 ( c''4) bes'4 bes'4 ( a'4 g'4 a'4) f'4 ( g'4 a'4) bes'4 ( a'4 g'4) a'4 ( g'4 a'4) bes'4 ( bes'4 a'4) \finalis
 a'4 a'4 ( g'4) f'4 ( g'4 a'4) ~ a'4 ( g'4) \forceBreak
 a'4 g'4 ( a'4) g'4 ( f'4) f'4 ( g'4 a'4) bes'4 ( a'4 g'4) g'4. a'4 ( g'4 a'4) bes'4 ( bes'4 a'4) \divisioMaior
 a'4 c''4 ( d''4) d''4 c''4 ( bes'4 a'4) a'4 ( bes'4 c''4) \forceBreak
 bes'4 ( a'4) g'4 ( a'4) f'4 ( g'4 a'4) bes'4 ( a'4 g'4) g'4 ( a'4 bes'4) ~ bes'4 ( a'4) \finalis
 a'4 a'4 ( c''4) bes'4 bes'4 ( a'4) g'4 ( f'4) \divisioMinima
 g'4 bes'4 g'4 ( a'4) a'4 ( bes'4) ~ bes'4 ( a'4) \divisioMaior
 \forceBreak
 a'4 g'4 ( f'4) g'4 ( a'4 g'4) g'4 a'4 ( bes'4 c''4) bes'4 bes'4 ( a'4) g'4 ( a'4 bes'4) ~ bes'4 ( a'4) \finalis
 a'4 c''4 d''4 d''4 c''4 \forceBreak
 bes'4 a'4 g'4 a'4 ( bes'4) a'4 \divisioMinima
 g'4 ( f'4) g'4 ( a'4) g'4 g'4 ( a'4) bes'4 ( c''4 bes'4) ~ bes'4 ( a'4) \finalis
 a'4 a'4 ( c''4) bes'4 bes'4 ( a'4) g'4 ( f'4) \divisioMinima
 \forceBreak
 g'4 bes'4 g'4 ( a'4) a'4 ( bes'4) ~ bes'4 ( a'4) \divisioMaior
 g'4 ( f'4) g'4 ( a'4) a'4 g'4 ( a'4 g'4) g'4 \finalis
 g'4 f'4 ( g'4 a'4) g'4 g'4 ( f'4) \forceBreak
 g'4 ( a'4) a'4 g'4 ( a'4) g'4 ( a'4) bes'4 ( c''4 bes'4) ~ bes'4 ( a'4) \divisioMaior
 a'4 g'4 ( f'4) g'4 ( a'4) a'4 g'4 ( a'4 g'4) g'4 \finalis
 \forceBreak
 g'4 f'4 ( g'4 a'4) g'4 g'4 ( f'4) g'4 ( a'4) a'4 g'4 ( a'4) g'4 ( a'4) bes'4 ( c''4 bes'4) ~ bes'4 ( a'4) \divisioMaior
 a'4 c''4 d''4 d''4 c''4 \forceBreak
 bes'4 a'4 g'4 a'4 ( bes'4) g'4 g'4 \finalis
 f'4 ( g'4 a'4) bes'4 ( a'4 g'4 f'4) g'4 ( a'4) ~ a'4 ( g'4) a'4 a'4 ( c''4) bes'4 bes'4 ( a'4) g'4 ( a'4) \forceBreak
 g'4 ( f'4) g'4 ( a'4) g'4 \divisioMaior
 g'4 g'4 ( f'4) g'4 ( a'4) a'4 g'4 ( a'4 g'4) g'4 \finalis
 f'4 g'4 ( a'4) a'4 g'4 ( f'4) g'4 bes'4 g'4 ( \once \tweak #'font-size #-4 a' ) a'4 \finalis
 \forceBreak
 g'4 a'4 g'4 a'4 ( g'4) f'4 ( g'4) g'4 \finalis
 g'4 a'4 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) a'4 ( g'4) f'4 ( g'4) g'4 ( a'4) bes'4 ( c''4 bes'4) ~ bes'4 ( a'4) \divisioMaior
 \forceBreak
 g'4 ( f'4) g'4 ( a'4) g'4 g'4 ( a'4) bes'4 ( c''4 bes'4) ~ bes'4 ( a'4) \finalis
 a'4 f'4 ( g'4 a'4 bes'4) a'4 bes'4 g'4 ( a'4) g'4 ( f'4) \divisioMaior
 \forceBreak
 f'4 g'4 ( a'4) a'4 a'4 bes'4 ( a'4 g'4 f'4) f'4 g'4 ( a'4 g'4) g'4 \finalis
 g'4 ( c''4) d''4 ( c''4 bes'4 a'4) a'4 ( c''4 a'4 g'4 f'4) g'4 ( a'4) ~ a'4 ( g'4) \finalis

}

altoMusic = {
r2*14/2 \finalis
c'2*3/2 ~ c'2 d'2 e'2 d'2 e'4 ~ \divisioMinima
e'4 -\tweak Glissando.Y-offset #-0.8 \glissando g'4 f'4 ~ f'2*3/2 d'2*3/2 ~ d'4 \finalis
c'2 d'2 f'2*4/2 d'2*3/2 \finalis
e'2 -\tweak Glissando.Y-offset #-0.8 \glissando g'4 f'4 f'2 ~ f'2*4/2 d'2 ~ d'4 \finalis
r4 c'2 ~ c'2 d'2*4/2 ~ d'2*3/2 \finalis
e'2 f'2 ~ f'4 ~ f'2*4/2 ~ f'2*3/2 ~ f'2*3/2 e'2*3/2 f'2*3/2 \finalis
r4 c'2 ~ c'2 ~ c'2*3/2 ~ c'4 d'2 ~ d'2 ~ d'2*3/2 f'2*3/2 ~ f'2*3/4 ~ f'2*3/2 ~ f'2*3/2 ~ \divisioMaior
f'4 ~ f'2*3/2 d'2*3/2 ~ d'2*3/2 f'2*4/2 c'2*3/2 d'2*3/2 e'2 d'2*3/2 \finalis
r4 f'2*3/2 ~ f'2 -\tweak Glissando.Y-offset #-0.8 \glissando g'4 f'4 \divisioMinima
d'2 ~ d'2*3/2 f'2*3/2 \divisioMaior
e'4 d'2 ~ d'2*4/2 f'2*3/2 ~ f'4 e'2 f'2 ~ f'2*3/2 \finalis
f'2*3/2 ~ f'2 ~ f'2 ~ f'4 ~ f'2*3/2 \divisioMinima
d'2 e'2 d'4 ~ d'2 f'2 ~ f'2*3/2 \finalis
f'4 ~ f'2*3/2 ~ f'2 -\tweak Glissando.Y-offset #-0.8 \glissando g'4 f'4 \divisioMinima
d'2 ~ d'2*3/2 f'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando \divisioMaior
g'4 f'4 e'2*3/2 d'2*3/2 ~ d'4 \finalis
r4 c'2*4/2 ~ c'2 ~ c'2 d'4 ~ d'2 ~ d'2 ~ d'2 ~ d'2*3/2 \divisioMaior
c'4 ~ c'2 ~ c'2 ~ c'4 ~ c'2*3/2 bes4 \finalis
r4 f'2*4/2 e'2 ~ e'2*3/2 d'2*4/2 ~ d'2 f'2*3/2 \divisioMaior
a'2*3/2 g'2 f'2*3/2 ~ f'2 d'2 \finalis
d'2*3/2 f'2*3/2 ~ f'2 e'2*3/2 ~ e'4 f'2*3/2 d'2*4/2 ~ d'2 c'2*3/2 ~ \divisioMaior
c'4 ~ c'2 d'2 ~ d'4 g2*3/2 c'4 \finalis
r4 e'2*3/2 ~ e'2 -\tweak Glissando.Y-offset #-0.8 \glissando g'4 bes'4 e'2 ~ e'4 \finalis
r4 c'2 ~ c'2 ~ c'2 ~ c'4 \finalis
d'4 ~ d'2 e'2 f'2*4/2 e'2 f'2 e'2 f'4 -\tweak Glissando.Y-offset #-0.8 \glissando \divisioMaior
g'4 f'4 ~ f'2 ~ f'4 e'2 f'2 ~ f'2*3/2 \finalis
r4 d'2 ~ d'2 ~ d'2 ~ d'2 c'2 ~ \divisioMaior
c'4 ~ c'2 ~ c'2 f'2 ~ f'2*3/2 ~ f'2*3/2 e'4 \finalis
g'2 f'2*4/2 ~ f'2 ~ f'2 ~ f'2 d'2 ~ d'4 \finalis
}

tenorMusic = {
r2*14/2 \finalis
r2*3/2 a2 bes2 c'2 ~ c'2 ~ c'4 ~ \divisioMinima
c'4 ~ c'2 ~ c'2*3/2 ~ c'2*3/2 bes4 \finalis
a2 ~ a2 c'2*4/2 bes2*3/2 \finalis
c'2 ~ c'2 ~ c'2 ~ c'2*4/2 ~ c'2 bes4 \finalis
r4 e2 f2 ~ f2*4/2 g2*3/2 \finalis
c'2 bes2 ~ bes4 c'2*4/2 ~ c'2*3/2 d'2*3/2 c'2*3/2 d'2*3/2 \finalis
r4 f2 ~ f2 e2*3/2 ~ e4 d2 g2 a2*3/2 f2*3/2 bes2*3/4 c'2*3/2 d'2*3/2 \divisioMaior
c'4 a2*3/2 \shiftRight g2*3/2 f2*3/2 bes2*4/2 a2*3/2 \shiftRight g2*3/2 ~ g2 f2*3/2 \finalis
r4 c'2*3/2 ~ c'2 ~ c'2 ~ \divisioMinima
c'2 bes2*3/2 c'2*3/2 ~ \divisioMaior
c'4 bes2 ~ bes2*4/2 c'2*3/2 d'4 ~ d'2 ~ d'2 c'2*3/2 \finalis
c'2*3/2 a2 bes2 ~ bes4 c'2*3/2 ~ \divisioMinima
c'2 ~ c'2 ~ c'4 bes2 ~ bes2 d'2*3/2 \finalis
r4 e'2*3/2 d'2 c'2 \divisioMinima
bes2 ~ bes2*3/2 c'2*3/2 ~ \divisioMaior
c'2 ~ c'2*3/2 ~ c'2*3/2 bes4 \finalis
r4 f2*4/2 ~ f2 e2 f4 g2 ~ g2 ~ g2 f2*3/2 \divisioMaior
e4 f2 ~ f2 e4 d2*3/2 ~ d4 \finalis
e'4 d'2*4/2 \shiftRight c'2 ~ c'2*3/2 bes2*4/2 ~ bes2 c'2*3/2 \divisioMaior
f'2*3/2 e'2 d'2*3/2 c'2 ~ c'4 bes4 \finalis
bes2*3/2 ~ bes2*3/2 c'2 ~ c'2*3/2 ~ c'4 ~ c'2*3/2 ~ c'2*4/2 bes2 g2*3/2 \divisioMaior
a4 ~ a2 g2 f4 ~ f2*3/2 e4 \finalis
c'2*4/2 ~ c'2 d'2 ~ d'2 c'4 \finalis
r4 e2 ~ e2 f2 e4 \finalis
bes4 c'2 ~ c'2 ~ c'2*4/2 ~ c'2 d'2 ~ d'2 ~ d'4 ~ \divisioMaior
d'2*4/2 c'4 ~ c'2 d'2 c'2*3/2 \finalis
r4 a2 g2 f2 e2 f2 ~ \divisioMaior
f4 e2 f2 f2 bes2*3/2 g2*3/2 c'4 \finalis
c'2 a2*4/2 d'2 c'2 ~ c'2 ~ c'2 bes4 \finalis
}

bassMusic = {
r2*14/2 \finalis
r2*5/2 g2 \shiftRight c'2 r2*3/2 \divisioMinima
r4 a2 f2*3/2 g2*3/2 ~ g4 \finalis
d2 ~ d2 ~ d2*4/2 g2*3/2 \finalis
r2 a2 ~ a2 f2*4/2 g2 ~ g4 \finalis
r4 c2 a,2 d2*4/2 bes,2*3/2 \finalis
c2 d2 f4 ~ f2*4/2 a2*3/2 g2*3/2 d2*3/2 ~ d2*3/2 \finalis
r2*3/2 c2 ~ c2*3/2 a,4 bes,2 ~ bes,2 d2*3/2 ~ d2*3/2 ~ d2*3/4 ~ d2*3/2 ~ d2*3/2 \divisioMaior
f4 ~ f2*3/2 g2*3/2 d2*3/2 ~ d2*4/2 g2*3/2 ~ g2*3/2 c2 d2*3/2 \finalis
f4 ~ f2*3/2 g2 a2 \divisioMinima
g2 ~ g2*3/2 f2*3/2 \divisioMaior
a4 ~ a2 g2*4/2 d2*3/2 ~ d4 ~ d2 ~ d2 f2*3/2 \finalis
d2*3/2 ~ d2 ~ d2 f4 ~ f2*3/2 \divisioMinima
c2 ~ c2 g4 ~ g2 d2 ~ d2*3/2 \finalis
r2*6/2 a2 \divisioMinima
g2 f2*3/2 ~ f2*3/2 \divisioMaior
a2 \shiftRight c'2*3/2 g2*3/2 ~ g4 \finalis
r4 a,2*4/2 c2 ~ c2 bes,4 ~ bes,2 a,2 g,2 d2*3/2 \divisioMaior
a,4 ~ a,2 c2 ~ c4 g,2*3/2 ~ g,4 \finalis
c'4 ~ c'2*4/2 ~ c'2 a2*3/2 ~ a2*4/2 g2 f2*3/2 ~ \divisioMaior
f2*3/2 ~ f2 ~ f2*3/2 ~ f2 g2 \finalis
bes,2*3/2 d2*3/2 ~ d2 c2*3/2 f4 ~ f2*3/2 g2*4/2 ~ g2 e2*3/2 ~ \divisioMaior
e4 d2 bes,2 ~ bes,4 c2*3/2 ~ c4 \finalis
a2*4/2 \shiftRight c'2 bes2 a2 ~ a4 \finalis
r4 c2 a,2 ~ a,2 c4 \finalis
g4 ~ g2 ~ g2 f2*4/2 \shiftRight c'2 r2*5/2 \divisioMaior
bes2*4/2 \shiftRight c'4 r2 bes2 f2*3/2 \finalis
d4 ~ d2 ~ d2 ~ d2 a,2 ~ a,2 \divisioMaior
c4 ~ c2 \shiftRight f2 d2 ~ d2*3/2 c2*3/2 ~ c4 \finalis
e2 d2*4/2 ~ d2 ~ d2 a2 g2 ~ g4 \finalis
}

voiceLines = {
\voiceLineStyle


s2*543/4
\allowVoiceLineBreak
\voiceLine "up" "down" f'2*3/2 f'2*1/2


s2*30/2
\allowVoiceLineBreak
\voiceLine "down" "down" g2*2/2 g2*1/2


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
  \layout{
  }
  
}
