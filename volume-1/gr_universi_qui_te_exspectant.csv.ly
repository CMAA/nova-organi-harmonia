\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.4
%(volume.page)

global = {
 \key b \locrian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Universi qui te exspéctant" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Universi qui te exspéctant"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Universi qui te exspéctant" }
    \line {}
  }
}

chantText = \lyricmode {
U -- ni -- vér -- _ _ _ si 
\set stanza = " * " qui te ex -- spé -- ctant, _ _ _ 
non con -- fun -- dén -- tur, _ _ Dó -- mi -- ne. _ _ _ _ _ ℣. 
Vi -- as tu -- as, Dó -- mi -- ne, _ _ _ _ _ _ _ _ _ _ _ _ 
no -- tas fac _ _ mi -- _ _ _ _ hi: _ _ _ 
et sé -- _ _ mi -- tas tu -- _ _ _ _ as 
\set stanza = " * " é -- do -- ce me. _ }

chantMusic = {
\tieDown   c'4 d'4 d'4 ( f'4) g'4 ( f'4 d'4) e'4 ( c'4 a4.) c'4 ( d'4 c'4 d'4) d'4 \divisioMinima
 d'4 ( c'4) f'4 g'4 ( a'4) a'4 a'4 ( g'4) a'4 ( g'4) a'4 ( e'4) f'4 ( g'4 f'4) \divisioMaior \forceBreak

 g'4 f'4 ( \once \tweak #'font-size #-4 e' ) c'4 ( d'4) f'4 ( g'4) e'4 ( f'4) g'4 ( f'4) g'4 ( f'4 e'4) d'4 d'4 ( e'4 d'4) d'4 \divisioMinima
  c'4 ( d'4) f'4 ( f'4) g'4 a'4 ( bes'4 g'4 e'4) f'4 ( g'4 f'4) ~ f'4 ( d'4) \finalis \forceBreak

  d4 ( a4) a4 a4 ( g4) g4 ( a4) g4 ( f4) g4 ( a4) a4 \divisioMinima
 f4 ( g4 a4) c'4 ( c'4 a4.) f4 ( g4 a4) c'4 ( c'4 a4.) c'4 ( c'4 a4 g4) c'4 ( d'4.) c'4 ( d'4 c'4 a4) \divisioMinima \forceBreak

  f4 ( g4 a4) c'4 ( c'4 a4) c'4 ( c'4 a4) bes4 ( g4) ~ g4 ( f4) \divisioMaxima
 a4 ( d'4) d'4 ( c'4) c'4 ( e'4 d'4 c'4) d'4 ( c'4) ~ c'4 ( a4) \divisioMinima
 a4 ( f4) g4 ( a4) c'4 ( c'4 a4) c'4 ( c'4 a4 g4 \forceBreak
) a4 ( b\prall c'4 b4) c'4 ( c'4) ~ c'4 ( b4 a4) c'4 ( g4) ~ g4 ( f4) \divisioMaxima
 f4 ( \once \tweak #'font-size #-4 g ) g4. a4 ( c'4 a4 g4) ~ g4 ( f4) g4 g4 a4. f4 ( g4 f4) e4 ( f4 g4 \forceBreak
) f4 ( f4 d4) e4 ( c4) c4 \divisioMinima
 f4 ( f4) g4 ( f4) f4 ( a4 g4 a4) a4 ( a4 g4 f4 e4 c4.) d4 ( e\prall f4 d4) \finalis

}

altoMusic = {
r2 a2*5/2 ~ a2*7/4 ~ a2*4/2 ~ a4 \divisioMinima
r2 f'4 ~ f'2 ~ f'4 ~ f'2*4/2 e'2 f'2*3/2 ~ \divisioMaior
f'4 c'2 ~ c'2 a2*4/2 ~ a2 ~ a2*3/2 ~ a2*4/2 ~ a4 ~ a2 c'2*3/2 bes2*4/2 ~ bes2 a2 ~ a4 r2*12/2 \divisioMinima
f'2*3/2 g'2*7/4 f'2*3/2 e'2*7/4 ~ e'2*4/2 g'2*5/4 ~ g'2*4/2 f'2*3/2 e'2*3/2 f'2*4/2 c'2*3/2 \divisioMaxima
f'2 g'2 ~ g'2*3/2 ~ g'2 e'2*3/2 \divisioMinima
f'2*4/2 e'2*3/2 f'2*4/2 e'2*4/2 ~ e'2 ~ e'2*4/2 d'2*3/2 \divisioMaxima
c'2 ~ c'2*3/4 ~ c'2*3/2 ~ c'2*3/2 ~ c'2 ~ c'2*9/4 ~ c'2*3/2 ~ c'2*3/2 ~ c'2 ~ c'4 \divisioMinima
a2 d'2 c'2*4/2 ~ c'2*4/2 ~ c'2*5/4 a2*3/2 ~ a4 \finalis
}

tenorMusic = {
r2 a2*5/2 g2*7/4 e2*4/2 f4 \divisioMinima
a2*3/2 ~ a2 c'4 ~ c'2*4/2 ~ c'2 a2*3/2 ~ \divisioMaior
a4 ~ a2 g2 f2*4/2 e2 \shiftRight d2*3/2 e4 g2*3/2 f4 ~ f2 ~ f2*3/2 ~ f2*4/2 g2 ~ g2 f4 r2*5/2 e'2 d'2 e'2 f'4 ~ \divisioMinima
f'2*3/2 e'2*7/4 d'2*3/2 ~ d'2*7/4 c'2*4/2 ~ c'2*5/4 ~ c'2*4/2 ~ c'2*3/2 ~ c'2*3/2 d'2*4/2 c'2*3/2 \divisioMaxima
a2 g2 c'2*3/2 e'2 d'2*3/2 \divisioMinima
c'2*4/2 a2*3/2 ~ a2*4/2 ~ a2*4/2 ~ a2 ~ a2*4/2 ~ a2*3/2 \divisioMaxima
f2 ~ f2*3/4 ~ f2*3/2 ~ f2*3/2 e2 f2*9/4 g2*3/2 a2*3/2 g2 e4 \divisioMinima
r2 f2 ~ f2*4/2 e2*4/2 g2*5/4 ~ g2*3/2 f4 \finalis
}

bassMusic = {
r2 d2*5/2 ~ d2*7/4 ~ d2*4/2 ~ d4 \divisioMinima
f2*3/2 e2 ~ e4 d2*4/2 c2 d2*3/2 ~ \divisioMaior
d4 a,2 ~ a,2 d2*4/2 ~ d2 ~ d2*3/2 ~ d4 ~ d2*3/2 ~ d4 ~ d2 a,2*3/2 g,2*4/2 ~ g,2 d2 ~ d4 r2*3/2 a2 ~ a2 ~ a2 ~ a2 ~ a4 \divisioMinima
d'2*3/2 ~ d'2*7/4 ~ d'2*3/2 a2*7/4 ~ a2*4/2 e2*5/4 a2*4/2 ~ a2*3/2 ~ a2*3/2 g2*4/2 a2*3/2 \divisioMaxima
d2 e2 ~ e2*3/2 ~ e2 a2*3/2 ~ \divisioMinima
a2*4/2 ~ a2*3/2 d2*4/2 c2*4/2 a,2 c2*4/2 d2*3/2 \divisioMaxima
r2 e2*3/4 d2*3/2 a,2*3/2 ~ a,2 ~ a,2*9/4 ~ a,2*3/2 ~ a,2*3/2 c2 ~ c4 \divisioMinima
d2 bes,2 a,2*4/2 ~ a,2*4/2 ~ a,2*5/4 d2*3/2 ~ d4 \finalis
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
