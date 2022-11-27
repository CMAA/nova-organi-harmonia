\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.5
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Victimae paschali" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Victimae paschali"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Victimae paschali" }
    \line {}
  }
}

chantText = \lyricmode {
Vi -- cti -- mæ pa -- schá -- li lau -- des 
\set stanza = " * " ím -- mo -- lent Chri -- sti -- á -- ni. 
A -- gnus re -- dé -- mit o -- ves: 
Chri -- stus ín -- no -- cens Pa -- tri re -- con -- ci -- li -- á -- vit pec -- ca -- tó -- res. 
Mors et vi -- ta du -- él -- lo con -- fli -- xé -- re mi -- rán -- do: 
dux vi -- tæ mór -- tu -- us, re -- gnat vi -- vus. 
Dic no -- bis Ma -- rí -- a, quid vi -- dí -- sti in vi -- a? 
Se -- púl -- crum Chri -- sti vi -- vén -- tis, 
et gló -- ri -- am vi -- di re -- sur -- gén -- tis: 
An -- gé -- li -- cos te -- stes, su -- dá -- ri -- um, et ve -- stes. 
Sur -- ré -- xit Chri -- stus spes me -- a: 
præ -- cé -- det su -- os in Ga -- li -- lǽ -- am. 
Sci -- mus Chri -- stum sur -- re -- xís -- se a mór -- tu -- is ve -- re: 
tu no -- bis, vi -- ctor Rex, mi -- se -- ré -- re. 
A -- men, Al -- le -- lú -- ia. }

chantMusic = {
\tieDown   e'4 d'4 e'4 g'4 a'4 g'4 fis'4 e'4 \divisioMinima
 b'4 a'4 fis'4 a'4 g'4 fis'4 e'4 \finalis \forceBreak

 b'4 d''4 e''4 b'4 a'4 b'4 b'4 \divisioMaior
 b'4 a'4 b'4 a'4 g'4 fis'4 e'4 \divisioMinima \forceBreak

 g'4 a'4 e'4 fis'4 e'4 d'4 fis'4 g'4 fis'4 e'4 \finalis
 b'4 d''4 e''4 b'4 a'4 b'4 b'4 \divisioMinima \forceBreak

 b'4 a'4 b'4 a'4 g'4 fis'4 e'4 \divisioMaior
 g'4 a'4 e'4 fis'4 e'4 d'4 fis'4 g'4 fis'4 e'4 \finalis \forceBreak

 b4 d'4 e'4 g'4 a'4 fis'4 ( e'4) \divisioMinima
 d'4 g'4 fis'4 e'4 fis'4 d'4 e'4 \finalis
 g'4 b'4 a'4 \forceBreak
 b'4 g'4 a'4 g'4 ( \once \tweak #'font-size #-4 fis' ) e'4 \divisioMaior
 e'4 a'4 g'4 a'4 b'4 a'4 g'4 a'4 g'4 ( \once \tweak #'font-size #-4 fis' ) e'4 \finalis
 b4 d'4 e'4 g'4 \forceBreak
 a'4 fis'4 ( e'4) \divisioMinima
 d'4 g'4 fis'4 e'4 fis'4 d'4 e'4 \finalis
 g'4 b'4 a'4 b'4 g'4 a'4 g'4 ( fis'4) e'4 \divisioMaior
 e'4 \forceBreak
 a'4 g'4 a'4 b'4 a'4 g'4 a'4 g'4 ( fis'4) e'4 \finalis
 b'4 d''4 e''4 b'4 b'4 a'4 b'4 b'4 \divisioMinima \forceBreak

 b'4 d''4 a'4 g'4 fis'4 e'4 \divisioMaior
 d'4 g'4 fis'4 a'4 b'4 b'4 \divisioMinima
 g'4 a'4 g'4 ( fis'4) e'4 \finalis \forceBreak

 e'4 ( fis'4 e'4) d'4 ( e'4) \divisioMinima
 d'4 g'4 fis'4 ( \once \tweak #'font-size #-4 e' ) e'4 \finalis

}

altoMusic = {
b2*4/2 ~ b2 ~ b2 ~ \divisioMinima
b2*3/2 ~ b2 ~ b2 \finalis
e'2*3/2 ~ e'2 d'2 ~ \divisioMaior
d'2 ~ d'2*3/2 b2 \divisioMinima
cis'2*4/2 b2 d'2 b2 \finalis
e'2 ~ e'2*3/2 ~ e'2 \divisioMinima
fis'2 d'2*3/2 b2 \divisioMaior
e'4 ~ e'2 d'2 ~ d'4 b2 ~ b2 ~ \finalis
b2*4/2 ~ b2*3/2 \divisioMinima
d'2 ~ d'2*3/2 ~ d'2 ~ \finalis
d'2*3/2 ~ d'2*3/2 b2 ~ b4 \divisioMaior
e'4 ~ e'2*3/2 ~ e'2 d'2 ~ d'2 b4 ~ \finalis
b2*4/2 ~ b2*3/2 ~ \divisioMinima
b4 ~ b2*4/2 g2 \finalis
b2*3/2 d'2*3/2 ~ d'2 b4 ~ \divisioMaior
b4 d'2 ~ d'2*3/2 ~ d'2 b2 ~ b4 \finalis
g'2 e'2 ~ e'2 d'2 ~ \divisioMinima
d'4 ~ d'2*3/2 b2 ~ \divisioMaior
b2*3/2 ~ b2 d'4 ~ \divisioMinima
d'2 ~ d'2 b4 \finalis
a2*3/2 b2 \divisioMinima
a2 g2 ~ g4 \finalis
}

tenorMusic = {
r2*6/2 g2 \divisioMinima
fis2*3/2 e2 a4 g4 ~ \finalis
g2*3/2 fis2 ~ fis2 \divisioMaior
g2 fis2*3/2 g2 ~ \divisioMinima
g2*4/2 fis2 a2 g2 ~ \finalis
g2 ~ g2*3/2 ~ g2 \divisioMinima
fis2 ~ fis2*3/2 g2 \divisioMaior
b4 a2 ~ a2*3/2 ~ a2 g2 ~ \finalis
g2 ~ g2 ~ g2*3/2 \divisioMinima
fis2 b2*3/2 ~ b2 \finalis
r4 fis2 g2*3/2 a2 g4 ~ \divisioMaior
g4 ~ g2*3/2 ~ g2 ~ g2 a2 g4 ~ \finalis
g4 fis2*3/2 e2*3/2 ~ \divisioMinima
e4 ~ e2*4/2 ~ e2 ~ \finalis
e4 fis2 g2*3/2 a2 g4 ~ \divisioMaior
g4 fis2 g2*3/2 b2 a2 g4 \finalis
b2 g2 fis2 ~ fis2 ~ \divisioMinima
fis4 g2*3/2 ~ g2 ~ \divisioMaior
g4 ~ g2 fis2 ~ fis4 \divisioMinima
b2 a2 g4 \finalis
fis2*3/2 g2 \divisioMinima
r2 b,2 e4 \finalis
}

bassMusic = {
g2 fis2 e2 ~ e2 \divisioMinima
d2*3/2 e2 ~ e2 \finalis
r2*3/2 cis2 b,2 ~ \divisioMaior
b,2 d2*3/2 e2 \divisioMinima
a,2*4/2 b,2 ~ b,2 e2 \finalis
r2 fis2*3/2 e2 \divisioMinima
d2 b,2*3/2 e2 ~ \divisioMaior
e4 cis2 b,2*3/2 d2 e2 \finalis
r2 fis2 e2*3/2 \divisioMinima
r2*5/2 a4 g4 \finalis
b,4 ~ b,2 ~ b,2*3/2 e2 ~ e4 ~ \divisioMaior
e4 d2*3/2 cis2 b,2 ~ b,2 e4 \finalis
g,2*4/2 ~ g,2*3/2 \divisioMinima
fis,4 e,2*4/2 ~ e,2 \finalis
r4 d2 b,2*3/2 d2 e4 ~ \divisioMaior
e4 b,2 ~ b,2*3/2 ~ b,2 e2 ~ e4 ~ \finalis
e2 ~ e2 c2 b,2 ~ \divisioMinima
b,4 ~ b,2*3/2 e2 \divisioMaior
fis4 e2 d2 b,4 ~ \divisioMinima
b,2 ~ b,2 e4 \finalis
r2*3/2 e2 \divisioMinima
e,2 ~ e,2 ~ e,4 \finalis
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
