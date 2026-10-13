\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.152
%(volume.page)

%Proofed 3/14

global = {
 \key e \phrygian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
 \override Glissando #'breakable = ##t
}

chantText = \lyricmode {
Gló -- ri -- a in ex -- cél -- sis Dé -- o, 
Et in tér -- ra pax ho -- mí -- ni -- bus bó -- næ vo -- lun -- tá -- tis. 
Lau -- dá -- mus te. 
Be -- ne -- dí -- ci -- mus te. 
Ad -- o -- rá -- mus te. 
Glo -- ri -- fi -- cá -- mus te. 
Grá -- ti -- as á -- gi -- mus tí -- bi _ _ pro -- pter má -- gnam gló -- ri -- am tú -- am. 
Dó -- mi -- ne Dé -- us, Rex cœ -- lé -- stis, Dé -- us Pá -- ter o -- mní -- po -- tens. 
Dó -- mi -- ne Fí -- li u -- ni -- gé -- ni -- te Jé -- su Chrí -- ste. _ _ 
Dó -- mi -- ne Dé -- us, A -- gnus Dé -- i, Fí -- li -- us Pá -- tris. 
Qui tól -- lis pec -- cá -- ta mún -- di, _ _ mi -- se -- ré -- re nó -- bis. 
Qui tól -- lis pec -- cá -- ta mún -- di, _ _ sús -- ci -- pe de -- pre -- ca -- ti -- ó -- nem nó -- stram. 
Qui sé -- des ad déx -- te -- ram Pá -- tris, mi -- se -- ré -- re nó -- bis. 
Quó -- ni -- am tu só -- lus sán -- ctus. 
Tu só -- lus Dó -- mi -- nus. 
Tu só -- lus Al -- tís -- si -- mus, Jé -- su Chrí -- ste. _ _ 
Cum Sán -- cto Spí -- ri -- tu, in gló -- ri -- a Dé -- i Pá -- tris. 
\set stanza = " ** "  A -- men. _ _ _ _ _ }

chantMusic = {
\tieDown   a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 g'4 \finalis
 g'4 g'4 a'4 a'4 \forceBreak
 a'4 a'4 b'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 g'4 \finalis
 a'4 a'4 a'4 g'4 \finalis
 \forceBreak
 a'4 a'4 a'4 a'4 a'4 g'4 \finalis
 a'4 a'4 a'4 a'4 g'4 \finalis
 a'4 a'4 a'4 a'4 a'4 g'4 \finalis
 \forceBreak
 g'4 g'4 g'4 g'4 g'4 g'4 g'4 b'4 ( a'4 g'4) c''4 ( c''4 d''4 c''4 b'4 c''4) a'4 ( b'4 a'4 g'4) \divisioMinima
 a'4 a'4 \forceBreak
 a'4 a'4 b'4 a'4 a'4 a'4 g'4 \finalis
 a'4 a'4 a'4 a'4 g'4 a'4 a'4 a'4 g'4 \divisioMinima
 \forceBreak
 a'4 a'4 a'4 a'4 a'4 a'4 a'4 g'4 \finalis
 a'4 a'4 a'4 a'4 a'4 a'4 a'4 \forceBreak
 a'4 a'4 g'4 b'4 b'4 c''4 a'4 ( b'4 a'4 g'4) c''4 ( c''4 d''4 c''4 b'4 c''4) a'4 ( b'4 a'4 g'4) \finalis
 a'4 a'4 a'4 a'4 g'4 \forceBreak
 a'4 a'4 a'4 g'4 a'4 a'4 a'4 a'4 g'4 \finalis
 a'4 a'4 a'4 a'4 b'4 a'4 g'4 \forceBreak
 b'4 ( a'4 g'4) c''4 ( c''4 d''4 c''4 b'4 c''4) a'4 ( b'4 a'4 g'4) \divisioMinima
 a'4 a'4 a'4 a'4 a'4 g'4 \finalis
 a'4 a'4 a'4 a'4 b'4 a'4 \forceBreak
 g'4 b'4 ( a'4 g'4) c''4 ( c''4 d''4 c''4 b'4 c''4) a'4 ( b'4 a'4 g'4) \divisioMinima
 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 g'4 \finalis
 \forceBreak
 g'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 g'4 a'4 a'4 a'4 a'4 a'4 g'4 \finalis
 \forceBreak
 a'4 a'4 a'4 a'4 a'4 a'4 a'4 g'4 \finalis
 a'4 a'4 a'4 a'4 a'4 g'4 \finalis
 \forceBreak
 a'4 a'4 a'4 a'4 a'4 a'4 g'4 b'4 b'4 c''4 a'4 ( b'4 a'4 g'4) c''4 ( c''4 d''4 c''4 b'4 c''4) a'4 ( b'4 a'4 g'4) \finalis
 \forceBreak
 a'4 a'4 a'4 a'4 a'4 a'4 a'4 b'4 ( a'4) g'4 a'4 b'4 a'4 a'4 a'4 \divisioMinima
 \forceBreak
 a'4 g'4 ( a'4 g'4) a'4 ( b'4 a'4 g'4.) a'4 ( g'4 f'4 e'4) f'4 ( g'4) g'4 ( g'4) g'4 ( f'4 e'4 e'4) \finalis

}

altoMusic = {
r2*9/2 \finalis
r2 f'2 ~ f'2 e'2*3/2 ~ e'2*4/2 d'2 \finalis
f'4 d'2 ~ d'4 \finalis
f'2 ~ f'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando g'4 \finalis
e'2 ~ e'2*3/2 \finalis
f'2*3/2 d'2 ~ d'4 \finalis
e'2*3/2 ~ e'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando g'4 ~ g'2*3/2 ~ g'2*6/2 e'2*4/2 \divisioMinima
f'2 ~ f'2 g'2*3/2 d'2 \finalis
r2*5/2 f'2 e'2 ~ \divisioMinima
e'2 ~ e'2*3/2 d'2*3/2 \finalis
f'2*3/2 ~ f'2 ~ f'2 e'2*3/2 ~ e'2 ~ e'4 ~ e'2*4/2 f'2*3/2 g'2*3/2 e'2*4/2 \finalis
e'2*3/2 ~ e'2 ~ e'2 ~ e'2 f'2*3/2 d'2 \finalis
r4 d'2*3/2 ~ d'2*3/2 e'2*3/2 f'2*3/2 e'2*3/2 ~ e'2*4/2 \divisioMinima
f'2 ~ f'2 e'2 \finalis
r4 e'2*3/2 ~ e'2 -\tweak Glissando.Y-offset #-0.8 \glissando g'4 ~ g'2*3/2 ~ g'2*6/2 e'2*4/2 \divisioMinima
f'2*5/2 ~ f'2 ~ f'2 d'2 \finalis
e'4 ~ e'2*3/2 d'2*3/2 c'2 ~ c'2 ~ c'2 b2 \finalis
e'2*4/2 f'2 e'2 \finalis
e'4 d'2 c'2*3/2 \finalis
f'4 ~ f'2*3/2 ~ f'2 -\tweak Glissando.Y-offset #-0.8 \glissando g'4 ~ g'2 ~ g'4 \glissando a'4 b'4 a'4 g'4 ~ g'2*3/2 ~ g'2*3/2 f'2 -\tweak Glissando.Y-offset #-0.8 \glissando a'4 g'4 \finalis
f'4 ~ f'2 e'2 ~ e'2 ~ e'2 ~ e'2 ~ e'2 ~ e'2 ~ \divisioMinima
e'4 ~ e'2*3/2 ~ e'2*9/4 d'2 c'2 ~ c'2 ~ c'2 b2 a2 \finalis
}

tenorMusic = {
r2*9/2 \finalis
e'2 ~ e'2 d'2 ~ d'2*3/2 c'2*4/2 b2 \finalis
c'4 ~ c'2 b4 \finalis
d'2 ~ d'2*3/2 ~ d'4 \finalis
c'2 b2*3/2 \finalis
c'2*3/2 ~ c'2 b4 \finalis
b2*3/2 c'2*3/2 ~ c'4 d'2*3/2 c'2*6/2 b2*4/2 \divisioMinima
c'2 d'2 ~ d'2*3/2 c'4 b4 \finalis
f'2*3/2 e'2 d'2 c'2 ~ \divisioMinima
c'2 ~ c'2*3/2 b2*3/2 \finalis
c'2*3/2 ~ c'2 ~ c'2 b2*3/2 g2 ~ g4 a2*4/2 ~ a2*3/2 g2*3/2 b2*4/2 \finalis
c'2*3/2 ~ c'2 ~ c'2 b2 c'2*3/2 ~ c'4 b4 \finalis
r4 f2*3/2 g2*3/2 ~ g2*3/2 a2*3/2 g2*3/2 b2*4/2 \divisioMinima
c'2 b2 ~ b2 \finalis
r4 c'2*3/2 ~ c'2 b4 d'2*3/2 c'2*6/2 b2*4/2 \divisioMinima
c'2*5/2 ~ c'2 ~ c'2 ~ c'4 b4 \finalis
c'4 ~ c'2*3/2 f2*3/2 e2 ~ e2 ~ e2 ~ e2 \finalis
c'2*4/2 ~ c'2 ~ c'2 \finalis
g4 f2 e2*3/2 \finalis
r4 e'2*3/2 d'2*3/2 e'2 ~ e'4 ~ e'2*4/2 ~ e'2*3/2 ~ e'2*3/2 d'2 ~ d'2 \finalis
d'4 ~ d'2 ~ d'2 c'2 b2 c'2 d'2 c'2 \divisioMinima
c'4 b2*3/2 a2*9/4 f2 g2 f2 e2 d2 e2 \finalis
}

bassMusic = {
s2*9/2 \finalis
s2*15/2 \finalis
f4 g2 ~ g4 \finalis
r2 c'2*3/2 b4 \finalis
a2 e2*3/2 \finalis
f2*3/2 g2 ~ g4 \finalis
e2*3/2 c2*3/2 g4 ~ g2*3/2 e2*6/2 ~ e2*4/2 ~ \divisioMinima
e2 d2 g2*3/2 ~ g2 \finalis
r2*9/2 \divisioMinima
b2 a2*3/2 \shiftRight b2*3/2 \finalis
f2*3/2 e2 d2 e2*3/2 d2 c4 ~ c2*4/2 d2*3/2 e2*3/2 ~ e2*4/2 \finalis
r2*3/2 b2 a2 e2 d2*3/2 g2 \finalis
d4 ~ d2*3/2 \shiftRight g2*3/2 e2*3/2 ~ e2*3/2 ~ e2*3/2 ~ e2*4/2 \divisioMinima
d2 ~ d2 e2 \finalis
a4 ~ a2*3/2 g2 ~ g4 ~ g2*3/2 e2*6/2 ~ e2*4/2 ~ \divisioMinima
e2*5/2 d2 f2 g2 \finalis
r4 c2*3/2 ~ c2*3/2 ~ c2 a,2 c2 \shiftRight e2 \finalis
g2*4/2 f2 c2 \finalis
c4 ~ c2 ~ c2*3/2 \finalis
r2*4/2 d'2*3/2 ~ d'2 c'4 ~ c'2*4/2 b2*3/2 a2*3/2 \shiftRight d'2 b2 \finalis
r4 d2 a2 ~ a2 g2 b2 a2 ~ a2 \divisioMinima
c4 ~ c2*3/2 ~ c2*9/4 ~ c2 ~ c2 a,2 ~ a,2 ~ a,2 ~ a,2 \finalis
}

voiceLines = {
\voiceLineStyle


s2*69/2
\allowVoiceLineBreak
\voiceLine "down" "up" d'2*3/2 d'2*1/2


s2*176/2
\allowVoiceLineBreak
\voiceLine "down" "down" b2*2/2 b2*1/2


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
