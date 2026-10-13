\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.158
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
Cre -- do in u -- num De -- um 
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
Et a -- scén -- dit in cæ -- lum: se -- det ad déx -- te -- ram Pa -- tris. 
Et í -- te -- rum ven -- tú -- rus est cum gló -- ri -- a, ju -- di -- cá -- re vi -- vos et mór -- tu -- os: 
cu -- jus re -- gni non e -- rit fi -- nis. 
Et in Spí -- ri -- tum San -- ctum, Dó -- mi -- num, et vi -- vi -- fi -- cán -- tem: 
qui ex Pa -- tre Fi -- li -- ó -- que pro -- cé -- dit. 
Qui cum Pa -- tre et Fí -- li -- o si -- mul ad -- o -- rá -- tur. et con -- glo -- ri -- fi -- cá -- tur: 
qui lo -- cú -- tus est per Pro -- phé -- tas. 
Et u -- nam san -- ctam ca -- thó -- li -- cam et a -- po -- stó -- li -- cam Ec -- clé -- si -- am. 
Con -- fí -- te -- or u -- num ba -- ptís -- ma in re -- mis -- si -- ó -- nem pec -- ca -- to -- rum. 
Et ex -- spe -- cto re -- sur -- re -- cti -- o -- nem mor -- tu -- o -- rum. 
Et vi -- tam ven -- tú -- ri sǽ -- cu -- li. 
\set stanza = " ** "  
A -- men. _ _ }

chantMusic = {
\tieDown   a'4 ( g'4) fis'4 g'4 ( a'4) a'4 ( g'4) fis'4 ( e'4)  e'4 ( b'4 c''4) b'4 \finalis
  a'4 fis'4 g'4 e'4 fis'4 a'4 b'4 \divisioMinima
 \forceBreak
  b'4 ( c''4) b'4 b'4 b'4 b'4 a'4 ( b'4 a'4 g'4) fis'4 ( g'4 fis'4 e'4) \divisioMaior
 fis'4 ( g'4) a'4 ( g'4) fis'4 ( g'4) a'4 ( g'4) fis'4 ( e'4) e'4 ( b'4) \forceBreak
 a'4 ( b'4 a'4 g'4) fis'4 ( g'4 fis'4 e'4) \divisioMinima
 e'4 fis'4 ( g'4) a'4 g'4 fis'4 ( g'4) a'4 g'4 fis'4 ( g'4) \divisioMinima
 e'4 ( b'4) b'4 b'4 b'4 \forceBreak
 a'4 ( b'4) a'4 ( g'4) fis'4 ( g'4 fis'4 e'4) \finalis
 e'4 fis'4 ( g'4) a'4 ( g'4) fis'4 ( g'4) a'4 g'4 fis'4 ( g'4) e'4 fis'4 ( g'4) a'4 ( g'4) fis'4 ( e'4) \divisioMinima
 \forceBreak
 e'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 a'4 ( b'4) a'4 ( g'4) fis'4 ( g'4 fis'4 e'4) \finalis
 e'4 fis'4 ( g'4) a'4 ( g'4) fis'4 ( g'4) \forceBreak
 a'4 ( g'4) fis'4 ( e'4) \divisioMinima
 e'4 ( b'4) b'4 b'4 b'4 b'4 a'4 ( b'4) a'4 ( g'4) fis'4 ( g'4 fis'4 e'4) \finalis
 g'4 ( fis'4 e'4) fis'4 g'4 a'4 ( g'4) fis'4 ( g'4) \forceBreak
 a'4 ( g'4) fis'4 g'4 a'4 g'4 fis'4 ( g'4) \divisioMinima
 e'4 fis'4 ( g'4) a'4 ( g'4) fis'4 ( e'4) e'4 ( b'4) b'4 b'4 a'4 ( b'4 a'4 g'4) fis'4 ( g'4 fis'4 e'4) \finalis
 \forceBreak
 g'4 e'4 fis'4 g'4 a'4 ( g'4) fis'4 g'4 e'4 fis'4 g'4 a'4 ( g'4) fis'4 ( g'4) a'4 ( g'4) fis'4 ( e'4) \divisioMinima
 e'4 ( b'4) b'4 \forceBreak
 b'4 b'4 b'4 a'4 ( b'4) a'4 ( g'4) fis'4 ( g'4 fis'4 e'4) \finalis
 g'4 ( fis'4 e'4) fis'4 g'4 a'4 a'4 g'4 fis'4 \divisioMinima
 e'4 fis'4 g'4 \forceBreak
 a'4 ( g'4) fis'4 g'4 a'4 ( g'4) fis'4 ( e'4) \divisioMinima
 e'4 ( b'4) b'4 b'4 b'4 a'4 ( b'4 a'4 g'4) fis'4 ( g'4 fis'4 e'4) \finalis
 g'4 ( fis'4 e'4) fis'4 g'4 \forceBreak
 a'4 g'4 fis'4 g'4 a'4 g'4 fis'4 ( g'4) a'4 ( g'4) fis'4 ( e'4) \divisioMinima
 e'4 ( b'4) b'4 b'4 b'4 a'4 ( b'4) a'4 ( g'4) fis'4 ( g'4 fis'4 e'4) \divisioMaior
 \forceBreak
 e'4 ( b'4) b'4 b'4 a'4 ( b'4) a'4 ( g'4) fis'4 ( g'4 fis'4 e'4) \finalis
 e'4 fis'4 ( g'4) a'4 ( g'4) fis'4 ( g'4) a'4 g'4 fis'4 g'4 a'4 ( g'4) fis'4 \divisioMinima
 \forceBreak
 g'4 a'4 g'4 fis'4 g'4 a'4 ( g'4) fis'4 ( e'4) \divisioMinima
 e'4 ( b'4) b'4 b'4 b'4 a'4 ( b'4) a'4 ( g'4) fis'4 ( g'4 fis'4 e'4) \finalis
 \forceBreak
 g'4 ( fis'4 e'4) fis'4 g'4 a'4 ( g'4) fis'4 ( e'4) e'4 ( b'4) b'4 b'4 b'4 b'4 \divisioMinima
 b'4 b'4 b'4 b'4 a'4 ( b'4 a'4 g'4) fis'4 ( g'4 fis'4 e'4) \finalis
 \forceBreak
 e'4 fis'4 ( g'4) a'4 ( g'4) fis'4 g'4 a'4 ( g'4) fis'4 ( e'4) \divisioMinima
 e'4 ( b'4) b'4 b'4 b'4 b'4 b'4 a'4 ( b'4 a'4 g'4) fis'4 ( g'4 fis'4 e'4) \finalis
 \forceBreak
 fis'4 ( g'4) a'4 g'4 fis'4 g'4 a'4 g'4 fis'4 g'4 a'4 g'4 fis'4 ( g'4) \divisioMinima
 e'4 fis'4 ( g'4) \forceBreak
 a'4 ( g'4) fis'4 ( g'4) e'4 ( b'4) b'4 b'4 a'4 ( b'4) a'4 ( g'4) fis'4 ( g'4 fis'4 e'4) \divisioMaior
 e'4 fis'4 ( g'4) a'4 ( g'4) fis'4 ( e'4) e'4 ( b'4) b'4 b'4 \forceBreak
 a'4 ( b'4 a'4 g'4) fis'4 ( g'4 fis'4 e'4) \finalis
 e'4 fis'4 ( g'4) a'4 g'4 fis'4 ( g'4) a'4 ( \once \tweak #'font-size #-4 g' ) fis'4 ( g'4) a'4 g'4 fis'4 ( g'4) \divisioMinima
 e'4 ( b'4) b'4 \forceBreak
 b'4 b'4 a'4 ( b'4 a'4 g'4) fis'4 ( g'4 fis'4 e'4) \divisioMaior
 e'4 fis'4 ( g'4) a'4 ( g'4) fis'4 ( g'4) e'4 fis'4 ( g'4) a'4 ( g'4) fis'4 ( g'4) e'4 ( b'4) a'4 ( b'4 a'4 g'4) \forceBreak
 fis'4 ( g'4 fis'4 e'4) \finalis
 e'4 fis'4 ( g'4) a'4 ( g'4) fis'4 g'4 a'4 g'4 fis'4 g'4 e'4 fis'4 g'4 a'4 ( g'4) fis'4 ( e'4) \divisioMinima
 \forceBreak
 e'4 ( b'4) b'4 b'4 b'4 b'4 a'4 ( b'4 a'4 g'4) fis'4 ( g'4 fis'4 e'4) \divisioMaior
 e'4 fis'4 ( g'4) a'4 g'4 fis'4 ( g'4) \forceBreak
 e'4 ( b'4) b'4 a'4 ( b'4 a'4 g'4) fis'4 ( g'4 fis'4 e'4) \finalis
 fis'4 ( g'4) a'4 ( g'4) fis'4 ( g'4) a'4 ( g'4) fis'4 g'4 a'4 g'4 fis'4 ( e'4) \divisioMinima
 \forceBreak
 e'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 a'4 ( b'4) a'4 ( g'4) fis'4 ( g'4 fis'4 e'4) \finalis
 fis'4 ( g'4) a'4 g'4 fis'4 ( g'4) a'4 ( g'4) \forceBreak
 fis'4 g'4 a'4 ( g'4) fis'4 g'4 e'4 fis'4 g'4 a'4 ( g'4) fis'4 ( e'4) e'4 ( b'4) b'4 a'4 ( b'4 a'4 g'4) fis'4 ( g'4 fis'4 e'4) \finalis
 \forceBreak
 e'4 fis'4 ( g'4) a'4 ( g'4) fis'4 g'4 e'4 fis'4 g'4 a'4 ( g'4) fis'4 ( e'4) e'4 ( b'4) b'4 a'4 ( b'4 a'4 g'4) fis'4 ( g'4 fis'4 e'4) \finalis
 \forceBreak
 fis'4 ( g'4) a'4 ( g'4) fis'4 g'4 a'4 fis'4 g'4 fis'4 e'4 \divisioMinima
 e'4 ( b'4) b'4 ( a'4) ~ a'4 ( g'4)( \quil a' b'4 a'4) ~ a'4 ( g'4 fis'4) \finalis

}

altoMusic = {
r2*13/2 r2*7/2 \divisioMinima
e'2 ~ e'4 d'2*3/2 ~ d'2*4/2 b2*4/2 ~ \divisioMaior
b2 ~ b2*4/2 d'2 ~ d'2 e'2 ~ e'2*4/2 b2*4/2 ~ \divisioMinima
b4 ~ b2 e'2 ~ e'2 d'2 ~ d'2 \divisioMinima
e'2*3/2 fis'2 ~ fis'2 e'2 b2*3/2 ~ b4 \finalis
b4 ~ b2 ~ b2*4/2 d'2 ~ d'2 ~ d'4 ~ d'2 b2*4/2 \divisioMinima
e'2*4/2 ~ e'2*4/2 ~ e'2*4/2 b2*3/2 ~ b4 \finalis
e'4 ~ e'2 ~ e'2*4/2 d'2 -\tweak Glissando.Y-offset #-0.8 \glissando fis'4 e'4  \divisioMinima
e'2*3/2 ~ e'2*3/2 e'2 -\tweak Glissando.Y-offset #-0.8 \glissando a'4 g'4 r2*4/2 \finalis
e'2 ~ e'4 d'2 ~ d'2*4/2 e'2 d'2 c'2 ~ c'2 \divisioMinima
b4 d'2 ~ d'2 ~ d'2 e'2 fis'2 d'2*4/2 ~ d'2 b2 \finalis
c'2*4/2 ~ c'2*3/2 d'2 ~ d'2 ~ d'2*4/2 ~ d'2 -\tweak Glissando.Y-offset #-0.8 \glissando fis'4 e'4  \divisioMinima
e'2*3/2 ~ e'2*3/2 ~ e'2*4/2 d'2 -\tweak Glissando.Y-offset #-0.8 \glissando fis'4 e'4  \finalis
b2*3/2 d'2*3/2 e'2 d'4 ~ \divisioMinima
d'4 c'2 ~ c'2*4/2 b2*4/2 \divisioMinima
e'2 ~ e'2*3/2 ~ e'2 ~ e'2 b2*3/2 ~ b4 \finalis
d'2*3/2 ~ d'2 e'2 -\tweak Glissando.Y-offset #-0.8 \glissando fis'4 g'4 e'2*4/2 d'2*4/2 \divisioMinima
e'2*3/2 fis'2 g'2 ~ g'2 -\tweak Glissando.Y-offset #-0.8 \glissando fis'4 g'4 r2 \divisioMaior
e'2 ~ e'2 ~ e'2 ~ e'2 d'2 -\tweak Glissando.Y-offset #-0.8 \glissando fis'4 e'4 \finalis
e'4 ~ e'2 ~ e'2*4/2 d'2*4/2 ~ d'2*3/2 \divisioMinima
c'4 b2*4/2 ~ b2*4/2 \divisioMinima
e'2*3/2 ~ e'2 ~ e'2*4/2 b2*3/2 ~ b4 \finalis
d'2*3/2 ~ d'2 e'2*4/2 ~ e'2*4/2 ~ e'2 ~ \divisioMinima
e'4 fis'2*3/2 e'2*4/2 b2*3/2 ~ b4 \finalis
r4 b2 d'2 ~ d'2 b2 ~ b2 \divisioMinima
e'2*4/2 ~ e'2*3/2 ~ e'2 ~ e'2 b2*3/2 ~ b4 \finalis
d'2 ~ d'2 ~ d'2 ~ d'2*4/2 ~ d'2 ~ d'2 -\tweak Glissando.Y-offset #-0.8 \glissando \divisioMinima
e'4 ~ e'2 d'2*4/2 e'2*4/2 ~ e'2*4/2 ~ e'2*4/2 ~ \divisioMaior
e'4 ~ e'2 d'2 ~ d'2 e'2 ~ e'2 ~ e'2 ~ e'2 d'2 -\tweak Glissando.Y-offset #-0.8 \glissando fis'4 e'4  \finalis
e'4 b2 c'2 d'2 e'2*4/2 d'2 ~ d'2 \divisioMinima
e'2 fis'4 ~ fis'2 d'2*4/2 ~ d'2 b2 ~ \divisioMaior
b4 ~ b2 d'2 ~ d'2*3/2 ~ d'2 ~ d'2*4/2 e'2 ~ e'2*4/2 b2*3/2 ~ b4 \finalis
r4 e'2 d'2*4/2 e'2*3/2 ~ e'2 c'2 b2*4/2 \divisioMinima
e'2 ~ e'2*4/2 ~ e'2*4/2 ~ e'2 b2 ~ \divisioMaior
b4 ~ b2 d'2 ~ d'2 e'2*3/2 ~ e'2*4/2 b2*3/2 ~ b4 \finalis
d'2 ~ d'2*4/2 ~ d'2*4/2 c'2 ~ c'2 \divisioMinima
b2 e'2 ~ e'2 d'2 ~ d'2*4/2 ~ d'2 b2 \finalis
d'2 e'2 fis'2 e'2 fis'2 d'2*3/2 c'2*4/2 b2*4/2 e'2*3/2 ~ e'2*4/2 d'2 b2 \finalis
r4 b2 ~ b2*3/2 ~ b2*4/2 d'2 ~ d'2 b2*3/2 e'2 ~ e'2 b2*3/2 ~ b4 \finalis
d'2 ~ d'2*4/2 ~ d'2 b2*3/2 ~ \divisioMinima
b2*3/2 d'2 ~ d'2*3/2 cis'!2*3/2 d'4 \finalis
}

tenorMusic = {
r2*13/2 \finalis
r2*7/2 \divisioMinima
g2 fis4 ~ fis2*3/2 g2*4/2 ~ g2*4/2 \divisioMaior
fis2 e2*4/2 d2 g2 ~ g2 a2*4/2 ~ a2*4/2 \divisioMinima
g4 fis2 e2 a2 ~ a2 b2 ~ \divisioMinima
b2*3/2 d'2 c'2 b2 a2*3/2 g4 \finalis
g4 ~ g2 ~ g2*4/2 fis2 a2 b4 a2 g2*4/2 ~ \divisioMinima
g2*4/2 ~ g2*4/2 a2*4/2 ~ a2*3/2 g4 \finalis
g4 a2 b2*4/2 ~ b2 ~ b2 \divisioMinima
d'2*3/2 ~ d'2*3/2 c'2 d'2 b2*4/2 \finalis
b2*3/2 ~ b2 fis2*4/2 e2 a2 g2 a2 \divisioMinima
g4 ~ g2 fis2 a2 g2 fis2 ~ fis2*4/2 a2 ~ a4 g4 \finalis
a2*4/2 ~ a2*3/2 b2 ~ b2 ~ b2*4/2 a2 b2 \divisioMinima
d'2*3/2 ~ d'2*3/2 c'2*4/2 d'2 b2 \finalis
g2*3/2 a2*3/2 b2 a4 ~ \divisioMinima
a2*3/2 ~ a2*4/2 ~ a2*4/2 \divisioMinima
g2 ~ g2*3/2 ~ g2 a2 ~ a2*3/2 g4 \finalis
b2*3/2 d'2 ~ d'2 ~ d'2 c'2*4/2 b2*4/2 \divisioMinima
c'2*3/2 d'2 ~ d'2 c'2 ~ c'2*4/2 \divisioMaior
b2 ~ b2 c'2 ~ c'2 d'2 b2 \finalis
g4 a2 b2*4/2 ~ b2*4/2 a2*3/2 ~ \divisioMinima
a4 ~ a2*4/2 g2*4/2 ~ \divisioMinima
g2*3/2 ~ g2 a2*4/2 ~ a2*3/2 g4 \finalis
b2*3/2 ~ b2 c'2*4/2 b2*4/2 ~ b2 ~ \divisioMinima
b4 ~ b2*3/2 ~ b2*4/2 a2*3/2 g4 \finalis
g4 ~ g2 fis2 a2 ~ a2 g2 ~ \divisioMinima
g2*4/2 ~ g2*3/2 ~ g2 a2 ~ a2*3/2 g4 \finalis
b2 ~ b2 a2 b2*4/2 a2 \shiftRight b2 \divisioMinima
d'4 c'2 b2*4/2 ~ b2*4/2 c'2*4/2 ~ c'2*4/2 ~ \divisioMaior
c'4 b2 a2 b2 c'2 d'2 ~ d'2 c'2 d'2 b2 \finalis
g4 ~ g2 ~ g2 a2 ~ a2*4/2 ~ a2 b2 ~ \divisioMinima
b2 ~ b4 ~ b2 fis2*4/2 a2 ~ a2 ~ \divisioMaior
a4 g2 fis2 a2*3/2 ~ a2 g2*4/2 ~ g2 a2*4/2 ~ a2*3/2 g4 \finalis
r4 c'2 b2*4/2 c'2*3/2 b2 a2 g2*4/2 ~ \divisioMinima
g2 ~ g2*4/2 ~ g2*4/2 a2 ~ a2 ~ \divisioMaior
a4 g2 fis2 a2 g2*3/2 a2*4/2 ~ a2*3/2 g4 \finalis
a2 fis2*4/2 e2*4/2 ~ e2 g2 ~ \divisioMinima
g2 ~ g2 fis2 ~ fis2 ~ fis2*4/2 a2 ~ a4 g4 \finalis
d'2 ~ d'2 ~ d'2 c'2 d'2 b2*3/2 a2*4/2 e2*4/2 ~ e2*3/2 ~ e2*4/2 a2 ~ a4 g4 \finalis
g4 ~ g2 fis2*3/2 e2*4/2 fis2 a2 g2*3/2 ~ g2 a2 ~ a2*3/2 g4 \finalis
b2 a2*4/2 ~ a2 ~ a2*3/2 \divisioMinima
g2*3/2 fis2 e2*3/2 ~ e2*3/2 b4 \finalis
}

bassMusic = {
r2*13/2 r2*7/2 \divisioMinima
e2 b,4 ~ b,2*3/2 ~ b,2*4/2 e2*4/2 \divisioMaior
d2 \shiftRight e2*4/2 b,2 ~ b,2 c2 ~ c2*4/2 e2*4/2 ~ \divisioMinima
e4 d2 c2 ~ c2 b,2 ~ b,2 \divisioMinima
e2*3/2 ~ e2 ~ e2 ~ e2 ~ e2*3/2 ~ e4 \finalis
r4 fis2 e2*4/2 d2 ~ d2 ~ d4 ~ d2 e2*4/2 \divisioMinima
d2*4/2 c2*4/2 ~ c2*4/2 e2*3/2 ~ e4 \finalis
e4 ~ e2 ~ e2*4/2 \shiftRight b2 g2 ~ \divisioMinima
g2*3/2 a2*3/2 ~ a2 b2 g2*4/2 \finalis
e2*3/2 b,2 ~ b,2*4/2 c2 d2 e2 ~ e2 ~ \divisioMinima
e4 b,2 ~ b,2 ~ b,2 c2 d2 ~ d2*4/2 ~ d2 e2 \finalis
r2*4/2 g2*3/2 ~ g2 \shiftRight b2 e2*4/2 fis2 g2 ~ \divisioMinima
g2*3/2 a2*3/2 ~ a2*4/2 b2 g2 \finalis
e2*3/2 d2*3/2 ~ d2 ~ d4 \divisioMinima
r2*3/2 e2*4/2 ~ e2*4/2 ~ \divisioMinima
e2 d2*3/2 c2 ~ c2 e2*3/2 ~ e4 \finalis
s2*13/2 b2*4/2 ~ \divisioMinima
b2*3/2 ~ b2 e2 ~ e2 a2*4/2 ~ \divisioMaior
a2 g2 ~ g2 a2 b2 g2 \finalis
e4 ~ e2 ~ e2*4/2 b,2*4/2 ~ b,2*3/2 \divisioMinima
e4 ~ e2*4/2 ~ e2*4/2 \divisioMinima
d2*3/2 c2 ~ c2*4/2 e2*3/2 ~ e4 \finalis
s2*3/2 a2 ~ a2*4/2 ~ a2*4/2 g2 ~ \divisioMinima
g4 d2*3/2 e2*4/2 ~ e2*3/2 ~ e4 \finalis
r4 r2 d2 ~ d2 e2 ~ e2 ~ \divisioMinima
e2*4/2 d2*3/2 c2 ~ c2 e2*3/2 ~ e4 \finalis
r2 fis2 ~ fis2 e2*4/2 fis2 b2 ~ \divisioMinima
b4 a2 ~ a2*4/2 g2*4/2 ~ g2*4/2 a2*4/2 \divisioMaior
e4 ~ e2 fis2 g2 ~ g2 ~ g2 a2 ~ a2 b2 g2 \finalis
e4 ~ e2 ~ e2 d2 c2*4/2 b,2 ~ b,2 \divisioMinima
c2 d4 ~ d2 ~ d2*4/2 ~ d2 e2 ~ \divisioMaior
e4 ~ e2 d2 ~ d2*3/2 b,2 ~ b,2*4/2 c2 ~ c2*4/2 e2*3/2 ~ e4 \finalis
s2*7/2 a2*3/2 e2 ~ e2 ~ e2*4/2 ~ \divisioMinima
e2 d2*4/2 c2*4/2 ~ c2 e2 ~ \divisioMaior
e4 ~ e2 d2 ~ d2 ~ d2*3/2 c2*4/2 e2*3/2 ~ e4 \finalis
d2 ~ d2*4/2 a,2*4/2 ~ a,2 ~ a,2 \divisioMinima
e2 ~ e2 b,2 ~ b,2 d2*4/2 ~ d2 e2 \finalis
s2*21/2 d2*3/2 c2*4/2 d2 e2 \finalis
s2*10/2 d2 ~ d2 e2*3/2 c2 ~ c2 e2*3/2 ~ e4 \finalis
d2 ~ d2*4/2 b,2 e2*3/2 ~ \divisioMinima
e2*3/2 b,2 ~ b,2*3/2 ~ b,2*3/2 ~ b,4 \finalis
}

voiceLines = {
\voiceLineStyle


s2*72/2
\allowVoiceLineBreak
\voiceLine "down" "up" b2*2/2 b2*1/2


s2*56/2
\allowVoiceLineBreak
\voiceLine "down" "down" b2*2/2 b2*1/2


s2*68/2
\allowVoiceLineBreak
\voiceLine "down" "down" b2*2/2 b2*1/2


s2*72/2
\allowVoiceLineBreak
\voiceLine "down" "down" b2*2/2 b2*1/2


s2*56/2
\allowVoiceLineBreak
\voiceLine "down" "up" b2*4/2 b2*1/2


s2*77/2
\allowVoiceLineBreak
\voiceLine "down" "down" b2*2/2 b2*1/2


s2*141/2
\allowVoiceLineBreak
\voiceLine "down" "up" d'2*2/2 d'2*1/2


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
