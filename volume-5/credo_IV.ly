\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.110
%(volume.page)

%Proofed 3/14

global = {
 \key d \dorian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

chantText = \lyricmode {
Cre -- do in u -- num De -- um, 
Pa -- trem o -- mni -- po -- tén -- tem, 
fa -- ctó -- rem cœ -- li et ter -- ræ, vi -- si -- bí -- li -- um ó -- mni -- um, et in -- vi -- si -- bí -- li -- um. 
Et in u -- num Dó -- mi -- num Je -- sum Chri -- stum, 
Fí -- li -- um De -- i u -- ni -- gé -- ni -- tum. 
Et ex Pa -- tre na -- tum an -- te ó -- mni -- a sǽ -- cu -- la. 
De -- um de De -- o, lu -- men de lú -- mi -- ne, De -- um ve -- rum de De -- o ve -- ro. 
Gé -- ni -- tum, non fa -- ctum, con -- sub -- stan -- ti -- á -- lem Pa -- tri: 
per quem ó -- mni -- a fa -- cta sunt. 
Qui pro -- pter nos hó -- mi -- nes, et pro -- pter no -- stram sa -- lú -- tem de -- scén -- dit de cœ -- lis. 
Et in -- car -- ná -- tus est de Spí -- ri -- tu San -- cto 
ex Ma -- rí -- a Vír -- gi -- ne: 
Et ho -- mo fa -- ctus est. 
Cru -- ci -- fí -- xus é -- ti -- am pro no -- bis: 
sub Pón -- ti -- o Pi -- lá -- to pas -- sus, et se -- púl -- tus est. 
Et re -- sur -- ré -- xit tér -- ti -- a di -- e, se -- cún -- dum Scri -- ptú -- ras. 
Et a -- scén -- dit in cœ -- lum: 
se -- det ad dé -- xte -- ram Pa -- tris. 
Et í -- te -- rum ven -- tú -- rus est cum gló -- ri -- a, ju -- di -- cá -- re vi -- vos et mór -- tu -- os: 
cu -- jus re -- gni non e -- rit fi -- nis. 
Et in Spí -- ri -- tum San -- ctum, Dó -- mi -- num, et vi -- vi -- fi -- cán -- tem: 
qui ex Pa -- tre Fi -- li -- ó -- que pro -- cé -- dit. 
Qui cum Pa -- tre et Fí -- li -- o si -- mul ad -- o -- rá -- tur. et con -- glo -- ri -- fi -- cá -- tur: 
qui lo -- cú -- tus est per Pro -- phé -- tas. 
Et u -- nam san -- ctam ca -- thó -- li -- cam et a -- po -- stó -- li -- cam Ec -- clé -- si -- am. 
Con -- fí -- te -- or u -- num ba -- ptís -- ma in re -- mis -- si -- ó -- nem pec -- ca -- to -- rum. 
Et ex -- spe -- cto re -- sur -- re -- cti -- ó -- nem mor -- tu -- ó -- rum. 
Et vi -- tam ven -- tú -- ri sǽ -- cu -- li. 
A -- _ _ _ _ men. }

chantMusic = {
\tieDown   g'4 e'4 f'4 d'4 e'4 g'4 a'4 \finalis
 a'4 d'4 a'4 g'4 f'4 e'4 ( d'4 c'4) d'4 \divisioMaior
 \forceBreak
 e'4 g'4 a'4 b'4 c''4 b'4 b'4 ( a'4 g'4) a'4 \divisioMinima
 b'4 c''4 d''4 c''4 b'4 b'4 a'4 g'4 b'4 \forceBreak
 c''4 b'4 a'4 b'4 ( a'4) g'4 a'4 \finalis
 a'4 d'4 a'4 a'4 g'4 f'4 e'4 d'4 c'4 \forceBreak
 d'4 ( e'4 f'4) e'4 \divisioMaior
 e'4 g'4 a'4 b'4 c''4 b'4 a'4 b'4 ( a'4) g'4 a'4 \finalis
 b'4 c''4 \forceBreak
 d''4 c''4 b'4 a'4 \divisioMinima
 a'4 d'4 a'4 g'4 a'4 g'4 f'4 e'4 \finalis
 d'4 c'4 e'4 g'4 a'4 \divisioMinima
 \forceBreak
 b'4 c''4 b'4 a'4 g'4 a'4 \divisioMinima
 g'4 f'4 e'4 d'4 e'4 f'4 e'4 d'4 ( c'4) d'4 \finalis
 \forceBreak
 a'4 g'4 a'4 b'4 c''4 ( b'4) a'4 \divisioMinima
 g'4 a'4 g'4 f'4 e'4 d'4 c'4 ( d'4 e'4) e'4 \divisioMaior
 \forceBreak
 e'4 g'4 a'4 d'4 g'4 f'4 ( e'4) e'4 d'4 \finalis
 a'4 g'4 a'4 b'4 c''4 b'4 a'4 \divisioMinima
 \forceBreak
 a'4 a'4 g'4 a'4 d'4 e'4 f'4 g'4 \divisioMinima
 g'4 a'4 g'4 f'4 e'4 ( d'4 c'4) d'4 \finalis
 \forceBreak
 d''4 c''4 d''4 c''4 b'4 a'4 g'4 c''4 b'4 a'4 g'4 a'4 \divisioMaior
 a'4 a'4 g'4 a'4 \forceBreak
 g'4 f'4 e'4 \divisioMaior
 e'4 g'4 e'4 f'4 ( e'4) e'4 d'4 \finalis
 d'4 c'4 d'4 ( f'4 e'4) d'4 f'4 g'4 a'4 c''4 \forceBreak
 b'4 ( a'4 g'4) a'4 \divisioMaior
 a'4 d'4 e'4 f'4 g'4 f'4 ( e'4 d'4) c'4 \divisioMinima
 f'4 e'4 f'4 d'4 e'4 ( d'4) c'4 d'4 \finalis
 \forceBreak
 d''4 c''4 a'4 c''4 d''4 c''4 b'4 a'4 g'4 a'4 \divisioMinima
 g'4 a'4 g'4 f'4 e'4 ( d'4 c'4) d'4 \finalis
 \forceBreak
 d'4 e'4 f'4 g'4 f'4 g'4 ( a'4) a'4 \divisioMaior
 a'4 b'4 c''4 b'4 a'4 b'4 g'4 ( a'4) a'4 \finalis
 \forceBreak
 d''4 c''4 b'4 a'4 g'4 f'4 g'4 a'4 g'4 c''4 b'4 a'4 \divisioMinima
 g'4 a'4 g'4 ( f'4 e'4) d'4 \forceBreak
 c'4 d'4 e'4 f'4 d'4 e'4 \divisioMaior
 a'4 g'4 a'4 b'4 c''4 b'4 a'4 g'4 a'4 \finalis
 \forceBreak
 a'4 d'4 e'4 f'4 g'4 g'4 a'4 g'4 f'4 e'4 d'4 e'4 f'4 g'4 e'4 d'4 \divisioMaior
 \forceBreak
 d'4 e'4 f'4 e'4 f'4 d'4 e'4 f'4 e'4 d'4 ( c'4) d'4 \finalis
 a'4 f'4 g'4 a'4 b'4 \forceBreak
 c''4 b'4 a'4 \divisioMinima
 a'4 g'4 a'4 c''4 b'4 a'4 \divisioMinima
 d''4 c''4 b'4 a'4 g'4 f'4 ( g'4) e'4 \divisioMaior
 \forceBreak
 d'4 c'4 d'4 e'4 f'4 g'4 e'4 f'4 ( e'4) d'4 \finalis
 d''4 d''4 c''4 b'4 a'4 a'4 \forceBreak
 b'4 c''4 d''4 \divisioMinima
 d''4 c''4 b'4 a'4 g'4 a'4 g'4 f'4 g'4 e'4 \finalis
 \forceBreak
 d'4 a'4 g'4 a'4 c''4 b'4 a'4 g'4 f'4 \divisioMinima
 d'4 c'4 d'4 f'4 g'4 f'4 e'4 f'4 \forceBreak
 e'4 ( d'4 c'4) d'4 \finalis
 a'4 b'4 c''4 d''4 d''4 e''4 d''4 c''4 b'4 a'4 c''4 b'4 b'4 ( a'4 g'4) a'4 \finalis
 \forceBreak
 a'4 g'4 ( f'4) e'4 f'4 e'4 d'4 e'4 ( d'4) c'4 d'4 \finalis
 f'4 ( g'4) a'4 ( d'4.) f'4 ( g'4 a'4 g'4 f'4 e'4.) g'4 ( f'4 e'4 d'4) e'4 ( d'4 c'4) d'4 \finalis

}

altoMusic = {
r2*7/2 \finalis
d'2 ~ d'2*3/2 a2*3/2 ~ a4 ~ \divisioMaior
a4 e'2 ~ e'2*3/2 ~ e'2*3/2 ~ e'4 ~ \divisioMinima
e'2 g'2*3/2 ~ g'2*4/2 e'2*3/2 ~ e'2*3/2 ~ e'4 \finalis
d'2 c'2 ~ c'2*3/2 a2 c'2*3/2 ~ c'4 \divisioMaior
d'2*3/2 c'2*4/2 d'2*3/2 c'4 \finalis
e'2 ~ e'2 ~ e'2 \divisioMinima
d'2 e'2*3/2 d'2 c'4 \finalis
g2*3/2 d'2 ~ \divisioMinima
d'2*3/2 b2 c'4 \divisioMinima
d'2 -\tweak Glissando.Y-offset #-0.8 \glissando e'4 d'4 e'4 a2 ~ a2 ~ a4 \finalis
e'2 ~ e'2 ~ e'2 ~ e'4 \divisioMinima
d'2 d'2 a2 c'2*3/2 ~ c'4 \divisioMaior
b2 a2*3/2 ~ a2*3/2 ~ a4 \finalis
e'4 d'2*3/2 c'2*3/2 ~ \divisioMinima
c'4 ~ c'2 ~ c'2*3/2 ~ c'2 ~ \divisioMinima
c'4 ~ c'2*3/2 ~ c'2*3/2 a4 \finalis
r2*3/2 e'2 f'2 e'2*3/2 ~ e'2 ~ \divisioMaior
e'2 d'2 c'2*3/2 ~ \divisioMaior
c'4 ~ c'2 a2*3/2 ~ a4 \finalis
a2 ~ a2*4/2 c'2 ~ c'2 d'2*3/2 c'4 ~ \divisioMaior
c'4 ~ c'2*4/2 ~ c'2*3/2 a4 ~ \divisioMinima
a2*4/2 ~ <a ~ g>2*3/2 <a f>4 \finalis
a'2*3/2 g'2 e'2*3/2 ~ e'2 ~ \divisioMinima
e'4 d'2*3/2 a2*3/2 ~ a4 \finalis
a2 c'2*3/2 ~ c'2 ~ c'4 \divisioMaior
e'2*3/2 ~ e'2*3/2 d'2 c'4 \finalis
r4 g'2*4/2 f'2*4/2 e'2 ~ e'4 \divisioMinima
d'2 c'2*4/2 ~ c'2*3/2 ~ c'2 ~ c'4 \divisioMaior
e'2 ~ e'2*3/2 f'2 e'2 \finalis
c'2 ~ c'2*3/2 ~ c'2 ~ c'2*4/2 ~ c'2*3/2 a2 ~ \divisioMaior
a2 ~ a2*4/2 ~ a2*3/2 ~ a2 ~ a4 \finalis
f'2 e'2*3/2 ~ e'2*3/2 ~ \divisioMinima
e'2 ~ e'2 ~ e'2 ~ \divisioMinima
e'4 g'2 d'2 c'2*3/2 \divisioMaior
a2 ~ a2*3/2 ~ a2 ~ a2 ~ a4 \finalis
r4 e'2 ~ e'2*3/2 ~ e'2 g'4 ~ \divisioMinima
g'4 ~ g'2 e'2 d'2 c'2 ~ c'4 \finalis
r4 e'2*3/2 ~ e'2*3/2 c'2 \divisioMinima
a2 ~ a2 ~ a2 ~ a2 ~ a2*3/2 ~ a4 \finalis
e'2 ~ e'2 a'2*4/2 f'2 e'2 d'2*3/2 c'4 \finalis
r4 a2*4/2 ~ a2 ~ a2*3/2 ~ a4 \finalis
a2 ~ a2*5/4 c'2*5/2 ~ c'2*3/4 ~ c'2*4/2 ~ c'2*3/2 a4 \finalis
}

tenorMusic = {
r2*7/2 \finalis
f2 e2*3/2 g2*3/2 f4 ~ \divisioMaior
f4 c'2 a2*3/2 b2*3/2 c'4 ~ \divisioMinima
c'2 b2*3/2 d'2*4/2 ~ d'2*3/2 b2*3/2 c'4 \finalis
f2 ~ f2 g2*3/2 a2 ~ a2*3/2 g4 \divisioMaior
e2*3/2 ~ e2*4/2 ~ e2*3/2 ~ e4 \finalis
e'2 d'2 c'2 \divisioMinima
b2 a2*3/2 ~ a2 ~ a4 \finalis
e2*3/2 ~ e2 ~ \divisioMinima
e2*3/2 ~ e2 ~ e4 \divisioMinima
a2 ~ a2*3/2 ~ a2 g2 f4 \finalis
c'2 ~ c'2 d'2 c'4 \divisioMinima
a2 ~ a2 ~ a2 g2*3/2 ~ g4 ~ \divisioMaior
g2 ~ g2*3/2 ~ g2*3/2 f4 \finalis
e4 ~ e2*3/2 ~ e2*3/2 ~ \divisioMinima
e4 g2 f2*3/2 d2 ~ \divisioMinima
d4 e2*3/2 g2*3/2 f4 \finalis
d'2*3/2 ~ d'2 ~ d'2 r2*3/2 b4 c'4 \divisioMaior
a2 ~ a2 ~ a2*3/2 ~ \divisioMaior
a4 g2 ~ g2*3/2 f4 \finalis
e2 f2*4/2 ~ f2 e2 ~ e2*3/2 ~ e4 ~ \divisioMaior
e4 f2*4/2 g2*3/2 e4 \divisioMinima
d2*4/2 ~ d2*3/2 ~ d4 \finalis
f'2*3/2 e'2 ~ e'2*3/2 d'4 c'4 ~ \divisioMinima
c'4 a2*3/2 g2*3/2 f4 \finalis
f2 ~ f2*3/2 d2 e4 \divisioMaior
a2*3/2 g2*3/2 \shiftRight e2 ~ e4 \finalis
r4 e'2*4/2 d'2*4/2 ~ d'2 c'4 \divisioMinima
b2 \shiftRight a2*4/2 ~ a2*3/2 ~ a2 g4 \divisioMaior
e2 a2*3/2 c'2 b4 c'4 \finalis
f2 e2*3/2 d2 e2*4/2 g2*3/2 ~ g4 f4 \divisioMaior
d2 c2*4/2 d2*3/2 e2 f4 \finalis
d'2 ~ d'2*3/2 c'2*3/2 ~ \divisioMinima
c'2 ~ c'2 d'4 c'4 ~ \divisioMinima
c'4 d'2 b2 a2*3/2 ~ \divisioMaior
a2 ~ a2*3/2 ~ a2 ~ a2 f4 \finalis
r4 e'2 d'2*3/2 c'2 b4 ~ \divisioMinima
b4 c'2 b2 ~ b2 a2 g4 \finalis
r4 c'2*3/2 b2*3/2 a2 \divisioMinima
g2 f2 e2 d2 g2*3/2 f4 \finalis
c'2 a2 ~ a2*4/2 ~ a2 g2 \shiftRight e2*3/2 ~ e4 \finalis
r4 a2*4/2 g2 e2*3/2 f4 \finalis
a2 g2*5/4 f2 c2*3/2 d2*3/4 e2*4/2 g2*3/2 f4 \finalis
}

bassMusic = {
r2*7/2 \finalis
d2 ~ d2*3/2 ~ d2*3/2 ~ d4 ~ \divisioMaior
d4 c2 ~ c2*3/2 e2*3/2 a4 ~ \divisioMinima
a2 g2*3/2 ~ g2*4/2 a2*3/2 ~ a2*3/2 ~ a4 \finalis
d2 ~ d2 e2*3/2 f2 ~ f2*3/2 c4 \divisioMaior
b,2*3/2 a,2*4/2 ~ a,2*3/2 ~ a,4 \finalis
s2*14/2 \finalis
c2*3/2 b,2 \divisioMinima
a,2*3/2 ~ a,2 ~ a,4 \divisioMinima
b,2 c2*3/2 d2 ~ d2 ~ d4 \finalis
r2 b2 a2 ~ a4 \divisioMinima
d2 e2 f2 e2*3/2 c4 ~ \divisioMaior
c2 ~ c2*3/2 d2*3/2 ~ d4 \finalis
c4 b,2*3/2 a,2*3/2 ~ \divisioMinima
a,4 ~ a,2 ~ a,2*3/2 ~ a,2 ~ \divisioMinima
a,4 ~ a,2*3/2 ~ a,2*3/2 d4 \finalis
s2*7/2 a2*3/2 ~ a2 \divisioMaior
c2 b,2 a,2*3/2 ~ \divisioMaior
a,4 ~ a,2 d2*3/2 ~ d4 \finalis
d2 ~ d2*4/2 a,2 ~ a,2 ~ a,2*3/2 ~ a,4 ~ \divisioMaior
a,4 ~ a,2*4/2 ~ a,2*3/2 ~ a,4 \divisioMinima
\shiftRight d2*4/2 d,2*3/2 ~ d,4 \finalis
s2*5/2 a2*3/2 ~ a2 ~ \divisioMinima
a4 d2*3/2 ~ d2*3/2 ~ d4 \finalis
d2 a,2*3/2 ~ a,2 ~ a,4 \divisioMaior
c2*3/2 e2*3/2 ~ e2 a,4 \finalis
s2*9/2 a2 ~ a4 ~ \divisioMinima
a2 ~ a2*4/2 g2*3/2 f2 c4 ~ \divisioMaior
c2 ~ c2*3/2 d2 e4 a4 \finalis
a,2 ~ a,2*3/2 ~ a,2 ~ a,2*4/2 ~ a,2*3/2 d2 \divisioMaior
f,2 ~ f,2*4/2 ~ f,2*3/2 a,2 d4 \finalis
s2*8/2 \divisioMinima
b2 a2 ~ a2 ~ \divisioMinima
a4 g2 ~ g2 \shiftRight a2*3/2 \divisioMaior
g2 f2*3/2 e2 d2 ~ d4 \finalis
r4 a2 ~ a2*3/2 ~ a2 g4 ~ \divisioMinima
g4 e2 ~ e2 ~ e2 f2 c4 \finalis
s2*9/2 \divisioMinima
s2*6/2 d2 ~ d2*3/2 ~ d4 \finalis
a2 g2 f2*4/2 d2 e2 ~ e2*3/2 a,4 \finalis
r4 d2*4/2 ~ d2 ~ d2*3/2 ~ d4 \finalis
d2 ~ d2*5/4 a,2 ~ a,2*3/2 ~ a,2*3/4 ~ a,2*4/2 ~ a,2*3/2 d4 \finalis
}

voiceLines = {
\voiceLineStyle


s2*107/2
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" a2*1/2 a2*1/2


s2*51/2
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" a2*2/2 a2*1/2


s2*54/2
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" a2*1/2 a2*0/2


s2*0/2
\allowVoiceLineBreak
\voiceLine "down" "up" a2*3/2 a2*1/2


s2*67/2
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" d2*2/2 d2*1/2


s2*69/2
\allowVoiceLineBreak
\voiceLine "down" "up" a2*2/2 a2*1/2


s2*11/2
\allowVoiceLineBreak
\offsetVoiceLineY
\voiceLine "down" "down" a2*2/2 a2*1/2

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
