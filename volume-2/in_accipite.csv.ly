\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.88
%(volume.page)

global = {
 \key e \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Accipite" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Accipite"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Accipite" }
    \line {}
  }
}

chantText = \lyricmode {
Ac -- cí -- pi -- te 
\set stanza = " * " ju -- cun -- di -- tá -- tem gló -- _ ri -- æ _ ve -- _ _ stræ, al -- le -- _ lú -- ia: 
grá -- ti -- as a -- gén -- tes De -- o, al -- le -- lú -- _ _ ia: 
qui vos ad cœ -- lé -- sti -- a re -- gna vo -- cá -- _ vit, 
al -- le -- lú -- ia, _ al -- le -- lú -- _ ia, al -- le -- _ _ lú -- ia. Ps. 
At -- tén -- di -- te pó -- pu -- le me -- us le -- gem me -- am: 
\set stanza = " * " 
in -- cli -- ná -- te au -- rem ve -- stram in ver -- ba o -- ris me -- i. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   g'4 ( d'4) f'4 ( g'4 a'4) g'4 g'4 \divisioMinima
 g'4 ( d'4) f'4 g'4 ( a'4 g'4)  a'4 ( bes'4 a'4) g'4 ( a'4 g'4) \divisioMinima \forceBreak

 g'4 ( a'4) c''4 ( b'4) c''4 c''4 ( c''4) ~ c''4 ( g'4) g'4 c''4 ( c''4 a'4) b'4 ( g'4 a'4) e'4 \divisioMinima
 f'4 ( g'\prall a'4) g'4. f'4 ( a'4 g'4) e'4 ( g'4 f'4 f'4) f'4 ( e'4) \divisioMaxima \forceBreak

 g'4 ( e'4) f'4 g'4 g'4 g'4 ( a'4) g'4  a'4 ( bes'4 g'4) f'4 ( g'4 f'4) \divisioMinima
 g'4 g'4 g'4 ( a'4) c''4 ( a'4 f'4) a'4 ( g'4) g'4 ( a'4) \divisioMaior \forceBreak

 e'4 g'4 a'4 g'4 a'4 ( g'4 a'4) f'4 ( g'4) g'4 ( e'4) f'4 ( g'4) f'4 \divisioMinima
 f'4 ( f'4 f'4) d'4 ( f'4) g'4 ( f'4 g'4) g'4 ( f'4) \divisioMaxima \forceBreak

 f'4 ( \once \tweak #'font-size #-4 g' ) g'4 f'4 ( \once \tweak #'font-size #-4 g' ) g'4. f'4 ( f'4 d'4) \divisioMinima
 f'4 f'4 e'4 ( f'4 g'4 a'4 f'4 d'4) g'4 ( f'4) f'4 \divisioMinima
 f'4 ( \once \tweak #'font-size #-4 g' ) g'4. f'4 ( f'4 d'4) g'4 ( f'4 e'4) e'4 ( g'4 f'4 f'4) f'4 ( e'4) \finalis \forceBreak

 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 ( g'4) g'4 ( b'4) b'4 a'4 ( b'4) a'4 \divisioMaxima \forceBreak

 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 g'4 ( f'4) g'4 ( a'4) g'4 e'4 \finalis \forceBreak

 a'4 ( g'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 ( g'4) g'4 ( b'4) b'4 a'4 ( b'4) a'4 \divisioMaxima \forceBreak

 a'4 ( g'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 ( g'4) g'4 ( b'4) b'4 a'4 ( b'4) a'4 \divisioMaxima \forceBreak

 a'4 ( g'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 g'4 ( f'4) g'4 ( a'4) g'4 e'4 \finalis

}

altoMusic = {
r2*6/2 c'4 \divisioMinima
d'2*3/2 c'2*3/2 f'2*3/2 ~ f'2 e'4 ~ \divisioMinima
e'2 ~ e'2*3/2 f'2 g'2 ~ g'4 e'2*3/2 ~ e'2*3/2 ~ e'4 \divisioMinima
f'2*3/2 c'2*3/4 ~ c'2*3/2 b2*4/2 c'2 ~ \divisioMaxima
c'2*3/2 ~ c'2 ~ c'2*3/2 ~ c'2*3/2 ~ c'2*3/2 ~ \divisioMinima
c'2 ~ c'2 ~ c'2*3/2 ~ c'2 ~ c'2 ~ \divisioMaior
c'2 ~ c'2 ~ c'2*3/2 ~ c'2 d'2 c'2 d'4 ~ \divisioMinima
d'2*3/2 ~ d'2 ~ d'2*3/2 c'2 ~ \divisioMaxima
c'2*3/2 ~ c'2 ~ c'2*3/4 d'2 ~ d'4 \divisioMinima
c'2 ~ c'2*3/2 ~ c'2*3/2 ~ c'2 ~ c'4 ~ \divisioMinima
c'2 ~ c'2*3/4 a2*3/2 ~ a2*3/2 b2*4/2 c'2 \finalis
e'2 ~ e'2 ~ e'2 ~ e'2*3/2 ~ e'4 ~ e'2 ~ e'2*3/2 ~ e'2 ~ e'4 \divisioMaxima
c'2 d'2 e'2 ~ e'2*4/2 ~ \divisioMinima
e'4 c'2 ~ c'2 b2 ~ b4 c'4 \finalis
e'2 ~ e'2*3/2 ~ e'2*3/2 ~ e'2*3/2 ~ \divisioMinima
e'2 ~ e'2 ~ e'2*3/2 ~ e'2 ~ e'4 ~ \divisioMaxima
e'2 d'2 ~ d'2*4/2 c'2*3/2 \divisioMinima
b2 d'2*3/2 ~ d'2 c'4 ~ \divisioMaxima
c'2 d'2 e'2*3/2 ~ e'2 d'2 c'2 b2 \finalis
}

tenorMusic = {
g2 a2*4/2 r4 \divisioMinima
a2*3/2 g2*3/2 c'2*3/2 ~ c'2*3/2 ~ \divisioMinima
c'2 ~ c'2*3/2 ~ c'2 ~ c'2*3/2 ~ c'2*3/2 d'2*3/2 c'4 ~ \divisioMinima
c'2*3/2 ~ c'2*3/4 a2*3/2 ~ a2*4/2 ~ a2 \divisioMaxima
g2*3/2 f2 e2*3/2 f2*3/2 a2*3/2 \divisioMinima
g2 ~ g2 f2*3/2 e2 ~ e2 \divisioMaior
g2 f2 e2*3/2 a2 ~ a2*4/2 ~ a4 ~ \divisioMinima
a2*3/2 ~ a2 bes2*3/2 a2 \divisioMaxima
bes2*3/2 a2 ~ a2*3/4 ~ a2*3/2 ~ \divisioMinima
a2 g2*3/2 f2*3/2 e2 f4 \divisioMinima
d2 e2*3/4 f2*3/2 e2*3/2 d2*4/2 a2 \finalis
c'2 d'2 ~ d'2 c'2*3/2 ~ c'4 b2 d'2*3/2 ~ d'2 c'4 \divisioMaxima
e2 ~ e2 ~ e2 a2*4/2 ~ \divisioMinima
a4 ~ a2 ~ a2 ~ a2 ~ a2 \finalis
c'2 d'2*3/2 ~ d'2*3/2 c'2*3/2 ~ \divisioMinima
c'2 b2 d'2*3/2 ~ d'2 c'4 \divisioMaxima
e2 ~ e2 ~ e2*4/2 ~ e2*3/2 ~ \divisioMinima
e2 ~ e2*3/2 ~ e2 ~ e4 ~ \divisioMaxima
e2 ~ e2 ~ e2*3/2 a2 ~ a2 ~ a2 ~ a4 g4 \finalis
}

bassMusic = {
r2 d2*4/2 e4 \divisioMinima
d2*3/2 e2*3/2 f2*3/2 c'2*3/2 \divisioMinima
b2 a2*3/2 ~ a2 e2*3/2 a2*3/2 ~ a2*3/2 ~ a4 ~ \divisioMinima
a2*3/2 e2*3/4 ~ e2*3/2 d2*4/2 a,2 \divisioMaxima
c2*3/2 ~ c2 ~ c2*3/2 f2*3/2 ~ f2*3/2 ~ \divisioMinima
f2 e2 d2*3/2 c2 a,2 ~ \divisioMaior
a,2 ~ a,2 ~ a,2*3/2 ~ a,2 d2*4/2 ~ d4 \divisioMinima
c2*3/2 bes,2 ~ bes,2*3/2 f2 ~ \divisioMaxima
f2*3/2 ~ f2 e2*3/4 d2*3/2 \divisioMinima
a,2 ~ a,2*3/2 ~ a,2*3/2 ~ a,2 ~ a,4 \divisioMinima
c2 ~ c2*3/4 d2*3/2 ~ d2*3/2 a,2*4/2 ~ a,2 \finalis
r2 b2 a2 ~ a2*3/2 e4 ~ e2 ~ e2*3/2 a2 ~ a4 \divisioMaxima
a,2 b,2 c2 ~ c2*4/2 ~ \divisioMinima
c4 f2 e2 d2 a,2 \finalis
r2 b2*3/2 a2*3/2 ~ a2*3/2 ~ \divisioMinima
a2 e2 ~ e2*3/2 a2 ~ a4 \divisioMaxima
c2 b,2 a,2*4/2 ~ a,2*3/2 \divisioMinima
e2 e,2*3/2 a,2 ~ a,4 ~ \divisioMaxima
a,2 b,2 c2*3/2 ~ c2 d2 ~ d2 e2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Introit"
        "IV"
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
