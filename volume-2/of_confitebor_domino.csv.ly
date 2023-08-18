\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.63
%(volume.page)

global = {
 \key f \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Confitebor Domino" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Confitebor Domino"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Confitebor Domino" }
    \line {}
  }
}

chantText = \lyricmode {
Con -- fi -- té -- bor 
\set stanza = " * " Dó -- mi -- no ni -- _ _ mis in o -- re me -- _ o: _ _ _ 
et in mé -- di -- o mul -- tó -- _ rum lau -- dá -- bo e -- _ _ _ _ um, 
qui á -- sti -- _ tit ad déx -- _ te -- ram páu -- pe -- ris, _ _ _ 
ut sal -- _ _ vam fá -- _ ce -- ret _ a per -- se -- _ _ quén -- ti -- bus 
á -- _ ni -- mam me -- am. T.P. 
Al -- le -- _ _ _ _ _ _ _ _ lú -- ia. }

chantMusic = {
\tieDown   c'4 d'4  d'4 ( a'4 bes'4) a'4   a'4 ( bes'4) a'4 a'4  a'4 c''4 ( c''4 a'4) bes'4 ( c''4) g'4 ( a'4) \divisioMinima
 f'4 ( a'4) a'4 g'4 \forceBreak
 g'4 ( a'4) c''4 ( a'4 g'4 a'4) a'4 c''4 ( c''4 a'4) c''4 ( c''4 a'4 g'4) a'4 ( g'4) \divisioMaior
 g'4 a'4 g'4 a'4 ( g'4) g'4 g'4 g'4 ( a'4) c''4 ( a'4 c''4) g'4 ( a'4) \divisioMinima \forceBreak

 f'4 ( \once \tweak #'font-size #-4 a' ) a'4 g'4 g'4 c''4 ( c''4 c''4) d''4 ( c''4) d''4 ( c''4) ~ c''4 ( b'4) b'4 \divisioMaior
 c''4 ( b'4) b'4 b'4 ( d''4 c''4) ~ c''4 ( b'4) b'4 \divisioMinima \forceBreak

 b'4 b'4 ( d''4 b'4) c''4 ( d''4) a'4 ( g'4) g'4 ( f'4 a'4) a'4 ( b'4 a'4 g'4) a'4 ( g'4) g'4 ( a'4 g'4) a'4 ( g'4) c''4 ( c''4 a'4) c''4 ( g'4 f'4 g'4) \divisioMaxima \forceBreak

 f'4 a'4 c''4 ( c''4) ~ c''4 ( d''4) a'4 g'4 ( a'4) c''4 ( c''4 c''4) g'4  a'4 ( g'4) a'4 ( bes'4 a'4) \divisioMinima
 f'4 a'4 ( \once \tweak #'font-size #-4 g' ) a'4 ( b'\prall c''4) d''4 ( b'4) c''4 ( b'4) a'4 \forceBreak
 a'4 ( b'4 c''4 b'4 a'4 b'4) b'4 ( a'4) \divisioMaior
 a'4 ( g'4) a'4 ( d''4 c''4) c''4 ( c''4 c''4) a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMaxima
 f'4 ( a'4 \forceBreak
) g'4 c''4 ( c''4 c''4) d''4 ( c''4) d''4 ( b'4) c''4 ( a'4 f'4 g'4) \divisioMinima
 f'4 ( a'4) ~ a'4 ( g'4 a'4) c''4 ( d''4 b'4) c''4 ( a'4) f'4 ( g'4 f'4) f'4 \finalis

}

altoMusic = {
r4 d'4 ~ d'2*4/2 ~ d'2*4/2 ~ d'4 c'2*3/2 ~ c'2 ~ c'2 ~ \divisioMinima
c'2 d'2 e'2*6/2 ~ e'4 ~ e'2*3/2 ~ e'2*4/2 d'2 ~ \divisioMaior
d'2 e'4 ~ e'2*4/2 f'2 g'2*3/2 ~ g'4 a'4 \divisioMinima
f'2 e'2 g'4 ~ g'2*3/2 f'2*3/2 g'2*3/2 ~ g'4 ~ \divisioMaior
g'2 ~ g'4 ~ g'2 ~ g'2*3/2 ~ g'4 ~ \divisioMinima
g'4 ~ g'2*5/2 e'2 c'2*3/2 f'2*4/2 e'2 ~ e'2*3/2 ~ e'2 ~ e'2*3/2 ~ e'2*4/2 \divisioMaxima
f'4 ~ f'4 g'2 ~ g'2*3/2 f'2 e'2*4/2 f'2*5/2 ~ \divisioMinima
f'2*3/2 ~ f'2*3/2 ~ f'2*4/2 ~ f'4 e'2*6/2 ~ e'2 \divisioMaior
d'2 e'2*3/2 g'2*3/2 f'2 e'2*5/2 d'2 \divisioMaxima
f'2 g'4 ~ g'2*3/2 ~ g'2*4/2 ~ g'4 r2*3/2 \divisioMinima
f'4 ~ f'2*4/2 g'2*5/2 c'2*3/2 ~ c'4 \finalis
}

tenorMusic = {
g2 f2*4/2 ~ f2*4/2 e4 ~ e2*3/2 f2 e2 \divisioMinima
f2 d2 a2*6/2 g4 ~ g2*3/2 a2*4/2 d2 \divisioMaior
g2 ~ g4 c'2*4/2 ~ c'2 ~ c'2*3/2 ~ c'2 ~ \divisioMinima
c'2 b2 a4 ~ a2*3/2 ~ a2*3/2 g2*3/2 b4 \divisioMaior
e'2 d'4 c'2 d'2*3/2 e'4 ~ \divisioMinima
e'4 d'2*5/2 c'2 a2*3/2 ~ a2*4/2 ~ a2 c'2*3/2 b2 a2*3/2 g2*4/2 \divisioMaxima
r2*4/2 c'2*3/2 ~ c'2 ~ c'2*4/2 ~ c'2*5/2 ~ \divisioMinima
c'4 ~ c'2 ~ c'2*3/2 a2*4/2 d'4 ~ d'2*6/2 c'2 \divisioMaior
b2 c'2*3/2 ~ c'2*3/2 ~ c'2 ~ c'2*5/2 a2 \divisioMaxima
d'2 ~ d'4 c'2*3/2 g2*4/2 c'2*4/2 ~ \divisioMinima
c'4 ~ c'2*4/2 ~ c'2*5/2 bes2*3/2 a4 \finalis
}

bassMusic = {
e2 d2*4/2 bes,2*4/2 ~ bes,4 a,2*3/2 ~ a,2 ~ a,2 ~ \divisioMinima
a,2 b,2 c2*6/2 ~ c4 a,2*3/2 ~ a,2*4/2 b,2 ~ \divisioMaior
b,2 c4 ~ c2*4/2 d2 e2*3/2 f2 \divisioMinima
d2 e2 ~ e4 ~ e2*3/2 d2*3/2 e2*3/2 ~ e4 ~ \divisioMaior
e2 ~ e4 ~ e2 ~ e2*3/2 ~ e4 ~ \divisioMinima
e4 ~ e2*5/2 ~ e2 ~ e2*3/2 d2*4/2 c2 ~ c2*3/2 ~ c2 ~ c2*3/2 ~ c2*4/2 \divisioMaxima
d4 ~ d4 e2 ~ e2*3/2 d2 c2*4/2 f2*5/2 ~ \divisioMinima
f4 e2 d2*3/2 ~ d2*4/2 ~ d4 a2*6/2 ~ a2 ~ \divisioMaior
a2 ~ a2*3/2 e2*3/2 f2 c2*5/2 d2 ~ \divisioMaxima
d2 e4 ~ e2*3/2 ~ e2*4/2 ~ e2*4/2 ~ \divisioMinima
e4 d2*4/2 e2*5/2 f2*3/2 ~ f4 \finalis
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
        "VI"
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
