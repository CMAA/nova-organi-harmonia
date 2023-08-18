\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.309
%(volume.page)

global = {
 \key g \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Fulgentibus palmis" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Fulgentibus palmis"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Fulgentibus palmis" }
    \line {}
  }
}

chantText = \lyricmode {
Ful -- gén -- ti -- bus pal -- mis 
\set stanza = " * " pro -- stér -- ni -- mur _ ad -- ve -- ni -- én -- ti Dó -- mi -- no: 
hu -- ic o -- mnes oc -- cur -- rá -- mus cum hym -- nis et cán -- ti -- cis, 
glo -- ri -- fi -- cán -- tes et di -- cén -- tes: 
<<Be -- ne -- dí -- ctus Dó -- mi -- nus>>. }

chantMusic = {
\tieDown   d'4 g'4 ( a'4 f'4) e'4 f'4 d'4 f'4 \divisioMinima
 f'4 g'4 ( a'4) f'4 ( g'4) g'4 ( a'\prall b'4 a'4) ~ a'4 ( g'4) \divisioMinima \forceBreak

 f'4 a'4 c''4 ( b'4) a'4 ( \once \tweak #'font-size #-4 g' ) f'4 ( g'4) g'4 ( f'4) a'4 ( g'4) g'4 \divisioMaxima
 g'4 ( c''4) c''4 c''4 ( \once \tweak #'font-size #-4 b' ) a'4 c''4 g'4 a'4 ( g'4) e'4 \divisioMinima \forceBreak

 f'4 ( g'4) g'4 ( f'4 e'4) d'4 e'4 f'4 ( \once \tweak #'font-size #-4 e' ) d'4 c'4 \divisioMaior
 c'4 e'4 f'4 g'4 ( a'4) g'4 \divisioMinima
 a'4 g'4 ( a'4) g'4 ( \once \tweak #'font-size #-4 f' ) f'4 \divisioMaior \forceBreak

 a'4 c''4 ( b'4) a'4 ( g'4) f'4 ( g'4) g'4 ( f'4) a'4 ( g'4) g'4 \finalis

}

altoMusic = {
r4 c'2*5/2 d'2 \divisioMinima
r4 c'2 ~ c'2 d'2*3/2 ~ d'2 ~ d'4 \divisioMinima
f'2 ~ f'2 d'2 c'2 ~ c'2 d'2 ~ d'4 \divisioMaxima
g'2*3/2 f'2*3/2 e'2 d'2 c'4 ~ \divisioMinima
c'2 ~ c'2*3/2 a2 c'2 a2 \divisioMaior
c'2*3/2 ~ c'2*4/2 ~ c'2 d'2*3/2 \divisioMaior
f'4 g'2 e'2 c'2 ~ c'2*4/2 d'4 \finalis
}

tenorMusic = {
b4 a2*5/2 ~ a2 \divisioMinima
r4 g2 a2 b2*3/2 c'2 b4 \divisioMinima
c'2 d'2 ~ d'2 a2 ~ a2 c'2 b4 \divisioMaxima
c'2*3/2 ~ c'2*3/2 ~ c'2 f2 g4 \divisioMinima
f2 e2*3/2 f2 ~ f2 e2 \divisioMaior
a2*3/2 g2*4/2 a2 ~ a2*3/2 \divisioMaior
c'4 ~ c'2 b2 a2 ~ a2*4/2 b4 \finalis
}

bassMusic = {
g4 ~ g2*5/2 d2 \divisioMinima
r4 e2 ~ e2 ~ e2*3/2 g2 ~ g4 \divisioMinima
a2 ~ a2 b2 a2 g2 ~ g2 ~ g4 \divisioMaxima
e2*3/2 d2*3/2 c2 ~ c2 ~ c4 ~ \divisioMinima
c2 ~ c2*3/2 d2 a,2 ~ a,2 ~ \divisioMaior
a,2*3/2 e2*4/2 ~ e2 d2*3/2 ~ \divisioMaior
d4 e2 ~ e2 ~ e2 g2*4/2 ~ g4 \finalis
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
        "VIII"
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
