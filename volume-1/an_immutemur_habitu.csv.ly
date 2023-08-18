\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.153
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Immutemur habitu" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Immutemur habitu"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Immutemur habitu" }
    \line {}
  }
}

chantText = \lyricmode {
Im -- mu -- té -- mur 
\set stanza = " * " há -- _ bi -- tu, in cí -- ne -- _ re 
et ci -- lí -- ci -- o: 
je -- ju -- né -- mus, _ et plo -- ré -- mus 
an -- te Dó -- mi -- num: 
qui -- a mul -- tum mi -- sé -- _ ri -- cors est _ 
di -- mít -- te -- re pec -- cá -- ta no -- stra 
De -- _ us no -- ster. }

chantMusic = {
\tieDown   g'4 g'4 d'4 ( f'4 g'4 a'4) g'4 ( a'4 g'4) \divisioMinima
 g'4 ( c''4) ~ c''4 ( d''4) b'4 ( c''4) a'4 ( c''4) g'4 ( \once \tweak #'font-size #-4 a' ) g'4 g'4 ( e'4) f'4 ( e'4 d'4 e'4) e'4 ( d'4) \divisioMaior \forceBreak

 a'4 ( c''4 d''4) c''4 ( b'4) g'4 g'4 ( a'4 b'4 a'4 g'4 a'4) a'4 ( g'4) \divisioMaxima
 a'4 a'4 ( c''4) a'4  a'4 ( g'4) a'4 ( bes'4 a'4) \divisioMinima
 a'4 ( a'4 g'4 a'4) e'4 ( f'4 g'4 \forceBreak
) g'4 ( g'4 f'4 g'4) d'4 \divisioMaior
 c'4 ( d'4) d'4 ( a'4) a'4 ( b'\prall c''4 b'4 a'4)  a'4 ( g'4 a'\prall bes'4 a'4 bes'4) bes'4 ( a'4) \divisioMaxima
  a'4 ( g'4 a'\prall bes'4 a'4 g'4 \forceBreak
) g'4 ( a'4 g'4 e'4) \divisioMinima
 f'4 ( \once \tweak #'font-size #-4 g' ) d'4 d'4 d'4 ( e'\prall f'4) g'4 ( f'4) f'4 ( d'4) f'4  g'4 ( a'4 g'4) a'4 ( bes'4 a'4) \divisioMaior
 f'4  a'4 ( bes'4 a'4 \forceBreak
) g'4 f'4 ( f'4 e'4) d'4 f'4 ( e'4) f'4  f'4 ( a'4 bes'4 a'4 g'4) g'4 ( a'4 g'4 e'4) \divisioMaior
 e'4 ( g'4) a'4 ( f'4) f'4 ( e'4) d'4 ( e'\prall f'4 e'4 f'4) e'4 ( d'4) \finalis

}

altoMusic = {
r2 d'2*4/2 ~ d'2*3/2 \divisioMinima
e'4 g'2*5/2 f'2 r2*3/2 e'2 r2*4/2 a2 \divisioMaior
f'4 e'2 f'2 ~ f'4 d'2*6/2 ~ d'2 \divisioMaxima
f'4 g'2*3/2 f'2 ~ f'2*3/2 \divisioMinima
e'2*4/2 c'2*3/2 a2*4/2 ~ a4 \divisioMaior
c'4 d'4 ~ d'2 e'2*5/2 f'2*3/2 ~ f'2*3/2 ~ f'2 c'2*3/2 d'2*3/2 c'2*3/2 ~ c'4 \divisioMinima
a2*4/2 ~ a2*5/2 d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ \divisioMaior
d'4 ~ d'2*3/2 ~ d'4 ~ d'2*3/2 ~ d'4 c'2*3/2 ~ c'2*5/2 ~ c'2*3/2 ~ c'4 ~ \divisioMaior
c'2*4/2 ~ c'2 a2*5/2 ~ a2 \finalis
}

tenorMusic = {
r2 a2*4/2 b2*3/2 ~ \divisioMinima
b4 c'2*5/2 ~ c'2 ~ c'2 b4 a2 ~ a2*4/2 g4 f4 \divisioMaior
a4 g2 a2 c'4 ~ c'2*6/2 b2 \divisioMaxima
c'4 ~ c'2*3/2 ~ c'2 ~ c'2*3/2 ~ \divisioMinima
c'2*4/2 a2*3/2 ~ a2*4/2 f4 \divisioMaior
g2 f2 a2*5/2 ~ a2*3/2 g2*3/2 f2 ~ f2*3/2 ~ f2*3/2 e2*3/2 g4 \divisioMinima
f2*4/2 ~ f2*5/2 ~ f2*3/2 e2*3/2 f2*3/2 ~ \divisioMaior
f4 ~ f2*3/2 ~ f4 g2*4/2 ~ g2*3/2 f2*5/2 e2*3/2 g4 ~ \divisioMaior
g2*4/2 a2 g2*5/2 f2 \finalis
}

bassMusic = {
g2 ~ g2*4/2 ~ g2*3/2 ~ \divisioMinima
g4 e2*5/2 d2 e2 ~ e4 c2 d2*4/2 ~ d2 ~ \divisioMaior
d4 ~ d2 ~ d2 ~ d4 g2*6/2 ~ g2 \divisioMaxima
f4 ~ f2*3/2 ~ f2 d2*3/2 \divisioMinima
c2*4/2 ~ c2*3/2 d2*4/2 ~ d4 \divisioMaior
e2 d2 c2*5/2 d2*3/2 ~ d2*3/2 ~ d2 r2*3/2 bes2*3/2 c2*3/2 ~ c4 \divisioMinima
d2*4/2 c2*5/2 bes,2*3/2 ~ bes,2*3/2 d2*3/2 ~ \divisioMaior
d4 bes,2*3/2 ~ bes,4 ~ bes,2*4/2 a,2*3/2 ~ a,2*5/2 c2*3/2 ~ c4 \divisioMaior
a,2*4/2 ~ a,2 d2*5/2 ~ d2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Antiphon"
        "1"
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
