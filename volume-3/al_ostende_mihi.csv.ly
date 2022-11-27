\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.82
%(volume.page)

global = {
 \key d \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Ostende mihi" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Ostende mihi"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Ostende mihi" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- _ ia, 
\set stanza = " * " al -- le -- lú -- _ ia. _ _ _ _ _ _ _ 
_ _ _ _ _ ℣. 
Os -- tén -- _ de mi -- _ hi _ _ fá -- ci -- em tu -- _ _ am, 
so -- _ _ net vox _ tu -- _ a in áu -- ri -- bus me -- _ is: 
vox e -- nim tu -- a dul -- _ cis, 
et fá -- ci -- es tu -- a 
\set stanza = " * " de -- _ có -- ra. _ _ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   ees'4 ees'4 ( f'4 g'4) f'4 ( g'4) bes'4 ( g'4 f'4) bes'4 bes'4 \divisioMinima
  ees'4 ees'4 ( f'4 g'4) f'4 ( g'4) bes'4 ( g'4 f'4) bes'4 bes'4 \divisioMinima
 bes'4 ( bes'4) f'4 ( g'4 f'4 ees'4.) bes'4 ( g'4) a'4 ( f'4.) g'4 ( f'4) g'4 ( ees'4) ~ ees'4 ( d'4) \divisioMaior
 d'4 ( ees'4 f'4) g'4 ( f'4 g'4) ees'4 ( d'4) ees'4 ( f'4 ees'4) ~ ees'4 ( d'4) \finalis
 f'4 g'4 bes'4 ( bes'4 bes'4) g'4 ( a'\prall bes'4) a'4 ( bes'4) c''4 ( bes'4) bes'4 ( bes'4 g'4) a'4 ( g'4) ~ g'4 ( f'4) \divisioMinima
 a'4 ( g'4 a'\prall bes'4) g'4 ( a'4 g'4) g'4 a'4 ( bes'4) c''4 ( bes'4 g'4 a'\prall bes'4 a'4 g'4) a'4 ( bes'4) bes'4 \divisioMaior
 f'4 bes'4 ( bes'4) ~ bes'4 ( bes'4 bes'4) g'4 ( a'4 g'4) bes'4 ( g'4) ~ g'4 ( f'4) g'4 ( f'4) ~ f'4 ( ees'4) ees'4 \divisioMinima
 ees'4 d'4 ( ees'4 f'4 g'4) f'4 f'4 f'4 ( g'4) bes'4 ( g'4 f'4 ees'4 f'\prall g'4 a'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMaxima
 g'4 ( bes'4) g'4 ( f'4) g'4 ( bes'4 bes'4) f'4 ( g'4) f'4 ( ees'4) f'4 ( ees'4 c'4 d'\prall ees'4 d'4 c'4) d'4 ( ees'4) d'4 \divisioMaior
 d'4 ( \once \tweak #'font-size #-4 c' ) c'4 ( f'4) f'4 f'4 ( g'4) f'4 ( ees'4 g'4) g'4 \divisioMinima
 g'4 bes'4 ( bes'4 bes'4) g'4 ( a'\prall bes'4) a'4 ( bes'4) c''4 ( bes'4.) a'4 ( bes'4 g'4) a'4 ( g'4 f'4 g'4) bes'4 ( bes'4) c''4 ( g'4 ees'4.) g'4 ( a'4 f'4 d'4) f'4 ( f'4 ees'4 f'4) \divisioMinima
 bes'4 ( bes'4 g'4 f'4.) a'4 ( g'4 f'4 ees'4.) g'4 ( f'4 ees'4 d'4) ees'4 ( f'4 ees'4) ~ ees'4 ( d'4) \finalis

}

altoMusic = {
r4 ees'2*3/2 d'2 ~ d'4 ~ d'2 ~ d'2 c'4 ~ c'2*3/2 ~ c'2 bes4 ~ bes2 ~ bes4 ~ bes4 ~ \divisioMinima
bes2 ~ bes2*3/2 ~ bes2*3/4 ~ bes2 d'2*5/4 c'2*3/2 bes2*3/2 ~ \divisioMaior
bes2*3/2 ~ bes2*3/2 ~ bes2*4/2 ~ bes2*3/2 \finalis
d'4 ~ d'4 ~ d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'2 c'2*4/2 d'2*3/2 ~ \divisioMinima
d'2*4/2 ~ d'2*3/2 ~ d'4 ~ d'2 ~ d'2 ees'2*5/2 d'2 ~ d'4 \divisioMaior
r4 g'2 f'2*3/2 ees'2*4/2 d'2*4/2 c'2*3/2 ~ c'4 \divisioMinima
ees'4 d'2*4/2 c'2 d'2 ~ d'2*3/2 ees'2*3/2 c'2*4/2 ~ c'2 \divisioMaxima
d'2 c'2 bes2*3/2 ~ bes2*4/2 g2 ~ g2 ~ g2*3/2 bes2*3/2 ~ \divisioMaior
bes2 c'2 ~ c'4 bes2 ~ bes2*3/2 ~ bes4 ~ \divisioMinima
bes4 ~ bes2*3/2 f'2*5/2 g'2*5/4 ~ g'2*3/2 d'2*4/2 ~ d'2 c'2*7/4 ~ c'2 ~ c'2 bes2*3/2 a4 \divisioMinima
bes2*3/2 c'2*3/4 d'2*3/2 ees'2*3/4 bes2 ~ bes2*4/2 ~ bes2*3/2 \finalis
}

tenorMusic = {
r4 c'2*3/2 ~ c'2 bes4 ~ bes2 ~ bes4 g4 ees4 ~ ees2*3/2 d2 ~ d4 f2 ees4 d4 \divisioMinima
f2 ees2*3/2 ~ ees2*3/4 f2 ~ f2*5/4 ~ f2*3/2 g2*3/2 \divisioMaior
d2*3/2 ees2*3/2 f2*4/2 g2*3/2 \finalis
bes4 ~ bes4 ~ bes2*3/2 a2*3/2 g2 ~ g2 ~ g2*4/2 a2*3/2 \divisioMinima
d'2*4/2 c'2*3/2 bes4 a2 g2 c'2*5/2 ~ c'2 bes4 ~ \divisioMaior
bes4 ~ bes2 ~ bes2*3/2 ~ bes2*4/2 ~ bes2*4/2 ~ bes2*3/2 c'4 ~ \divisioMinima
c'4 r2*6/2 bes2 ~ bes2*3/2 ~ bes2*3/2 c'2*4/2 bes4 a4 \divisioMaxima
f2 ~ f2 ~ f2*3/2 ees2*4/2 ~ ees2 f2 g2*3/2 ~ g2*3/2 \divisioMaior
f2 ~ f2 d4 ~ d2 ees2*3/2 ~ ees4 ~ \divisioMinima
ees4 f2*3/2 bes2*5/2 ~ bes2*5/4 c'2*3/2 ~ c'2*4/2 bes2 ~ bes2*7/4 ~ bes2 a2 g2*3/2 f4 \divisioMinima
g2*3/2 a2*3/4 ~ a2*3/2 bes2*3/4 ~ bes2 g2*4/2 ~ g2*3/2 \finalis
}

bassMusic = {
r2*7/2 a2 g4 ~ g4 c4 bes,2*3/2 ~ bes,2 g,4 ~ g,2 ~ g,4 ~ g,4 \divisioMinima
d2 ees2*3/2 c2*3/4 d2 bes,2*5/4 a,2*3/2 g,2*3/2 ~ \divisioMaior
g,2*3/2 ~ g,2*3/2 ~ g,2*4/2 ~ g,2*3/2 \finalis
r4 a4 g2*3/2 ~ g2*3/2 ~ g2 f2 ees2*4/2 d2*3/2 ~ \divisioMinima
d2*4/2 ~ d2*3/2 g4 ~ g2 ~ g2 ~ g2*5/2 ~ g2 ~ g4 \divisioMaior
d4 ees2 d2*3/2 c2*4/2 bes,2*4/2 c2*3/2 ~ c4 \divisioMinima
bes4 ~ bes2*4/2 ees2 a2 g2*3/2 ~ g2*3/2 f2*4/2 ~ f2 \divisioMaxima
bes,2 a,2 g,2*3/2 ~ g,2*4/2 c2 ~ c2 ~ c2*3/2 g,2*3/2 ~ \divisioMaior
g,2 a,2 ~ a,4 g,2 ~ g,2*3/2 c4 ~ \divisioMinima
c4 d2*3/2 ~ d2*5/2 ees2*5/4 ~ ees2*3/2 f2*4/2 g2 ~ g2*7/4 f2 ~ f2 ~ f2*3/2 ~ f4 ~ \divisioMinima
f2*3/2 ~ f2*3/4 ~ f2*3/2 g2*3/4 ees2 ~ ees2*4/2 g2*3/2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Alleluia"
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
