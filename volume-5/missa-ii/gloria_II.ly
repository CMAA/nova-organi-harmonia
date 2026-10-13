\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.13
%(volume.page)

% Proofed 3/11

global = {
 \key c \dorian
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
\tieDown   g'4 f'4 ( ees'4) ees'4 ees'4 f'4 g'4 f'4  aes'4 ( g'4) g'4 \finalis
 g'4 bes'4 c''4 bes'4 ( g'4) f'4 \forceBreak
  g'4 ( aes'4 bes'4) aes'4 ( g'4 f'4) ees'4 ( d'4 c'4) c'4 \divisioMinima
 bes4 c'4 ( ees'4) f'4 ( ees'4) d'4 ( ees'4) c'4 c'4 \finalis
 g'4 f'4  g'4 ( aes'4 g'4) f'4 ( g'4) \finalis
 \forceBreak
 g'4 bes'4 c''4 bes'4 c''4 g'4 \finalis
 bes'4 f'4  g'4 ( aes'4) bes'4  aes'4 ( g'4) \finalis
 g'4 bes'4 c''4 ees''4 ( d''4 c''4) bes'4 ( c''4) g'4 \finalis
 \forceBreak
 bes'4 f'4 ees'4 g'4 f'4 g'4 c'4 bes4 \divisioMinima
 ees'4 f'4  g'4 ( aes'4 g'4 f'4) ees'4 f'4 ( g'4 f'4 ees'4) d'4 ( c'4) bes4 ( \once \tweak #'font-size #-4 c' ) c'4 c'4 \finalis
 \forceBreak
 c'4 bes4 ees'4 f'4 ( g'4) g'4 \divisioMinima
 bes'4 f'4 ( ees'4) f'4 ( g'4) g'4 \divisioMinima
 c''4 bes'4 ( c''4) c''4 f'4  g'4 ( aes'4 bes'4) c''4 bes'4 ( aes'4 g'4) g'4 \finalis
 \forceBreak
  g'4 ( aes'4 bes'4) ~ bes'4 ( aes'4 g'4 aes'4) f'4 ees'4 g'4 c'4 ees'4 f'4 ( ees'4) d'4 ( c'4) bes4 c'4 ( ees'4) \divisioMinima
 f'4 ( ees'4) d'4 ( ees'4) c'4 c'4 \finalis
 \forceBreak
 g'4 f'4 ees'4 f'4 ( g'4) g'4 \divisioMinima
 bes'4 f'4 ( ees'4) f'4 ( g'4) g'4 \divisioMinima
 c''4 ( bes'4 c''4) f'4  g'4 ( aes'4 bes'4) c''4  bes'4 ( aes'4 g'4) \finalis
 \forceBreak
  g'4 ( aes'4 bes'4)  bes'4 ( aes'4 g'4 aes'4) f'4 ees'4 g'4 f'4  aes'4 g'4 \divisioMinima
 ees'4 f'4 ( ees'4) d'4 ( c'4) bes4 ( c'4 d'4 ees'4) c'4 c'4 \finalis
 \forceBreak
  g'4 ( aes'4 bes'4)  bes'4 ( aes'4 g'4 aes'4) f'4 ees'4 g'4 f'4  aes'4 g'4 \divisioMinima
 c''4 bes'4 ( c''4) f'4 g'4 bes'4 c''4 bes'4 \forceBreak
  aes'4 ( g'4) f'4 g'4 g'4 \finalis
 g'4 f'4 ( g'4) ees'4  g'4 ( aes'4 bes'4) bes'4  aes'4 ( g'4) f'4 g'4 ( f'4 g'4) c'4 \divisioMinima
 ees'4 f'4 ( ees'4) d'4 ( c'4) \forceBreak
 bes4 ( c'4 d'4 ees'4) c'4 c'4 \finalis
 g'4 f'4 ees'4  g'4 ( aes'4 bes'4)  bes'4 ( aes'4 g'4) f'4
  aes'4 g'4 \finalis
 c''4 bes'4 c''4  aes'4 ( g'4) f'4 ( \once \tweak #'font-size #-4 g'4) g'4 \finalis \forceBreak
 g'4 bes'4 c''4 ees''4 ( d''4 c''4) c''4 bes'4 ( c''4) c''4 \divisioMinima
 c''4 ( bes'4 g'4)  aes'4 ( f'4) ees'4 ( d'4 ees'4) c'4 \finalis
 ees'4 f'4 c'4 \forceBreak
 ees'4 d'4 ( c'4) bes4 \divisioMinima
 ees'4 ( f'4 g'4)  bes'4 ( aes'4 g'4 aes'4) f'4 ees'4 f'4 g'4 ees'4 ( d'4 c'4) bes4 \finalis
 ees'4 ( f'4 bes4.) c'4 ( ees'4 f'4 ees'4 d'4 c'4) bes4 ( c'4) \finalis

}

altoMusic = {
r2*11/2 \finalis
g'4 ~ g'2 f'2 ~ f'4 ees'2*3/2 ~ ees'2*3/2 bes2 -\tweak Glissando.Y-offset #-0.8 \glissando c'4 c'4 \divisioMinima
r4 g2 ~ g2 ~ g2 ~ g2 \finalis
c'2 ~ c'2*3/2 bes2 \finalis
f'2 ~ f'2*3/2 ees'4 \finalis
f'2 ~ f'2*3/2 ees'2 \finalis
g'4 ~ g'2 ~ g'2*3/2 f'2 ees'4 \finalis
f'2 -\tweak Glissando.Y-offset #-0.8 \glissando ees'4 bes4 ~ bes2 \glissando c'4 bes4 ~ \divisioMinima
bes2 ees'2*4/2 c'4 ~ c'2 ~ c'2 bes2 ~ bes4 r4 g2 \finalis
r2 ees'4 ~ ees'2 ~ ees'4 ~ \divisioMinima
ees'4 c'2 ~ c'2 ~ c'4 \divisioMinima
g'4 ~ g'2 f'2 ees'2*3/2 ~ ees'4 ~ ees'2*3/2 ~ ees'4 \finalis
ees'2 c'2*3/2 ~ c'2*3/2 ~ c'4 ~ c'4 ~ c'2 ~ c'2 bes2 ~ bes4 g2 \divisioMinima
c'2 bes2 g2 \finalis
bes2*3/2 ~ bes2 ~ bes4 ~ \divisioMinima
bes4 ~ bes2 ~ bes2 ees'4 ~ \divisioMinima
ees'2*4/2 ~ ees'2*3/2 ~ ees'4 ~ ees'2 ~ ees'4 \finalis
ees'2*3/2 c'2*4/2 ~ c'2 ~ c'2 bes2 ~ \divisioMinima
bes4 c'2 g2 f2 bes2 g2 ees'2*3/2 f'2*4/2 ~ f'4 ees'4 ~ ees'2 ~ ees'2 \divisioMinima
g'4 c'2 ~ c'4 d'2 c'2 ees'2*3/2 ~ ees'2 \finalis
d'4 ~ d'2 ~ d'4 c'2*3/2 ~ c'4 ~ c'2*3/2 ~ c'2*3/2 ~ c'4 ~ \divisioMinima
c'4 g2 ~ g2 ~ g2*4/2 ~ g2 \finalis
bes2*3/2 c'2*3/2 ~ c'2*4/2 ~ c'2 \finalis
ees'4 c'2 ~ c'2 ~ c'2 ees'4 \finalis
g'4 ~ g'2 ~ g'2*3/2 ~ g'4 f'2 g'4 \divisioMinima
c'2*3/2 ~ c'2 bes2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando c'4 \finalis
r4 c'2 bes2*3/2 ~ bes4 ~ \divisioMinima
bes2*3/2 c'2*4/2 ~ c'2 ~ c'2 bes2*3/2 ~ bes4 \finalis
bes2 ~ bes4. c'2 ~ c'2 g2 f4 g4 \finalis
}

tenorMusic = {
r2*11/2 \finalis
r2 ees'4 d'2*3/2 c'2*3/2 ~ c'2*3/2 g2*3/2 ~ g4 \divisioMinima
f4 ees2 \shiftRight c2 f2 ~ f4 ees4 \finalis
ees2 f2*3/2 aes4 g4 \finalis
g2 ~ g2*3/2 c'4 \finalis
bes2 ~ bes2*3/2 ~ bes2 \finalis
ees'4 ~ ees'2 ~ ees'2*3/2 d'2 \shiftRight c'4 \finalis
bes2 g2 \shiftRight ees2 f2 \divisioMinima
g2 ~ g2*5/2 c2 f2 ~ f2 ~ f2 ~ f4 ees4 \finalis
g2*3/2 aes2 bes4 \divisioMinima
g4 aes2 ~ aes2 g4 ~ \divisioMinima
g4 c'2 ~ c'2 bes2*3/2 g4 c'2*3/2 bes4 \finalis
bes2 ~ bes2*3/2 aes2*3/2 g4 ees2*3/2 g2 f2*3/2 ees2 \divisioMinima
c2 f2 ~ f4 ees4 \finalis
r2*3/2 aes2 g4 \divisioMinima
f4 g2 ees2 ~ ees4 \divisioMinima
aes2*4/2 bes2*3/2 \shiftRight aes4 c'2 bes4 \finalis
ees2*3/2 f2*4/2 ~ f2 ees2 ~ ees2 \divisioMinima
g4 ~ g2 ees2 d2 f2 ~ f4 ees4 \finalis
c'2*3/2 ~ c'2*4/2 aes2 c'2 bes2 \divisioMinima
g4 ~ g2 aes4 g2 ~ g2 aes2*3/2 bes2 \finalis
r4 bes2 g4 ees2*3/2 ~ ees4 f2*3/2 ~ f2*3/2 ees4 ~ \divisioMinima
ees4 c2 ees2 d2 f2 ~ f4 ees4 \finalis
g2*3/2 ~ g2*3/2 \shiftRight f2 aes2 ees2 \finalis
g4 ~ g2 \shiftRight f2 aes2 bes4 \finalis
ees'4 ~ ees'2 ~ ees'2*3/2 ~ ees'4 d'2 c'4 \divisioMinima
g2*3/2 f2 g2*3/2 ~ g4 \finalis
c4 ~ c2 f4 ees2 d4 \divisioMinima
ees2*3/2 ~ ees2*4/2 g2 aes2 f2*3/2 d4 \finalis
ees2 f2*3/4 g2 ~ g2 ees2 d4 ees4 \finalis
}

bassMusic = {
s2*11/2 \finalis
s2*9/2 f2*3/2 ~ f2*3/2 ees4 \divisioMinima
d4 c2 ~ c2 ~ c2 ~ c2 \finalis
c4 aes,4 ~ aes,2*3/2 ees2 \finalis
d2 c2*3/2 ~ c4 \finalis
d2 ees2*3/2 ~ ees2 \finalis
r4 d'2 c'2*3/2 ~ c'2 ~ c'4 \finalis
d2 ees2 ~ ees2 d2 ~ \divisioMinima
d2 c2*5/2 aes,2 ~ aes,2 bes,2 g,2 c2 \finalis
ees2*3/2 ~ ees2 ~ ees4 ~ \divisioMinima
ees4 g2 f2 ees4 ~ \divisioMinima
ees4 ~ ees2 aes2 ees2*3/2 ~ ees4 ~ ees2*3/2 ~ ees4 \finalis
ees2 f2*3/2 ~ f2*3/2 c4 ~ c2*3/2 ~ c2 ~ c2*3/2 ~ c2 \divisioMinima
aes,2 bes,2 c2 \finalis
ees2*3/2 ~ ees2 ~ ees4 \divisioMinima
d4 ~ d2 ~ d2 c4 ~ \divisioMinima
c2*4/2 ees2*3/2 aes4 ~ aes2 ees4 \finalis
c2*3/2 f,2*4/2 aes,2 ~ aes,2 \shiftRight ees2 ~ \divisioMinima
ees4 c2 ~ c2 ~ c2 ~ c2 ~ c2 r2*3/2 f2*4/2 ~ f2 aes2 ees2 ~ \divisioMinima
ees4 ~ ees2 f4 ~ f2 ees2 c2*3/2 ees2 \finalis
bes,4 ~ bes,2 c4 ~ c2*3/2 f,4 ~ f,2*3/2 c2*3/2 ~ c4 ~ \divisioMinima
c4 ~ \shiftRight c2 ~ c2 ~ c2*4/2 ~ c2 \finalis
ees2*3/2 ~ ees2*3/2 f2 ~ f2 c2 \finalis
c4 ees2 f2 ~ f2 ees4 \finalis
r4 d'2 c'2*3/2 g4 ~ g2 ees4 ~ \divisioMinima
ees2*3/2 \shiftRight f2 ~ f2*3/2 ees4 \finalis
r4 aes,2 bes,2*3/2 ~ bes,4 \divisioMinima
g,2*3/2 c2*4/2 ~ c2 aes,2 bes,2*3/2 ~ bes,4 \finalis
c2 d2*3/4 ees2 c2 ~ c2 ~ c2 \finalis
}

voiceLines = {
\voiceLineStyle


s2*75/2
\allowVoiceLineBreak
\voiceLine "down" "down" c2*5/2 c2*1/2


s2*51/2
\allowVoiceLineBreak
\voiceLine "down" "down" c2*2/2 c2*1/2


s2*59/2
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" aes2*2/2 aes2*1/2


}

\score{
  <<
    \new Lyrics
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
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
