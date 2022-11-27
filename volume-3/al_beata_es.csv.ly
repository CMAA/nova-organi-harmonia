\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.450 (addenum pp5)
%(volume.page)

global = {
 \key d \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Beata es" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Beata es"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Beata es" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ _ lú -- ia, 
\set stanza = " * " al -- le -- _ _ lú -- ia. _ _ _ _ _ 
_ _ _ _ _ _ _ _ _ _ _ ℣. 
Be -- á -- ta es, _ _ Vir -- go Ma -- rí -- a, _ _ 
quæ sub cru -- _ ce Dó -- mi -- _ _ _ _ _ ni 
\set stanza = " * " 
sus -- ti -- nu -- í -- sti. _ _ _ _ _ 
_ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   d'4 d'4 ( f'4 ees'4) d'4 ( ees'4 d'4 c'4) ees'4 ( ees'4 d'4) f'4 ( g'\prall a'4 bes'4) a'4 ( g'4) \divisioMinima
  d'4 d'4 ( f'4 ees'4) d'4 ( ees'4 d'4 c'4) ees'4 ( ees'4 d'4) f'4 ( g'\prall a'4 bes'4) a'4 ( g'4) \divisioMinima
 bes'4 ( a'4 g'4) bes'4 ( bes'4 a'4.) f'4 ( g'4) a'4 ( g'4) ~ g'4 ( f'4) \divisioMaior
 f'4 ( g'4) bes'4 ( bes'4 a'4 f'4) g'4 ( g'4) f'4 ( g'4) a'4 ( f'4) \divisioMinima
 f'4 ( g'4) bes'4 ( bes'4 a'4 f'4) g'4 ( g'4 f'4 ees'4.) f'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( d'4) \finalis
 d'4 ( ees'4 d'4 c'4) f'4 g'4 ( bes'4) a'4 ( g'4) bes'4 ( c''4 bes'4 g'4 f'4) g'4 ( g'4 f'4) \divisioMinima
 f'4 f'4 g'4 ( a'4 g'4) a'4 ( bes'4 a'4) g'4 ( f'4 g'4 a'\prall bes'4 a'4) c''4 ( bes'4) ~ bes'4 ( a'4) \divisioMaior
 f'4 f'4 f'4 bes'4 ( bes'4) a'4 ( g'4) a'4 f'4 g'4 ( g'4 ees'4) f'4 ( f'4) d'4 ( f'4 d'4) ~ d'4 ( c'4) d'4 ( ees'4) d'4 \divisioMaior
 d'4 ( f'4 ees'4) d'4 ( ees'4 f'4) g'4 ( a'4 g'4 f'4) f'4 ( g'4 bes'4) a'4 ( g'4) bes'4 ( a'4 g'4) bes'4 ( bes'4 a'4) f'4 ( g'4) a'4 ( g'4) ~ g'4 ( f'4) \divisioMaior
 f'4 ( g'4) bes'4 ( bes'4 a'4 f'4) g'4 ( g'4) f'4 ( g'4) a'4 ( f'4) \divisioMinima
 f'4 ( g'4) bes'4 ( bes'4 a'4 f'4) g'4 ( g'4 f'4 ees'4.) f'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( d'4) \finalis

}

altoMusic = {
r4 bes2*3/2 ~ bes2*4/2 ~ bes2*3/2 f'2*4/2 d'2 r4 bes2*3/2 g2*4/2 ~ g2*3/2 c'2*4/2 bes2 \divisioMinima
ees'2*3/2 f'2*7/4 c'2*3/2 ~ c'2*3/2 \divisioMaior
f'2 ~ f'2*4/2 ~ f'2*4/2 ~ f'2 ~ \divisioMinima
f'2 bes2*4/2 ~ bes2*9/4 ~ bes2*4/2 ~ bes2 ~ bes4 \finalis
r2*3/2 c'4 ~ c'4 d'2 ~ d'2 ~ d'2*5/2 c'2*3/2 \divisioMinima
d'2 ~ d'2*3/2 f'2*4/2 ~ f'2*6/2 ~ f'2*3/2 \divisioMaior
r2 f'4 ~ f'2*4/2 bes2 ~ bes2*3/2 ~ bes2*4/2 ~ bes2*5/2 ~ bes4 ~ \divisioMaior
bes2*3/2 d'2*3/2 ~ d'2*4/2 ~ d'2*5/2 ees'2*3/2 f'2*6/2 d'2*3/2 \divisioMaior
f'2 ~ f'2*4/2 c'2*4/2 ~ c'2 ~ \divisioMinima
c'2 bes2*4/2 ~ bes2*9/4 ~ bes2*4/2 ~ bes2 ~ bes4 \finalis
}

tenorMusic = {
r4 g2*3/2 ~ g2*4/2 ~ g2*3/2 c'2*4/2 ~ c'4 bes4 r4 f2*3/2 ~ f2*4/2 ees2*3/2 d2*4/2 ~ d2 \divisioMinima
bes2*3/2 c'2*7/4 bes2*3/2 a2*3/2 \divisioMaior
bes2 c'2*4/2 bes2*4/2 a2 \divisioMinima
g2 f2*4/2 ees2*9/4 ~ ees2*4/2 d2 f4 \finalis
bes2*4/2 ~ bes4 ~ bes2 c'2 bes2*5/2 r2*3/2 \divisioMinima
bes2 ~ bes2*3/2 c'2*3/2 a4 bes2*6/2 c'2*3/2 ~ \divisioMaior
c'2*3/2 bes2*4/2 f2 ees2*3/2 d2*4/2 g2*5/2 f4 \divisioMaior
g2*3/2 ~ g2*3/2 a2*4/2 bes2*5/2 ~ bes2*3/2 ~ bes2*6/2 a2*3/2 \divisioMaior
c'2 bes2*4/2 ~ bes2*4/2 ~ bes4 a4 \divisioMinima
f2 ~ f2*4/2 ees2*9/4 ~ ees2*4/2 d2 f4 \finalis
}

bassMusic = {
r4 r2*3/2 f2*4/2 ees2*3/2 d2*4/2 g2 r4 bes,2*3/2 ~ bes,2*4/2 c2*3/2 d2*4/2 g,2 \divisioMinima
g2*3/2 f2*7/4 ~ f2*3/2 ~ f2*3/2 \divisioMaior
d2 ~ d2*4/2 ~ d2*4/2 ~ d2 ~ \divisioMinima
d2 ~ d2*4/2 ees2*9/4 bes,2*4/2 ~ bes,2 ~ bes,4 \finalis
r2*14/2 a2*3/2 ~ \divisioMinima
a2 g2*3/2 f2*3/2 ~ f4 ~ f2*6/2 ~ f2*3/2 \divisioMaior
d2*3/2 ~ d2*4/2 ~ d2 ees2*3/2 bes,2*4/2 ~ bes,2*5/2 ~ bes,4 ~ \divisioMaior
bes,2*3/2 ~ bes,2*3/2 ~ bes,2*4/2 ~ bes,2*5/2 c2*3/2 d2*6/2 ~ d2*3/2 ~ \divisioMaior
d2 ~ d2*4/2 f2*4/2 ~ f2 \divisioMinima
d2 ~ d2*4/2 ees2*9/4 bes,2*4/2 ~ bes,2 ~ bes,4 \finalis
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
        "3"
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
