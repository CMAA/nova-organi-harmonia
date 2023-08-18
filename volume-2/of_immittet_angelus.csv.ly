\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.204
%(volume.page)

global = {
 \key g \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Immittet Angelus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Immittet Angelus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Immittet Angelus" }
    \line {}
  }
}

chantText = \lyricmode {
Im -- mít -- _ tet 
\set stanza = " * " An -- _ _ ge -- lus Dó -- _ mi -- _ ni _ _ 
in cir -- cú -- _ _ i -- tu ti -- mén -- _ _ ti -- um _ e -- um, 
et e -- _ rí -- pi -- et e -- _ _ os: 
gu -- stá -- _ _ te et vi -- dé -- _ _ _ te, 
quó -- ni -- am su -- á -- _ vis est _ _ _ 
Dó -- _ _ _ _ _ mi -- nus. }

chantMusic = {
\tieDown   g'4 ( \once \tweak #'font-size #-4 a' ) a'4. f'4 ( a'4 g'4) g'4 \divisioMinima
 g'4 c''4 ( c''4) ~ c''4 ( c''4 c''4) a'4 g'4 ( a'4 g'4) a'4 ( b'\prall c''4) ~ c''4 ( b'4 g'4 \forceBreak
) a'4 ( b'\prall c''4) ~ c''4 ( b'4 g'4) a'4 ( b'\prall c''4) d''4 ( c''4) ~ c''4 ( b'4) \divisioMaior
 c''4 a'4 ( \once \tweak #'font-size #-4 g' ) c''4 d''4 ( b'4) c''4 ( a'4) a'4 f'4 ( g'4 f'4) \divisioMinima
 a'4 ( g'4) a'4 ( g'4 \forceBreak
) c''4 ( c''4) ~ c''4 ( c''4 c''4) a'4 ( g'4)  g'4. f'4 ( a'4 bes'4 a'4 g'4) g'4 ( a'4 g'4) g'4 \divisioMaxima
 g'4 g'4 ( a'4) c''4 ( b'4) c''4 ( c''4 b'4 g'4 \forceBreak
) a'4 ( b'\prall c''4 b'4) c''4 c''4 ( c''4 a'4) c''4 ( d''4 c''4) d''4 ( c''4 b'4) c''4 \divisioMaxima
 c''4 ( b'4) c''4. ~ c''4 ( c''4 c''4) d''4 ( c''4 d''4) a'4 ( g'4) \divisioMinima \forceBreak

 g'4 a'4 ( c''4 b'4) c''4 ( d''4 c''4) d''4 ( b'4) c''4 ( a'4 g'4) c''4 ( c''4 b'4 a'4 b'\prall c''4) g'4 \divisioMaior
 g'4 ( a'4) g'4 ( f'4) g'4 a'4 a'4 c''4 ( c''4 c''4 \forceBreak
) g'4 a'4 ( g'4) a'4 ( b'\prall c''4) d''4 ( c''4) ~ c''4 ( b'4) \divisioMaior
 c''4 d''4 ( c''4) d''4 ( b'4) c''4 ( a'4 f'4 g'4) \divisioMinima
 f'4 ( g'4 a'4) c''4 ( c''4 b'4 a'4 b'\prall c''4 b'4 a'4 \forceBreak
) g'4 ( a'4 b'4 a'4 g'4 a'4) a'4 ( g'4) \finalis

}

altoMusic = {
e'2 f'2*3/4 ~ f'2*3/2 e'4 \divisioMinima
g'4 ~ g'2 f'2*4/2 e'2*3/2 ~ e'2 ~ e'2*4/2 ~ e'2 g'2*4/2 f'2 ~ f'2 d'2*3/2 ~ \divisioMaior
d'4 e'2*3/2 ~ e'2 ~ e'2*3/2 d'2*3/2 ~ \divisioMinima
d'2 ~ d'2 c'2 e'2*3/2 f'2 g'2*3/4 c'2 ~ c'2*3/2 ~ c'2*3/2 ~ c'4 \divisioMaxima
r4 e'2 ~ e'2 ~ e'2*4/2 ~ e'2 ~ e'2*3/2 f'2*3/2 ~ f'2*3/2 e'2*4/2 \divisioMaxima
g'2 ~ g'2*3/4 f'2*3/2 ~ f'2*3/2 d'2 ~ \divisioMinima
d'4 e'2*3/2 f'2*5/2 g'2 ~ g'4 e'2*3/2 ~ e'2*3/2 ~ e'4 \divisioMaior
c'2 ~ c'2*3/2 f'2 g'2*3/2 ~ g'4 ~ g'2 f'2 a'2 g'2*3/2 ~ \divisioMaior
g'4 ~ g'2 ~ g'2 f'2 ~ f'4 g'4 \divisioMinima
f'2*3/2 g'2*3/2 f'2 ~ f'2*3/2 e'2 ~ e'2*4/2 d'2 \finalis
}

tenorMusic = {
c'2 ~ c'2*3/4 ~ c'2*3/2 ~ c'4 ~ \divisioMinima
c'4 ~ c'2 ~ c'2*4/2 b2*3/2 ~ b2 a2*4/2 ~ a2 ~ a2*4/2 c'2 a2 g2*4/2 ~ g2*3/2 ~ g2 a2*3/2 ~ a2*3/2 \divisioMinima
g2 e2 ~ e2 a2*3/2 c'2 ~ c'2*3/4 a2 f2*3/2 ~ f2*3/2 e4 \divisioMaxima
r4 c'2 ~ c'2 ~ c'2*4/2 ~ c'2 a2*3/2 ~ a2*3/2 g2*3/2 ~ g2*4/2 \divisioMaxima
c'2 a2*3/4 ~ a2*3/2 ~ a2*3/2 b2 ~ \divisioMinima
b4 a2*3/2 ~ a2*5/2 d'2*3/2 ~ d'2*3/2 c'2*3/2 b4 \divisioMaior
a2 ~ a2*3/2 c'2 ~ c'2*4/2 ~ c'2 ~ c'2 e'2 d'2*3/2 \divisioMaior
a4 c'2 b2 a2*3/2 b4 \divisioMinima
c'2*3/2 a2*3/2 ~ a2 ~ a2*3/2 b2 c'2*4/2 ~ c'4 b4 \finalis
}

bassMusic = {
r2 f2*3/4 a2*3/2 c'4 \divisioMinima
r4 e2 d2*4/2 ~ d2*3/2 c2 ~ c2*4/2 f2 e2*4/2 d2 ~ d2 g2*3/2 ~ \divisioMaior
g4 c2*3/2 b,2 a,2*3/2 d2*3/2 \divisioMinima
b,2 ~ b,2 a,2 c2*3/2 d2 e2*3/4 f2 ~ f2*3/2 c2*3/2 ~ c4 \divisioMaxima
r4 r2 b2 a2*4/2 g2 ~ g2*3/2 f2*3/2 c2*3/2 ~ c2*4/2 \divisioMaxima
e2 ~ e2*3/4 d2*3/2 c2*3/2 b,2 ~ \divisioMinima
b,4 c2*3/2 d2*5/2 e2*3/2 a2*3/2 ~ a2*3/2 e4 ~ \divisioMaior
e2 d2*3/2 ~ d2 e2*4/2 f2 d2 ~ d2 g2*3/2 ~ \divisioMaior
g4 ~ g2 ~ g2 ~ g2*3/2 ~ g4 \divisioMinima
a2*3/2 e2*3/2 ~ e2 d2*3/2 ~ d2 c2*4/2 g2 \finalis
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
        "VIII."
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
