\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.396
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Cor meum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Cor meum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Cor meum" }
    \line {}
  }
}

chantText = \lyricmode {
Cor me -- _ um _ 
\set stanza = " * " et ca -- _ ro _ _ me -- a 
ex -- sul -- ta -- vé -- _ _ runt _ _ _ _ _ 
in De -- um _ vi -- vum. _ _ _ ℣. 
Et -- e -- _ _ _ _ _ nim 
pas -- ser in -- vé -- nit si -- _ _ bi do -- num, _ _ _ _ _ _ _ _ 
et tur -- tur ni -- dum _ si -- bi, _ _ _ 
u -- bi po -- _ nat pul -- los su -- os. _ _ _ _ _ ℣. 
Al -- tá -- ri -- a tu -- a, Dó -- mi -- ne vir -- tú -- _ _ _ tum, 
Rex me -- _ us, et De -- us 
\set stanza = " * " me -- us. _ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   f'4 f'4 g'4 ( a'4 g'4) f'4 g'4 ( g'4 f'4) \divisioMinima
 ees'4 ( f'4) f'4 ( bes'4) ~ bes'4 ( c''4) g'4 ( f'4) g'4 ( ees'4) g'4 ( bes'4 g'4 bes'4) bes'4 ( a'4 g'4 a'\prall bes'4 a'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMaior
 f'4 f'4 ( bes'4) bes'4 a'4 ( c''4) d''4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( g'4) ~ g'4 ( f'4) g'4 ( f'4) bes'4 ( bes'4 g'4) bes'4 ( f'4) ~ f'4 ( ees'4) \divisioMaior
 f'4 g'4 ( ees'4 f'4) f'4 ( g'4) bes'4 ( a'4 bes'4) bes'4 ( g'4 a'\prall bes'4) bes'4 ( bes'4) ~ bes'4 ( a'4 g'4) a'4 ( g'4 f'4) g'4 ( f'4) \finalis
 f'4 g'4 ( bes'4 g'4 bes'4) ~ bes'4 ( bes'4) c''4 ( bes'4 a'4 f'4) g'4 ( f'4) g'4 ( a'\prall bes'4 a'4 g'4) a'4 ( bes'4 g'4) g'4 ( f'4) \divisioMaior
 f'4 f'4 ( g'4 f'4) ees'4 ( f'4) bes'4 ( bes'4) g'4 ( bes'4 a'4) a'4 ( bes'4) c''4 ( bes'4) ~ bes'4 ( a'4) a'4 \divisioMinima
 g'4 ( bes'4 a'4 f'4 g'4) f'4. ees'4 ( g'4) bes'4 ( a'4) bes'4 ( c''4 g'4) ~ g'4 ( f'4) g'4 ( f'4) bes'4 ( bes'4 g'4) bes'4 ( f'4) ~ f'4 ( ees'4) \divisioMaxima
 ees'4 g'4 ( bes'4) a'4 ( f'4 g'4) f'4 ( ees'4 f'4) f'4 ( g'4) bes'4 ( a'4 bes'4) bes'4 ( g'4 a'\prall bes'4) bes'4 ( bes'4) ~ bes'4 ( a'4 g'4) a'4 ( g'4 f'4) g'4 ( f'4) \divisioMaxima
 f'4 ( g'4) f'4 g'4 ( f'4) g'4 ( a'\prall bes'4) f'4 ( g'4 ees'4) \divisioMinima
 ees'4 ( g'4 bes'4) bes'4 bes'4 bes'4 ( a'4 bes'4 g'4 f'4.)  bes'4 ( bes'4 g'4 f'4) g'4 ( aes'4 f'4 ees'4) \divisioMinima
  g'4 bes'4 ( g'4) a'4 ( f'4) g'4 ( g'4 f'4) \finalis
 f'4 f'4 ( g'\prall a'4 bes'4) bes'4 bes'4 a'4 ( bes'4) bes'4 \divisioMinima
 bes'4 bes'4 bes'4 bes'4 bes'4 ( c''4 bes'4 f'4) g'4 ( f'4) g'4 ( a'\prall bes'4 a'4 g'4) a'4 ( bes'4 g'4) g'4 ( f'4) \divisioMaxima
 f'4 g'4 ( f'4) g'4 ( a'\prall bes'4) f'4 ( g'4) \divisioMinima
 ees'4 ees'4 ( g'4 a'\prall bes'4 c''4) bes'4  bes'4 bes'4 ( a'4 bes'4 g'4 f'4) ~ f'4 ( f'4) g'4 ( f'4) ~ f'4 ( ees'4 f'4) \divisioMinima
 bes'4 ( bes'4 bes'4) c''4 ( bes'4 a'4 g'4) ~ g'4 ( f'4) g'4 ( bes'4 a'4 g'4 f'4) ~ f'4 ( g'4 ees'4) \divisioMinima
 g'4 ( a'\prall bes'4 a'4 g'4) a'4 ( g'4) ~ g'4 ( f'4) \finalis

}

altoMusic = {
c'2 ~ c'2*4/2 ~ c'2*3/2 \divisioMinima
ees'2*3/2 f'2*3/2 ees'2*4/2 d'2*4/2 ~ d'2 ~ d'2*7/2 ~ d'2 ~ \divisioMaior
d'4 f'2*3/2 ~ f'2*3/2 d'2*4/2 ~ d'2*5/2 bes2*4/2 c'2*3/2 ~ \divisioMaior
c'4 ees'2*3/2 ~ ees'2 f'2*3/2 d'2*4/2 ees'2 f'2*3/2 c'2*3/2 ~ c'2 \finalis
r4 ees'2*4/2 f'2 ~ f'2*6/2 ees'2*8/2 d'2 \divisioMaior
r2*4/2 ees'2 d'2*5/2 f'2*3/2 ~ f'2*3/2 ~ f'4 \divisioMinima
d'2*5/2 c'2*3/4 ees'2 f'2*4/2 d'2*5/2 bes2*4/2 ~ bes2*3/2 \divisioMaxima
r4 d'2*5/2 c'2*3/2 d'2 ~ d'2*3/2 ~ d'2*4/2 ees'2 f'2*3/2 c'2*3/2 ~ c'2 \divisioMaxima
d'2*3/2 ~ d'2 ~ d'2*3/2 c'2*3/2 \divisioMinima
ees'2*5/2 f'2*11/4 ~ f'2*4/2 ees'2*4/2 ~ ees'4 d'2 f'2 c'2*3/2 \finalis
r4 d'2*6/2 ees'2*3/2 \divisioMinima
f'2*4/2 ~ f'2*4/2 d'2 ~ d'2*5/2 ~ d'2*3/2 ~ d'2 \divisioMaxima
c'4 d'2 ~ d'2*3/2 ~ d'2 ~ \divisioMinima
d'4 ees'2*6/2 ~ ees'4 f'2*5/2 c'2*3/2 ~ c'2*3/2 ~ c'4 \divisioMinima
f'2*3/2 ~ f'2*3/2 d'2*3/2 ~ d'2*4/2 c'2*4/2 ~ \divisioMinima
c'2*6/2 ~ c'2*3/2 \finalis
}

tenorMusic = {
a2 bes2*4/2 a2*3/2 \divisioMinima
bes2*3/2 ~ bes2*3/2 ~ bes2*4/2 ~ bes2*4/2 f2 g2*7/2 a2 ~ \divisioMaior
a4 bes2*3/2 c'2*3/2 ~ c'2*4/2 bes2*5/2 f2*4/2 g2*4/2 ~ g2*3/2 bes2 ~ bes2*3/2 ~ bes2*4/2 ~ bes2 c'2*3/2 bes2*3/2 a2 \finalis
f4 bes2*4/2 ~ bes2 a2*6/2 bes2*8/2 a2 ~ \divisioMaior
a4 bes2*3/2 ~ bes2 ~ bes2*5/2 c'2*3/2 d'2*3/2 c'4 \divisioMinima
bes2*5/2 ~ bes2*7/4 ~ bes2*4/2 a2*5/2 f2*4/2 g2*3/2 \divisioMaxima
c'4 bes2*5/2 ~ bes2*3/2 ~ bes2 ~ bes2*3/2 ~ bes2*4/2 ~ bes2 c'2*3/2 bes2*3/2 a2 \divisioMaxima
bes2*3/2 a2 g2*3/2 ~ g2*3/2 ~ \divisioMinima
g4 bes2*4/2 ~ bes2*11/4 ~ bes2*4/2 ~ bes2*5/2 ~ bes2 c'2 bes2 a4 \finalis
r2*7/2 c'2*3/2 \divisioMinima
d'2*4/2 ~ d'2*4/2 bes2 ~ bes2*5/2 g2*3/2 a2 \divisioMaxima
bes2*3/2 a2*3/2 g2*3/2 ~ g2*6/2 bes4 ~ bes2*5/2 ~ bes2*3/2 g2*3/2 a4 \divisioMinima
bes2*3/2 a2*3/2 ~ a2*3/2 g2*4/2 ~ g2*4/2 \divisioMinima
bes2*6/2 ~ bes2 a4 \finalis
}

bassMusic = {
f2 ~ f2*4/2 ~ f2*3/2 \divisioMinima
c2*3/2 d2*3/2 ees2*4/2 bes,2*4/2 ~ bes,2 ~ bes,2*7/2 d2 ~ \divisioMaior
d4 ~ d2*3/2 ~ d2*3/2 g2*4/2 ~ g2*5/2 d2*4/2 c2*4/2 ~ c2*3/2 ~ c2 d2*3/2 g2*4/2 ~ g2 f2*3/2 ~ f2*3/2 ~ f2 \finalis
r4 ees2*4/2 d2 ~ d2*6/2 c2*8/2 d2 ~ \divisioMaior
d4 g2*3/2 ~ g2 ~ g2*5/2 f2*3/2 ~ f2*3/2 ~ f4 \divisioMinima
bes,2*5/2 c2*7/4 d2*4/2 ~ d2*5/2 ~ d2*4/2 ees2*3/2 \divisioMaxima
r2*11/2 a2*3/2 g2*4/2 ~ g2 f2*3/2 ~ f2*3/2 ~ f2 \divisioMaxima
bes,2*3/2 ~ bes,2 ~ bes,2*3/2 c2*3/2 ~ \divisioMinima
c2*5/2 d2*11/4 g2*4/2 ~ g2*5/2 ~ g2 f2 ~ f2 ~ f4 \finalis
r4 bes2*6/2 ~ bes2*3/2 ~ \divisioMinima
bes2*4/2 a2*4/2 ~ a2 g2*5/2 ~ g2*3/2 d2 \divisioMaxima
bes,2*3/2 ~ bes,2*3/2 ~ bes,2 ~ \divisioMinima
bes,4 c2*6/2 ~ c4 d2*5/2 f2*3/2 ~ f2*3/2 ~ f4 \divisioMinima
d2*3/2 ~ d2*3/2 bes,2*3/2 ~ bes,2*4/2 c2*4/2 ~ \divisioMinima
c2*6/2 f2 ~ f4 \finalis
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
