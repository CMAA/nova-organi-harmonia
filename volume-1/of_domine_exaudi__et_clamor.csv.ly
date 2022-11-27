\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.342
%(volume.page)

global = {
 \key e \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Domine exaudi... et clamor" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Domine exaudi... et clamor"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Domine exaudi... et clamor" }
    \line {}
  }
}

chantText = \lyricmode {
Do -- mi -- ne, 
\set stanza = " * " ex -- áu -- di o -- ra -- ti -- ó -- nem _ me -- _ _ _ _ am, 
et cla -- mor _ me -- _ _ _ _ us 
ad te _ per -- vé -- ni -- at: 
ne a -- vér -- _ _ tas fá -- _ _ _ ci -- em tu -- _ am 
a me. _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   d'4 ( e'\prall f'4) g'4 ( f'4) g'4 ( a'4 g'4) \divisioMinima
 a'4 ( c''4) a'4 ( a'4 g'4 f'4 g'\prall a'4 b'4 a'4 g'4) a'4 ( g'4) \divisioMinima
 d'4 ( e'\prall f'4 g'4 a'4 \forceBreak
) g'4 ( a'4) g'4 a'4 ( c''4 a'4 g'4) a'4 ( c''4 a'4) g'4 ( \once \tweak #'font-size #-4 a' ) g'4 ( f'4) ~ f'4 ( d'4.) f'4 ( a'4) c''4 ( g'4) ~ g'4 ( f'4 g'\prall a'4 b'4) a'4 ( g'4) \divisioMaxima
 f'4 ( g'4) a'4 ( c''4 a'4 g'4 \forceBreak
) a'4 ( c''4 a'4) g'4 ( \once \tweak #'font-size #-4 a' ) g'4 ( f'4) ~ f'4 ( d'4) f'4 ( a'4) c''4 ( g'4) ~ g'4 ( f'4 g'\prall a'4 b'4.) a'4 ( g'4) \divisioMaior
 f'4 ( g'4) a'4 ( c''4 a'4) ~ a'4 ( g'4 a'4) g'4 ( \once \tweak #'font-size #-4 d' ) f'4 ( a'4 g'4 f'4 \forceBreak
) f'4 ( g'4 f'4 e'4) e'4 \divisioMaxima
 d'4 ( g'4) g'4 a'4 ( c''4 a'4) ~ a'4 ( g'4) a'4 ( b'\prall c''4 b'4 c''4) c''4 ( b'4) \divisioMinima
 c''4 ( c''4 a'4) c''4 ( c''4 a'4) c''4 ( c''4) ~ c''4 ( e''4 d''4 \forceBreak
) d''4 ( c''4) c''4 ( b'4 a'4) b'4 ( d''4 c''4 b'4 a'4) b'4 ( c''4) b'4 \divisioMaior
 g'4 ( a'4) g'4 ( a'4) c''4 ( c''4) ~ c''4 ( a'4 g'4) b'4. g'4 ( a'4) c''4 ( c''4) ~ c''4 ( a'4 g'4) b'4. ~ b'4 ( b'4 a'4) b'4 \forceBreak
 d''4 ( b'4) c''4 ( a'4) ~ a'4 ( g'4) \divisioMinima
 a'4 c''4 ( c''4) ~ c''4 ( a'4) c''4 ( c''4) ~ c''4 ( a'4) ~ a'4 ( g'4) a'4 ( e'4) \divisioMinima
 g'4 c''4 ( c''4 a'4 g'4) a'4 ( b'4 g'4) f'4 ( g'4 f'4) ~ f'4 ( e'4) \finalis

}

altoMusic = {
d'2*3/2 f'2 e'2*3/2 ~ \divisioMinima
e'2 ~ e'2*3/2 f'2*6/2 d'2 ~ \divisioMinima
d'2*5/2 ~ d'2*3/2 f'2*4/2 e'2*3/2 ~ e'2*3/2 d'2 ~ d'2*3/4 f'2*3/2 r2 f'2*4/2 d'2 \divisioMaxima
f'2 e'2*4/2 ~ e'2*3/2 ~ e'2*3/2 d'2 ~ d'4 f'2*3/2 r2 f'2*9/4 d'2 ~ \divisioMaior
d'2 e'2 f'2*4/2 d'2 ~ d'2*4/2 ~ d'2*4/2 c'4 \divisioMaxima
d'2 ~ d'4 e'2 ~ e'2*3/2 ~ e'2*5/2 g'2 ~ \divisioMinima
g'2*3/2 ~ g'2*3/2 ~ g'2 f'2*3/2 e'2 g'2*3/2 ~ g'2*5/2 ~ g'2 ~ g'4 \divisioMaior
e'2 ~ e'2 g'2 f'2*3/2 e'2*3/4 f'2 g'2 e'2*3/2 g'2*3/4 ~ g'2*4/2 ~ g'2*3/2 e'2*3/2 ~ \divisioMinima
e'4 ~ e'2 ~ e'2 ~ e'2*3/2 c'2*3/2 ~ c'2 ~ \divisioMinima
c'4 ~ c'2*4/2 ~ c'2*3/2 ~ c'2 ~ c'2 ~ c'4 \finalis
}

tenorMusic = {
a2*3/2 c'2 ~ c'2*3/2 \divisioMinima
b2 c'2*3/2 ~ c'2*6/2 ~ c'4 b4 \divisioMinima
a2*5/2 ~ a2*3/2 ~ a2*4/2 ~ a2*3/2 c'2*3/2 a2*7/4 c'2*3/2 ~ c'2 ~ c'2*4/2 ~ c'4 b4 \divisioMaxima
a2 ~ a2*4/2 c'2*3/2 b2*3/2 a2*3/2 c'2*3/2 ~ c'2 ~ c'2*9/4 d'2 \divisioMaior
c'2 ~ c'2 ~ c'2*4/2 b2 c'2*4/2 a2*4/2 ~ a4 \divisioMaxima
b2 c'4 ~ c'2 ~ c'2*3/2 ~ c'2*5/2 d'2 ~ \divisioMinima
d'2*3/2 c'2*3/2 ~ c'2 ~ c'2*3/2 ~ c'2 d'2*3/2 ~ d'2*5/2 c'2 e'4 ~ \divisioMaior
e'2 d'2 c'2 ~ c'2*3/2 ~ c'2*3/4 ~ c'2 ~ c'2 ~ c'2*3/2 d'2*3/4 ~ d'2*4/2 b2*3/2 ~ b2*3/2 ~ \divisioMinima
b4 a2 g2 ~ g2*3/2 f2*3/2 e2 ~ \divisioMinima
e4 f2*4/2 e2*3/2 f2 g2 a4 \finalis
}

bassMusic = {
d2*3/2 c2 ~ c2*3/2 ~ \divisioMinima
c2 ~ c2*3/2 d2*6/2 g2 \divisioMinima
f2*5/2 c2*3/2 d2*4/2 c2*3/2 ~ c2*3/2 d2*7/4 ~ d2*3/2 e2 d2*4/2 g2 \divisioMaxima
d2 c2*4/2 ~ c2*3/2 ~ c2*3/2 d2*3/2 ~ d2*3/2 e2 a2*9/4 b2 \divisioMaior
a2 g2 f2*4/2 g2 d2*4/2 ~ d2*4/2 a4 \divisioMaxima
r2*5/2 b2*3/2 a2*5/2 g2 \divisioMinima
e2*3/2 ~ e2*3/2 a2 ~ a2*3/2 ~ a2 g2*3/2 e2*5/2 ~ e2 ~ e4 ~ \divisioMaior
e2 ~ e2 ~ e2 d2*3/2 c2*3/4 d2 e2 a2*3/2 g2*3/4 e2*4/2 ~ e2*3/2 ~ e2*3/2 ~ \divisioMinima
e4 c2 ~ c2 a,2*3/2 ~ a,2*3/2 ~ a,2 ~ \divisioMinima
a,4 ~ a,2*4/2 ~ a,2*3/2 ~ a,2 ~ a,2 ~ a,4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Offertory"
        "III"
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
