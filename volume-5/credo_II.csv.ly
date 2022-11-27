\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.102
%(volume.page)

global = {
 %\key fis \locrian
 \key b \phrygian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

\header {
  title = \markup \center-column {"Credo II." \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page ""
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "" }
    \line {}
  }
}

chantText = \lyricmode {
Cre -- do in u -- num De -- um, 
Pa -- trem o -- mni -- po -- tén -- tem, fa -- ctó -- rem cœ -- li et ter -- ræ, vi -- si -- bí -- li -- um ó -- mni -- um, et in -- vi -- si -- bí -- li -- um. 
Et in u -- num Dó -- mi -- num Je -- sum Chri -- stum, Fí -- li -- um De -- i u -- ni -- gé -- ni -- tum. 
Et ex Pa -- tre na -- tum an -- te ó -- mni -- a sǽ -- cu -- la. 
De -- um de De -- o, lu -- men de lú -- mi -- ne, De -- um ve -- rum de De -- o ve -- ro. 
Gé -- ni -- tum, non fa -- ctum, con -- sub -- stan -- ti -- á -- lem Pa -- tri: 
per quem ó -- mni -- a fa -- cta sunt. 
Qui pro -- pter nos hó -- mi -- nes, et pro -- pter no -- stram sa -- lú -- tem de -- scén -- dit de cœ -- lis. 
Et in -- car -- ná -- tus est de Spí -- ri -- tu San -- cto ex Ma -- rí -- a Vír -- gi -- ne: 
Et ho -- mo fa -- ctus est. 
Cru -- ci -- fí -- xus é -- ti -- am pro no -- bis: sub Pón -- ti -- o Pi -- lá -- to pas -- sus, et se -- púl -- tus est. 
Et re -- sur -- ré -- xit tér -- ti -- a di -- e, se -- cún -- dum Scri -- ptú -- ras. 
Et a -- scén -- dit in cœ -- lum: 
se -- det ad dé -- xte -- ram Pa -- tris. 
Et í -- te -- rum ven -- tú -- rus est cum gló -- ri -- a, ju -- di -- cá -- re vi -- vos et mór -- tu -- os: 
cu -- jus re -- gni non e -- rit fi -- nis. 
Et in Spí -- ri -- tum San -- ctum, Dó -- mi -- num, et vi -- vi -- fi -- cán -- tem: 
qui ex Pa -- tre Fi -- li -- ó -- que pro -- cé -- dit. 
Qui cum Pa -- tre et Fí -- li -- o si -- mul ad -- o -- rá -- tur, et con -- glo -- ri -- fi -- cá -- tur: 
qui lo -- cú -- tus est per Pro -- phé -- tas. 
Et u -- nam san -- ctam ca -- thó -- li -- cam et a -- po -- stó -- li -- cam Ec -- clé -- si -- am. 
Con -- fí -- te -- or u -- num ba -- ptís -- ma in re -- mis -- si -- ó -- nem pec -- ca -- to -- rum. 
Et ex -- spe -- cto re -- sur -- re -- cti -- o -- nem mor -- tu -- o -- rum. 
Et vi -- tam ven -- tú -- ri sǽ -- cu -- li. 
A -- _ men. }

chantMusic = {
\tieDown   a'4 fis'4 g'4 e'4 fis'4 a'4 b'4 \finalis
 b'4 b'4 b'4 a'4 g'4 a'4 g'4 \divisioMinima
 \forceBreak
 fis'4 g'4 a'4 a'4 g'4 b'4 a'4 a'4 \divisioMinima
 fis'4 g'4 a'4 a'4 a'4 a'4 g'4 fis'4 \forceBreak
 b'4 b'4 a'4 g'4 a'4 ( b'4) a'4 fis'4 \finalis
 fis'4 g'4 a'4 a'4 a'4 g'4 fis'4 \forceBreak
 e'4 fis'4 a'4 b'4 \divisioMinima
 b'4 b'4 b'4 b'4 b'4 a'4 g'4 a'4 ( b'4) a'4 fis'4 \finalis
 \forceBreak
 fis'4 g'4 a'4 fis'4 a'4 b'4 b'4 b'4 b'4 a'4 g'4 a'4 ( b'4) a'4 fis'4 \finalis
 \forceBreak
 fis'4 g'4 a'4 a'4 a'4 \divisioMinima
 a'4 g'4 b'4 a'4 g'4 fis'4 \divisioMinima
 e'4 fis'4 a'4 b'4 b'4 \forceBreak
 a'4 g'4 a'4 g'4 \finalis
 fis'4 g'4 a'4 a'4 a'4 fis'4 \divisioMinima
 g'4 fis'4 e'4 fis'4 a'4 fis'4 a'4 b'4 \divisioMaior
 \forceBreak
 b'4 b'4 b'4 a'4 g'4 a'4 ( b'4) a'4 fis'4 \finalis
 fis'4 g'4 a'4 a'4 a'4 g'4 fis'4 \divisioMinima
 \forceBreak
 e'4 fis'4 g'4 a'4 fis'4 g'4 a'4 a'4 \divisioMinima
 a'4 a'4 g'4 b'4 a'4 a'4 \finalis
 \forceBreak
 e'4 fis'4 g'4 a'4 g'4 fis'4 g'4 fis'4 e'4 fis'4 a'4 b'4 \divisioMinima
 b'4 b'4 a'4 g'4 \forceBreak
 a'4 ( b'4) a'4 fis'4 \divisioMaior
 b'4 a'4 g'4 a'4 ( b'4) a'4 fis'4 \finalis
 fis'4 g'4 a'4 fis'4 g'4 fis'4 e'4 fis'4 \forceBreak
 a'4 b'4 \divisioMinima
 b'4 b'4 b'4 a'4 g'4 a'4 g'4 \divisioMinima
 b'4 b'4 a'4 g'4 a'4 ( b'4) a'4 fis'4 \finalis
 \forceBreak
 e'4 fis'4 g'4 a'4 fis'4 g'4 e'4 fis'4 a'4 b'4 \divisioMinima
 b'4 b'4 a'4 g'4 a'4 g'4 \finalis
 \forceBreak
 fis'4 g'4 a'4 g'4 fis'4 a'4 b'4 \divisioMaior
 b'4 b'4 b'4 b'4 a'4 g'4 a'4 g'4 \finalis
 \forceBreak
 fis'4 g'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 g'4 fis'4 \divisioMinima
 e'4 fis'4 a'4 b'4 \forceBreak
 b'4 a'4 g'4 a'4 ( b'4) a'4 fis'4 \divisioMaior
 fis'4 g'4 a'4 a'4 b'4 a'4 g'4 a'4 g'4 \finalis
 \forceBreak
 fis'4 g'4 a'4 a'4 a'4 a'4 a'4 a'4 g'4 fis'4 \divisioMinima
 b'4 b'4 a'4 g'4 a'4 g'4 \divisioMaxima
 \forceBreak
 fis'4 g'4 a'4 a'4 a'4 a'4 a'4 g'4 b'4 a'4 a'4 \finalis
 fis'4 g'4 a'4 a'4 a'4 \forceBreak
 a'4 g'4 fis'4 \divisioMinima
 g'4 fis'4 e'4 fis'4 a'4 b'4 \divisioMinima
 b'4 b'4 b'4 a'4 g'4 a'4 g'4 \divisioMaxima
 \forceBreak
 fis'4 g'4 a'4 a'4 a'4 g'4 b'4 a'4 a'4 \finalis
 fis'4 g'4 a'4 a'4 a'4 a'4 \forceBreak
 a'4 g'4 fis'4 \divisioMinima
 b'4 b'4 b'4 b'4 b'4 a'4 g'4 a'4 ( b'4) a'4 fis'4 \finalis
 \forceBreak
 fis'4 g'4 a'4 a'4 a'4 a'4 a'4 a'4 fis'4 \divisioMinima
 g'4 fis'4 e'4 fis'4 a'4 b'4 \forceBreak
 a'4 g'4 a'4 g'4 \finalis
 fis'4 g'4 a'4 fis'4 g'4 fis'4 e'4 fis'4 a'4 b'4 a'4 g'4 \forceBreak
 a'4 g'4 \finalis
 fis'4 ( g'4) a'4 fis'4 g'4 fis'4 e'4  b'4 ( c''4) b'4 b'4 \finalis
 b'4 ( a'4 g'4) a'4 ( b'4 a'4 g'4 fis'4) e'4 ( fis'4) \finalis

}

altoMusic = {
r2*7/2 \finalis
e'2 ~ e'2*3/2 d'2 ~ \divisioMinima
d'4 e'2 ~ e'2*3/2 fis'2 \divisioMinima
d'2 e'2*3/2 d'2*3/2 ~ d'2 ~ d'2 e'2*3/2 d'4 \finalis
d'2 ~ d'2 e'2*3/2 ~ e'2 d'2 ~ \divisioMinima
d'2*3/2 ~ d'2*4/2 ~ d'2*3/2 ~ d'4 \finalis
r2 fis'2 ~ fis'2 e'2 ~ e'2*3/2 fis'2*3/2 d'4 \finalis
d'2*3/2 ~ d'2 ~ \divisioMinima
d'2*3/2 ~ d'2*3/2 ~ \divisioMinima
d'2 ~ d'2*3/2 ~ d'2 e'2 \finalis
d'2*3/2 e'4 ~ e'2 \divisioMinima
d'2*4/2 e'2 fis'2 ~ \divisioMaior
fis'2 e'2*3/2 ~ e'2*3/2 d'4 \finalis
d'4 ~ d'2*3/2 ~ d'2*3/2 ~ \divisioMinima
d'2*3/2 ~ d'2*3/2 ~ d'4 c'4 ~ \divisioMinima
c'4 d'2*3/2 ~ d'2 \finalis
e'2*3/2 d'2*4/2 c'2*3/2 d'2 ~ \divisioMinima
d'4 ~ d'2*3/2 e'2*3/2 d'4 \divisioMaior
e'4 ~ e'2 ~ e'2*3/2 d'4 \finalis
d'2 ~ d'2 ~ d'2*4/2 ~ d'2 ~ \divisioMinima
d'4 c'2*4/2 b2 \divisioMinima
e'2*3/2 d'4 ~ d'2*3/2 ~ d'4 \finalis
e'2*3/2 d'2 c'2*3/2 d'2 ~ \divisioMinima
d'4 ~ d'2*3/2 ~ d'2 \finalis
d'2 ~ d'2*3/2 e'2 \divisioMaior
fis'2*3/2 e'2*3/2 d'2 \finalis
d'4 e'2*4/2 fis'2 e'2 d'2*3/2 ~ \divisioMinima
d'2 ~ d'2 ~ d'2*3/2 ~ d'2*3/2 ~ d'4 ~ \divisioMaior
d'2 e'2*3/2 ~ e'2 d'2 \finalis
d'2 ~ d'2*3/2 e'2 d'2*3/2 ~ \divisioMinima
d'2 ~ d'2 ~ d'2 \divisioMaxima
d'2 e'2 ~ e'2 ~ e'2*3/2 ~ e'2 \finalis
d'2 e'2*3/2 ~ e'2*3/2 \divisioMinima
d'2*4/2 ~ d'2 ~ \divisioMinima
d'2 ~ d'2*3/2 ~ d'2 \divisioMaxima
d'2 e'2 ~ e'4 -\tweak Glissando.Y-offset #-0.8 \glissando g'2 fis'2 \finalis
d'4 ~ d'2 ~ d'2*3/2 ~ d'2 ~ d'4 ~ \divisioMinima
d'2*3/2 ~ d'2*3/2 ~ d'4 ~ d'2 ~ d'2 \finalis
r4 e'2*3/2 ~ e'2*3/2 d'2 \divisioMinima
c'2*4/2 d'2 ~ d'2 ~ d'2 \finalis
d'2 ~ d'2 ~ d'2*4/2 ~ d'2 ~ d'2 c'4 b4 \finalis
r2 d'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando fis'4 e'4 ~ e'2 ~ e'2 \finalis
e'2*3/2 d'2*3/2 ~ d'2 ~ d'2 \finalis
}

tenorMusic = {
r2*7/2 \finalis
r2 c'2*3/2 b2 \divisioMinima
d'4 ~ d'2 c'2*3/2 d'2 ~ \divisioMinima
d'2 c'2*3/2 b2*3/2 g2 b2 c'2*3/2 d'4 \finalis
b2 a2 ~ a2*3/2 g2 fis2 \divisioMinima
g2*3/2 e2*4/2 fis2*3/2 b4 \finalis
r2 d'2 ~ d'2 c'2 d'2*3/2 ~ d'2*3/2 ~ d'4 \finalis
a2*3/2 g4 fis4 \divisioMinima
g2*3/2 d2*3/2 \divisioMinima
e2 fis2*3/2 b2 ~ b2 \finalis
d'2*3/2 ~ d'4 c'2 \divisioMinima
b2*4/2 c'2 d'2 ~ \divisioMaior
d'2 ~ d'2*3/2 c'2*3/2 b4 \finalis
fis4 e2*3/2 d2*3/2 \divisioMinima
e2*3/2 d2*3/2 e2 \divisioMinima
g4 ~ g2*3/2 ~ g4 fis4 \finalis
r2*3/2 b2*4/2 a2*3/2 g2 \divisioMinima
a4 b2*3/2 c'2*3/2 d'4 ~ \divisioMaior
d'4 c'2 ~ c'2*3/2 b4 \finalis
b2 fis2 e2*4/2 fis2 \divisioMinima
g4 ~ g2*4/2 ~ g2 ~ \divisioMinima
g2*3/2 ~ g4 fis2*3/2 b4 \finalis
c'2*3/2 b2 a2*3/2 r2 \divisioMinima
r4 b2*3/2 c'4 b4 \finalis
b2 a2*3/2 ~ a4 g4 \divisioMaior
fis2*3/2 g2*3/2 ~ g2 \finalis
d'4 ~ d'2*4/2 ~ d'2 c'2 b2*3/2 \divisioMinima
a2 g2 ~ g2*3/2 fis2*3/2 a4 \divisioMaior
b2 c'2*3/2 d'2 ~ d'2 \finalis
b2 a2*3/2 ~ a2 ~ a2*3/2 \divisioMinima
fis2 e2 d2 \divisioMaxima
a2 ~ a2 b2 d'2*3/2 ~ d'4 c'4 \finalis
d'2 ~ d'2*3/2 c'2*3/2 \divisioMinima
b2*4/2 g2 \divisioMinima
d'2 c'2*3/2 b2 \divisioMaxima
d'2 ~ d'2 c'2*3/2 d'2 \finalis
\shiftRight d4 e2 fis2*3/2 g2 a4 \divisioMinima
g2*3/2 fis2*3/2 e4 fis2 b2 \finalis
d'2*4/2 c'2*3/2 b2 \divisioMinima
r2*6/2 b2 c'4 b4 \finalis
r2 d2 e2*4/2 fis2 g2 ~ g2 \finalis
r2 b2*3/2 ~ b2 g2 a4 b4 \finalis
g2*3/2 ~ g2*3/2 a2 b2 \finalis
}

bassMusic = {
r2*7/2 \finalis
r2*7/2 \divisioMinima
r2*8/2 \divisioMinima
r2*16/2 \finalis
b,2 ~ b,2 c2*3/2 ~ c2 b,2 ~ \divisioMinima
b,2*3/2 ~ b,2*4/2 ~ b,2*3/2 ~ b,4 \finalis
r2*4/2 b2*11/2 \finalis
d2*3/2 ~ d2 \divisioMinima
b,2*3/2 ~ b,2*3/2 ~ \divisioMinima
b,2 ~ b,2*3/2 ~ b,2 e2 \finalis
r2*6/2 \divisioMinima
r2*8/2 \divisioMaior
r2*9/2 \finalis
b,4 ~ b,2*3/2 ~ b,2*3/2 ~ \divisioMinima
b,2*3/2 ~ b,2*3/2 a,2 ~ \divisioMinima
a,4 b,2*3/2 d2 \finalis
r2*12/2 \divisioMinima
r2*8/2 \divisioMaior
r2*3/2 a2*4/2 \finalis
b,2 ~ b,2 ~ b,2*4/2 ~ b,2 ~ \divisioMinima
b,4 a,2*4/2 e2 \divisioMinima
c2*3/2 b,4 ~ b,2*3/2 ~ b,4 \finalis
r2*8/2 g2 ~ \divisioMinima
g4 ~ g2*3/2 ~ g2 \finalis
b,2 ~ b,2*3/2 e2 \divisioMaior
d2*3/2 c2*3/2 b,2 \finalis
r2*12/2 \divisioMinima
r2*4/2 b,2*3/2 d2*3/2 ~ d4 \divisioMaior
a2 ~ a2*3/2 ~ a2 b2 \finalis
b,2 ~ b,2*3/2 c2 b,2*3/2 ~ \divisioMinima
b,2 ~ b,2 ~ b,2 \divisioMaxima
b,2 c2 e2 ~ e2*3/2 a2 \finalis
r2*8/2 \divisioMinima
r2*4/2 g2 ~ \divisioMinima
g2 ~ g2*3/2 ~ g2 \divisioMaxima
b2 a2 ~ a2*3/2 d2 \finalis
d4 ~ d2 ~ d2*3/2 ~ d2 ~ d4 \divisioMinima
b,2*3/2 ~ b,2*3/2 ~ b,4 ~ b,2 ~ b,2 \finalis
r2*9/2 \divisioMinima
a2*4/2 g2 ~ g2 ~ g2 \finalis
b,2 ~ b,2 ~ b,2*4/2 ~ b,2 ~ b,2 g,2 \finalis
r2 r2*3/2 g2 e2 ~ e2 \finalis
c2*3/2 b,2*3/2 ~ b,2 ~ b,2 \finalis
}

voiceLines = {
\voiceLineStyle


s2*244/2
\allowVoiceLineBreak
\voiceLine "down" "down" a2*1/2 a2*1/2


s2*123/2
\allowVoiceLineBreak
\voiceLine "down" "down" g2*2/2 g2*1/2


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        ""
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
    \new Lyrics \lyricsto chant {
      \chantText
    }
  >>
  \layout{
  }
  \midi{
    \tempo 4 = 125
  }
}
