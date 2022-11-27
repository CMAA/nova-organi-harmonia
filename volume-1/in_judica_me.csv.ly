\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.273
%(volume.page)

global = {
 \key g \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Judica me" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Judica me"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Judica me" }
    \line {}
  }
}

chantText = \lyricmode {
Ju -- di -- ca me 
\set stanza = " * " De -- us, 
et dis -- _ cér -- ne cau -- sam me -- _ am de gen -- te non san -- cta: 
ab hó -- mi -- ne in -- í -- _ quo et do -- ló -- _ so é -- ri -- pe _ me: 
qui -- a tu _ es De -- us me -- _ us, 
et for -- ti -- tú -- _ do _ me -- a. Ps. 
E -- mít -- te lu -- cem tu -- am, et ve -- ri -- tá -- tem tu -- am: 
\set stanza = " * " 
i -- psa me de -- du -- xé -- runt, et ad -- du -- xé -- runt in mon -- tem san -- ctum tu -- um, et in ta -- ber -- ná -- cu -- la tu -- a. 
Jú -- di -- ca me. }

chantMusic = {
\tieDown   e'4 ( g'4 f'4) f'4 e'4 ( f'4 g'4) g'4   g'4 ( bes'4 a'4 g'4) g'4 ( f'4) \divisioMaior
 f'4 f'4 ( f'4) ~ f'4 ( d'4) f'4 ( \once \tweak #'font-size #-4 g' ) g'4 \forceBreak
 c''4 ( c''4) a'4 ( g'4) g'4 ( a'4) c''4 ( b'4) b'4 ( a'4) \divisioMinima
 c''4 ( c''4) a'4 ( \once \tweak #'font-size #-4 b' ) g'4 ( f'4) e'4 ( f'4 g'4) e'4 ( g'4 f'4 f'4) f'4 ( e'4) \divisioMaxima
 f'4 ( g'4 f'4) e'4 ( f'\prall g'4 a'4 \forceBreak
) g'4 g'4 g'4  a'4 ( g'4) a'4 ( bes'4 g'4) g'4 ( f'4) \divisioMinima
 a'4 ( c''4) c''4 c''4 ( b'4) c''4 ( a'4 b'4) g'4 \divisioMinima
 b'4 ( b'4) a'4 \forceBreak
 a'4 ( b'\prall c''4) d''4 ( c''4 c''4) c''4 ( b'4) \divisioMaxima
 g'4 ( a'4) a'4 a'4 b'4 ( c''4 a'4) a'4 g'4 ( b'4 a'4 g'4) g'4 ( a'4) f'4 ( f'4) e'4 ( f'4 d'4) e'4 ( d'4) \divisioMaior \forceBreak

 f'4 ( \once \tweak #'font-size #-4 d' ) e'4 ( f'4) g'4  g'4. a'4 ( bes'4 g'4) g'4 ( f'4) a'4 ( g'4 f'4 g'4) e'4 ( g'4 f'4 f'4) f'4 ( e'4) \finalis
 a'4 ( g'4) g'4 ( a'4) a'4 a'4 a'4 \forceBreak
 a'4 a'4 a'4 a'4 a'4 ( g'4) g'4 ( b'4) b'4 a'4 ( b'4) a'4 \divisioMaxima
 a'4 ( g'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 \divisioMinima \forceBreak

 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 a'4 \forceBreak
 a'4 g'4 ( f'4) g'4 ( a'4) g'4 e'4 \finalis
 e'4 ( g'4 f'4) f'4 e'4 ( f'4 g'4) g'4 \finalis

}

altoMusic = {
r2*5/2 f'2 e'4 d'2*4/2 c'2 ~ \divisioMaior
c'4 d'2 ~ d'2 c'2*3/2 ~ c'2 d'2 e'2 ~ e'2 f'2 \divisioMinima
g'2 e'2 d'2 ~ d'2*3/2 c'2*4/2 ~ c'2 ~ \divisioMaxima
c'2*3/2 ~ c'2*4/2 d'2*3/2 ~ d'2*5/2 ~ d'2 \divisioMinima
f'2 ~ f'4 g'2 ~ g'2*4/2 ~ \divisioMinima
g'2*3/2 a'2*3/2 ~ a'2*3/2 g'2 ~ \divisioMaxima
g'2 ~ g'4 e'2*4/2 ~ e'4 d'2*4/2 c'2 ~ c'2 ~ c'2*3/2 a2 \divisioMaior
d'2 ~ d'2*9/4 ~ d'2*3/2 c'2 ~ c'2*4/2 ~ c'2*4/2 ~ c'2 \finalis
e'2 ~ e'2*5/2 ~ e'2*4/2 ~ e'2 ~ e'2*3/2 ~ e'2 ~ e'4 ~ \divisioMaxima
e'2 ~ e'2*5/2 ~ e'2 ~ \divisioMinima
e'2*3/2 d'2*7/2 c'2 ~ \divisioMinima
c'2*5/2 ~ c'2 b2 ~ b2 \finalis
r2*5/2 f'2 e'4 \finalis
}

tenorMusic = {
a2*3/2 c'4 ~ c'2*3/2 ~ c'4 bes2*4/2 a2 ~ \divisioMaior
a4 ~ a2 ~ a2 d2 e4 ~ e2 ~ e2 ~ e2 a2 ~ a2 \divisioMinima
g2 b2 ~ b2 a2*3/2 ~ a2*4/2 ~ a2 \divisioMaxima
f2*3/2 a2*4/2 ~ a2*3/2 g2 f2*3/2 a2 \divisioMinima
d'2 c'4 ~ c'2 e'2*4/2 \divisioMinima
d'2*3/2 e'2*3/2 d'2*3/2 ~ d'2 \divisioMaxima
c'2 b2 a2*3/2 e4 ~ e2*4/2 ~ e2 d2 g2*3/2 f2 \divisioMaior
a2 ~ a2*3/2 ~ a2*3/4 g2*3/2 ~ g2 f2*4/2 g2 d2 a2 \finalis
c'2 b2*5/2 c'2*4/2 b2 d'2*3/2 ~ d'2 c'4 \divisioMaxima
a2 b2*5/2 a2 ~ \divisioMinima
a2*3/2 ~ a2*7/2 ~ a2 \divisioMinima
e2*4/2 f4 ~ f2 ~ f2 g2 \finalis
a2*3/2 c'4 ~ c'2*3/2 ~ c'4 \finalis
}

bassMusic = {
r2*14/2 \divisioMaior
r4 d2 c2 ~ c2 ~ c4 a,2 b,2 c2 ~ c2 d2 \divisioMinima
e2 ~ e2 ~ e2 a2*3/2 r2*4/2 a,2 ~ \divisioMaxima
a,2*3/2 ~ a,2*4/2 bes,2*3/2 ~ bes,2 d2*3/2 ~ d2 ~ \divisioMinima
d2 ~ d4 e2 ~ e2*4/2 ~ \divisioMinima
e2*3/2 f2*3/2 ~ f2*3/2 g2 \divisioMaxima
e2 ~ e4 c2*4/2 ~ c4 b,2*4/2 a,2 ~ a,2 ~ a,2*3/2 d2 ~ \divisioMaior
d2 c2*3/2 besm2*3/4 bes,2*3/2 a,2 ~ a,2*4/2 ~ a,2*4/2 ~ a,2 \finalis
a2 ~ a2*5/2 ~ a2*4/2 e2 ~ e2*3/2 a2 ~ a4 \divisioMaxima
c2 ~ c2*5/2 ~ c2 ~ \divisioMinima
c2*3/2 b,2*7/2 a,2 ~ \divisioMinima
a,2*4/2 ~ a,4 d2 ~ d2 e2 \finalis
r2*8/2 \finalis
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
