\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.104
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
in con -- _ spé -- ctu tu -- o, Dó -- mi -- ne. 
al -- le -- lú -- _ ia. }

chantMusic = {
\tieDown   d'4 ( e'\prall f'4) g'4 ( f'4) g'4 \divisioMinima
 a'4 ( c''4 a'4) g'4 ( a'4 g'4 f'4) f'4 ( a'4) a'4. c''4 ( c''4 a'4 b'\prall c''4) g'4 ( f'4 g'\prall a'4 g'4) g'4 ( a'4 g'4) g'4 \divisioMaior \forceBreak

 g'4 g'4 ( b'4) d''4 ( c''4) c''4 ( c''4) ~ c''4 ( a'4 c''4) g'4 a'4 ( c''4 a'4) g'4 ( a'4) \divisioMaior
 f'4 ( g'4) g'4 ( c''4 a'4) g'4 ( a'4 g'4 f'4) f'4 f'4 ( g'4 a'4 \tiny g' f' 4) g'4 ( f'4) \divisioMaxima \forceBreak

 g'4 ( a'4) g'4 ( a'4) g'4 ( f'4) a'4 ( c''4 a'4 b'\prall c''4) g'4 ( a'4) g'4 ( f'4) g'4 ( a'4) a'4 ( c''4 a'4 a'4) f'4 ( g'4 f'4) \divisioMaior
 g'4 ( a'4) g'4 a'4 ( c''4 b'4) c''4 \forceBreak
 g'4 ( a'4) g'4 ( a'4 c''4 b'4) c''4 ( c''4 b'4 a'4 b'\prall c''4 b'4 a'4) a'4 ( g'4) g'4 ( a'\prall b'4 a'4 b'4) a'4 ( g'4) \divisioMaior
 g'4 g'4 ( a'4 f'4 g'4) g'4 ( a'4) c''4 ( a'4 b'4) a'4 ( g'4) \finalis

}

altoMusic = {
d'2*3/2 ~ d'2 ~ d'4 \divisioMinima
e'2*3/2 ~ e'2*4/2 f'2 ~ f'2*3/4 g'2 e'2*3/2 d'2*3/2 ~ d'2 ~ d'2*3/2 ~ d'4 ~ \divisioMaior
d'4 g'2*4/2 ~ g'2 f'2*3/2 e'4 ~ e'2*3/2 ~ e'2 \divisioMaior
f'2 c'2*3/2 d'2*4/2 ~ d'4 ~ d'2*5/2 c'2 ~ \divisioMaxima
c'2*4/2 d'2 e'2 ~ e'2*3/2 c'2*4/2 ~ c'2 e'2*4/2 d'2*3/2 \divisioMaior
e'2 ~ e'4 ~ e'2*3/2 ~ e'4 c'2 ~ c'2*4/2 ~ c'2*3/2 e'2 ~ e'2*3/2 ~ e'2 ~ e'2 ~ e'2*3/2 d'2 ~ \divisioMaior
d'4 c'2*4/2 ~ c'2 ~ c'2*3/2 ~ c'4 b4 \finalis
}

tenorMusic = {
r2*3/2 c'2 b4 \divisioMinima
c'2*3/2 ~ c'2*4/2 ~ c'2 ~ c'2*3/4 ~ c'2 ~ c'2*3/2 a2*3/2 f2 d2*3/2 g4 ~ \divisioMaior
g4 ~ g2*4/2 a2 ~ a2*4/2 ~ a2*3/2 c'2 ~ \divisioMaior
c'2 g2*3/2 a2*4/2 ~ a4 bes2*5/2 ~ bes4 a4 \divisioMaxima
g2*4/2 a2 ~ a2 ~ a2*3/2 ~ a2*4/2 f2 e2*4/2 a2*3/2 \divisioMaior
c'2 b4 a2*3/2 ~ a4 e2 f2*4/2 e2*3/2 ~ e2 a2*3/2 b2 g2 ~ g2*3/2 ~ g2 \divisioMaior
e4 f2*4/2 e2 ~ e2*3/2 d2 \finalis
}

bassMusic = {
r2*6/2 \divisioMinima
a2*7/2 ~ a2 f2*3/4 e2 c2*3/2 d2*3/2 c2 b,2*3/2 ~ b,4 ~ \divisioMaior
b,4 e2*4/2 ~ e2 d2*4/2 c2*3/2 ~ c2 \divisioMaior
d2 e2*3/2 d2*4/2 bes,4 ~ bes,2*5/2 f2 \divisioMaxima
e2*4/2 d2 ~ d2 c2*3/2 a,2*4/2 ~ a,2 c2*4/2 d2*3/2 \divisioMaior
c2 ~ c4 ~ c2*3/2 a,4 ~ a,2 ~ a,2*4/2 ~ a,2*3/2 c2 ~ c2*3/2 e2 d2 c2*3/2 b,2 ~ \divisioMaior
b,4 a,2*4/2 ~ a,2 f,2*3/2 g,2 \finalis
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
