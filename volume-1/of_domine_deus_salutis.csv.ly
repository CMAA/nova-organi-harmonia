\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.200
%(volume.page)

global = {
 \key g \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Domine Deus salutis" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Domine Deus salutis"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Domine Deus salutis" }
    \line {}
  }
}

chantText = \lyricmode {
Do -- mi -- ne 
\set stanza = " * " De -- us sa -- lú -- _ tis me -- æ, 
in di -- _ e _ cla -- má -- vi, 
et no -- cte co -- ram te: 
in -- tret o -- rá -- ti -- o me -- a _ 
in con -- _ spé -- ctu tu -- _ o, Dó -- mi -- _ ne. }

chantMusic = {
\tieDown   d'4 ( e'\prall f'4) g'4 ( f'4) g'4 \divisioMinima
 a'4 ( c''4 a'4) g'4 ( a'4 g'4 f'4) f'4 ( a'4) a'4. c''4 ( c''4 a'4 b'\prall c''4) g'4 ( f'4 g'\prall a'4 g'4 \forceBreak
) g'4 ( a'4 g'4) g'4 \divisioMaior
 g'4 g'4 ( b'4) d''4 ( c''4) c''4 ( c''4) ~ c''4 ( a'4 c''4) g'4 a'4 ( c''4 a'4) g'4 ( a'4) \divisioMaior
 f'4 ( g'4) g'4 ( c''4 a'4) g'4 ( a'4 g'4 f'4 \forceBreak
) f'4 f'4 ( g'4 a'4 g'4 f'4) g'4 ( f'4) \divisioMaxima
 g'4 ( a'4) g'4 ( a'4) g'4 ( f'4) a'4 ( c''4 a'4 b'\prall c''4) g'4 ( a'4) g'4 ( f'4) g'4 ( a'4) a'4 ( c''4 a'4 a'4) f'4 ( g'4 f'4) \divisioMaior \forceBreak

 g'4 ( a'4) g'4 a'4 ( c''4 b'4) c''4 g'4 ( a'4) g'4 ( a'4) c''4 ( b'4) c''4 ( c''4 b'4 a'4 b'\prall c''4 b'4 a'4) a'4 ( g'4) g'4 ( a'4) c''4 ( a'4 b'4) a'4 ( g'4) \finalis

}

altoMusic = {
c'2*3/2 ~ c'2 ~ c'4 ~ \divisioMinima
c'2*3/2 ~ c'2*4/2 f'2 e'2*3/4 d'2*5/2 ~ d'2*5/2 ~ d'2*3/2 ~ d'4 ~ \divisioMaior
d'4 g'2 ~ g'2 f'2 e'2*4/2 d'2*3/2 e'2 \divisioMaior
f'2 g'2*3/2 e'2*4/2 ~ e'4 d'2*5/2 ~ d'2 \divisioMaxima
c'2 f'2 ~ f'2 ~ f'2 e'2*3/2 ~ e'2 d'2 e'2 f'2*4/2 d'2*3/2 \divisioMaior
e'2*3/2 ~ e'2*3/2 f'4 ~ f'2 g'2*4/2 f'2*3/2 e'2*5/2 ~ e'2 g'2 f'2*3/2 d'2 \finalis
}

tenorMusic = {
f2*3/2 ~ f2 e4 ~ \divisioMinima
e2*3/2 f2*4/2 ~ f2 g2*3/4 f2*5/2 c'2*5/2 ~ c'2*3/2 b4 ~ \divisioMaior
b4 d'2 c'2 ~ c'2 ~ c'2*4/2 b2*3/2 c'2 ~ \divisioMaior
c'2 ~ c'2*3/2 ~ c'2*4/2 a4 ~ a2*5/2 g4 a4 \divisioMaxima
g2 ~ g2 a2 c'2 ~ c'2*3/2 a2 ~ a2 ~ a2 c'2*4/2 a2*3/2 \divisioMaior
c'2 b4 a2*3/2 ~ a4 c'2 ~ c'2*4/2 ~ c'2*3/2 ~ c'2*5/2 b2 c'2 ~ c'2*3/2 ~ c'4 b4 \finalis
}

bassMusic = {
d2*3/2 c2 ~ c4 \divisioMinima
a,2*3/2 ~ a,2*4/2 d2 ~ d2*3/4 ~ d2*5/2 ~ d2*5/2 g2*3/2 ~ g4 ~ \divisioMaior
g4 e2 ~ e2 d2 b2*4/2 a2*3/2 ~ a2 ~ \divisioMaior
a2 e2*3/2 c2*4/2 d4 ~ d2*5/2 ~ d2 \divisioMaxima
e2 d2 ~ d2 ~ d2 c2*3/2 ~ c2 d2 ~ d2 ~ d2*4/2 ~ d2*3/2 \divisioMaior
c2*3/2 ~ c2*3/2 d4 ~ d2 e2*4/2 d2*3/2 c2*5/2 e2 ~ e2 d2*3/2 g2 \finalis
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
