\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.173
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Dextera Domini" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Dextera Domini"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Dextera Domini" }
    \line {}
  }
}

chantText = \lyricmode {
Dex -- te -- ra _ _ Dó -- mi -- ni 
\set stanza = " * " 
fe -- _ cit vir -- _ _ tú -- _ tem, 
déx -- te -- ra _ Dó -- _ mi -- ni ex -- al -- tá -- _ _ _ _ vit me: 
non mó -- ri -- ar, sed _ vi -- vam, 
et nar -- rá -- bo ó -- pe -- ra _ _ Dó -- mi -- ni, _ _ 
al -- le -- _ _ _ _ _ lú -- ia. }

chantMusic = {
\tieDown   d'4 ( f'4 g'4) g'4 ( a'4 g'4 f'4) f'4. ~ f'4 ( f'4 f'4) g'4 ( a'4 g'4 a'4) f'4 ( g'4) d'4 ( ees'4 d'4 c'4 d'4) d'4 ( c'4) \divisioMaior
 c'4 ( d'4) f'4 ( g'4 f'4) g'4 g'4 ( a'4) c''4 ( c''4 a'4) bes'4 ( c''4) g'4. f'4 ( a'4 g'4) g'4 \divisioMaxima
 bes'4 ( bes'4) bes'4 ( a'4) bes'4 ( bes'4) ~ bes'4 ( g'4) g'4 ( bes'4) ~ bes'4 ( g'4) g'4 g'4 \divisioMinima
 f'4 g'4 g'4 ( bes'4) ~ bes'4 ( bes'4) ~ bes'4 ( g'4) c''4 ( bes'4) ~ bes'4 ( g'4) g'4 ( a'4 \tiny g' f' 4) g'4 ( f'4) \divisioMaxima
 g'4 ( a'\prall bes'4) bes'4 bes'4 ( a'4 g'4) g'4 \divisioMinima
 f'4 bes'4 ( bes'4 bes'4) g'4 ( a'4 f'4) d'4 ( f'4 d'4 f'4) \divisioMaior
 c'4 d'4 f'4 d'4 f'4 ( g'4 f'4) g'4 g'4. bes'4 ( c''4 bes'4) c''4 ( bes'4 a'4 g'4) g'4 g'4 g'4 ( a'\prall bes'4) ~ bes'4 ( a'4 g'4) a'4 ( a'4 g'4) \finalis
 g'4 ( a'4) f'4 bes'4 ( bes'4 bes'4) ~ bes'4 ( c''4 bes'4 f'4.) g'4 bes'4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( c''4 bes'4 c''4) g'4 ( a'4 g'4) g'4 \finalis

}

altoMusic = {
d'4 ~ d'2 ~ d'2*4/2 c'2*3/4 ~ c'2*3/2 d'2*4/2 c'2 bes2*5/2 r2 \divisioMaior
a2 bes2*3/2 c'4 d'2 ~ d'2*3/2 ~ d'2 ~ d'2*3/4 ~ d'2*3/2 ~ d'4 \divisioMaxima
g'2 f'2 ees'2 d'2*3/2 ees'2*3/2 d'2 \divisioMinima
c'2 d'2 ~ d'2 ees'2*3/2 f'2*3/2 d'2*4/2 ~ d'2 ~ \divisioMaxima
d'2*3/2 ees'4 ~ ees'2*3/2 d'4 ~ \divisioMinima
d'4 ees'2*3/2 d'2*3/2 bes2 a2 ~ \divisioMaior
a2 bes2 ~ bes2*3/2 ~ bes4 ees'2*3/4 ~ ees'2*3/2 ~ ees'2*4/2 d'2 ~ d'2 ~ d'2*4/2 c'2 bes4 \finalis
d'2 f'4 ~ f'2*3/2 ees'2*3/2 f'2*3/4 ~ f'4 g'2 f'2 ees'2*4/2 d'2*3/2 ~ d'4 \finalis
}

tenorMusic = {
d'4 c'2 bes2*4/2 ~ bes2*3/4 a2*3/2 bes2*4/2 a2 g2*5/2 ~ g2 \divisioMaior
r2*5/2 a4 bes2 a2*3/2 g2 bes2*3/4 c'2*3/2 bes4 ~ \divisioMaxima
bes2 ~ bes2 ~ bes2 ~ bes2*3/2 ~ bes2*3/2 ~ bes2 \divisioMinima
a2 g2 ~ g2 ~ g2*3/2 f2*3/2 g2*4/2 a2 \divisioMaxima
g2*3/2 ~ g4 bes2*3/2 ~ bes4 ~ \divisioMinima
bes4 g2*3/2 ~ g2*3/2 f2 ~ f2 ~ \divisioMaior
f2 ~ f2 ees2*3/2 ~ ees4 ~ ees2*3/4 g2*3/2 bes2*4/2 ~ bes2 a2 g2*4/2 ~ g2*3/2 \finalis
r2 a4 bes2*3/2 ~ bes2*3/2 ~ bes2*5/4 ~ bes2 ~ bes2 ~ bes2*4/2 ~ bes4 c'2 bes4 \finalis
}

bassMusic = {
r2*23/4 g2*4/2 ~ g2 ~ g2*5/2 ees2 \divisioMaior
f2 g2*3/2 ~ g4 ~ g2 ~ g2*3/2 ~ g2 ~ g2*3/4 ~ g2*3/2 ~ g4 \divisioMaxima
ees2 d2 c2 besm2*3/2 c2*3/2 g2 ~ \divisioMinima
g2 ~ g2 f2 ees2*3/2 d2*3/2 ~ d2*4/2 ~ d2 \divisioMaxima
bes,2*3/2 c4 ~ c2*3/2 bes,4 ~ \divisioMinima
bes,4 c2*3/2 d2*3/2 ~ d2 ~ d2 \divisioMaior
r2 d2 ees2*3/2 d4 c2*3/4 ~ c2*3/2 ~ c2*4/2 bes,2 ~ bes,2 ~ bes,2*4/2 g,2*3/2 \finalis
d2 ~ d4 ~ d2*3/2 c2*3/2 d2*5/4 ees2 d2 c2*4/2 g2*3/2 ~ g4 \finalis
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
        "II"
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
