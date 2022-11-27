\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.238
%(volume.page)

global = {
 \key f \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Tu mandasti" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Tu mandasti"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Tu mandasti" }
    \line {}
  }
}

chantText = \lyricmode {
Tu man -- dá -- sti 
\set stanza = " * " man -- dá -- ta tu -- _ a cu -- sto -- dí -- ri ni -- mis: 
ú -- ti -- nam di -- ri -- gán -- tur vi -- æ me -- æ, _ 
ad cu -- sto -- di -- én -- das ju -- sti -- fi -- ca -- ti -- ó -- nes _ tu -- as. }

chantMusic = {
\tieDown   c''4 c''4 ( \once \tweak #'font-size #-4 a' ) c''4 ( d''4) c''4 \divisioMinima
 a'4 ( \once \tweak #'font-size #-4 g' )  a'4 ( bes'4 a'4) g'4 a'4 c''4 ( c''4 c''4) c''4 \divisioMinima
 f'4 g'4 ( a'4 \forceBreak
)  a'4 ( bes'4 a'4 g'4) c''4 ( c''4) d''4 ( c''4) c''4 ( d''4 c''4 a'4) \divisioMaxima
  a'4 ( bes'4) a'4 a'4 a'4  bes'4 ( c''4) c''4 a'4 d''4 ( c''4)  bes'4 ( c''4 \forceBreak
)  c''4 c''4 ( d''4 c''4 c''4) a'4 ( bes'4 a'4 \divisioMaior
) f'4 g'4 ( a'4)  a'4 ( bes'4 a'4) g'4 a'4 ( bes'4 a'4 g'4) a'4 ( g'4) \divisioMinima
 f'4  a'4 ( bes'4 a'4 \forceBreak
) g'4 a'4 ( bes'4 a'4) g'4 a'4 ( bes'4 c''4 bes'4 a'4 g'4) a'4 ( g'4) a'4 ( g'4) f'4 ( g'4 a'4 g'4 f'4 g'4) g'4 ( f'4) \finalis

}

altoMusic = {
r4 a'2 g'2 ~ g'4 \divisioMinima
e'2 f'2*5/2 g'2*3/2 ~ g'4 \divisioMinima
f'4 ~ f'2 d'2 ~ d'2 g'2*4/2 f'2*3/2 ~ f'4 ~ f'2*5/2 ~ f'2 ~ f'2 ~ f'2 ~ f'2 ~ f'4 e'2*4/2 f'2*3/2 ~ \divisioMaior
f'4 r2*6/2 d'2*4/2 e'2 \divisioMinima
f'4 ~ f'2*4/2 d'2*4/2 ~ d'2 ~ d'2*4/2 c'2 e'2 d'2 ~ d'2*4/2 c'2 \finalis
}

tenorMusic = {
r4 f'2 ~ f'2 e'4 \divisioMinima
c'2 ~ c'2*5/2 ~ c'2*3/2 ~ c'4 ~ \divisioMinima
c'4 ~ c'2 ~ c'2 bes2 g2*4/2 a2*3/2 f4 ~ f2*5/2 g2 a2 bes2 d'2 ~ d'4 c'2*4/2 d'2*4/2 ~ d'2 ~ d'2*4/2 bes2*4/2 c'2*3/2 ~ c'2*4/2 ~ c'2*4/2 bes2 g2*4/2 ~ g2 ~ g2 a2 bes2*4/2 b4 a4 \finalis
}

bassMusic = {
r2*8/2 f2*5/2 ~ f2*3/2 e4 ~ \divisioMinima
e4 d2 g2 ~ g2 e2*4/2 f2*3/2 ~ f4 d2*5/2 ~ d2 ~ d2 ~ d2 ~ d2 a4 ~ a2*4/2 d2*3/2 ~ \divisioMaior
d4 e2 f2*4/2 g2*4/2 c2 ~ \divisioMinima
c4 d2*4/2 g2*4/2 ~ g2 f2*4/2 e2 c2 ~ c2 bes,2*4/2 f2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Communion"
        "V"
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
