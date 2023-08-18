\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.218
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Beata gens" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Beata gens"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Beata gens" }
    \line {}
  }
}

chantText = \lyricmode {
Be -- á -- ta _ _ _ gens, 
\set stanza = " * " 
cu -- jus est Dó -- mi -- nus De -- _ us e -- ó -- _ _ rum: 
pó -- _ _ pu -- lus, 
quem e -- lé -- git Dó -- _ mi -- nus _ _ _ _ _ 
in hæ -- re -- di -- tá -- _ tem si -- bi. _ _ _ _ _ _ ℣. 
Ver -- bo Dó -- _ _ _ mi -- ni _ _ _ _ _ 
cœ -- _ li fir -- má -- ti sunt: _ _ 
et spí -- _ _ _ ri -- tu o -- ris e -- jus _ _ _ _ _ 
o -- _ _ _ mnis vir -- tus 
\set stanza = " * " e -- ó -- _ rum. _ _ _ }

chantMusic = {
\tieDown   d'4 f'4 ( f'4) g'4 ( f'4) ~ f'4 ( e'4.) f'4 ( a'4 g'4 f'4) g'4 ( d'4) d'4 \divisioMaior
 d'4 d'4 f'4 ( f'4) g'4 ( f'4 a'4) a'4 a'4 \divisioMinima \forceBreak

 a'4 ( c''4 a'4) ~ a'4 ( g'4) g'4 ( f'4) f'4 ( e'4) g'4 ( g'4 f'4 g'4) a'4 ( g'4 f'4) g'4 ( f'4) f'4 \divisioMaxima
 a'4 ( a'4 g'4 a'4) c''4 ( c''4) ~ c''4 ( b'4 a'4) a'4 ( b'4 a'4) a'4 \divisioMaior \forceBreak

 f'4 g'4 ( a'4 g'4) a'4 ( a'4 g'4 f'4 e'4 f'\prall g'4 f'4 g'4 g'4 ( f'4) \divisioMinima
 g'4 ( f'4) ~ f'4 ( e'4 d'4) e'4 ( d'4) d'4 f'4 ( f'4 d'4) f'4 ( g'4 e'4) f'4 ( g'4 d'4) e'4 ( d'4) ~ d'4 ( c'4) \divisioMaxima \forceBreak

 f'4 d'4 e'4 f'4 g'4 ( a'4 g'4 a'4.) b'4 ( c''4 b'4 b'4) b'4 ( a'4) \divisioMinima
 a'4 g'4 ( a'4 g'4 e'4) f'4 ( g'4.) f'4 ( g'4 f'4 d'4) f'4 ( a'4.) g'4 ( a'4 g'4 e'4 \forceBreak
) f'4 ( g'4.) f'4 ( g'4 f'4 d'4) \finalis
 d'4 ( a'4) a'4 a'4 ( c''4 a'4) ~ a'4 ( g'4 a'4 g'4 f'4) \divisioMinima
  a'4 ( bes'4 a'4 g'4 a'\prall bes'4 a'4 g'4) a'4 ( bes'4) a'4 a'4 ( c''4 a'4 g'4 a'4 \forceBreak
) c''4 ( c''4 a'4) c''4 ( c''4) ~ c''4 ( bes'4 a'4) c''4 ( g'4) ~ g'4 ( f'4) \divisioMaior
 a'4 ( d''4 c''4) d''4 ( c''4 a'4 b'4) a'4 a'4 ( \once \tweak #'font-size #-4 g' ) a'4 ( b'\prall c''4) g'4 f'4 ( a'4) c''4 ( a'4) b'4 ( a'4) \divisioMaxima \forceBreak

 f'4 g'4 ( a'4 g'4 a'4) c''4 ( a'4) ~ a'4 ( g'4) ~ g'4 ( f'4 g'\prall a'4 g'4) a'4 g'4 \divisioMinima
 a'4 ( f'4 a'4) g'4 ( f'4 g'4) f'4 ( g'4) d'4 f'4 ( f'4 d'4 \forceBreak
) f'4 ( g'4 e'4) f'4 ( g'4 d'4) e'4 ( d'4) ~ d'4 ( c'4) \divisioMaior
  f'4 ( d'4) f'4 ( f'4 g'\prall a'4 g'4 a'4.) c''4 ( d''4 c''4 c''4) ~ c''4 ( a'4 g'4 f'4 g'\prall a'4 bes'4 \tiny a' g' 4) a'4 ( g'4 \forceBreak
) g'4 ( \once \tweak #'font-size #-4 a' ) g'4 \divisioMinima
 g'4 ( a'4)  c''4 ( a'4 bes'4 g'4 f'4) a'4 c''4 ( c''4 a'4 g'4) a'4 ( g'4 a'4 f'4 e'4) f'4 ( g'4) \divisioMinima
 d'4 ( e'\prall f'4 g'4.) f'4 ( a'4 g'4 f'4 e'4 d'4 e'\prall f'4 d'4) \finalis

}

altoMusic = {
d'4 ~ d'2*3/2 r2*7/4 d'2 ~ d'2 ~ d'2 ~ d'4 \divisioMaior
bes2 c'2 ~ c'2*4/2 ~ c'4 ~ \divisioMinima
c'2 ~ c'2*3/2 a2 ~ a2 d'2*4/2 e'2*3/2 c'2 ~ c'4 \divisioMaxima
f'2*4/2 g'2 f'2*3/2 e'2*3/2 ~ e'4 ~ \divisioMaior
e'4 d'2*3/2 c'2*4/2 ~ c'2 ~ c'2*3/2 a2 ~ \divisioMinima
a4 c'2*4/2 ~ c'2*3/2 a2*3/2 ~ a2*3/2 bes2 ~ bes2 g2*3/2 \divisioMaxima
c'2*4/2 ~ c'2*9/4 d'2*4/2 c'2 ~ \divisioMinima
c'4 ~ c'2*13/4 a2*13/4 d'2*4/2 c'2*5/4 ~ c'2*3/2 a4 \finalis
d'2*3/2 f'2 e'2*5/2 f'4 ~ f'2*3/2 g'2 ~ g'2*3/2 ~ g'2*3/2 f'2*4/2 a'4 <a' g'>2 a'4 <a' f'>2 <a' e'>2*4/2 r2*3/2 \divisioMaior
a'2*3/2 g'2*5/2 f'2 r2*4/2 f'2 ~ f'2 e'2 \divisioMaxima
r2*6/2 e'2 d'2*4/2 ~ d'2 ~ d'2 ~ \divisioMinima
d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 c'2*3/2 bes2*3/2 a2*4/2 g2 c'4 ~ c'2 ~ c'2*3/2 f'2*7/4 g'2*4/2 f'2*3/2 ~ f'2*3/2 ~ f'2*3/2 d'2 ~ d'2*3/2 \divisioMinima
c'2 d'2*6/2 e'2*4/2 d'2*5/2 ~ d'2 \divisioMinima
c'2*3/2 bes2*3/4 c'2*3/2 ~ c'2 a2*3/2 ~ a4 \finalis
}

tenorMusic = {
r2*15/4 c'2 ~ c'2 bes2 a4 \divisioMaior
f2 ~ f2 ~ f2*4/2 ~ f4 ~ \divisioMinima
f2 e2*3/2 f2 g2 a2*4/2 c'2*3/2 bes2 a4 \divisioMaxima
c'2*4/2 a2 ~ a2*3/2 ~ a2*3/2 ~ a4 ~ \divisioMaior
a4 e2*3/2 f2*4/2 g2 e2*3/2 f2 ~ \divisioMinima
f4 a2*4/2 g2*3/2 ~ g2*3/2 f2*3/2 d2 f2 e2*3/2 \divisioMaxima
f2*4/2 e2*9/4 ~ e2*4/2 ~ e2 \divisioMinima
f4 e2*13/4 d2*13/4 ~ d2*4/2 a2*5/4 g2*3/2 f4 \finalis
r2*3/2 d'2 c'2*5/2 ~ c'4 ~ c'2*3/2 d'2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*5/2 e'2*3/2 d'2 c'2*4/2 d'2*3/2 \divisioMaior
f'2*3/2 e'2*5/2 d'2 e'2*4/2 ~ e'2 d'2 c'2 \divisioMaxima
r4 c'2*5/2 ~ c'2 a2*4/2 c'2 bes2 \divisioMinima
a2*3/2 ~ a2*3/2 bes2*3/2 a2*3/2 g2*3/2 f2*4/2 g2*3/2 a2 ~ a2*3/2 c'2*7/4 ~ c'2*4/2 a2*3/2 ~ a2*3/2 c'2*3/2 ~ c'2 bes2*3/2 \divisioMinima
g2 f2*6/2 a2*4/2 f2*5/2 d2 ~ \divisioMinima
d2*3/2 ~ d2*3/4 a2*3/2 g2 ~ g2*3/2 f4 \finalis
}

bassMusic = {
r2*4/2 c'2*7/4 ~ c'2 g2 ~ g2 f4 \divisioMaior
d2 a,2 bes,2*4/2 f,4 \divisioMinima
a,2 c2*3/2 d2 ~ d2 ~ d2*4/2 c2*3/2 f2 ~ f4 ~ \divisioMaxima
f2*4/2 e2 d2*3/2 ~ d2*3/2 c4 ~ \divisioMaior
c4 b,2*3/2 a,2*4/2 c2 ~ c2*3/2 d2 ~ \divisioMinima
d4 a,2*4/2 ~ a,2*3/2 d2*3/2 ~ d2*3/2 g,2 ~ g,2 c2*3/2 \divisioMaxima
a,2*4/2 c2*9/4 a,2*4/2 ~ a,2 ~ \divisioMinima
a,4 c2*13/4 ~ c2*13/4 bes,2*4/2 a,2*5/4 ~ a,2*3/2 d4 \finalis
r2*3/2 r2*7/2 a4 ~ a2*3/2 bes2 g2*3/2 d'2*3/2 r2*14/2 d'2*3/2 \divisioMaior
r2*10/2 c'2*4/2 a2 ~ a2 ~ a2 \divisioMaxima
r4 e2*5/2 c2 d2*4/2 ~ d2 g2 \divisioMinima
f2*3/2 e2*3/2 d2*3/2 ~ d2*3/2 ~ d2*3/2 ~ d2*4/2 e2*3/2 r2 d2*3/2 ~ d2*7/4 e2*4/2 f2*3/2 d2*3/2 ~ d2*3/2 g2 ~ g2*3/2 \divisioMinima
e2 d2*6/2 c2*4/2 ~ c2*5/2 bes2 \divisioMinima
a,2*3/2 g,2*3/4 a,2*3/2 ~ a,2 d2*3/2 ~ d4 \finalis
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
