\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.287
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Ignem veni" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Ignem veni"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Ignem veni" }
    \line {}
  }
}

chantText = \lyricmode {
I -- gnem _ _ 
\set stanza = " * " ve -- ni mít -- te -- re in ter -- ram: 
et quid vo -- lo, 
ni -- _ _ si _ ut ac -- cen -- _ dá -- tur? }

chantMusic = {
\tieDown   f'4 ( a'4 g'4) g'4 ( a'4 f'4 e'4) f'4 ( e'4 d'4 c'4) d'4 ( c'4) \divisioMinima
 f'4 ( f'4) f'4 ( f'4 g'4) f'4 ( d'4) f'4 g'4 ( a'4) a'4 a'4 ( c''4 d''4 c''4 a'4) a'4 \divisioMaxima
 a'4 g'4 ( a'4 g'4) e'4 ( f'4) g'4 ( a'4 g'4) \divisioMaior
 a'4. f'4 ( a'4 g'4) a'4 ( f'4 e'4 d'4) d'4 ( f'4 d'4) ~ d'4 ( c'4) \divisioMinima
 f'4 g'4 e'4 ( d'4) f'4 ( g'4 f'4 e'4 f'4) d'4 ( e'4 d'4) d'4 \finalis

}

altoMusic = {
a2*3/2 ~ a2*4/2 ~ a2*4/2 ~ a2 ~ \divisioMinima
a2 ~ a2*3/2 ~ a2*3/2 b2*3/2 d'2*5/2 c'2 ~ c'2*3/2 ~ c'2 ~ c'2*3/2 ~ \divisioMaior
c'2*3/4 a2*3/2 ~ a2*4/2 g2 a2*3/2 \divisioMinima
c'2*4/2 ~ c'2*5/2 a2*3/2 ~ a4 \finalis
}

tenorMusic = {
f2*3/2 ~ f2*4/2 ~ f2*4/2 e2 \divisioMinima
d2 e2*3/2 f2*3/2 ~ f2*3/2 e2*5/2 ~ e2 g2*3/2 a2 g2*3/2 \divisioMaior
f2*3/4 ~ f2*3/2 ~ f2*4/2 ~ f2 e2*3/2 \divisioMinima
f2*4/2 g2*5/2 ~ g2*3/2 f4 \finalis
}

bassMusic = {
r2*3/2 e2*4/2 d2*4/2 ~ d2 ~ \divisioMinima
d2 ~ d2*3/2 ~ d2*3/2 ~ d2*3/2 a,2*5/2 ~ a,2 e2*3/2 ~ e2 ~ e2*3/2 ~ \divisioMaior
e2*3/4 ~ e2*3/2 d2*4/2 ~ d2 a,2*3/2 ~ \divisioMinima
a,2*4/2 c2*5/2 d2*3/2 ~ d4 \finalis
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
