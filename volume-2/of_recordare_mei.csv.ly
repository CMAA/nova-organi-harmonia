\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.253
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Recordare mei" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Recordare mei"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Recordare mei" }
    \line {}
  }
}

chantText = \lyricmode {
Re -- cor -- dá -- re me -- i, 
\set stanza = " * " Dó -- _ _ mi -- ne, 
o -- mni po -- ten -- tá -- _ tu -- _ i dó -- mi -- _ nans: 
da ser -- mó -- nem re -- _ _ _ _ ctum in os me -- um, 
ut plá -- ce -- _ ant ver -- ba me -- _ a _ _ _ 
in con -- spé -- _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ctu _ _ prín -- ci -- _ pis. }

chantMusic = {
\tieDown   d'4 ( d'4 c'4) f'4 f'4 ( a'4 g'4) g'4 ( a'4 a'4) g'4 g'4 \divisioMinima
  g'4 ( bes'4 a'4 g'4) ~ g'4 ( f'4) g'4 ( f'4 d'4) d'4 ( e'\prall f'4 d'4) d'4 \divisioMaior \forceBreak

 d'4 ( f'4 g'4) g'4 g'4 g'4 g'4 ( g'4) a'4 ( g'4 a'4) f'4 g'4 ( f'4 g'4) d'4 ( e'\prall f'4) \divisioMinima
 d'4 ( f'4 g'4) g'4 ( f'4 e'4) f'4 ( e'4 d'4 e'4) e'4 ( d'4) \divisioMaxima \forceBreak

 d'4 ( f'4 g'4) g'4 g'4 g'4 ( \once \tweak #'font-size #-4 a' )  a'4 ( g'4) a'4 ( g'4 f'4) ~ f'4 ( g'4) a'4 ( g'4) a'4 ( bes'4) a'4 \divisioMinima
 a'4 a'4 ( c''4 c''4) c''4 ( d''4 c''4 b'4 a'4) g'4 ( a'4 g'4) \divisioMaior \forceBreak

 g'4 ( \once \tweak #'font-size #-4 a' ) a'4 g'4 ( b'\prall c''4 b'4) c''4 ( d''4 c''4 b'4 a'4) a'4 ( a'4 \once \tweak #'font-size #-4 g' ) \divisioMinima
  g'4 ( bes'4 a'4 a'4) g'4 ( e'4) f'4 ( g'4 f'4) ~ f'4 ( e'4 d'4) d'4 f'4 ( f'4 d'4 \forceBreak
) f'4 ( g'4 e'4) f'4 ( g'4 d'4 c'4 d'4) \divisioMaxima
 c'4 d'4 g'4 ( a'4 f'4 f'4) ~ f'4 ( g'4 f'4) ~ f'4 ( f'4 f'4) \divisioMinima
 f'4 ( d'4) f'4 ( f'4 d'4 c'4 d'4) f'4 ( f'4 d'4) \divisioMinima \forceBreak

 g'4 ( a'4 f'4 f'4) ~ f'4 ( g'4 f'4) ~ f'4 ( f'4 f'4) \divisioMinima
 f'4 ( d'4) e'4 ( f'4) g'4 ( g'4 f'4.) g'4 ( f'4) g'4 ( e'4) f'4 ( g'4 e'4) f'4 ( d'4 c'4) \divisioMinima \forceBreak

 f'4 ( f'4 d'4) f'4 ( f'4 c'4) g'4 ( f'4) f'4 ( e'4) f'4 ( e'4) f'4 ( g'4) d'4 d'4 ( e'4) ~ e'4 ( d'4) d'4 \finalis

}

altoMusic = {
r2*7/2 d'2*3/2 ~ d'2 bes2*3/2 c'2*3/2 d'2 ~ d'4 a2*4/2 ~ a4 ~ \divisioMaior
a2*3/2 c'2*3/2 ~ c'2 ~ c'2*4/2 ~ c'2*3/2 a2*3/2 \divisioMinima
d'2*3/2 ~ d'2*3/2 c'2*4/2 a2 ~ \divisioMaxima
a2*3/2 c'2 ~ c'2 ~ c'2 ~ c'2 d'2*3/2 ~ d'2 ~ d'2 c'4 ~ \divisioMinima
c'4 g'2*3/2 f'2*5/2 r2*3/2 \divisioMaior
e'2*3/2 d'2 ~ d'2 f'2*5/2 e'2*3/2 f'2*4/2 c'2 ~ c'2 d'2*5/2 ~ d'2*3/2 c'2*3/2 bes2 a2 ~ a4 ~ \divisioMaxima
a2 d'2*4/2 c'2*3/2 ~ c'2*3/2 \divisioMinima
bes2 ~ bes2*5/2 a2*3/2 ~ \divisioMinima
a2*4/2 bes2*3/2 c'2*3/2 ~ \divisioMinima
c'2*4/2 ~ c'2*7/4 ~ c'2 ~ c'2 ~ c'2*3/2 a2*3/2 \divisioMinima
bes2*3/2 c'2*3/2 ~ c'2 ~ c'2 ~ c'2 bes2 ~ bes2 a2*3/2 ~ a4 \finalis
}

tenorMusic = {
r2*4/2 c'2*3/2 ~ c'2*3/2 bes2 d2*3/2 ~ d2*3/2 g2*3/2 ~ g2*4/2 f4 ~ \divisioMaior
f2*3/2 ~ f2*3/2 e2 d2*4/2 e2*3/2 f2*3/2 \divisioMinima
a2*3/2 g2*3/2 ~ g2*4/2 f2 ~ \divisioMaxima
f2*3/2 ~ f2 e2 f2 ~ f2 a2*3/2 f2 ~ f2 ~ f4 \divisioMinima
a4 ~ a2*3/2 ~ a2*5/2 c'2*3/2 ~ \divisioMaior
c'2*3/2 b2 g2 a2*5/2 c'2*3/2 ~ c'2*4/2 ~ c'2 a2 ~ a2 c'2*3/2 bes2*3/2 a2*3/2 g2 ~ g2 f4 ~ \divisioMaxima
f2 ~ f2*4/2 ~ f2*3/2 d2*3/2 ~ \divisioMinima
d2 ~ d2*5/2 ~ d2*3/2 ~ \divisioMinima
d2*4/2 ~ d2*3/2 f2*3/2 ~ \divisioMinima
f2*4/2 ~ f2*7/4 e2 ~ e2 c2*3/2 f2*3/2 ~ \divisioMinima
f2*3/2 ~ f2*3/2 e2 d2 a2 ~ a2 g2 ~ g2*3/2 f4 \finalis
}

bassMusic = {
r2*4/2 a2*3/2 g2*3/2 ~ g2 g,2*3/2 a,2*3/2 bes,2*3/2 d2*4/2 ~ d4 ~ \divisioMaior
d2*3/2 c2*3/2 ~ c2 ~ c2*4/2 ~ c2*3/2 d2*3/2 \divisioMinima
c2*3/2 bes,2*3/2 a,2*4/2 d2 ~ \divisioMaxima
d2*3/2 c2 ~ c2 f2 e2 d2*3/2 ~ d2 bes,2 f4 ~ \divisioMinima
f4 e2*3/2 d2*5/2 e2*3/2 \divisioMaior
c2*3/2 e2 ~ e2 d2*5/2 c2*3/2 f2*4/2 e2 ~ e2 d2*5/2 ~ d2*3/2 ~ d2*3/2 ~ d2 ~ d2 ~ d4 \divisioMaxima
r2 bes,2*4/2 a,2*3/2 ~ a,2*3/2 ~ \divisioMinima
a,2 g,2*5/2 f,2*3/2 \divisioMinima
d,2*4/2 g,2*3/2 a,2*3/2 \divisioMinima
d2*4/2 c2*7/4 ~ c2 a,2 ~ a,2*3/2 f,2*3/2 \divisioMinima
g,2*3/2 a,2*3/2 ~ a,2 d2 ~ d2 ~ d2 ~ d2 ~ d2*3/2 ~ d4 \finalis
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
