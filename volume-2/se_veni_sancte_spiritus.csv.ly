\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.81
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Veni Sancte Spiritus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Veni Sancte Spiritus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Veni Sancte Spiritus" }
    \line {}
  }
}

chantText = \lyricmode {
Ve -- ni San -- cte Spí -- ri -- tus, 
Et e -- mít -- te cœ́ -- li -- tus 
Lu -- cis tu -- æ rá -- di -- um. 
Ve -- ni pa -- ter páu -- pe -- rum, 
Ve -- ni da -- tor mú -- ne -- rum, 
Ve -- ni lu -- men cór -- di -- um. 
Con -- so -- lá -- tor ó -- pti -- me, 
Dul -- cis hos -- pes á -- ni -- mæ, 
Dul -- ce re -- fri -- gé -- ri -- um. 
In la -- bó -- re ré -- qui -- es, 
In æ -- stu tem -- pé -- ri -- es, 
In fle -- tu so -- lá -- ti -- um. 
O lux be -- a -- tís -- si -- ma, 
Re -- ple cor -- dis ín -- ti -- ma 
Tu -- ó -- rum fi -- dé -- li -- um. 
Si -- ne tu -- o nú -- mi -- ne, 
Ni -- hil est in hó -- mi -- ne, 
Ni -- hil est in -- nó -- xi -- um. 
La -- va quod est sór -- di -- dum, 
Ri -- ga quod est á -- ri -- dum, 
Sa -- na quod est sáu -- ci -- um. 
Fle -- cte quod est rí -- gi -- dum, 
Fo -- ve quod est frí -- gi -- dum, 
Re -- ge quod est dé -- vi -- um. 
Da tu -- is fi -- dé -- li -- bus, 
In te con -- fi -- dén -- ti -- bus, 
Sa -- crum se -- pte -- ná -- ri -- um. 
Da vir -- tú -- tis mé -- ri -- tum, 
Da sa -- lú -- tis éx -- i -- tum, 
Da per -- én -- ne gáu -- di -- um. 
A -- men. Al -- le -- lú -- ia. }

chantMusic = {
\tieDown   d'4 e'4 fis'4 g'4 fis'4 ( e'4) d'4 e'4 \divisioMaior
 g'4 a'4 b'4  c''4 b'4 ( a'4 g'4) a'4 b'4 \divisioMaior \forceBreak

 d'4 e'4 g'4 a'4 g'4 ( fis'4 e'4) d'4 e'4 \finalis
 d'4 e'4 fis'4 g'4 fis'4 ( e'4) d'4 e'4 \divisioMaior \forceBreak

 g'4 a'4 b'4  c''4 b'4 ( a'4 g'4) a'4 b'4 \divisioMaior
 d'4 e'4 g'4 a'4 g'4 ( fis'4 e'4) d'4 e'4 \finalis \forceBreak

 b'4 d''4 e''4 e''4 d''4 ( cis''4) d''4 e''4 \divisioMaior
 d''4 b'4 d''4 ( cis''4) a'4 g'4 ( fis'4) e'4 d'4 \divisioMaior \forceBreak

 a'4 g'4 a'4 ( b'4) a'4 g'4 ( fis'4 e'4) d'4 e'4 \finalis
 b'4 d''4 e''4 e''4 d''4 ( cis''4) d''4 e''4 \divisioMaior \forceBreak

 d''4 b'4 d''4 ( cis''4) a'4 g'4 ( fis'4) e'4 d'4 \divisioMaior
 a'4 g'4 a'4 ( b'4) a'4 g'4 ( fis'4 e'4) d'4 e'4 \finalis \forceBreak

 e''4 e''4 d''4 ( cis''4) d''4 e''4 ( d''4) cis''4 b'4 \divisioMaior
 g'4 e'4 d'4 e'4 g'4 a'4 g'4 \divisioMaior \forceBreak

 a'4 ( b'4)  c''4 b'4 a'4 g'4 ( fis'4 e'4) d'4 e'4 \finalis
 e''4 e''4 d''4 ( cis''4) d''4 e''4 ( d''4) cis''4 b'4 \divisioMaior \forceBreak

 g'4 e'4 d'4 e'4 g'4 a'4 g'4 \divisioMaior
 a'4 ( b'4)  c''4 b'4 a'4 g'4 ( fis'4 e'4) d'4 e'4 \finalis \forceBreak

 b'4 d''4 cis''4 ( b'4) cis''4 d''4 ( cis''4) b'4 a'4 \divisioMaior
 b'4 b'4 g'4 ( fis'4) g'4 a'4 ( g'4) fis'4 e'4 \divisioMaior \forceBreak

 fis'4 a'4 b'4 a'4 d''4 cis''4 b'4 \finalis
 b'4 d''4 cis''4 ( b'4) cis''4 d''4 ( cis''4) b'4 a'4 \divisioMaior \forceBreak

 b'4 b'4 g'4 ( fis'4) g'4 a'4 ( g'4) fis'4 e'4 \divisioMaior
 fis'4 a'4 b'4 a'4 d''4 cis''4 b'4 \finalis \forceBreak

 e''4 e''4 a'4 b'4 d''4 cis''4 b'4 \divisioMaior
 b'4  c''4 b'4 ( a'4) b'4 g'4 a'4 g'4 \divisioMaior
 fis'4 a'4 \forceBreak
 b'4 e'4 g'4 fis'4 e'4 \finalis
 e''4 e''4 a'4 b'4 d''4 cis''4 b'4 \divisioMaior
 b'4  c''4 b'4 ( a'4) b'4 \forceBreak
 g'4 a'4 g'4 \divisioMaior
 fis'4 a'4 b'4 e'4 g'4 fis'4 e'4 \finalis
 e'4 ( fis'4 e'4) d'4 ( e'4) \divisioMinima
 d'4 g'4 fis'4 ( \once \tweak #'font-size #-4 e' ) e'4 \finalis

}

altoMusic = {
d'2*4/2 ~ d'2 ~ d'2 \divisioMaior
e'2 ~ e'2 d'2*4/2 ~ d'4 ~ \divisioMaior
d'2 ~ d'2 ~ d'2*3/2 ~ d'4 b4 \finalis
d'2 ~ d'2 b2*3/2 ~ b4 \divisioMaior
e'2 ~ e'2 d'2*4/2 ~ d'4 ~ \divisioMaior
d'2 cis'2 b2*4/2 ~ b4 \finalis
b'2 ~ b'2 ~ b'2*3/2 ~ b'4 \divisioMaior
fis'2 d'2*3/2 ~ d'2*3/2 ~ d'4 ~ \divisioMaior
d'2 ~ d'2*3/2 b2*4/2 ~ b4 \finalis
b'2 ~ b'2 a'2*3/2 g'4 \divisioMaior
a'2 d'2*3/2 ~ d'2*3/2 ~ d'4 \divisioMaior
b2 e'2*3/2 b2*4/2 ~ b4 \finalis
b'2 a'2*3/2 g'2*3/2 fis'4 \divisioMaior
d'2 ~ d'4 e'4 ~ e'2*3/2 ~ \divisioMaior
e'2 ~ e'2*3/2 d'2*3/2 ~ d'4 b4 \finalis
b'2 a'2*3/2 g'2*3/2 fis'4 \divisioMaior
d'2 ~ d'2 b2*3/2 \divisioMaior
e'2 ~ e'2*3/2 d'2*3/2 ~ d'4 b4 \finalis
fis'2 g'2*3/2 fis'2*3/2 ~ fis'4 ~ \divisioMaior
fis'2 d'2*3/2 ~ d'2*3/2 ~ d'4 ~ \divisioMaior
d'2 e'2 g'2 fis'4 ~ \finalis
fis'2 g'2*3/2 d'2*3/2 cis'4 \divisioMaior
fis'2 b2*3/2 ~ b2*3/2 ~ b4 ~ \divisioMaior
b2 e'2 ~ e'2 d'4 \finalis
a'2 ~ a'2 ~ a'2 ~ a'4 \divisioMaior
g'2 fis'2*3/2 d'2*3/2 ~ \divisioMaior
d'2 e'2 b2 ~ b4 \finalis
e'2 ~ e'2 ~ e'2 d'4 ~ \divisioMaior
d'2 ~ d'2*3/2 b2*3/2 \divisioMaior
d'2 ~ d'2 b2 ~ b4 \finalis
a2*3/2 b2 \divisioMinima
d'2 b2 ~ b4 \finalis
}

tenorMusic = {
b2*4/2 ~ b2*3/2 ~ b4 ~ \divisioMaior
b2 g2 fis2*4/2 g4 \divisioMaior
b2 ~ b2 ~ b2*4/2 g4 \finalis
fis2 a2 ~ a2*3/2 g4 ~ \divisioMaior
g2 a2 fis2*4/2 g4 ~ \divisioMaior
g2 ~ g2 a2*4/2 g4 \finalis
g'2*4/2 ~ g'2*3/2 ~ g'4 \divisioMaior
b2 a2*3/2 b2*3/2 a4 \divisioMaior
b2 a2*3/2 ~ a2*4/2 g4 \finalis
e'2 b2 ~ b2*3/2 ~ b4 ~ \divisioMaior
b2 a2*3/2 b2*3/2 fis4 \divisioMaior
r2 fis2*3/2 a2*4/2 g4 \finalis
g'2 fis'2*3/2 e'2*3/2 d'4 \divisioMaior
b2 ~ b2 ~ b2*3/2 ~ \divisioMaior
b2 a2*3/2 ~ a2*4/2 g4 \finalis
b2 ~ b2*3/2 ~ b2*3/2 ~ b4 ~ \divisioMaior
b2 a2 g2*3/2 ~ \divisioMaior
g2 a2*3/2 ~ a2*4/2 g4 \finalis
r2 e'2*3/2 fis'2*3/2 ~ fis'4 \divisioMaior
r2 b2*3/2 ~ b2*3/2 ~ b4 ~ \divisioMaior
b2 cis'2 e'2 d'4 \finalis
b2 ~ b2*3/2 a2*3/2 ~ a4 \divisioMaior
fis2 g2*3/2 fis2*3/2 g4 \divisioMaior
fis2 ~ fis2 ~ fis2 ~ fis4 \finalis
e'2 fis'2 ~ fis'2 ~ fis'4 \divisioMaior
e'2 d'2*3/2 ~ d'2*3/2 \divisioMaior
b2 ~ b2 a2 g4 \finalis
a2 fis2 ~ fis2 ~ fis4 \divisioMaior
g2 fis2*3/2 g2*3/2 \divisioMaior
b2 a2 ~ a2 g4 \finalis
r2*3/2 g2 ~ \divisioMinima
g2 a2 g4 \finalis
}

bassMusic = {
r2*4/2 a2*3/2 g4 \divisioMaior
e2 ~ e2 fis2*4/2 r4 \divisioMaior
fis2 ~ fis2 e2*4/2 ~ e4 \finalis
b,2 ~ b,2 e2*3/2 ~ e4 \divisioMaior
cis2 ~ cis2 d2*4/2 g4 \divisioMaior
b,2 a,2 e2*4/2 ~ e4 \finalis
r2*4/2 fis'2*3/2 e'4 \divisioMaior
r2 fis2*3/2 e2*3/2 fis4 ~ \divisioMaior
fis2 ~ fis2*3/2 e2*4/2 ~ e4 \finalis
g2 ~ g2 fis2*3/2 e4 \divisioMaior
fis2 ~ fis2*3/2 b,2*3/2 ~ b,4 \divisioMaior
e2 ~ e2*3/2 ~ e2*4/2 ~ e4 \finalis
e'2 ~ e'2*3/2 ~ e'2*3/2 r4 \divisioMaior
r2 fis2 e2*3/2 \divisioMaior
cis2 ~ cis2*3/2 b,2*4/2 e4 \finalis
g2 fis2*3/2 e2*3/2 d4 \divisioMaior
b,2 ~ b,2 e2*3/2 \divisioMaior
cis2 ~ cis2*3/2 b,2*4/2 e4 \finalis
d'2 ~ d'2*3/2 b2*3/2 d'4 ~ \divisioMaior
d'2 r2*3/2 fis2*3/2 g4 \divisioMaior
b2 ~ b2 ~ b2 ~ b4 \finalis
d2 e2*3/2 fis2*3/2 ~ fis4 \divisioMaior
d2 e2*3/2 fis2*3/2 r4 \divisioMaior
d2 cis2 b,2 ~ b,4 \finalis
cis'2 ~ cis'2 b2 d'4 ~ \divisioMaior
d'2 ~ d'2*3/2 b2*3/2 \divisioMaior
a2 g2 e2 ~ e4 \finalis
cis2 ~ cis2 b,2 ~ b,4 ~ \divisioMaior
b,2 d2*3/2 e2*3/2 \divisioMaior
b,2 ~ b,2 e2 ~ e4 \finalis
fis2*3/2 ~ fis4 e4 \divisioMinima
b,2 e2 ~ e4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        ""
        "I"
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
