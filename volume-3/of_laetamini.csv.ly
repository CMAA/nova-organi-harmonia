\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.41
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Laetamini" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Laetamini"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Laetamini" }
    \line {}
  }
}

chantText = \lyricmode {
Læ -- tá -- _ mi -- ni 
\set stanza = " * " in Dó -- _ mi -- no, _ _ 
et _ ex -- sul -- tá -- _ te _ _ ju -- _ _ _ sti: _ 
et _ _ glo -- ri -- á -- mi -- ni 
o -- _ mnes re -- _ cti _ _ cor -- _ _ _ de. _ _ _ _ }

chantMusic = {
\tieDown   d'4 d'4 ( e'\prall f'4) g'4 ( f'4 d'4) d'4 ( e'\prall f'4 c'4) c'4 \divisioMinima
 f'4 ( g'4) g'4 ( c''4) d''4 ( c''4 a'4) a'4 a'4 c''4 ( c''4 c''4) a'4 ( b'4 a'4) \divisioMaior
 f'4 ( a'4) c''4 ( a'4 g'4) g'4 ( f'4) f'4 ( g'4) g'4 ( c''4 b'4 a'4) ~ a'4 ( g'4) g'4 ( f'4) g'4 ( f'4 f'4) d'4 ( e'4 d'4) \divisioMinima
  d'4 ( f'4) ~ f'4 ( f'4 f'4) a'4 ( bes'4 g'4) a'4 ( f'4 d'4) d'4 ( f'4 d'4) ~ d'4 ( c'4) \divisioMaxima
 d'4 ( f'4) ~ f'4 ( f'4 f'4) g'4 ( f'4 g'4) d'4 ( f'4 d'4 f'4) c'4 ( d'4) d'4 ( f'4) f'4 ( a'4 g'4) g'4 \divisioMaior
 f'4 a'4 ( c''4 g'4) f'4 ( a'4 c''4 g'4 f'4 e'4 d'4 e'\prall f'4) \divisioMinima
 d'4 ( e'\prall f'4) g'4 ( f'4) f'4 ( f'4 f'4) a'4 ( g'4) a'4 ( f'4) f'4 ( g'4.) f'4 ( f'4 g'4) f'4 ( f'4) g'4 ( f'4 e'4) d'4 f'4 ( f'4) ~ f'4 ( d'4) f'4 ( f'4 f'4) d'4 ( e'4 d'4) \finalis

}

altoMusic = {
r4 bes2*6/2 a2*4/2 g4 \divisioMinima
c'2 ~ c'2*7/2 ~ c'2*3/2 ~ c'2*3/2 ~ \divisioMaior
c'2*5/2 ~ c'2 ~ c'2 e'2*3/2 ~ e'2*3/2 d'2 a2*3/2 ~ a2*3/2 d'2 c'2*3/2 ~ c'2*3/2 a2*3/2 bes2 a2*3/2 ~ \divisioMaxima
a2 bes2*3/2 a2*3/2 ~ a2*4/2 c'4 d'4 a2 d'2*3/2 ~ d'4 \divisioMaior
c'2*4/2 ~ c'2*4/2 ~ c'2 a2*3/2 \divisioMinima
d'2*5/2 c'2*7/2 bes2*5/4 c'2*3/2 a2*6/2 bes2 a2 g2*3/2 a2*3/2 \finalis
}

tenorMusic = {
r4 g2*6/2 f2*4/2 e4 \divisioMinima
f2 e2 g2*5/2 f2*3/2 e2*3/2 \divisioMaior
f2*5/2 g2 a2 g2*3/2 c'2*3/2 a2 g2*3/2 f2*3/2 ~ f2 ~ f2*3/2 ~ f2*3/2 ~ f2*3/2 ~ f2 e2*3/2 \divisioMaxima
f2 ~ f2*3/2 e2*3/2 f2*4/2 g2 f2 ~ f2*3/2 ~ f4 ~ \divisioMaior
f4 e2*3/2 a2*4/2 g2 f2*3/2 ~ \divisioMinima
f2*5/2 ~ f2*7/2 ~ f2*5/4 ~ f2*3/2 ~ f2*6/2 g2 f2 e2*3/2 f2*3/2 \finalis
}

bassMusic = {
r2*12/2 \divisioMinima
a,2 ~ a,2*7/2 ~ a,2*3/2 ~ a,2*3/2 ~ \divisioMaior
a,2*5/2 ~ a,2 ~ a,2 c2*3/2 ~ c2*3/2 d2 ~ d2*3/2 ~ d2*3/2 bes,2 a,2*3/2 g,2*3/2 f,2*3/2 g,2 a,2*3/2 \divisioMaxima
d2 ~ d2*3/2 ~ d2*3/2 ~ d2*4/2 e2 d2 c2*3/2 bes,4 \divisioMaior
a,2*4/2 ~ a,2*4/2 ~ a,2 d2*3/2 \divisioMinima
bes,2*5/2 a,2*7/2 g,2*5/4 a,2*3/2 d2*6/2 ~ d2 ~ d2 ~ d2*3/2 ~ d2*3/2 \finalis
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
