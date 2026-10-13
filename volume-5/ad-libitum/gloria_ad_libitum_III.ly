\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.144
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
Et in ter -- ra pax ho -- mí -- ni -- bus bo -- næ _ vo -- lun -- tá -- _ tis. 
Lau -- dá -- mus te. _ _ _ 
Be -- ne -- dí -- ci -- mus te. _ _ _ 
Ad -- o -- rá -- mus te. _ _ _ 
Glo -- ri -- fi -- cá -- mus te. _ _ _ 
Grá -- ti -- as á -- gi -- mus ti -- bi 
pro -- pter ma -- gnam gló -- ri -- am tu -- _ am. 
Dó -- mi -- ne De -- us, Rex cœ -- lé -- stis, 
De -- us Pa -- _ ter o -- mní -- _ _ po -- tens. 
Dó -- _ mi -- ne Fi -- li u -- ni -- gé -- ni -- te Je -- su Chri -- ste. 
Dó -- _ mi -- ne De -- us, A -- gnus De -- i, Fí -- li -- us Pa -- tris. 
Qui tol -- lis pec -- cá -- ta mun -- di, 
mi -- se -- ré -- re no -- bis. 
Qui tol -- lis pec -- cá -- ta mun -- di, 
sús -- ci -- pe de -- pre -- ca -- ti -- ó -- _ nem no -- stram. 
Qui se -- _ des ad déx -- te -- ram _ Pa -- tris, 
mi -- se -- ré -- re no -- bis, 
Quó -- ni -- am tu so -- lus san -- ctus. 
Tu so -- lus Dó -- mi -- nus. 
Tu so -- lus _ Al -- tís -- si -- mus, Je -- su Chri -- ste. 
Cum San -- _ cto Spí -- _ _ ri -- tu, 
in gló -- _ _ ri -- a De -- i Pa -- _ _ _ tris. _ _ 
A -- _ _ men. }

chantMusic = {
\tieDown   g'4 ( a'4) a'4 ( g'4) f'4 ( g'4) bes'4 ( a'4) bes'4 ( c''4) c''4 ( bes'4 a'4) g'4 ( a'4) f'4 ( g'4) g'4 \finalis
 g'4 g'4 ( \quil a' bes'4) a'4 ( \once \tweak #'font-size #-4 g' ) g'4 \forceBreak
 a'4 ( c''4 bes'4 a'4) bes'4 ( c''4) a'4 ( bes'4) a'4 ( g'4) g'4 \divisioMinima
 g'4 g'4 ( f'4) ~ f'4 ( d'4) f'4 ( e'4) f'4 ( \once \tweak #'font-size #-4 g' ) g'4. f'4 ( g'4) bes'4 ( a'4 g'4 f'4 g'4) g'4 \finalis \forceBreak

 g'4 ( \once \tweak #'font-size #-4 c'' ) c''4 bes'4 ( a'4) g'4 c''4 ( c''4 bes'4) c''4 ( bes'4 a'4 g'4) a'4 ( bes'4 g'4) ~ g'4 ( f'4 g'4) \finalis
 g'4 g'4 ( c''4) c''4 ( d''4 c''4) bes'4 bes'4 ( a'4) g'4 c''4 ( c''4 bes'4) \forceBreak
 c''4 ( bes'4 a'4 g'4) a'4 ( bes'4 g'4) ~ g'4 ( f'4 g'4) \finalis
 f'4 g'4 ( a'4) a'4 ( g'4 bes'4) a'4 ( g'4) g'4 c''4 ( c''4 bes'4) c''4 ( bes'4 a'4 g'4) a'4 ( bes'4 g'4) ~ g'4 ( f'4 g'4) \finalis \forceBreak

 f'4 ( g'4) f'4 g'4 ( a'4) a'4 ( g'4 bes'4) a'4 ( g'4) g'4 c''4 ( c''4 bes'4) c''4 ( bes'4 a'4 g'4) a'4 ( bes'4 g'4) ~ g'4 ( f'4 g'4) \finalis
 g'4 ( a'4) a'4 ( g'4) \forceBreak
 f'4 ( g'4) a'4 ( bes'4 c''4) bes'4 ( a'4) g'4 ( a'4 g'4 f'4) g'4 ( a'4) a'4 \divisioMaior
 a'4 ( g'4 bes'4) g'4 ( a'4 g'4 f'4) g'4 ( \once \tweak #'font-size #-4 a' ) a'4 a'4 ( g'4 bes'4) bes'4 ( a'4) \forceBreak
 a'4 ( \once \tweak #'font-size #-4 g' ) f'4 a'4 ( a'4 g'4) g'4 \finalis
 g'4 ( a'4) a'4 ( g'4) g'4 ( a'4 bes'4 c''4) a'4 ( bes'4) a'4 ( g'4) \divisioMinima
 g'4 ( bes'4) g'4 ( f'4) g'4 ( a'4) a'4 \divisioMaior \forceBreak

 a'4 ( g'4 bes'4) ~ bes'4 ( a'4) a'4 a'4 ( g'4 f'4) g'4 ( a'4) g'4 g'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( g'4 f'4 d'4) f'4 ( g'4) a'4 ( g'4) f'4 ( g'4) g'4 \finalis
  g'4 ( d''4) ~ d''4 ( c''4) \forceBreak
 d''4 ( ees''4 d''4 c''4) ~ c''4 ( bes'4 a'4) g'4 ( a'4) a'4 \divisioMinima
 c''4 ( d''4 c''4) bes'4 ( a'4 g'4) a'4 c''4 a'4 g'4 a'4 ( c''4 a'4 g'4 a'4) \divisioMinima \forceBreak

 a'4 ( g'4) bes'4 ( a'4) f'4 ( g'4 a'4) ~ a'4 ( g'4) g'4 \finalis
  g'4 ( d''4) ~ d''4 ( c''4) d''4 ( ees''4 d''4 c''4) ~ c''4 ( bes'4 a'4) g'4 ( a'4) a'4 f'4 ( g'4) g'4 \divisioMinima \forceBreak

 bes'4 bes'4 ( a'4) g'4 ( a'4) a'4 \divisioMinima
 c''4 ( d''4 c''4) bes'4 ( a'4 g'4) a'4 ( c''4 a'4 g'4 a'4) f'4 ( g'4) g'4 \finalis
 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 a'4 \forceBreak
 c''4 ( d''4 c''4 bes'4) a'4 ( g'4) c''4 ( bes'4) g'4 ( a'4) \divisioMaior
 f'4 f'4 ( g'4) g'4 ( f'4) a'4 ( bes'4 a'4) g'4 g'4 \finalis
 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 a'4 \forceBreak
 c''4 ( d''4 c''4 bes'4) a'4 ( g'4) c''4 ( bes'4) g'4 ( a'4) \divisioMaior
 f'4 f'4 ( g'4) g'4 ( a'4 g'4 f'4) \divisioMinima
 a'4 g'4 ( f'4) g'4 bes'4 ( a'4) bes'4 ( c''4) d''4 ( c''4 a'4 g'4) \forceBreak
 bes'4 ( \once \tweak #'font-size #-4 a' ) f'4 ( g'4) g'4 \finalis
 bes'4 a'4 ( g'4 f'4) g'4 ( a'4) g'4 a'4 c''4 c''4 ( d''4)  d''4 ( c''4) d''4 ( ees''4 d''4 c''4) ~ c''4 ( bes'4 a'4) g'4 ( a'4) a'4 \divisioMaior \forceBreak

 f'4 f'4 ( g'4) g'4 ( f'4) a'4 ( bes'4 a'4) g'4 g'4 \finalis
 g'4 ( a'4) a'4 ( g'4) f'4 ( g'4) a'4 bes'4 g'4 ( f'4) g'4 ( a'4) g'4 \finalis \forceBreak

 bes'4 c''4 bes'4 ( a'4 g'4 a'4) f'4 f'4 ( g'4) g'4 \finalis
 a'4 c''4  d''4 ( c''4) d''4 ( ees''4 d''4 c''4 d''4) g'4 ( a'4 bes'4 c''4) c''4 ( bes'4 a'4) g'4 ( a'4) a'4 \divisioMinima \forceBreak

 a'4 ( g'4) bes'4 ( a'4) f'4 ( g'4 a'4) ~ a'4 ( g'4) g'4 \finalis
 bes'4 a'4 ( g'4 f'4) g'4 ( a'4) g'4 bes'4 ( a'4) c''4 ( a'4 g'4) bes'4 ( g'4) f'4 ( g'4) g'4 \divisioMaior \forceBreak

 g'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( g'4 f'4 d'4) f'4 ( g'4) a'4 ( g'4) f'4 ( g'4) g'4 \divisioMinima
 f'4 a'4  c''4. d''4 ( ees''4 d''4 c''4) ~ c''4 ( bes'4 a'4 f'4 g'4.) \forceBreak
 bes'4 ( a'4 g'4) a'4 ( g'4 f'4 g'4) f'4 ( a'4) c''4 ( d''4 c''4 a'4 bes'4) a'4 ( g'4) \finalis
 g'4 ( g'4 f'4 d'4) f'4 ( g'4) a'4 ( g'4) f'4 ( g'4) \finalis

}

altoMusic = {
r2*18/2 \finalis
r4 r2*3/2 e'2*3/2 f'2*4/2 ~ f'2 ~ f'2 d'2*3/2 ~ \divisioMinima
d'2 ~ d'2 ~ d'4 c'2*4/2 d'2*3/4 f'2 ~ f'2*3/2 ~ f'4 g'4 d'4 \finalis
g'2 f'4 ~ f'2 ~ f'4 ~ f'2*3/2 d'2*4/2 ~ d'2 c'2*3/2 d'4 \finalis
r4 g'2 f'2*4/2 ~ f'2*3/2 ~ f'2*3/2 ~ f'2 ~ f'2 d'2 ~ d'2*3/2 ~ d'4 \finalis
f'4 ~ f'2 d'2*3/2 ~ d'2*3/2 c'2*3/2 f'2 ~ f'2 d'2 ~ d'2*3/2 ~ d'4 \finalis
r2*3/2 e'2 f'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando a'4 r2 f'2*3/2 ~ f'2*4/2 ~ f'2 d'2*3/2 ~ d'4 \finalis
d'2*4/2 c'2 ~ c'2*3/2 ~ c'2 ~ c'2*4/2 ~ c'2 ~ c'4 \divisioMaior
d'2*3/2 ~ d'2*4/2 ~ d'2 c'4 d'2*5/2 c'2*3/2 ~ c'2*3/2 bes4 \finalis
e'2*4/2 f'2*4/2 ~ f'2 -\tweak Glissando.Y-offset #-0.8 \glissando a'4 g'4 \divisioMinima
e'2 d'2 e'2 ~ e'4 \divisioMaior
d'2 f'2*4/2 e'2*3/2 d'2*3/2 c'2 d'2*3/2 ~ d'4 f'2 e'2 d'2 e'4 g'4 ~ g'2*3/2 ~ g'2*3/2 ~ g'2*4/2 ~ g'2 ~ g'4 ~ \divisioMinima
g'2*3/2 f'2*3/2 ~ f'2 d'2 e'2 f'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando \divisioMinima
a'4 g'4 f'2 ~ f'2 d'2*3/2 ~ d'4 g'4 ~ g'2*3/2 ~ g'2*3/2 ~ g'2 f'2 -\tweak Glissando.Y-offset #-0.8 \glissando g'4 r2 d'2 ~ d'4 ~ \divisioMinima
d'4 ees'2 f'2*3/2 \divisioMinima
g'2*3/2 f'2*3/2 ees'2 ~ ees'2*3/2 f'2 ees'4 \finalis
f'4 ~ f'2 g'2 ~ g'2*4/2 ~ g'2 f'2*4/2 ~ \divisioMaior
f'4 ~ f'2 d'2 ees'2*3/2 d'2 \finalis
f'2*3/2 g'2 ~ g'2*6/2 f'2*4/2 ~ \divisioMaior
f'4 ~ f'2 d'2*4/2 ~ \divisioMinima
d'4 ~ d'2*3/2 ~ d'2 f'2 ~ f'2*4/2 ~ f'2 d'2 ~ d'4 \finalis
f'4 ~ f'2*3/2 d'2 ~ d'2 ees'4 f'2 ~ f'2 ~ f'2*3/2 ees'2*4/2 f'2*3/2 ~ \divisioMaior
f'4 c'2 ~ c'2 ~ c'2*3/2 ~ c'4 bes4 \finalis
d'2 ~ d'2 ~ d'2 ~ d'2 ees'2 d'2 ~ d'4 \finalis
ees'2 f'2*4/2 ~ f'4 ees'2 d'4 \finalis
f'2 ~ f'2 ~ f'2*5/2 ~ f'2*4/2 ~ f'2*3/2 ~ f'2 ~ f'4 \divisioMinima
d'2*4/2 f'2 d'2*3/2 ~ d'4 \finalis
g'4 d'2*3/2 ~ d'2*3/2 ees'2 ~ ees'2*3/2 d'2 c'2*3/2 \divisioMaior
d'2 c'2*4/2 d'2*4/2 ~ d'2 ees'4 \divisioMinima
f'2*7/4 ~ f'2*3/2 ~ f'2*3/2 d'2 ~ d'2*3/4 f'2*3/2 ~ f'2*4/2 ~ f'2 g'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando a'4 bes'4 d'2 \finalis
c'2*4/2 ~ c'2 ~ c'2 ~ c'4 bes4 \finalis
}

tenorMusic = {
r2*18/2 \finalis
r4 d'2*3/2 c'2*3/2 ~ c'2*4/2 bes2 c'2 ~ c'2*3/2 \divisioMinima
bes2 a2*3/2 ~ a2*4/2 bes2*3/4 c'2 d'2*3/2 c'2 bes4 \finalis
g2 a4 bes2 ~ bes4 a2*3/2 g2*6/2 a2*3/2 bes4 \finalis
g4 ~ g2 a2*4/2 bes2*3/2 ~ bes2*3/2 a2 c'2 ~ c'2 ~ c'2*3/2 bes4 \finalis
a4 bes2 ~ bes2*3/2 ~ bes2*3/2 ~ bes2*3/2 a2 c'2 ~ c'2 ~ c'2*3/2 bes4 \finalis
c'2*3/2 ~ c'2 d'2*3/2 e'2*3/2 d'2*3/2 ~ d'2*4/2 c'2 ~ c'2*3/2 bes4 \finalis
f2*4/2 ~ f2 ~ f2*3/2 ~ f2 ~ f2*4/2 ~ f2 e4 \divisioMaior
d2*3/2 e2*4/2 ~ e2 ~ e4 d2*5/2 e2*3/2 d2*3/2 ~ d4 \finalis
c'2*4/2 d'2*4/2 ~ d'2 ~ d'2 ~ \divisioMinima
d'2 ~ d'2 ~ d'2 c'4 \divisioMaior
bes2 c'2*4/2 ~ c'2*3/2 bes2*3/2 a2 bes2*4/2 c'2 ~ c'2 ~ c'2 ~ c'4 \finalis
r4 bes2*3/2 ~ bes2*3/2 c'2*4/2 d'2 c'4 \divisioMinima
a2*3/2 bes2*3/2 c'2 ~ c'2 ~ c'2 ~ c'2*3/2 ~ \divisioMinima
c'2 d'2 c'2 ~ c'2*3/2 bes4 \finalis
r4 f'2*3/2 ~ f'2*3/2 ees'2 d'2 ees'2*3/2 \shiftRight c'2 bes4 ~ \divisioMinima
bes4 c'2 d'2*3/2 \divisioMinima
ees'2*3/2 \shiftRight d'2*3/2 c'2 ~ c'2*3/2 ~ c'2 ~ c'4 \finalis
d'4 ~ d'2 ~ d'2 c'2*4/2 d'2 ~ d'2*4/2 ~ \divisioMaior
d'4 c'2 bes2 c'2*3/2 ~ c'4 bes4 \finalis
r2*3/2 ees'2 ~ ees'2*6/2 d'2*4/2 ~ \divisioMaior
d'4 c'2 bes2*4/2 ~ \divisioMinima
bes4 ~ bes2*3/2 ~ bes2 ~ bes2 a2*4/2 c'2 bes2 ~ bes4 \finalis
d'4 c'2*3/2 ~ c'2 bes2 a4 ~ a2 ~ a2 bes2*3/2 g2*4/2 f2*3/2 ~ \divisioMaior
f4 ~ f2 ~ f2 ~ f2*3/2 d2 \finalis
bes2 ~ bes2 a2 ~ a2 c'2 ~ c'2 bes4 \finalis
g2 f2*4/2 a4 ~ a2 bes4 \finalis
c'2 a2 bes2*5/2 ~ bes2*4/2 a2*3/2 bes2 c'4 ~ \divisioMinima
c'2*4/2 ~ c'2 ~ c'2*3/2 bes4 \finalis
d'4 c'2*3/2 bes2*3/2 c'2 a2*3/2 \shiftRight g2 a2*3/2 \divisioMaior
bes2 \shiftRight a2*4/2 bes2*4/2 c'2 ~ c'4 ~ \divisioMinima
c'2*7/4 \shiftRight bes2*3/2 a2*3/2 c'2 bes2*3/4 ~ bes2*3/2 c'2*4/2 d'2 ~ d'2*3/2 ~ d'2 c'4 bes4 \finalis
d2*4/2 ~ d2 ees2 d2 \finalis
}

bassMusic = {
r2*18/2 \finalis
bes4 ~ bes2*3/2 \shiftRight c'2*3/2 f2*4/2 ~ f2 ~ f2 g2*3/2 ~ \divisioMinima
g2 d2*3/2 g2*4/2 ~ g2*3/4 a2 bes2*3/2 a2 g4 \finalis
e2 d4 ~ d2 f4 ~ f2*3/2 \shiftRight g2*4/2 f2 g2*3/2 ~ g4 \finalis
r4 e2 d2*4/2 ~ d2*3/2 f2*3/2 ~ f2 ~ f2 ~ f2 g2*3/2 ~ g4 \finalis
d4 ~ d2 g2*3/2 f2*3/2 ~ f2*3/2 ~ f2 ~ f2 ~ f2 g2*3/2 ~ g4 \finalis
a2*3/2 \shiftRight c'2 ~ c'2*3/2 ~ c'2*3/2 \shiftRight d'2*3/2 g2*4/2 ~ g2 ~ g2*3/2 ~ g4 \finalis
bes,2*4/2 a,2 f,2*3/2 g,2 a,2*4/2 c2 ~ c4 \divisioMaior
bes,2*3/2 ~ bes,2*4/2 a,2 ~ a,4 bes,2*5/2 c2*3/2 g,2*3/2 ~ g,4 \finalis
r2*8/2 c'2 bes2 \divisioMinima
r2*7/2 \divisioMaior
r2 f2*4/2 ~ f2*3/2 ~ f2*3/2 g2 ~ g2*4/2 a2 ~ a2 \shiftRight c'2*3/2 g4 ~ g2*3/2 f2*3/2 ees2*4/2 ~ ees2 ~ ees4 \divisioMinima
d2*3/2 ~ d2*3/2 f2 g2 ~ g2 f2*3/2 \divisioMinima
e2 d2 g2 ~ g2*3/2 ~ g4 r2*4/2 c'2*3/2 ~ c'2 ~ c'2 ~ c'2*3/2 ~ c'2*3/2 \divisioMinima
bes4 c'2 d'2*3/2 ~ \divisioMinima
d'2*3/2 ~ d'2*3/2 r2 bes2*3/2 a2 \shiftRight c'4 \finalis
r4 d2 ees2 ~ ees2*4/2 g2 d2*4/2 ~ \divisioMaior
d4 ~ d2 g2 ~ g2*3/2 ~ g2 \finalis
d'2*3/2 ~ d'2 c'2*6/2 \shiftRight d'2*4/2 \divisioMaior
r4 a2 \shiftRight bes2*4/2 \divisioMinima
r4 a2*3/2 g2 f2 ~ f2*4/2 ~ f2 a2 g4 \finalis
d4 ~ d2*3/2 g2 ~ g2 ~ g4 f2 d2 bes,2*3/2 c2*4/2 d2*3/2 ~ \divisioMaior
d4 a,2 g,2 f,2*3/2 g,2 \finalis
r2 g2 ~ g2 f2 \shiftRight c'2 g2 ~ g4 \finalis
c2 d2*4/2 ~ d4 g2 ~ g4 \finalis
f2 ~ f2 bes,2*5/2 d2*4/2 f2*3/2 ~ f2 ~ f4 \divisioMinima
g2*4/2 a2 g2*3/2 ~ g4 \finalis
g4 ~ g2*3/2 ~ g2*3/2 ~ g2 ~ g2*3/2 ~ g2 ~ g2*3/2 ~ \divisioMaior
g2 a2*4/2 r2*7/2 \divisioMinima
a2*7/4 bes2*3/2 f2*3/2 g2 ~ g2*3/4 d2*3/2 ~ d2*4/2 ~ d2 ees2*3/2 f2 g2 \finalis
a,2*4/2 g,2 ~ g,2 ~ g,2 \finalis
}

voiceLines = {
\voiceLineStyle
s2*903/4
\allowVoiceLineBreak
\voiceLine  "down" "up" d'2*1/2 d'2*1/2

s2*53/2
\allowVoiceLineBreak
\voiceLine "down" "up" d'2*2/2 d'2*1/2


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
