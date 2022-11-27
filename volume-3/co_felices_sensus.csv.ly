\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.140
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Felices sensus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Felices sensus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Felices sensus" }
    \line {}
  }
}

chantText = \lyricmode {
Fe -- lí -- ces sen -- _ sus 
\set stanza = " * " be -- á -- tæ Ma -- rí -- æ Vir -- _ gi -- nis, 
qui si -- ne mor -- te 
me -- ru -- _ _ é -- runt mar -- tý -- ri -- i pal -- mam _ 
sub cru -- ce Dó -- mi -- _ ni. }

chantMusic = {
\tieDown   d'4 f'4 f'4 ( e'4) f'4 ( g'4 e'4) f'4 ( e'4 d'4 e'4) e'4 ( d'4) \divisioMinima
 f'4 d'4 ( e'4 d'4 c'4 d'4) d'4 ( c'4) f'4 g'4 ( a'4) a'4 ( g'4 f'4)  g'4 ( a'4 g'4) a'4 ( bes'4) a'4 a'4 \divisioMaxima
 f'4 g'4 ( a'4) a'4 ( g'4)  a'4 ( bes'4) a'4 \divisioMaior
 a'4 a'4 ( g'4) a'4 ( f'4) g'4 ( f'4 e'4) d'4 ( e'\prall f'4 e'4 f'4) e'4 ( d'4) \divisioMinima
 a'4 a'4 ( c''4) a'4 a'4  a'4 a'4 ( g'4) a'4 ( bes'4 a'4) \divisioMaior
 d'4 ( c'4) f'4 ( g'4 a'4) f'4 ( e'4) c'4 ( d'4) d'4 ( c'4) d'4 ( e'\prall f'4) e'4 ( d'4) \finalis

}

altoMusic = {
d'4 ~ d'4 c'2 ~ c'2*3/2 ~ c'2*4/2 a2 ~ \divisioMinima
a4 ~ a2*6/2 c'4 ~ c'4 ~ c'2 ~ c'2*3/2 d'2*3/2 ~ d'2*3/2 ~ d'4 ~ \divisioMaxima
d'4 ~ d'2 ~ d'2 ~ d'2 ~ d'4 ~ \divisioMaior
d'4 ~ d'2 c'2 ~ c'2*3/2 a2*5/2 ~ a2 \divisioMinima
d'4 ~ d'2 ~ d'2 ~ d'4 ~ d'2 ~ d'2*3/2 ~ \divisioMaior
d'4 c'4 ~ c'2*3/2 bes2 a2 ~ a2 ~ a2*3/2 ~ a2 \finalis
}

tenorMusic = {
r2 a2 ~ a2*3/2 g2*4/2 ~ g4 f4 ~ \divisioMinima
f4 g2*5/2 ~ g2 a4 g2 f2*3/2 ~ f2*3/2 ~ f2*3/2 a4 ~ \divisioMaxima
a4 ~ a2 ~ a2 g2 f4 ~ \divisioMaior
f4 ~ f2 ~ f2 a2*3/2 g2*5/2 f2 ~ \divisioMinima
f4 e2 f2 ~ f4 ~ f2 ~ f2*3/2 \divisioMaior
g2 a2*3/2 g2 f2 ~ f2 ~ f2*3/2 g4 f4 \finalis
}

bassMusic = {
r2*4/2 a,2*3/2 ~ a,2*4/2 d2 ~ \divisioMinima
d4 ~ d2*5/2 e2 f4 ~ f2 ~ f2*3/2 e2*3/2 d2*3/2 ~ d4 ~ \divisioMaxima
d4 e2 f2 g2 d4 ~ \divisioMaior
d4 bes,2 a,2 ~ a,2*3/2 d2*5/2 ~ d2 ~ \divisioMinima
d4 ~ d2 ~ d2 c4 bes,2 d2*3/2 \divisioMaior
e2 f2*3/2 ~ f2 ~ f2 e2 d2*3/2 ~ d2 \finalis
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
