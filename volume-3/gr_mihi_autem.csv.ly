\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.155
%(volume.page)

global = {
 \key e \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Mihi autem" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Mihi autem"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Mihi autem" }
    \line {}
  }
}

chantText = \lyricmode {
Mi -- hi au -- tem 
\set stanza = " * " ab -- _ sit glo -- _ ri -- _ á -- ri, _ _ _ _ _ _ _ 
ni -- _ si in cru -- ce _ Dó -- mi -- ni no -- _ _ stri _ Je -- su _ Chri -- sti: _ _ _ _ 
per quem mi -- hi mun -- _ _ dus _ 
cru -- ci -- fí -- _ _ xus _ _ est, _ 
et e -- go mun -- do. _ _ _ _ _ ℣. 
Non ju -- di -- cá -- vi me sci -- re á -- li -- quid in -- ter vos, _ _ _ _ _ _ 
ni -- _ _ si Je -- sum _ _ Chri -- stum, 
\set stanza = " * " 
et hunc cru -- _ ci -- fí -- xum. _ _ _ _ }

chantMusic = {
\tieDown   c'4 d'4 ( f'4) e'4 ( e'4 f'4) e'4 ( e'4 f'4)  d'4 ( f'4 e'4) g'4 ( f'4) f'4 \divisioMinima
 f'4 ( f'4) ~ f'4 ( d'4 c'4) d'4 ( c'4) g'4 ( f'4) f'4 ( d'4 f'4) f'4 ( f'4) ~ f'4 ( d'4 c'4) \divisioMinima
 d'4 f'4 ( f'4) ~ f'4 ( d'4 c'4) d'4 ( d'4) c'4 ( f'4 d'4) e'4 ( d'4) ~ d'4 ( c'4) \divisioMaior
 c'4 ( d'4) f'4 ( e'4 f'4) e'4 ( f'4) f'4 e'4 ( f'4 g'\prall a'4) g'4 ( a'4 g'4) f'4 ( g'4 f'4 d'4) \divisioMinima
 f'4 e'4 f'4 ( g'4) g'4 ( a'4 f'4 e'4.) g'4 ( a'4 g'4) a'4 ( f'4 e'4) e'4 ( f'4 e'4 d'4) e'4 ( d'4) \divisioMinima
 e'4 ( g'4) g'4 ( e'4) f'4 ( d'4 c'4 d'4) f'4 ( g'4)  g'4 ( a'4 g'4.) a'4 ( bes'4 a'4 g'4) a'4 ( f'4) g'4 ( f'4) ~ f'4 ( e'4) \divisioMaxima
 d'4 ( f'4 \once \tweak #'font-size #-4 e' ) f'4 ( g'4) e'4 ( f'4) f'4 f'4 ( a'4 g'4) f'4 ( f'4 d'4) g'4 ( f'4) f'4 ( f'4) ~ f'4 ( g'4 f'4 e'4) \divisioMaior
 d'4 ( f'4 e'4) f'4 f'4 ( f'4) ~ f'4 ( f'4) ~ f'4 ( d'4) d'4 ( c'4.) ~ c'4 ( d'4) f'4 ( a'4 g'4)  g'4 ( a'4 g'4.) a'4 ( bes'4 a'4 bes'4 g'4) \divisioMaxima
 e'4 ( f'4 g'4) g'4 ( a'4) e'4 ( f'4 g'4) g'4 ( f'4 g'4) g'4 ( d'4 e'\prall f'4 g'4) \divisioMinima
  f'4 ( g'4 a'4 f'4 e'4) f'4 ( a'4.) bes'4 ( g'4 f'4) a'4. g'4 ( a'4 g'4) ~ g'4 ( e'4) \finalis
 e'4 ( e'4 f'4) d'4 ( g'4) g'4 a'4 ( c''4) c''4 c''4 b'4 ( c''4) c''4 c''4 c''4 b'4 ( a'4) c''4 ( \once \tweak #'font-size #-4 d'' ) c''4 d''4 ( b'4) c''4 ( a'4 g'4) \divisioMinima
 b'4 ( g'4) a'4 ( b'\prall c''4 b'4) c''4 ( d''4 b'4) c''4 ( a'4) ~ a'4 ( g'4) \divisioMaxima
 e'4 ( g'4 f'4 e'4) f'4 a'4 ( a'4) g'4 ( c''4 b'4 c''4) a'4 ( g'4)  a'4 a'4 ( g'4) a'4 ( bes'4 g'4 f'4.) g'4 ( f'4 g'4 a'4) e'4 ( g'4 f'4 g'4) e'4 \divisioMaior
 a'4 ( b'4) a'4 ( g'4) a'4 c''4 ( c''4 a'4) f'4 ( f'4 f'4) f'4 ( a'4)  a'4 ( g'4) a'4 ( bes'4 a'4 g'4) a'4 ( f'4) g'4 ( f'4) ~ f'4 ( e'4) \finalis

}

altoMusic = {
a2*3/2 bes2*3/2 c'2*3/2 d'2*3/2 ~ d'2 ~ d'4 \divisioMinima
a2 ~ a2*3/2 d'4 c'4 ~ c'2 d'2*3/2 bes2 a2*3/2 \divisioMinima
d'4 ~ d'2 c'2*3/2 bes2 c'2*4/2 a2*3/2 ~ \divisioMaior
a2 bes2*3/2 c'2*3/2 ~ c'2*4/2 ~ c'2*3/2 a2*4/2 \divisioMinima
c'2 ~ c'2 ~ c'2*3/2 ~ c'2*3/4 ~ c'2*3/2 ~ c'2*3/2 ~ c'2*4/2 a2 \divisioMinima
c'2 d'2 a2*4/2 ~ a2 c'2 d'2*3/4 ~ d'2*4/2 c'2*3/2 ~ c'2*3/2 \divisioMaxima
a2*3/2 ~ a2 ~ a2 ~ a4 d'2*3/2 c'2*3/2 bes2 c'2 ~ c'2*4/2 \divisioMaior
a2*4/2 d'2 c'2 bes2 a2*5/4 c'2 ~ c'2*3/2 d'2*7/4 ~ d'2*5/2 \divisioMaxima
c'2*3/2 ~ c'2 ~ c'2*3/2 d'2*3/2 c'4 bes2*4/2 d'2*3/2 ~ d'2*3/2 ~ d'2*3/4 ~ d'2*3/2 c'2*3/4 ~ c'2 ~ c'2*3/2 ~ \finalis
c'2*3/2 d'2*3/2 e'2*4/2 f'2*3/2 e'2*4/2 ~ e'2 ~ e'4 ~ e'2 ~ e'2*3/2 ~ \divisioMinima
e'2 ~ e'2*4/2 ~ e'2*4/2 d'2*3/2 \divisioMaxima
c'2*5/2 ~ c'2 g'2*4/2 f'2 e'4 d'2 ~ d'2*3/2 c'2*3/4 ~ c'2*4/2 ~ c'2*4/2 ~ c'4 \divisioMaior
e'2 ~ e'2*3/2 ~ e'2*3/2 r2*3/2 d'2 ~ d'2 ~ d'2*4/2 ~ d'2*3/2 c'2*3/2 \finalis
}

tenorMusic = {
f2*3/2 g2*3/2 a2*3/2 ~ a2*3/2 ~ a2 ~ a4 \divisioMinima
f2 g2*3/2 ~ g2 a2 ~ a2*3/2 g2 f2*3/2 ~ \divisioMinima
f4 ~ f2 ~ f2*3/2 ~ f2 ~ f2*4/2 e2*3/2 \divisioMaior
f2 ~ f2*3/2 ~ f2*3/2 g4 d2*3/2 e2*3/2 f2*4/2 \divisioMinima
g2 ~ g2 f2*3/2 a2*3/4 g2*3/2 f2*3/2 g2*4/2 f2 \divisioMinima
g2 ~ g2 ~ g2*4/2 f2 e2 d2*3/4 f2*4/2 ~ f2*3/2 a2*3/2 \divisioMaxima
f2*3/2 e2 d2 ~ d4 ~ d2*3/2 ~ d2*3/2 ~ d2 c2 a2*4/2 \divisioMaior
f2*4/2 ~ f2 ~ f2 ~ f2 e2*5/4 g2 f2*3/2 ~ f2*7/4 g2*5/2 ~ \divisioMaxima
g2*3/2 f2 e2*3/2 d2*3/2 ~ d2*5/2 ~ d2*3/2 e2*3/2 f2*3/4 ~ f2*3/2 ~ f2*3/4 g2 a2*3/2 ~ \finalis
a2*3/2 b2*3/2 c'2*4/2 d'2*3/2 c'2*4/2 b2 r4 b2 d'2*3/2 ~ \divisioMinima
d'2 c'2*4/2 b2*4/2 ~ b2*3/2 \divisioMaxima
a2*5/2 c'2 ~ c'2*4/2 ~ c'2 ~ c'4 ~ c'2 bes2*3/2 a2*3/4 ~ a2*4/2 ~ a2*4/2 ~ a4 \divisioMaior
c'2 d'2*3/2 c'2*3/2 ~ c'2*3/2 ~ c'2 bes2 b2*4/2 c'2*3/2 ~ c'2*3/2 \finalis
}

bassMusic = {
r2*9/2 f2*3/2 e2 d4 ~ \divisioMinima
d2 ~ d2*3/2 e2 f2 ~ f2*3/2 ~ f2 ~ f2*3/2 \divisioMinima
d4 bes,2 a,2*3/2 g,2 a,2*4/2 ~ a,2*3/2 \divisioMaior
f,2 g,2*3/2 a,2*3/2 c2*4/2 ~ c2*3/2 d2*4/2 \divisioMinima
c2 a,2 ~ a,2*3/2 ~ a,2*3/4 ~ a,2*3/2 ~ a,2*3/2 ~ a,2*4/2 d2 \divisioMinima
c2 bes,2 d2*4/2 ~ d2 c2 bes,2*3/4 ~ bes,2*4/2 a,2*3/2 ~ a,2*3/2 \divisioMaxima
d2*3/2 ~ d2 ~ d2 c4 bes,2*3/2 a,2*3/2 g,2 a,2 ~ a,2*4/2 \divisioMaior
d2*4/2 bes,2 a,2 g,2 a,2*5/4 ~ a,2 ~ a,2*3/2 bes,2*7/4 ~ bes,2*5/2 \divisioMaxima
a,2*3/2 ~ a,2 ~ a,2*3/2 bes,2*3/2 g,2*5/2 d2*3/2 ~ d2*3/2 ~ d2*3/4 bes,2*3/2 a,2*3/4 ~ a,2 ~ a,2*3/2 \finalis
r2*19/2 a4 ~ a2 ~ a2*3/2 ~ \divisioMinima
a2 ~ a2*4/2 ~ a2*4/2 b2*3/2 \divisioMaxima
r2*5/2 f2 e2*4/2 d2 c4 g2 ~ g2*3/2 a2*3/4 f2*4/2 g2*4/2 a4 ~ \divisioMaior
a2 ~ a2*3/2 ~ a2*3/2 ~ a2*3/2 ~ a2 bes2 g2*4/2 ~ g2*3/2 a2*3/2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Gradual"
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
