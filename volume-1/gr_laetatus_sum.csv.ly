\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.252
%(volume.page)

global = {
 \key c \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Laetatus sum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Laetatus sum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Laetatus sum" }
    \line {}
  }
}

chantText = \lyricmode {
Læ -- tá -- tus _ sum _ _ _ 
\set stanza = " * " 
in his quæ di -- cta sunt mi -- hi: _ _ _ _ 
in do -- mum Dó -- mi -- ni í -- _ _ _ _ _ bi -- mus ℣. 
Fi -- at pax _ _ _ _ 
in vir -- tú -- _ _ _ _ te _ tu -- _ _ a: 
et a -- bun -- dán -- _ _ _ ti -- a _ _ _ _ 
\set stanza = " * " 
in túr -- ri -- _ bus tu -- is. _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   f'4 ( f'4) g'4 f'4 ( g'4 f'4 d'4) g'4 ( f'4 g'4) g'4. a'4 ( bes'4 a'4 g'4) ~ g'4 ( f'4) g'4 ( a'4 g'4) \divisioMaior
 f'4 ( g'4) g'4 ( c''4) c''4 \forceBreak
 c''4 ( bes'4 bes'4) g'4 g'4 ( \once \tweak #'font-size #-4 c'' ) c''4 g'4 \divisioMinima
 bes'4 ( a'4 bes'4) c''4 ( bes'4.) a'4 ( c''4 bes'4 bes'4) g'4 ( a'4 g'4) \divisioMaxima
 g'4 ( a'4) g'4 ( a'4) g'4 ( e'4 \forceBreak
) f'4 d'4 ( e'4 c'4) c'4 \divisioMinima
 e'4 ( g'4) ~ g'4 ( f'4) g'4 ( e'4.) f'4 ( e'4 d'4) e'4 ( f'4 g'4) f'4 ( f'4 d'4 e'\prall f'4) c'4 ( d'4 c'4) c'4 \finalis \forceBreak

 g'4 ( f'4 g'4) g'4 ( \once \tweak #'font-size #-4 c'' ) c''4 ( d''4 c''4 g'4.) bes'4 ( a'4 bes'4) c''4 ( bes'4.) a'4 ( c''4 bes'4 bes'4) g'4 ( a'4 g'4) \divisioMaior
 f'4 g'4 g'4 bes'4 ( bes'4 \forceBreak
) ~ bes'4 ( bes'4) d''4 ( c''4 bes'4) ~ bes'4 ( g'4) g'4 ( f'4) ~ f'4 ( d'4) f'4 ( d'4 f'4) ~ f'4 ( d'4) e'4 ( c'4) c'4 \divisioMaior
 g'4 c'4 d'4 ( \once \tweak #'font-size #-4 f' ) f'4. d'4 ( g'4 f'4 g'4) c''4. \forceBreak
 bes'4 ( bes'4 bes'4) ~ bes'4 ( \once \tweak #'font-size #-4 a' ) bes'4 ( c''4) c''4 ( g'4.) bes'4 ( a'4 bes'4) c''4 ( bes'4.) a'4 ( c''4 bes'4 bes'4) g'4 ( a'4 g'4) \divisioMaior
 c'4 ( d'4) f'4 ( g'4 f'4) d'4 ( g'4 f'4) g'4 ( a'4 \forceBreak
) g'4 ( a'4) g'4 ( f'4) f'4 \divisioMinima
 a'4 ( g'4) bes'4 ( a'4) g'4 ( bes'4 a'4 g'4) ~ g'4 ( e'4.) f'4 ( g'4 e'4) f'4 ( d'4 c'4) d'4 ( e'4 d'4) ~ d'4 ( c'4) \finalis

}

altoMusic = {
c'2*3/2 ~ c'2*4/2 ~ c'2*3/2 d'2*9/4 ~ d'2*3/2 ~ d'2*3/2 ~ \divisioMaior
d'2 ~ d'2*3/2 ~ d'2*4/2 c'2 d'2 \divisioMinima
ees'2*3/2 f'2*5/4 ~ f'2*4/2 d'2 ~ d'4 ~ \divisioMaxima
d'2 ~ d'2 ~ d'2 c'4 ~ c'2*3/2 ~ c'4 ~ \divisioMinima
c'4 a2*11/4 ~ a2*3/2 d'2*3/2 c'2 bes2*3/2 g2*3/2 bes4 \finalis
r2*3/2 e'2 ~ e'2*3/2 ~ e'2*3/4 f'2*3/2 e'2*5/4 f'2*4/2 ~ f'2*3/2 ~ \divisioMaior
f'2 e'4 d'2 ~ d'2 ~ d'2 f'2*3/2 e'4 ~ e'2*3/2 d'2 ~ d'2*3/2 ~ d'4 r2 \divisioMaior
c'2*4/2 ~ c'2*3/4 d'2*4/2 ~ d'2*3/4 ~ d'2*3/2 ~ d'2*4/2 ~ d'2*5/4 ~ d'2*3/2 ~ d'2*5/4 ~ d'2*4/2 e'2*3/2 \divisioMaior
c'2 ~ c'2*3/2 d'2*3/2 ~ d'2 c'2 ~ c'2 d'4 ~ \divisioMinima
d'2 ~ d'2 ~ d'2*3/2 ~ d'2*7/4 c'2*3/2 bes2*3/2 ~ bes2 g2 ~ g4 \finalis
}

tenorMusic = {
r2*3/2 d2*4/2 f2*3/2 ~ f2*3/4 g2*3/2 a2*3/2 bes2*3/2 \divisioMaior
a2 ~ a2*3/2 g2*4/2 ~ g2 ~ g2 ~ \divisioMinima
g2*3/2 f2*5/4 c'2*4/2 ~ c'2 bes4 \divisioMaxima
r2 d2 e2 d4 a2*3/2 e4 ~ \divisioMinima
e4 d2*11/4 ~ d2*3/2 ~ d2*3/2 ~ d2 f2*3/2 ~ f2*3/2 e4 \finalis
r2*3/2 c'2 ~ c'2*3/2 d'2*3/4 ~ d'2*3/2 ~ d'2*5/4 c'2*4/2 d'2*3/2 ~ \divisioMaior
d'2*3/2 ~ d'2 a2 bes2 ~ bes2*4/2 a2*3/2 ~ a2 ~ a2*3/2 g2 e4 \divisioMaior
r2 a2 ~ a2*3/4 ~ a2*4/2 ~ a2*3/4 g2*3/2 ~ g2*4/2 a2*5/4 g2*3/2 ~ g2*5/4 ~ g2*4/2 ~ g2*3/2 ~ \divisioMaior
g2 a2*3/2 ~ a2*3/2 ~ a2 ~ a2 ~ a2 ~ a4 \divisioMinima
f2 g2 d2*3/2 e2*7/4 d2*3/2 ~ d2*3/2 f2 ~ f2 e4 \finalis
}

bassMusic = {
a,2*3/2 ~ a,2*4/2 ~ a,2*3/2 bes,2*9/4 ~ bes,2*3/2 ~ bes,2*3/2 \divisioMaior
c2 bes,2*3/2 ~ bes,2*4/2 a,2 bes,2 \divisioMinima
c2*3/2 d2*5/4 ~ d2*4/2 g2 ~ g4 \divisioMaxima
bes2 bes,2 a,2 ~ a,4 ~ a,2*3/2 ~ a,4 ~ \divisioMinima
a,4 d2*11/4 c2*3/2 bes,2*3/2 a,2 ~ a,2*3/2 c2*3/2 ~ c4 \finalis
r2*5/2 a2*3/2 ~ a2*3/4 g2*3/2 ~ g2*5/4 a2*4/2 bes2*3/2 \divisioMaior
r2*3/2 g2 ~ g2 ~ g2 d2*4/2 ~ d2*3/2 c2 bes,2*3/2 c2 ~ c4 \divisioMaior
e2 ~ e2 d2*3/4 c2*4/2 bes,2*3/4 ~ bes,2*3/2 g,2*4/2 ~ g,2*5/4 ~ g,2*3/2 a,2*5/4 bes,2*4/2 c2*3/2 \divisioMaior
e2 ~ e2*3/2 f2*3/2 e2 ~ e2 d2 ~ d4 \divisioMinima
c2 bes,2 ~ bes,2*3/2 a,2*7/4 ~ a,2*3/2 g,2*3/2 ~ g,2 c2 ~ c4 \finalis
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
        "VII"
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
