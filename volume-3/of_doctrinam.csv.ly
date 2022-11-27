\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.234
%(volume.page)

global = {
 \key e \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Doctrinam" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Doctrinam"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Doctrinam" }
    \line {}
  }
}

chantText = \lyricmode {
Do -- ctrí -- _ _ _ _ _ _ nam 
\set stanza = " * " 
qua -- si an -- te -- lu -- cá -- num 
il -- lú -- mi -- no ó -- mni -- bus, _ 
et e -- _ nar -- rá -- _ _ bo il -- lam 
us -- que _ ad lon -- gín -- _ _ _ _ quum. }

chantMusic = {
\tieDown   d'4 ( f'4 d'4) e'4 ( e'4 f'4.) d'4 ( g'4 f'4) ~ f'4 ( f'4) ~ f'4 ( d'4 c'4.) d'4 ( f'4 d'4 c'4.) d'4 ( f'4 d'4) e'4 ( f'4) f'4 \divisioMaior
 e'4 ( f'4 g'\prall a'4) a'4 ( g'4) g'4 d'4 ( e'\prall f'4) g'4 ( f'4) f'4 ( g'\prall a'4 g'4 a'4) e'4 ( e'4 f'4) \divisioMaior
 d'4 d'4 ( g'4) a'4 ( g'4) g'4 a'4 ( c''4 a'4 b'\prall c''4) g'4 f'4 ( g'4 f'4) ~ f'4 ( d'4) \divisioMaxima
 f'4 f'4 ( e'4) f'4 ( g'\prall a'4) a'4 ( g'4) g'4 c''4 ( c''4) ~ c''4 ( b'4 a'4) g'4 ( a'4) e'4 ( g'4 f'4 e'4) f'4 ( f'4 f'4) \divisioMaior
 d'4 ( e'4 c'4) f'4. ~ f'4 ( f'4 f'4) e'4 ( e'4 f'4) d'4 ( e'\prall f'4) f'4 ( f'4 f'4) g'4 ( a'4 g'4 d'4.) f'4 ( f'4 f'4) a'4 ( g'4 f'4) g'4 ( f'4 e'4) e'4 \finalis

}

altoMusic = {
a2*3/2 ~ a2*7/4 ~ a2*3/2 c'2 ~ c'2*7/4 a2*9/4 ~ a2*5/2 ~ a4 \divisioMaior
c'2*4/2 ~ c'2*3/2 a2*5/2 c'2*5/2 ~ c'2*3/2 ~ \divisioMaior
c'4 d'2*5/2 ~ d'2 c'2*4/2 ~ c'2 a2*3/2 \divisioMaxima
r4 c'2 ~ c'2*3/2 ~ c'2*3/2 ~ c'2 ~ c'2*5/2 ~ c'2*4/2 d'2*3/2 \divisioMaior
a2*3/2 ~ a2*3/4 ~ a2*3/2 c'2*3/2 a2*3/2 ~ a2*3/2 ~ a2*9/4 ~ a2*3/2 ~ a2*3/2 b2*3/2 c'4 \finalis
}

tenorMusic = {
f2*3/2 g2*7/4 f2*3/2 a2 ~ a2*7/4 ~ a2*9/4 f2*5/2 ~ f4 \divisioMaior
g2*4/2 e2*3/2 f2*5/2 ~ f2*5/2 g2 f4 ~ \divisioMaior
f4 d2*5/2 e2 ~ e2*4/2 f2 ~ f2*3/2 \divisioMaxima
r4 g2 f2*3/2 e2*3/2 ~ e2 ~ e2*5/2 a2*4/2 ~ a2*3/2 \divisioMaior
f2*3/2 ~ f2*3/4 ~ f2*3/2 g2*3/2 ~ g2*3/2 f2*3/2 e2*9/4 d2*3/2 c2*3/2 d2*3/2 a4 \finalis
}

bassMusic = {
d2*3/2 ~ d2*7/4 ~ d2*3/2 a2 g2*7/4 f2*9/4 e2*5/2 d4 \divisioMaior
c2*4/2 ~ c2*3/2 d2*5/2 a,2*5/2 ~ a,2 ~ a,4 ~ \divisioMaior
a,4 b,2*5/2 a,2 ~ a,2*4/2 ~ a,2 d2*3/2 \divisioMaxima
r4 c2 ~ c2*3/2 ~ c2*3/2 b,2 a,2*5/2 ~ a,2*4/2 d2*3/2 \divisioMaior
f2*3/2 e2*3/4 d2*3/2 c2*3/2 d2*3/2 ~ d2*3/2 ~ d2*9/4 ~ d2*3/2 a2*3/2 a,2*3/2 ~ a,4 \finalis
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
