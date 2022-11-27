\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.256
%(volume.page)

global = {
 \key e \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Jerusalem quae" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Jerusalem quae"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Jerusalem quae" }
    \line {}
  }
}

chantText = \lyricmode {
Je -- rú -- sa -- lem, _ _ 
\set stanza = " * " quæ æ -- di -- fi -- cá -- tur ut cí -- vi -- tas, 
cu -- jus par -- ti -- ci -- pá -- ti -- o e -- jus in id -- íp -- sum: 
il -- luc e -- nim a -- scen -- dé -- runt tri -- bus, tri -- bus Dó -- mi -- ni, 
ad con -- fi -- tén -- dum nó -- mi -- ni tu -- o, _ Dó -- mi -- ne. }

chantMusic = {
\tieDown   e'4 ( e'4 f'4) d'4 ( e'4) c'4 ( d'4) d'4 ( g'4) a'4 ( f'4) ~ f'4 ( e'4) \divisioMinima
 f'4 f'4 ( d'4) f'4 ( e'4) f'4 g'4 f'4 f'4 ( \once \tweak #'font-size #-4 d'  \forceBreak
) e'4 ( f'4) f'4 e'4 ( e'4 f'4) \divisioMaior
 f'4 ( \once \tweak #'font-size #-4 d' ) d'4 ( f'4 e'4) f'4 ( \once \tweak #'font-size #-4 g' ) g'4 g'4 g'4 ( a'4) a'4 a'4 c''4 g'4 a'4 f'4 g'4 e'4 \divisioMaxima \forceBreak

 a'4 c''4 c''4 ( c''4 c''4) g'4 a'4 c''4 b'4 ( d''4 c''4 c''4) c''4 ( b'4) \divisioMinima
 c''4 ( c''4 c''4) g'4 a'4 f'4 a'4 g'4 ( a'4 g'4 f'4 e'4 f'4) f'4 ( e'4) \divisioMaior \forceBreak

 f'4 ( f'4 f'4) f'4 f'4 ( d'4) d'4 ( \once \tweak #'font-size #-4 g' ) g'4 \divisioMinima
 g'4 ( a'4) f'4 d'4 f'4 ( f'4) d'4 ( e'4 c'4) f'4 ( g'\prall a'4 g'4 a'4 g'4) e'4 e'4 ( g'4 f'4 f'4) f'4 ( e'4) \finalis

}

altoMusic = {
r2*5/2 c'4 d'4 ~ d'2*3/2 c'2*3/2 ~ \divisioMinima
c'2*3/2 ~ c'2*3/2 ~ c'2 ~ c'2 ~ c'2*3/2 ~ c'2*3/2 ~ \divisioMaior
c'2 d'2*3/2 ~ d'2 e'2 ~ e'2*4/2 c'2 ~ c'2 b4 c'4 \divisioMaxima
f'2 g'2*4/2 ~ g'2 ~ g'2*4/2 ~ g'2 ~ \divisioMinima
g'2*3/2 ~ g'4 f'2 e'4 ~ e'2*3/2 d'2*3/2 c'2 \divisioMaior
a2*3/2 c'4 ~ c'2 b2 c'4 ~ \divisioMinima
c'2*4/2 ~ c'2 ~ c'2*3/2 ~ c'2*7/2 ~ c'2*4/2 b4 c'4 \finalis
}

tenorMusic = {
r2*3/2 a2 ~ a2 ~ a2*3/2 ~ a2*3/2 ~ \divisioMinima
a4 ~ a2 d2*3/2 e2 d2 g2*3/2 a2*3/2 ~ \divisioMaior
a2 ~ a2*3/2 ~ a2 ~ a2 ~ a2*4/2 g2 f2 a2 \divisioMaxima
c'2 ~ c'2*4/2 e'2 ~ e'2 ~ e'2 ~ e'2 ~ \divisioMinima
e'2*4/2 c'2*3/2 ~ c'2*3/2 a2*3/2 g2 \divisioMaior
f2*4/2 a2 g2 ~ g4 \divisioMinima
a2*4/2 ~ a2 ~ a2*3/2 ~ a2 f2 e2 g4 ~ g2 a2 ~ a2 \finalis
}

bassMusic = {
d2*3/2 ~ d2 e2 f2*3/2 a2*3/2 ~ \divisioMinima
a4 a,2 ~ a,2*3/2 ~ a,2 d2 ~ d2*3/2 ~ d2*3/2 \divisioMaior
r2 f2*3/2 e2 d2 c2*4/2 e2 f2 r2 \divisioMaxima
d2 e2*4/2 ~ e2 g2 a2 e'2 \divisioMinima
a2*4/2 ~ a2*3/2 c2*3/2 ~ c2*3/2 ~ c2 \divisioMaior
d2*4/2 ~ d2 e2 ~ e4 \divisioMinima
r2*4/2 e2 f2*3/2 d2 ~ d2 c2 ~ c4 a,2*4/2 ~ a,2 \finalis
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
