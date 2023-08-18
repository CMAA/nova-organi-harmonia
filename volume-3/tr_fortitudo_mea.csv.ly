\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.124
%(volume.page)

global = {
 \key g \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Fortitudo mea" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Fortitudo mea"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Fortitudo mea" }
    \line {}
  }
}

chantText = \lyricmode {
For -- ti -- tú -- do _ me -- a, _ _ _ 
\set stanza = " * " 
et laus me -- _ a Dó -- mi -- nus, _ _ _ _ _ _ 
et fa -- ctus est mi -- hi in sa -- _ lú -- tem: _ _ _ 
i -- ste _ De -- us me -- us, _ _ _ _ 
et glo -- ri -- fi -- cá -- _ _ bo e -- um. _ _ _ _ _ ℣. 
Dó -- mi -- nus qua -- si vir pu -- gná -- _ _ tor, 
O -- mní -- _ po -- tens no -- men e -- jus. _ _ _ _ _ ℣. 
Dó -- mi -- nus cón -- te -- rens bel -- _ _ _ la: 
Dó -- _ mi -- nus 
\set stanza = " * " no -- men est il -- li. _ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   d'4 f'4 f'4 ( g'4) g'4 ( e'4) f'4 ( g'4 d'4 c'4 d'4) f'4 ( g'4)  f'4 bes'4 ( bes'4) ~ bes'4 ( a'4 g'4) a'4 ( g'4) \divisioMaior
 g'4 ( c''4 c''4) c''4 ( d''4) a'4 ( g'4) a'4 ( f'4 g'4) g'4 \divisioMinima
 b'4 ( c''4) a'4 ( g'4) g'4 ( g'4 b'4 a'4 g'4) a'4 ( g'4) a'4 ( g'4) a'4 ( g'4) c''4 ( c''4 a'4) c''4 ( g'4) ~ g'4 ( f'4) \divisioMaxima
 f'4 a'4 ( c''4) b'4 ( g'4 a'4) g'4 ( f'4 g'4) g'4 ( a'4) g'4 \divisioMinima
 g'4 g'4 ( a'4) c''4 ( b'4 c''4) c''4 ( a'4 b'\prall c''4) c''4 ( c''4) ~ c''4 ( b'4 a'4) b'4 ( a'4 g'4) a'4 ( g'4) \divisioMaxima
 a'4 ( f'4 g'4) g'4 ( a'4) c''4 ( b'4) c''4 a'4 ( b'\prall c''4) c''4 ( c''4 c''4) c''4 ( a'4) c''4 ( c''4) e''4 ( d''4 c''4) ~ c''4 ( b'4 a'4 g'4) a'4 ( g'4) \divisioMaior
 g'4 ( a'4) g'4 g'4 ( a'4) g'4 a'4 ( g'4) c''4 ( c''4 g'4) a'4 ( g'4 f'4) f'4 ( a'4 c''4) c''4 c''4 ( b'4 c''4 a'4 g'4.)  c''4 ( c''4 a'4 g'4) a'4 ( bes'4 g'4 f'4) \divisioMinima
  a'4 c''4 ( a'4) b'4 ( g'4) a'4 ( a'4 g'4) \finalis
 g'4 ( a'\prall b'4 c''4) c''4 c''4 c''4 c''4 c''4 ( c''4 b'4) g'4 a'4 ( g'4) a'4 ( b'\prall c''4 b'4 a'4) b'4 ( c''4 a'4) a'4 ( g'4) \divisioMaxima
 g'4 a'4 ( g'4) a'4 ( b'\prall c''4) g'4 ( a'4) g'4 ( f'4) \divisioMinima
 f'4 ( a'4 c''4) c''4 c''4 c''4 ( b'4 c''4 a'4 g'4.)  c''4 ( c''4 a'4 g'4) a'4 ( bes'4 g'4 f'4) \divisioMinima
  a'4 c''4 ( a'4) b'4 ( g'4) a'4 ( a'4 g'4) \finalis
 g'4 ( a'\prall b'4 c''4) c''4 c''4 c''4 c''4 c''4 c''4 ( d''4 c''4 g'4) a'4 ( g'4) a'4 ( b'\prall c''4 b'4 a'4) b'4 ( c''4 a'4) a'4 ( g'4) \divisioMaxima
 a'4 ( g'4) a'4 ( b'\prall c''4) g'4 ( a'4) g'4 ( f'4) \divisioMinima
 f'4 ( a'4 b'\prall c''4 d''4) c''4 c''4 c''4 c''4 ( b'4 c''4 a'4 g'4) ~ g'4 ( g'4) a'4 ( g'4) ~ g'4 ( f'4 g'4) \divisioMinima
 c''4 ( c''4 c''4) d''4 ( c''4 b'4 a'4) ~ a'4 ( g'4) a'4 ( c''4 b'4 a'4 g'4) ~ g'4 ( a'4 f'4) \divisioMinima
 a'4 ( b'\prall c''4 b'4 a'4) b'4 ( a'4) ~ a'4 ( g'4) \finalis

}

altoMusic = {
d'4 ~ d'4 ~ d'2 e'2 r2*4/2 d'4 ~ d'2*3/2 ~ d'2 ~ d'2*3/2 ~ d'2 \divisioMaior
g'2*3/2 f'2 e'2 d'2*3/2 c'4 ~ \divisioMinima
c'2 d'2 ~ d'2*5/2 e'2 d'2 c'2 ~ c'2*4/2 ~ c'2 ~ c'4 \divisioMaxima
f'4 e'2 ~ e'2*3/2 d'2*3/2 ~ d'2 ~ d'4 ~ \divisioMinima
d'4 e'2 ~ e'2*3/2 ~ e'2*4/2 ~ e'2 g'2*3/2 ~ g'2*3/2 d'2 ~ \divisioMaxima
d'2*3/2 f'2 ~ f'2 e'4 ~ e'2*3/2 f'2*3/2 ~ f'2 g'2 a'2 g'2*4/2 ~ g'4 e'2 \divisioMaior
b2*3/2 ~ b2*3/2 c'2 ~ c'2*3/2 ~ c'2*3/2 f'4 ~ f'2*3/2 e'2*4/2 d'2*3/4 c'2*4/2 bes2 c'2 ~ c'4 ~ c'2 d'2 c'2 b4 \finalis
e'2*4/2 ~ e'2 ~ e'2 ~ e'2*3/2 d'4 e'2 ~ e'2*5/2 f'2*3/2 e'2 \divisioMaxima
d'4 ~ d'2 e'2*3/2 d'2*4/2 \divisioMinima
f'4 ~ f'2 g'4 ~ g'4 e'2*4/2 d'2*3/4 c'2*4/2 bes2 c'2 ~ c'4 ~ c'2 d'2 c'2 b4 \finalis
g'2*6/2 f'2*3/2 e'2*4/2 d'2 e'2*5/2 ~ e'2*3/2 d'2 ~ \divisioMaxima
d'2 e'2*3/2 ~ e'2 d'2 \divisioMinima
f'2*6/2 g'2 d'2*3/2 ~ d'2 ~ d'2*3/2 ~ d'2*3/2 ~ d'4 \divisioMinima
g'2*3/2 f'2*3/2 e'2*3/2 ~ e'2*4/2 d'2*4/2 \divisioMinima
f'2*6/2 d'2 ~ d'4 \finalis
}

tenorMusic = {
r2 c'2 ~ c'2 ~ c'2 bes2*3/2 a2*3/2 ~ a2 g2*3/2 c'4 bes4 \divisioMaior
c'2*3/2 ~ c'2 ~ c'2 f2*3/2 e4 ~ \divisioMinima
e2 d2 g2*5/2 ~ g2 ~ g2 ~ g2 a2*4/2 bes2 a4 \divisioMaxima
c'4 ~ c'2 d'2*3/2 c'2*3/2 ~ c'2 b4 ~ \divisioMinima
b4 c'2 ~ c'2*3/2 b2*4/2 a2 g2*3/2 c'2*3/2 ~ c'4 b4 \divisioMaxima
a2*3/2 f2 ~ f2 g4 a2*3/2 ~ a2*3/2 c'2 ~ c'2 ~ c'2 ~ c'2*5/2 b2 \divisioMaior
g2*3/2 e2*3/2 ~ e2 ~ e2*3/2 f2*3/2 ~ f2*4/2 g2*4/2 ~ g2*3/4 ~ g2*4/2 f2 ~ f2 ~ f4 e2 g2 d2*3/2 \finalis
c'2*4/2 ~ c'2 ~ c'2 d'2*3/2 ~ d'4 c'2 ~ c'2*5/2 ~ c'2*3/2 b2 ~ \divisioMaxima
b4 a2 ~ a2*3/2 ~ a2*4/2 \divisioMinima
c'2*3/2 ~ c'4 g4 ~ g2*4/2 ~ g2*3/4 ~ g2*4/2 f2 ~ f2 ~ f4 e2 g2 d2*3/2 \finalis
e'2*6/2 d'2*3/2 c'2*4/2 b2 ~ b2*5/2 a2*3/2 b2 \divisioMaxima
g2 ~ g2*3/2 ~ g2 a2 ~ \divisioMinima
a2*6/2 g2 ~ g2*3/2 c'2 b2*3/2 a2*3/2 b4 \divisioMinima
c'2*3/2 ~ c'2*3/2 ~ c'2*3/2 a2*4/2 ~ a2*4/2 \divisioMinima
c'2*6/2 ~ c'2 b4 \finalis
}

bassMusic = {
r2*6/2 a2 g2*3/2 f2*3/2 g2 ~ g2*3/2 ~ g2 \divisioMaior
e2*3/2 d2 c2 ~ c2*3/2 ~ c4 \divisioMinima
a,2 b,2 ~ b,2*5/2 c2 d2 e2 f2*4/2 ~ f2 ~ f4 \divisioMaxima
a4 ~ a2 ~ a2*3/2 ~ a2*3/2 g2 ~ g4 \divisioMinima
b4 ~ b2 a2*3/2 ~ a2*4/2 ~ a2 e2*3/2 ~ e2*3/2 g2 \divisioMaxima
f2*3/2 e2 d2 c4 ~ c2*3/2 d2*3/2 ~ d2 e2 f2 e2*5/2 ~ e2 ~ \divisioMaior
e2*3/2 d2*3/2 c2 a,2*3/2 ~ a,2*3/2 d2*4/2 c2*4/2 b,2*3/4 a,2*4/2 g,2 a,2 ~ a,4 ~ a,2 g,2 ~ g,2*3/2 \finalis
r2*4/2 b2 a2 ~ a2*3/2 b4 c'2 c2*5/2 d2*3/2 e2 \divisioMaxima
b,4 ~ b,2 c2*3/2 d2*4/2 ~ \divisioMinima
d2*3/2 e4 ~ e4 c2*4/2 b,2*3/4 a,2*4/2 g,2 a,2 ~ a,4 ~ a,2 g,2 ~ g,2*3/2 \finalis
r2*15/2 a2*5/2 g2*3/2 ~ g2 \divisioMaxima
b,2 c2*3/2 d2 ~ d2 ~ \divisioMinima
d2*6/2 e2 g2*3/2 ~ g2 ~ g2*3/2 ~ g2*3/2 ~ g4 \divisioMinima
e2*3/2 d2*3/2 c2*3/2 ~ c2*4/2 d2*4/2 ~ \divisioMinima
d2*6/2 g2 ~ g4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Tract"
        "8"
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
