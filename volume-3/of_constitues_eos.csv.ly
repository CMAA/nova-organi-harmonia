\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.241
%(volume.page)

global = {
 \key d \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Constitues eos" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Constitues eos"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Constitues eos" }
    \line {}
  }
}

chantText = \lyricmode {
Con -- stí -- _ tu -- es 
\set stanza = " * " e -- os _ prín -- ci -- pes _ _ 
su -- per o -- _ _ mnem ter -- ram: 
mé -- _ _ mo -- res _ e -- _ runt nó -- _ mi -- _ nis tu -- _ i, 
in o -- _ mni pro -- gé -- ni -- _ e 
et ge -- ne -- _ ra -- ti -- ó -- _ ne. _ _ _ _ _ _ }

chantMusic = {
\tieDown   c'4 ( f'4) f'4. g'4 ( bes'4 a'4) bes'4 ( c''4 bes'4) bes'4 ( a'4 g'4)  g'4 ( bes'4 c''4 bes'4 g'4) g'4 ( bes'4 g'4) ~ g'4 ( f'4) \divisioMinima
 a'4 ( c''4 bes'4) bes'4 ( a'4 g'4) g'4 ( f'4.) a'4 ( g'4) a'4 ( f'4 g'4) \divisioMaior
 d'4 ( ees'4) f'4 g'4 ( f'4) bes'4 ( c''4 a'4) bes'4 ( g'4 f'4) f'4 ( ees'4 g'4) f'4 ( g'4 ees'4 f'4) ees'4 \divisioMaxima
 ees'4 ( ees'4 ees'4) ~ ees'4 ( c'4) f'4 ( a'4 g'4) f'4 f'4 g'4 ( bes'4 g'4) ees'4 ( c'4) ees'4 ( g'4 f'4) d'4 ( ees'4 f'4) \divisioMinima
 f'4 ( g'4) bes'4 ( a'4 bes'4) f'4 ( bes'4) ~ bes'4 ( bes'4 bes'4) f'4 ( bes'4)  bes'4 ( bes'4) ~ bes'4 ( g'4 f'4 ees'4 f'\prall g'4 aes'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMaxima
 g'4 ( bes'4 a'4) bes'4 ( c''4 bes'4) a'4 ( bes'4 g'4) g'4 c'4 ( f'4) f'4 ( bes'4) bes'4 ( bes'4) ~ bes'4 ( g'4 f'4) f'4 \divisioMaior
 ees'4 d'4 ( ees'4 f'4) ees'4 ( g'4) bes'4 ( f'4 g'4) d'4 ( ees'4) f'4 f'4 g'4 ( a'\prall bes'4 a'4 g'4) g'4 ( bes'4 g'4 f'4 ees'4) \divisioMinima
 ees'4 ( ees'4 ees'4) g'4 ( f'4 ees'4 d'4) ees'4 ( d'4.) f'4 ( ees'4) f'4 ( ees'4) ~ ees'4 ( d'4) \finalis

}

altoMusic = {
c'2 f'2*3/4 ~ f'2*3/2 ~ f'2*3/2 ~ f'2*3/2 g'2*5/2 ees'2 d'2 c'4 \divisioMinima
f'2*3/2 d'2*3/2 ~ d'2*5/4 ~ d'2*4/2 ~ d'4 ~ \divisioMaior
d'2*3/2 c'2 d'2*6/2 bes2*3/2 ~ bes2*5/2 \divisioMaxima
c'2*3/2 ~ c'2 ~ c'2*5/2 d'2*3/2 c'2*5/2 d'2*3/2 \divisioMinima
ees'2*7/2 f'2*5/2 ees'2 d'2*3/2 c'2*3/2 ees'2*4/2 d'2 \divisioMaxima
f'2*3/2 ees'2*3/2 ~ ees'2*4/2 c'2 d'2 ~ d'2 ees'2*3/2 c'4 ~ \divisioMaior
c'4 bes2*5/2 ~ bes2*3/2 ~ bes2*3/2 ~ bes4 ~ bes2*5/2 ~ bes2*5/2 ~ \divisioMinima
bes2*3/2 ~ bes2*4/2 ~ bes2*5/4 ~ bes2*3/2 a2 bes4 \finalis
}

tenorMusic = {
a2 ~ a2*3/4 bes2*3/2 d'2*3/2 c'2*3/2 bes2*5/2 ~ bes2 ~ bes2 a4 \divisioMinima
c'2*3/2 ~ c'2*3/2 bes2*5/4 a2*4/2 bes4 \divisioMaior
f2*3/2 ~ f2 ~ f2*6/2 ~ f2*3/2 g2*5/2 ~ \divisioMaxima
g2*3/2 ~ g2 f2*5/2 ~ f2*3/2 ~ f2*5/2 ~ f2*3/2 \divisioMinima
bes2*7/2 ~ bes2*5/2 ~ bes2 ~ bes2*3/2 c'2*3/2 ~ c'2*4/2 bes2 \divisioMaxima
d'2*3/2 c'2*3/2 ~ c'2*4/2 ~ c'2 bes2 ~ bes2 ~ bes2*3/2 a4 ~ \divisioMaior
a4 bes2*5/2 g2*3/2 ~ g2*3/2 f4 ~ f2*5/2 ees2*5/2 \divisioMinima
g2*3/2 ees2*4/2 f2*5/4 g2*3/2 ees2 f4 \finalis
}

bassMusic = {
f2 d2*3/4 ~ d2*3/2 ~ d2*3/2 ~ d2*3/2 ees2*5/2 ~ ees2 ~ ees2 f4 ~ \divisioMinima
f2*3/2 ~ f2*3/2 g2*5/4 ~ g2*4/2 ~ g4 \divisioMaior
bes,2*3/2 ~ bes,2 ~ bes,2*6/2 d2*3/2 ees2*5/2 \divisioMaxima
c2*3/2 bes,2 a,2*5/2 bes,2*3/2 ~ bes,2*5/2 ~ bes,2*3/2 \divisioMinima
c2*7/2 d2*5/2 g2 ~ g2*3/2 aes2*3/2 f2*4/2 bes2 \divisioMaxima
r2*6/2 bes2*4/2 a2 ~ a2 g2 ~ g2*3/2 ~ g4 ~ \divisioMaior
g4 ~ g2*5/2 f2*3/2 ees2*3/2 ~ ees4 d2*5/2 c2*5/2 ~ \divisioMinima
c2*3/2 ~ c2*4/2 ~ c2*5/4 ~ c2*3/2 ~ c2 bes,4 \finalis
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
        "III"
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
