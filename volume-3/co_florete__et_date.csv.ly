\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.377
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Florete... et date" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Florete... et date"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Florete... et date" }
    \line {}
  }
}

chantText = \lyricmode {
Flo -- ré -- te flo -- _ res 
\set stanza = " * " qua -- si li -- li -- um, _ 
et da -- te o -- dó -- rem, _ 
et fron -- dé -- te in grá -- ti -- am: _ 
col -- lau -- dá -- te _ cán -- ti -- cum, 
et be -- ne -- dí -- ci -- te Dó -- mi -- num _ 
in o -- pé -- ri -- bus su -- _ is. }

chantMusic = {
\tieDown   f'4 ( e'4) g'4 ( a'4) f'4 ( e'4) d'4 ( c'4) d'4 ( e'\prall f'4 e'4 f'4) e'4 ( d'4)  d'4 d'4 d'4 ( a'4) a'4  a'4 ( g'4) a'4 ( bes'4 a'4) \divisioMaior
 g'4 ( \once \tweak #'font-size #-4 e' ) g'4 ( a'4 g'4 a'4) g'4 ( f'4) g'4 f'4 ( e'4 d'4) d'4 ( f'4 d'4) ~ d'4 ( c'4) \divisioMaior
 c'4 d'4 ( \once \tweak #'font-size #-4 f' ) f'4 ( f'4 g'4) f'4 f'4 ( \once \tweak #'font-size #-4 e' ) g'4 ( a'4) g'4  a'4 ( g'4) a'4 ( bes'4 a'4) \divisioMaior
 g'4 a'4 c''4 ( c''4) d''4 ( c''4) ~ c''4 ( a'4)  a'4 ( g'4 a'\prall bes'4) a'4 ( g'4) g'4 ( a'4 g'4 f'4 g'4) \divisioMaior
 f'4 g'4 ( a'4) a'4 ( f'4) g'4 f'4 ( e'4) d'4 d'4 ( e'\prall f'4 e'4 d'4) d'4 d'4 ( c'4) d'4 ( e'4 d'4) \divisioMaior
 c'4 d'4 f'4 ( g'4 a'4) f'4 ( e'4) c'4 ( d'4) d'4 ( c'4) d'4 ( e'\prall f'4) e'4 ( d'4) \finalis

}

altoMusic = {
a2*6/2 ~ a2 ~ a2*7/2 ~ a2 d'2*3/2 ~ d'2 ~ d'2*3/2 ~ \divisioMaior
d'2 ~ d'2*7/2 a2*3/2 ~ a2 g2*3/2 ~ \divisioMaior
g4 a2 ~ a2*4/2 d'2 ~ d'2*3/2 ~ d'2 ~ d'2*3/2 \divisioMaior
f'2 e'2*3/2 f'2*3/2 ~ f'2*6/2 e'2*5/2 \divisioMaior
r4 e'2 d'2 c'2*4/2 ~ c'2*6/2 a2*5/2 \divisioMaior
c'2 a2*7/2 ~ a2*5/2 ~ a2 \finalis
}

tenorMusic = {
r2 e2*4/2 g2 f2*7/2 ~ f2 ~ f2*3/2 g2 f2*3/2 ~ \divisioMaior
f2 e2*7/2 d2*3/2 f2 g2*3/2 ~ \divisioMaior
g4 f2 ~ f2*4/2 a2 e2*3/2 g2 f2*3/2 \divisioMaior
a2 ~ a2*3/2 c'2*3/2 d'2*6/2 e'2*5/2 \divisioMaior
c'2*3/2 ~ c'2 ~ c'4 a2*3/2 ~ a2*6/2 f2*5/2 ~ \divisioMaior
f2 ~ f2*7/2 e2 g2*3/2 f2 \finalis
}

bassMusic = {
d2 ~ d2*4/2 ~ d2 ~ d2*7/2 c2 bes,2*3/2 b,2 d2*3/2 ~ \divisioMaior
d2 ~ d2*7/2 ~ d2*3/2 ~ d2 e2*3/2 ~ \divisioMaior
e4 ~ e2 d2*4/2 ~ d2 ~ d2*3/2 ~ d2 ~ d2*3/2 ~ \divisioMaior
d2 a2*3/2 ~ a2*3/2 bes2*6/2 c'2*5/2 \divisioMaior
a2*3/2 ~ a2 ~ a4 g2*3/2 f2*6/2 e2*5/2 ~ \divisioMaior
e2 d2*7/2 ~ d2 ~ d2*3/2 ~ d2 \finalis
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
