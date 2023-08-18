\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.158
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Miserere mei Deus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Miserere mei Deus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Miserere mei Deus" }
    \line {}
  }
}

chantText = \lyricmode {
Mi -- se -- _ ré -- re 
\set stanza = " * " me -- _ _ i De -- us, _ _ _ _ _ _ _ _ _ 
mi -- se -- ré -- _ re me -- _ _ _ _ _ i: _ _ _ _ 
quó -- _ ni -- am in te con -- _ fí -- _ dit _ _ _ _ _ 
á -- _ ni -- _ ma _ _ _ me -- _ _ _ a. _ _ _ _ _ _ ℣. 
Mi -- sit de cœ -- _ _ _ _ _ _ _ _ lo, 
et li -- be -- rá -- _ _ vit me: 
de -- dit in op -- pró -- _ _ _ _ _ _ bri -- um _ _ _ 
con -- _ _ cul -- cán -- _ _ _ tes 
\set stanza = " * " me. _ _ _ _ _ _ }

chantMusic = {
\tieDown   d'4 d'4. c'4 ( e'4 d'4) d'4 d'4  f'4 ( f'4) ~ f'4 ( d'4) ~ d'4 ( c'4) d'4 \divisioMinima
 f'4 f'4. d'4 ( f'4 g'4) f'4 ( f'4) ~ f'4 ( d'4 \forceBreak
) f'4 ( f'4) g'4 ( e'4) f'4 ( d'4 c'4) f'4 ( d'4) e'4 ( d'4) ~ d'4 ( c'4) \divisioMaxima
 c'4 ( f'4) g'4 ( f'4 g'4)  g'4 ( f'4) g'4 bes'4 ( g'4 a'4) a'4  c''4 ( a'4 a'4 g'4) a'4 ( bes'4 g'4 f'4) \divisioMinima \forceBreak

 g'4 ( a'4) c''4 ( c''4 a'4 f'4.) a'4 ( g'4 f'4) ~ f'4 ( e'4 d'4) d'4 f'4 ( f'4 d'4) f'4 ( g'4 f'4) ~ f'4 ( f'4) d'4 ( e'4 d'4) \divisioMaxima
 d'4 ( c'4) f'4 ( g'\prall a'4 g'4 a'4) a'4 ( c''4 a'4 g'4) g'4 \divisioMinima \forceBreak

 g'4 ( a'4) f'4 ( g'4) g'4 ( e'4) f'4 ( a'4 g'4 f'4) g'4 ( f'4) ~ f'4 ( e'4) d'4 f'4 ( f'4 d'4) f'4 ( g'4 e'4) f'4 ( g'4 d'4) e'4 ( d'4) ~ d'4 ( c'4) \divisioMaxima \forceBreak

 d'4 ( c'4) f'4 ( g'\prall a'4 g'4 a'4) a'4 ( g'4 f'4) ~ f'4 ( e'4 d'4)  d'4 f'4 ( f'4) a'4 ( bes'4 g'4 f'4) a'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( d'4 c'4) f'4 ( f'4 c'4) \divisioMinima \forceBreak

 f'4 ( g'4 f'4 g'4)  a'4 ( g'4) a'4 ( bes'4 g'4 f'4) g'4 ( a'4 g'4 a'4) c''4 ( a'4 g'4) a'4 ( f'4 d'4) f'4 ( f'4 f'4) d'4 ( e'4 d'4) \finalis
 d'4 ( a'4) a'4 a'4 ( g'4 \forceBreak
)  a'4. f'4 ( a'4 bes'4 a'4 g'4) a'4. \divisioMinima
 f'4 ( g'4 a'4) c''4 ( bes'4 c''4) a'4 c''4 ( c''4) ~ c''4 ( g'4 f'4 a'4.) c''4 ( c''4 a'4) c''4 ( c''4 g'4) c''4 ( c''4) a'4 ( bes'4 a'4) \divisioMaior \forceBreak

 a'4 ( c''4) a'4 ( g'4 a'4) g'4 ( f'4 g'4) a'4 ( a'4 g'4) a'4 ( a'4 g'4) c''4 ( c''4) a'4 ( b'4 a'4) a'4 \divisioMaxima
 c''4 a'4 f'4 g'4 ( a'4 g'4) a'4 ( f'4) g'4 ( a'4 \forceBreak
) c''4. b'4 ( c''4 a'4) \divisioMinima
  c''4 ( c''4 a'4 g'4.) a'4 ( bes'4 g'4 f'4.) g'4 ( a'4 f'4 d'4) f'4. e'4 ( g'\prall a'4 g'4 a'4) a'4  a'4 ( f'4) a'4 ( bes'4 g'4) f'4 ( f'4) d'4 ( e'4 d'4) \divisioMaior \forceBreak

 d'4 f'4 ( f'4) ~ f'4 ( \once \tweak #'font-size #-4 d' ) e'4 ( f'4)  g'4 ( a'4 g'4 a'4) ~ a'4 ( g'4) a'4. f'4 ( a'4 bes'4 g'4 f'4 e'4.) f'4 ( g'\prall a'4 bes'4 \tiny a' g' 4) a'4 ( g'4) \divisioMinima
  a'4 ( g'4 \forceBreak
) a'4 ( bes'4 g'4 f'4) g'4 ( a'4 g'4 a'4) c''4 ( a'4 g'4) a'4 ( f'4 d'4) f'4 ( f'4 f'4) d'4 ( e'4 d'4) \finalis

}

altoMusic = {
r4 a2*3/4 g2*3/2 a2 ~ a2*3/2 ~ a2*3/2 ~ a4 ~ \divisioMinima
a4 ~ a2*5/4 g2 c'2 bes2 c'2*4/2 ~ c'2 ~ c'4 bes2*3/2 g2 ~ g4 \divisioMaxima
c'2 ~ c'2*3/2 ~ c'2*3/2 f'2*3/2 ~ f'2 e'2*3/2 d'2*4/2 ~ \divisioMinima
d'2 c'2*13/4 ~ c'2*4/2 a2*4/2 ~ a2*3/2 ~ a2 ~ a2*4/2 c'4 ~ c'2*5/2 d'2*4/2 c'4 \divisioMinima
d'2*4/2 c'2*7/2 ~ c'2*4/2 a2*3/2 ~ a2*7/2 r2*3/2 \divisioMaxima
a2 ~ a2*5/2 ~ a2 bes2*5/2 a2 d'2*4/2 ~ d'2*4/2 ~ d'2 ~ d'4 c'4 ~ c'2*3/2 ~ \divisioMinima
c'2*6/2 bes2*4/2 c'2*7/2 ~ c'2*3/2 bes2*3/2 a2 ~ a4 \finalis
d'2*3/2 e'2 f'2*3/4 ~ f'2*5/2 e'2*3/4 \divisioMinima
f'2*3/2 e'2*4/2 ~ e'2 f'2*9/4 g'2*3/2 ~ g'2 ~ g'4 e'2 ~ e'2 ~ e'4 ~ \divisioMaior
e'2 f'2*3/2 r2*3/2 f'2*3/2 e'2*3/2 ~ e'2 ~ e'2*3/2 ~ e'4 \divisioMaxima
f'2 ~ f'4 r2*3/2 f'2*4/2 e'2*9/4 f'2*3/2 d'2*3/4 ~ d'2*3/2 ~ d'2*3/4 ~ d'2*4/2 ~ d'2*3/4 e'2 ~ e'2*4/2 f'2 ~ f'2*3/2 d'2 a2 ~ a4 ~ \divisioMaior
a4 d'2 c'2*4/2 ~ c'2*3/2 ~ c'2*3/2 ~ c'2*3/4 d'2*5/2 ~ d'2*3/4 ~ d'2*3/2 ~ d'2*3/2 c'2 ~ c'2 ~ c'2*4/2 ~ c'2*4/2 ~ c'2*3/2 ~ c'2*3/2 bes2*3/2 a2 ~ a4 \finalis
}

tenorMusic = {
r4 f2*3/4 e2*3/2 f2 g2*3/2 e2*3/2 f4 \divisioMinima
d4 ~ d2*5/4 ~ d2 ~ d2 ~ d2 c2*4/2 f2*3/2 ~ f2*3/2 ~ f2 e4 \divisioMaxima
a2 g2*3/2 ~ g2*3/2 ~ g2*3/2 f2 ~ f2*3/2 ~ f2*4/2 \divisioMinima
e2 f2*13/4 g2*4/2 ~ g2*4/2 f2*3/2 e2 f2*3/2 \divisioMaxima
g2 f2*5/2 ~ f2*4/2 e4 \divisioMinima
g2*4/2 ~ g2*7/2 a2*4/2 g2*3/2 f2*7/2 g2*3/2 \divisioMaxima
f2 ~ f2*5/2 ~ f2 ~ f2*5/2 ~ f2 ~ f2*4/2 ~ f2*4/2 g2*4/2 ~ g2*3/2 \divisioMinima
f2*6/2 ~ f2*4/2 ~ f2*7/2 ~ f2*3/2 ~ f2*3/2 g2 f4 \finalis
d'2*3/2 ~ d'2 ~ d'2*3/4 ~ d'2*5/2 c'2*3/4 ~ \divisioMinima
c'2*3/2 d'2*4/2 c'2 ~ c'2*9/4 ~ c'2*3/2 e'2*3/2 ~ e'2 d'2 c'4 ~ \divisioMaior
c'2 ~ c'2*3/2 ~ c'2*3/2 ~ c'2*3/2 b2*3/2 a2 b2*3/2 c'4 ~ \divisioMaxima
c'2*3/2 ~ c'2*3/2 ~ c'2*4/2 ~ c'2*9/4 ~ c'2*3/2 bes2*3/4 ~ bes2*3/2 a2*3/4 ~ a2*4/2 ~ a2*3/4 ~ a2 c'2*4/2 ~ c'2 bes2*3/2 a2 g2 f4 ~ \divisioMaior
f4 ~ f2 ~ f2*4/2 a2*3/2 g2*3/2 f2*3/4 ~ f2*5/2 g2*3/4 f2*3/2 ~ f2*3/2 e2 r2 g2*4/2 ~ g2*4/2 f2*3/2 ~ f2*3/2 ~ f2*3/2 g2 f4 \finalis
}

bassMusic = {
d4 ~ d2*3/4 ~ d2*3/2 ~ d2 ~ d2*3/2 ~ d2*3/2 ~ d4 ~ \divisioMinima
d4 c2*5/4 bes,2 a,2 g,2 a,2*4/2 ~ a,2*3/2 g,2*3/2 c2 ~ c4 \divisioMaxima
f2 ~ f2*3/2 e2*3/2 d2*3/2 ~ d2 c2*3/2 bes,2*4/2 ~ \divisioMinima
bes,2 a,2*13/4 ~ a,2*4/2 d2*4/2 ~ d2*3/2 ~ d2 ~ d2*3/2 \divisioMaxima
e2 d2*5/2 c2*4/2 ~ c4 \divisioMinima
bes,2*4/2 a,2*7/2 ~ a,2*4/2 d2*3/2 ~ d2*7/2 e2*3/2 \divisioMaxima
r2 e2*5/2 d2 ~ d2*5/2 ~ d2 c2*4/2 bes,2*4/2 ~ bes,2*4/2 a,2*3/2 ~ \divisioMinima
a,2*6/2 g,2*4/2 a,2*7/2 d2*3/2 ~ d2*3/2 ~ d2 ~ d4 \finalis
r2*5/2 r2*3/4 c'2*5/2 ~ c'2*3/4 \divisioMinima
a2*3/2 ~ a2*4/2 ~ a2 d2*9/4 e2*3/2 ~ e2*3/2 a2 ~ a2 ~ a4 \divisioMaior
g2 f2*3/2 e2*3/2 d2*3/2 e2*3/2 a2 ~ a2*3/2 ~ a4 \divisioMaxima
d2*3/2 e2*3/2 f2*4/2 a2*9/4 ~ a2*3/2 ~ a2*3/4 g2*3/2 ~ g2*3/4 f2*4/2 e2*3/4 d2 c2*4/2 d2 ~ d2*3/2 ~ d2 ~ d2 ~ d4 ~ \divisioMaior
d4 bes,2 a,2*4/2 ~ a,2*3/2 ~ a,2*3/2 ~ a,2*3/4 bes,2*5/2 ~ bes,2*3/4 ~ bes,2*3/2 g,2*3/2 c2 f2 ~ f2*4/2 e2*4/2 ~ e2*3/2 d2*3/2 ~ d2*3/2 ~ d2 ~ d4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Gradual"
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
