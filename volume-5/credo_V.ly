\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.154
%(volume.page)

%Proofed 3/14

global = {
 \key fis \phrygian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
Cre -- do in u -- num De -- um, 
\set stanza = "* vel" 
Cre -- do in u -- num De -- um, 
\set stanza = " * " Pa -- trem o -- mni -- po -- tén -- tem, 
fa -- ctó -- rem cæ -- li et ter -- ræ, vi -- si -- bí -- li -- um ó -- mni -- um, et in -- vi -- si -- bí -- li -- um. 
Et in u -- num Dó -- mi -- num Je -- sum Chri -- stum, Fí -- li -- um De -- i u -- ni -- gé -- ni -- tum. 
Et ex Pa -- tre na -- tum an -- te ó -- mni -- a sǽ -- cu -- la. 
De -- um de De -- o, lu -- men de lú -- mi -- ne, De -- um ve -- rum de De -- o ve -- ro. 
Gé -- ni -- tum, non fa -- ctum, con -- sub -- stan -- ti -- á -- lem Pa -- tri: per quem ó -- mni -- a fa -- cta sunt. 
Qui pro -- pter nos hó -- mi -- nes, et pro -- pter no -- stram sa -- lú -- tem de -- scén -- dit de cæ -- lis. 
Et in -- car -- ná -- tus est de Spí -- ri -- tu San -- cto ex Ma -- rí -- a Vír -- gi -- ne: 
Et ho -- mo fa -- ctus est. 
Cru -- ci -- fí -- xus é -- ti -- am pro no -- bis: sub Pón -- ti -- o Pi -- lá -- to pas -- sus, et se -- púl -- tus est. 
Et re -- sur -- ré -- xit tér -- ti -- a di -- e, se -- cún -- dum Scri -- ptú -- ras. 
Et a -- scén -- dit in cæ -- lum: 
se -- det ad déx -- te -- ram Pa -- tris. 
Et í -- te -- rum ven -- tú -- rus est cum gló -- ri -- a, ju -- di -- cá -- re vi -- vos et mór -- tu -- os: 
cu -- jus re -- gni non e -- rit fi -- nis. 
Et in Spí -- ri -- tum San -- ctum, Dó -- mi -- num, et vi -- vi -- fi -- cán -- tem: 
qui ex Pa -- tre Fi -- li -- ó -- que pro -- cé -- dit. 
Qui cum Pa -- tre et Fí -- li -- o si -- mul ad -- o -- rá -- tur. et con -- glo -- ri -- fi -- cá -- tur: 
qui lo -- cú -- tus est per Pro -- phé -- tas. 
Et u -- nam san -- ctam ca -- thó -- li -- cam et a -- po -- stó -- li -- cam Ec -- clé -- si -- am. 
Con -- fí -- te -- or u -- num ba -- ptís -- ma in re -- mis -- si -- ó -- nem pec -- ca -- to -- rum. 
Et ex -- spe -- cto re -- sur -- re -- cti -- ó -- nem mor -- tu -- ó -- rum. 
Et vi -- tam ven -- tú -- ri sǽ -- cu -- li. \set stanza = " ** " A -- _ men. }

chantMusic = {
\tieDown   a'4 ( g'4) fis'4 fis'4 ( g'4 a'4) a'4 ( g'4) fis'4 ( e'4) fis'4 ( g'4 fis'4 e'4) e'4 \finalis
  a'4 fis'4 g'4 e'4 fis'4 a'4 b'4 \divisioMinima
 \forceBreak
  b'4 ( c''4) b'4 b'4 a'4 g'4 a'4 fis'4 \divisioMaior
 g'4 a'4 a'4 a'4 a'4 a'4 ( b'4) a'4 fis'4 \divisioMinima
 \forceBreak
 fis'4 g'4 a'4 a'4 a'4  b'4 ( c''4) b'4 b'4 \divisioMinima
 b'4 b'4 a'4 g'4 a'4 a'4 ( g'4) fis'4 ( e'4) \finalis
 \forceBreak
 fis'4 g'4 a'4 a'4 ( b'4) a'4 g'4 fis'4 \divisioMinima
 fis'4 g'4 a'4 b'4 \divisioMinima
  b'4 ( c''4) b'4 b'4 b'4 b'4 \forceBreak
 a'4 g'4 a'4 g'4 fis'4 \finalis
 fis'4 g'4 a'4 fis'4 ( g'4) a'4 b'4 \divisioMinima
  b'4 ( c''4) b'4 b'4 a'4 g'4 \forceBreak
 a'4 a'4 ( g'4) fis'4 ( e'4) \finalis
 g'4 fis'4 g'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 ( b'4) a'4 g'4 fis'4 \divisioMinima
 \forceBreak
 fis'4 g'4 a'4 b'4 b'4 a'4 g'4 a'4 ( g'4) fis'4 ( e'4) \finalis
 fis'4 g'4 a'4 a'4 ( b'4) a'4 fis'4 \divisioMinima
 \forceBreak
 g'4 g'4 fis'4 g'4 a'4 fis'4 ( g'4) a'4 b'4 \divisioMinima
  b'4 ( c''4) b'4 b'4 a'4 g'4 a'4 a'4 ( g'4) fis'4 ( e'4) \finalis
 \forceBreak
 g'4 fis'4 g'4 a'4 ( b'4) a'4 g'4 fis'4 \divisioMinima
 g'4 fis'4 g'4 a'4 a'4 a'4 ( b'4) a'4 fis'4 \divisioMinima
 \forceBreak
 g'4 a'4 a'4 b'4 a'4 ( g'4) fis'4 ( e'4) \finalis
 g'4 fis'4 g'4 a'4 a'4 a'4 a'4 a'4 fis'4 g'4 a'4 b'4 \divisioMinima
 \forceBreak
  b'4 ( c''4) b'4 a'4 g'4 a'4 a'4 ( g'4) fis'4 ( e'4) \divisioMaior
  b'4 ( c''4) b'4 ( a'4) g'4 a'4 a'4 ( g'4) fis'4 ( e'4) \finalis
 fis'4 g'4 a'4 a'4 \forceBreak
 a'4 a'4 fis'4 g'4 a'4 b'4 \divisioMinima
  b'4 ( c''4) b'4 b'4 a'4 g'4 a'4 fis'4 \divisioMinima
  b'4 ( c''4) b'4 a'4 \forceBreak
 g'4 a'4 a'4 ( g'4) fis'4 ( e'4) \finalis
 g'4 fis'4 g'4 a'4 a'4 a'4 fis'4 g'4 a'4 b'4 \divisioMinima
  b'4 ( c''4) b'4 \forceBreak
 a'4 g'4 a'4 ( g'4) fis'4 ( e'4) \finalis
 e'4 e'4 g'4 fis'4 g'4 a'4 b'4 \divisioMaior
  b'4 ( c''4) b'4 b'4 b'4 a'4 g'4 \forceBreak
 a'4 fis'4 \finalis
 g'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 ( b'4) a'4 g'4 fis'4 \divisioMinima
 \forceBreak
 fis'4 g'4 a'4 b'4 b'4 a'4 g'4 a'4 a'4 ( g'4) fis'4 ( e'4) \divisioMaior
 fis'4 g'4 a'4 b'4 b'4 \forceBreak
 a'4 g'4 a'4 ( g'4) fis'4 ( e'4) \finalis
 fis'4 g'4 a'4 a'4 a'4 a'4 a'4  b'4 ( c''4) b'4 b'4 b'4 \forceBreak
 b'4 a'4 g'4 a'4 ( \once \tweak #'font-size #-4 g' ) fis'4 ( e'4) \divisioMaior
 fis'4 g'4 a'4 a'4 a'4 a'4 a'4 a'4 b'4 a'4 ( g'4) fis'4 ( e'4) \finalis
 \forceBreak
 fis'4 g'4 a'4 a'4 a'4 ( b'4) a'4 g'4 fis'4  g'4 g'4 fis'4 g'4 a'4 b'4 \divisioMinima
  b'4 ( c''4) \forceBreak
 b'4 b'4 a'4 g'4 a'4 ( g'4) fis'4 ( e'4) \divisioMaior
 fis'4 g'4 a'4 a'4 a'4 a'4 b'4 a'4 ( g'4) fis'4 ( e'4) \finalis
 \forceBreak
 g'4 fis'4 g'4 a'4 a'4 a'4 ( b'4) a'4 g'4 fis'4 \divisioMinima
  b'4 ( c''4) b'4 b'4 b'4 b'4 \forceBreak
 a'4 g'4 a'4 a'4 ( g'4) fis'4 ( e'4) \finalis
 g'4 g'4 fis'4 g'4 a'4 a'4 a'4 ( b'4) a'4 fis'4 \divisioMinima
 g'4 g'4 fis'4 g'4 \forceBreak
 a'4 b'4 a'4 g'4 a'4 ( g'4) fis'4 ( e'4) \finalis
 fis'4 g'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 b'4 \forceBreak
 a'4 g'4 a'4 fis'4 \finalis
 g'4 a'4 fis'4 g'4 a'4 b'4  b'4 ( c''4) b'4 b'4 \divisioMinima
 b'4 ( a'4 g'4) a'4 ( g'4 )( \quil a'4 b'4 a'4 g'4 fis'4) e'4 ( fis'4) \finalis

}

altoMusic = {
r2*15/2 \finalis
r2*7/2 \divisioMinima
g'2*3/2 e'2*3/2 d'2 ~ \divisioMaior
d'4 e'2 ~ e'2 fis'2 d'2 ~ \divisioMinima
d'2 e'2*3/2 ~ e'2*4/2 ~ \divisioMinima
e'2 ~ e'2*3/2 ~ e'2 b2 \finalis
d'2 ~ d'4 ~ d'2 ~ d'2*3/2 ~ \divisioMinima
d'2 ~ d'2 ~ \divisioMinima
d'2*4/2 e'2 ~ e'2 d'2*3/2 \finalis
d'2 e'4 -\tweak Glissando.Y-offset #-0.8 \glissando fis'4 g'4 fis'2 \divisioMinima
g'2*3/2 e'2*3/2 ~ e'4 ~ e'2 b2 \finalis
d'2*3/2 ~ d'2 ~ \divisioMinima
d'2 b2 c'2*3/2 \divisioMinima
d'2 ~ d'2*3/2 ~ d'2 ~ d'2 b2 \finalis
d'2*3/2 ~ d'2 ~ d'2 ~ \divisioMinima
d'2 ~ d'2*3/2 ~ d'2 ~ d'2 \divisioMinima
e'2*3/2 ~ e'2 ~ e'2 b2 ~ b2 \finalis
d'2*3/2 ~ d'2 ~ d'2*3/2 ~ \divisioMinima
d'4 ~ d'2 ~ d'2 ~ d'2 ~ d'2 ~ \divisioMinima
d'4 e'2*3/2 ~ e'2 b2 \finalis
r4 d'2 e'2*4/2 fis'2*3/2 ~ fis'2 \divisioMinima
g'2*3/2 e'2*3/2 ~ e'2 c'2 \divisioMaior
e'2 ~ e'2*4/2 d'2 -\tweak Glissando.Y-offset #-0.8 \glissando fis'4 e'4  \finalis
d'2 ~ d'2 c'2 d'2 ~ d'2 ~ \divisioMinima
d'2 e'2 ~ e'2 d'2 ~ \divisioMinima
d'2*4/2 e'2 ~ e'2 b2 \finalis
d'2*3/2 e'2 fis'2*3/2 ~ fis'2 \divisioMinima
g'2*3/2 e'2 ~ e'2 b2 \finalis
b2 d'2*3/2 ~ d'2 ~ \divisioMaior
d'2*4/2 c'2*3/2 ~ c'4 d'4 \finalis
e'2*3/2 ~ e'2 ~ e'2*3/2 fis'2 d'2*3/2 ~ \divisioMinima
d'2 ~ d'2 ~ d'2*4/2 ~ d'2 -\tweak Glissando.Y-offset #-0.8 \glissando fis'4 e'4 \divisioMaior
d'2 ~ d'2*3/2 b2 ~ b2 ~ b2 \finalis
d'2 ~ d'2*3/2 ~ d'2 ~ d'2*3/2 e'2 ~ e'2*3/2 b2 ~ b2 ~ \divisioMaior
b2 c'2*4/2 d'2*3/2 ~ d'2 b2 \finalis
r2 e'2 fis'2 e'2*3/2 d'2 ~ d'2 ~ d'2 \divisioMinima
e'2 ~ e'2*4/2 b2*4/2 \divisioMaior
d'2 e'2*3/2 fis'2 -\tweak Glissando.Y-offset #-0.8 \glissando a'4 g'4 fis'4 e'4 \finalis
d'2*3/2 ~ d'2 ~ d'2 ~ d'2 ~ d'4 \divisioMinima
e'2*4/2 ~ e'2 ~ e'2*3/2 b2 ~ b2 \finalis
r4 d'2*3/2 e'2 d'2*4/2 ~ \divisioMinima
d'2*4/2 ~ d'2 ~ d'2 b2 ~ b2 \finalis
d'2 ~ d'2 c'2*4/2 d'2 e'2 d'2 \finalis
d'4 ~ d'2*3/2 ~ d'2 e'2*3/2 d'4 ~ \divisioMinima
d'2*3/2 ~ d'2*3/2 ~ d'2 c'2 ~ c'4 b4 \finalis
}

tenorMusic = {
r2*15/2 \finalis
r2*7/2 \divisioMinima
e'2*3/2 c'2*3/2 b2 ~ \divisioMaior
b4 d'2 c'2 d'2 b2 ~ \divisioMinima
b2 c'2*3/2 b2*4/2 ~ \divisioMinima
b2 ~ b2*3/2 ~ b2 a4 g4 \finalis
a2 g4 fis2 a2*3/2 \divisioMinima
b2 fis2 \divisioMinima
g2*4/2 ~ g2 a2 b2*3/2 \finalis
r2 c'4 ~ c'2 d'2 ~ \divisioMinima
d'2*3/2 ~ d'2*3/2 c'4 b2 g2 \finalis
g2*3/2 fis2 \divisioMinima
e2 ~ e2 ~ e2*3/2 \divisioMinima
d2 e2*3/2 fis2 g2 ~ g2 \finalis
fis2*3/2 g2 a2 \divisioMinima
g2 a2*3/2 ~ a2 fis2 \divisioMinima
g2*3/2 ~ g2 b2 a2 g2 \finalis
g2*3/2 fis2 b2*3/2 ~ \divisioMinima
b4 a2 fis2 g2 a2 ~ \divisioMinima
a4 ~ a2*3/2 b2 g2 \finalis
r4 b2 c'2*4/2 d'2*3/2 ~ d'2 ~ \divisioMinima
d'2*3/2 ~ d'2*3/2 c'2 a2 \divisioMaior
b2 c'2*4/2 b2 ~ b2 \finalis
d2 e2 ~ e2 d2 fis2 \divisioMinima
g2 ~ g2 a2 ~ a2 \divisioMinima
g2*4/2 b2 a2 ~ a4 g4 \finalis
b2*3/2 c'2 d'2*3/2 ~ d'2 ~ \divisioMinima
d'2*3/2 c'2 b2 g2 \finalis
g2 ~ g2*3/2 fis2 \divisioMaior
g2*4/2 e2*3/2 ~ e4 d4 \finalis
c'2*3/2 ~ c'2 ~ c'2*3/2 ~ c'2 b2*3/2 ~ \divisioMinima
b2 a2 ~ a2*4/2 b2 ~ b2 \divisioMaior
a2 fis2*3/2 \shiftRight e2 fis2 g2 \finalis
a2 g2*3/2 fis2 g2*3/2 ~ g2 a2*3/2 ~ a2 g2 \divisioMaior
d2 e2*4/2 fis2*3/2 g2 ~ g2 \finalis
d'2 ~ d'2 ~ d'2 c'2*3/2 b2 a2 g2 ~ \divisioMinima
g2 fis2*4/2 g2*4/2 \divisioMaior
\shiftRight b2 c'2*3/2 d'2 ~ d'2 b2 \finalis
b2*3/2 a2 \shiftRight g2 fis2 a4 \divisioMinima
g2*4/2 ~ g2 a2*3/2 ~ a2 g2 \finalis
r4 b2*3/2 c'2 b2*4/2 ~ \divisioMinima
b2*4/2 a2 ~ a2 ~ a2 ~ a4 g4 \finalis
d2 e2 ~ e2*4/2 fis2 b2 a2 \finalis
b4 a2*3/2 g2 fis2*3/2 ~ fis4 \divisioMinima
g2*3/2 ~ g2*3/2 fis2 a2 g4 fis4 \finalis
}

bassMusic = {
r2*15/2 r2*7/2 r2*8/2 \divisioMaior
r4 a2 ~ a2 \shiftRight d'2 r2 \divisioMinima
a2 ~ a2*3/2 ~ a2*4/2 \divisioMinima
g2 fis2*3/2 e2 ~ e2 \finalis
d2 ~ d4 ~ d2 ~ d2*3/2 \divisioMinima
b,2 ~ b,2 ~ \divisioMinima
b,2*4/2 c2 ~ c2 b,2*3/2 \finalis
b2 ~ b4 a2 \shiftRight d'2 \divisioMinima
g2*3/2 a2*3/2 ~ a4 e2 ~ e2 \finalis
b,2*3/2 d2 \divisioMinima
a,2 ~ a,2 ~ a,2*3/2 \divisioMinima
b,2 ~ b,2*3/2 ~ b,2 ~ b,2 e2 \finalis
d2*3/2 ~ d2 ~ d2 \divisioMinima
b,2 ~ b,2*3/2 d2 ~ d2 \divisioMinima
c2*3/2 e2 ~ e2 ~ e2 ~ e2 \finalis
b,2*3/2 ~ b,2 ~ b,2*3/2 ~ \divisioMinima
b,4 d2 ~ d2 ~ d2 ~ d2 ~ \divisioMinima
d4 c2*3/2 e2 ~ e2 \finalis
r2*3/2 a2*4/2 \shiftRight d'2*3/2 b2 \divisioMinima
g2*3/2 a2*3/2 ~ a2 g2 ~ \divisioMaior
g2 a2*4/2 \shiftRight b2 g2 \finalis
b,2 a,2 ~ a,2 b,2 ~ b,2 ~ \divisioMinima
b,2 c2 ~ c2 b,2 ~ \divisioMinima
b,2*4/2 c2 ~ c2 e2 \finalis
r2*3/2 a2 \shiftRight d'2*3/2 b2 \divisioMinima
g2*3/2 a2 e2 ~ e2 \finalis
e2 b,2*3/2 ~ b,2 \divisioMaior
g,2*4/2 a,2*3/2 b,4 ~ b,4 \finalis
r2*3/2 b2 a2*3/2 ~ a2 ~ a2*3/2 \divisioMinima
g2 ~ g2 fis2*4/2 \shiftRight b2 g2 \divisioMaior
d2 ~ d2*3/2 e2 ~ e2 ~ e2 \finalis
d2 ~ d2*3/2 ~ d2 \shiftRight g2*3/2 c2 ~ c2*3/2 e2 ~ e2 \divisioMaior
b,2 ~ b,2*4/2 ~ b,2*3/2 ~ b,2 e2 \finalis
r2*15/2 \divisioMinima
e2 ~ e2*4/2 ~ e2*4/2 \divisioMaior
b2 a2*3/2 \shiftRight d'2 b2 g2 \finalis
r2*3/2 fis2 g2 d2 ~ d4 ~ \divisioMinima
d2*4/2 c2 ~ c2*3/2 e2 ~ e2 \finalis
r2*4/2 a2 ~ a2*4/2 \divisioMinima
g2*4/2 ~ g2 fis2 e2 ~ e2 \finalis
b,2 a,2 ~ a,2*4/2 d2 ~ d2 ~ d2 \finalis
b,4 ~ b,2*3/2 ~ b,2 ~ b,2*3/2 ~ b,4 \divisioMinima
g,2*3/2 b,2*3/2 ~ b,2 ~ b,2 ~ b,4 ~ b,4 \finalis
}

voiceLines = {
\voiceLineStyle


s2*22/2
\allowVoiceLineBreak
\voiceLine "down" "up" e'2*3/2 e'2*1/2


s2*4/2
\allowVoiceLineBreak
\voiceLine "up" "down" d'2*1/2 d'2*1/2


s2*3/2
\allowVoiceLineBreak
\voiceLine "down" "up" d'2*2/2 d'2*1/2


s2*15/2
\allowVoiceLineBreak
\voiceLine "down" "up" b2*2/2 b2*1/2


s2*38/2
\allowVoiceLineBreak
\voiceLine "down" "up" b2*2/2 b2*1/2


s2*45/2
\allowVoiceLineBreak
\voiceLine "down" "up" b2*2/2 b2*1/2

s2*24/2
\allowVoiceLineBreak
\voiceLine "down" "up" b2*2/2 b2*1/2

s2*19/2
\allowVoiceLineBreak
\voiceLine "down" "down" b2*2/2 b2*1/2

s2*54/2
\allowVoiceLineBreak
\voiceLine "down" "up" b2*2/2 b2*1/2

s2*106/2
\allowVoiceLineBreak
\voiceLine "up" "down" b2*4/2 b2*1/2


s2*6/2
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
