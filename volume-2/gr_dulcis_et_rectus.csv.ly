\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.134
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Dulcis et rectus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Dulcis et rectus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Dulcis et rectus" }
    \line {}
  }
}

chantText = \lyricmode {
Dul -- _ _ cis 
\set stanza = " * " et _ _ _ re -- ctus Dó -- _ _ mi -- nus, 
pro -- pter hoc le -- gem da -- bit de -- lin -- _ _ quén -- ti -- bus 
in vi -- _ _ a. _ _ _ _ ℣. 
Dí -- ri -- get man -- su -- é -- tos _ _ _ _ _ _ _ _ 
in ju -- dí -- ci -- o, _ _ _ _ _ _ 
do -- _ cé -- _ _ bit mi -- _ _ _ _ _ tes 
vi -- _ as 
\set stanza = " * " su -- as. _ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown    d'4 ( a'4 bes'4 a'4 g'4) f'4 ( a'4 g'4) a'4 ( bes'4) a'4 \divisioMinima
 a'4 c''4 ( c''4) d''4 ( c''4 a'4.)  g'4 ( bes'4 a'4 g'4 a'4) f'4 ( g'\prall a'4 g'4) a'4 \divisioMinima \forceBreak

 g'4 ( a'4 g'4 e'4) f'4 ( g'4 f'4) g'4 ( a'4) d'4 ( e'\prall f'4 d'4) d'4 \divisioMaxima
 d'4 ( f'4 d'4) d'4 ( d'4 c'4) d'4 ( e'4 d'4) \divisioMinima
 d'4 ( a'4) a'4 ( g'4) g'4 ( c''4) c''4 ( c''4 \forceBreak
) c''4 ( d''4 c''4) c''4 ( b'4) c''4 ( b'4 a'4) b'4 ( b'4 c''4) g'4 g'4 ( a'4 b'\prall c''4) b'4 ( a'4) \divisioMaior
 f'4 ( a'4)  a'4 ( g'4) c''4 ( c''4 a'4 g'4) a'4 ( bes'4 g'4 \forceBreak
) e'4 ( f'4 d'4) f'4 ( a'4) g'4 ( a'4 g'4 e'4) f'4 ( g'4.) f'4 ( g'4 f'4 d'4) \finalis
 d'4 ( a'4) a'4 a'4 a'4 a'4 ( g'4) a'4 a'4 ( c''4 a'4 g'4 f'4. \forceBreak
) e'4 ( g'4) a'4 ( g'4 a'4) f'4 ( g'4 f'4 d'4) \divisioMinima
 c'4 ( d'4) f'4 ( d'4.) c'4 ( d'4) f'4 ( f'4) g'4 ( a'4 b'\prall c''4 b'4 a'4) \divisioMaior
 a'4 a'4 a'4 a'4 \forceBreak
 a'4 ( c''4 a'4 g'4 a'4) c''4 ( c''4) ~ c''4 ( a'4.) c''4 ( c''4) ~ c''4 ( b'4 a'4) c''4 ( g'4) ~ g'4 ( f'4) \divisioMaxima
 a'4 ( d''4) ~ d''4 ( c''4) c''4 ( e''4 d''4 c''4) d''4 ( c''4) ~ c''4 ( c''4 a'4) b'4 ( a'4) \divisioMinima \forceBreak

  a'4. f'4 ( a'4 g'4) a'4 ( bes'4 g'4 f'4.) g'4 ( f'4) g'4 ( a'4 f'4) ~ f'4 ( f'4 d'4 e'\prall f'4 e'4 f'4) e'4 ( d'4) \divisioMaior
 d'4 f'4 ( f'4 f'4) g'4 ( f'4)  f'4 ( a'4 g'4 a'4) a'4 ( a'4 f'4) \divisioMinima \forceBreak

 a'4 ( g'4) a'4 ( f'4 d'4) g'4 ( f'4 f'4) ~ f'4 ( f'4 e'4 c'4.) d'4 ( d'4 c'4) d'4 ( a4) \divisioMinima
 c'4 ( d'4) f'4 ( f'4 d'4 c'4 d'4) f'4 ( f'4) g'4 ( f'4 f'4) d'4 ( e'4 d'4) \finalis

}

altoMusic = {
d'2*5/2 ~ d'2*3/2 f'2*3/2 ~ \divisioMinima
f'4 e'2*11/4 f'2*5/2 ~ f'2 ~ f'2*3/2 \divisioMinima
d'2 ~ d'2 ~ d'2*5/2 bes2 ~ bes2 a4 \divisioMaxima
r2*3/2 a2*3/2 ~ a2*3/2 ~ \divisioMinima
a2 c'2 ~ c'2 ~ c'2 e'2*3/2 f'2 e'2*3/2 ~ e'2*3/2 ~ e'4 ~ e'2*4/2 ~ e'2 \divisioMaior
f'2 c'2 ~ c'2*4/2 ~ c'2*3/2 ~ c'2*3/2 ~ c'2 ~ c'2*4/2 ~ c'2*5/4 a2*4/2 \finalis
d'2*3/2 ~ d'2 ~ d'2 ~ d'4 c'2*11/4 ~ c'2 ~ c'2*3/2 a2*4/2 \divisioMinima
r2*15/4 f'4 ~ f'2*3/2 e'2 ~ e'4 \divisioMaior
f'2 e'2 a'2*5/2 g'2 f'2*5/4 e'2 ~ e'2*4/2 d'2*3/2 \divisioMaxima
a'4 ~ a'2*3/2 g'2*4/2 f'2 e'2*3/2 ~ e'2 f'2*3/4 ~ f'2*3/2 d'2*9/4 ~ d'2*5/2 ~ d'2 bes2 ~ bes2*3/2 a2 \divisioMaior
d'4 ~ d'2*3/2 ~ d'2 ~ d'2*4/2 c'2*3/2 ~ \divisioMinima
c'2 d'2*3/2 c'2*3/2 ~ c'2*3/2 ~ c'2*3/4 a2*3/2 ~ a2 ~ \divisioMinima
a2 ~ a2 ~ a2*3/2 bes2*5/2 a2 ~ a4 \finalis
}

tenorMusic = {
f2 g2*3/2 a2*3/2 d'2*3/2 ~ \divisioMinima
d'4 c'2*11/4 ~ c'2*5/2 d'2 c'2*3/2 ~ \divisioMinima
c'2 bes2 a2*5/2 ~ a2 g2 f4 \divisioMaxima
a2*3/2 g2*3/2 ~ g2*3/2 \divisioMinima
f2 e2 ~ e2 ~ e2 a2*3/2 ~ a2 ~ a2*3/2 g2*3/2 c'4 b2*4/2 c'2 ~ \divisioMaior
c'2 ~ c'2 g2*4/2 f2*3/2 g2*3/2 d2 e2*4/2 ~ e2*5/4 f2*4/2 \finalis
r2*5/2 f2 e4 ~ e2*4/2 f2*3/4 g2 e2*3/2 f2*4/2 \divisioMinima
a2*9/4 ~ a2 ~ a2 d'2*3/2 ~ d'2 c'4 ~ \divisioMaior
c'2 ~ c'2 ~ c'2*5/2 a2 ~ a2*5/4 ~ a2 ~ a2*4/2 ~ a2*3/2 \divisioMaxima
r4 a2*3/2 ~ a2*4/2 ~ a2 ~ a2*3/2 ~ a2 ~ a2*3/4 c'2*3/2 ~ c'2*9/4 bes2*5/2 a2 ~ a2 g2*3/2 f2 ~ \divisioMaior
f4 a2*3/2 ~ a2 bes2*4/2 a2*3/2 \divisioMinima
f2 ~ f2*3/2 ~ f2*3/2 g2*9/4 a2*3/2 f2 \divisioMinima
e2 d2 ~ d2*3/2 ~ d2*5/2 g2 f4 \finalis
}

bassMusic = {
d2*5/2 ~ d2*3/2 ~ d2*3/2 ~ \divisioMinima
d4 a2*11/4 f2*5/2 d2 ~ d2*3/2 \divisioMinima
g2 ~ g2 d2*5/2 ~ d2 ~ d2 ~ d4 \divisioMaxima
f2*3/2 e2*3/2 d2*3/2 ~ \divisioMinima
d2 c2 b,2 a,2 ~ a,2*3/2 d2 c2*3/2 e2*3/2 ~ e4 ~ e2*4/2 a2 ~ \divisioMaior
a2 f2 e2*4/2 d2*3/2 c2*3/2 ~ c2 ~ c2*4/2 a,2*5/4 d2*4/2 \finalis
r2*3/2 d2 ~ d2 a,4 ~ a,2*4/2 ~ a,2*3/4 c2 ~ c2*3/2 d2*4/2 \divisioMinima
f2*9/4 e2 d2 ~ d2*3/2 a2 ~ a4 ~ \divisioMaior
a2 g2 f2*5/2 e2 d2*5/4 a,2 c2*4/2 d2*3/2 \divisioMaxima
r4 f2*3/2 e2*4/2 d2 a,2*3/2 c2 d2*3/4 ~ d2*3/2 g2*9/4 ~ g2*5/2 d2*4/2 ~ d2*3/2 ~ d2*3/2 ~ d2*3/2 c2 bes,2*4/2 f2*3/2 ~ \divisioMinima
f2 bes,2*3/2 a,2*3/2 ~ a,2*9/4 f,2*3/2 ~ f,2 ~ \divisioMinima
f,2 ~ f,2 bes,2*3/2 g,2*5/2 d2 ~ d4 \finalis
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
