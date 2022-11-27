\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.97
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Omnes gentes" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Omnes gentes"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Omnes gentes" }
    \line {}
  }
}

chantText = \lyricmode {
O -- mnes gen -- tes 
\set stanza = " * " quas -- cúm -- que fe -- cí -- sti, vé -- ni -- _ ent, 
et ad -- o -- _ rá -- _ bunt co -- ram te, Dó -- mi -- ne, 
et glo -- ri -- fi -- cá -- _ bunt _ no -- men tu -- _ um: 
quó -- _ ni -- am ma -- _ gnus es tu, 
et fá -- ci -- ens mi -- ra -- bí -- _ li -- a: 
tu es _ De -- _ us so -- _ _ lus, 
al -- le -- lú -- ia. }

chantMusic = {
\tieDown   c'4 ( d'4 e'4) d'4 d'4 ( e'4) d'4 \divisioMinima
 d'4 c'4 ( \once \tweak #'font-size #-4 d' ) d'4 d'4 d'4 ( d'4 c'4 d'4) a4 \divisioMinima
 a4 ( d'4 c'4 d'4) d'4 ( b4 \forceBreak
) c'4 ( a4) a4 \divisioMaior
 d'4 ( c'4 d'4) c'4 c'4 ( d'4 e'4) g'4 ( ges'4 g'4) g'4 ( e'4) ges'4 ( d'4) d'4 \divisioMinima
 g'4 g'4 ( g'4 g'4) ges'4 ( e'4) ges'4 ( g'4 a'4 \forceBreak
) g'4 ( ges'4) d'4 \divisioMaxima
 d'4 d'4 d'4 ( e'4) d'4 d'4 ( e'4) g'4 ( ges'4) ges'4 ( e'4) g'4 ( a'4 g'4) e'4 e'4  e'4 ( d'4) ges'4 ( e'4 c'4) c'4 \divisioMaxima \forceBreak

 d'4 e'4 ( d'4) d'4 d'4 ( e'4 ges'\prall g'4) ~ g'4 ( a'4) g'4 e'4 ( d'4) d'4 \divisioMaior
 d'4 ( \once \tweak #'font-size #-4 c' ) c'4 ( d'4 c'4 d'4) a4 a4 c'4 b4 ( c'4 d'4 \forceBreak
) d'4 ( b4) c'4 ( a4) g4 ( a4) a4 \divisioMaxima
 d'4 ( c'4 d'4) d'4 ( e'4 d'4) ~ d'4 ( c'4) c'4 ( e'4) g'4 ( d'4) d'4 ( c'4) c'4 ( e'4) g'4 ( e'4) ges'4 ( d'4) d'4 \divisioMaior \forceBreak

 d'4 d'4 d'4 ( c'4 d'\prall e'4 d'4) d'4 \finalis

}

altoMusic = {
c'2*4/2 e'2*3/2 ~ \divisioMinima
e'4 c'2*4/2 d'2*4/2 ~ d'4 ~ \divisioMinima
d'2*4/2 ~ d'2 a2 ~ a4 \divisioMaior
e'2*4/2 f'2*6/2 g'2 d'2 ~ d'4 \divisioMinima
g'4 ~ g'2*5/2 ~ g'2*3/2 e'2 d'4 \divisioMaxima
e'2 d'2*3/2 e'2*4/2 ~ e'2 ~ e'2*3/2 f'2 ~ f'2*5/2 c'4 \divisioMaxima
e'2 ~ e'2 ~ e'2*3/2 g'2*4/2 d'2 ~ d'4 \divisioMaior
c'2 ~ c'2*7/2 ~ c'2*3/2 ~ c'2 a2 c'2 a4 \divisioMaxima
c'2*3/2 ~ c'2 ~ c'2*3/2 ~ c'2 ~ c'2 ~ c'2 f'2*4/2 d'2 ~ d'4 ~ \divisioMaior
d'2 ~ d'2*3/2 ~ d'2 ~ d'4 \finalis
}

tenorMusic = {
a2*4/2 c'2*3/2 ~ \divisioMinima
c'4 a2*4/2 ~ a2*4/2 f4 \divisioMinima
g2*4/2 a2 g2 f4 \divisioMaior
c'2*4/2 ~ c'2*6/2 ~ c'2 ~ c'2 b4 \divisioMinima
c'4 ~ c'2*5/2 d'2*3/2 a2 b4 \divisioMaxima
c'2 b2*3/2 c'2*4/2 d'2 e'2*3/2 c'2 d'2*5/2 a4 \divisioMaxima
c'2 ~ c'2 ~ c'2*3/2 ~ c'2*4/2 ~ c'2 b4 \divisioMaior
e2 f2*7/2 g2*3/2 a2 ~ a2 g2 f4 \divisioMaxima
e2*3/2 d2 e2*3/2 f2 e2 a2 ~ a2*4/2 c'2 b4 ~ \divisioMaior
b2 c'2*3/2 ~ c'2 b4 \finalis
}

bassMusic = {
r2*12/2 d2*4/2 ~ d4 \divisioMinima
bes,2*4/2 d2 ~ d2 ~ d4 \divisioMaior
c2*4/2 d2*6/2 e2 g2 ~ g4 \divisioMinima
f4 e2*5/2 g2*3/2 ~ g2 ~ g4 \divisioMaxima
r2*5/2 a2*4/2 ~ a2 ~ a2*3/2 ~ a2 bes2*5/2 f4 \divisioMaxima
r2 b2 a2*3/2 e2*4/2 g2 ~ g4 \divisioMaior
c2 a,2*7/2 ~ a,2*3/2 ~ a,2 d2 ~ d2 ~ d4 \divisioMaxima
c2*3/2 ~ c2 ~ c2*3/2 a,2 ~ a,2 ~ a,2 d2*4/2 g2 ~ g4 ~ \divisioMaior
g2 d2*3/2 g2 ~ g4 \finalis
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
