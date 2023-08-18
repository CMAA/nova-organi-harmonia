\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.171
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Dicite in gentibus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Dicite in gentibus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Dicite in gentibus" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- _ ia, _ 
\set stanza = " * " 
al -- le -- lú -- _ ia. _ 
_ _ _ _ _ _ _ _ _ ℣. 
Dí -- ci -- te _ _ in gén -- ti -- bus, 
qui -- a Dó -- _ _ mi -- nus re -- gná -- _ _ _ vit 
\set stanza = " * " 
a li -- _ gno. _ 
_ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   f'4 f'4 f'4 ( g'4) bes'4 ( \tiny a' g' 4) bes'4 ( c''4 bes'4 f'4.) g'4 ( f'4 ees'4 f'4) \divisioMaior
  f'4 f'4 f'4 ( g'4) bes'4 ( \tiny a' g' 4) bes'4 ( c''4 bes'4 f'4.) g'4 ( f'4 ees'4 f'4) \divisioMaior
 c'4 ( f'4) g'4 ( f'4) ~ f'4 ( ees'4.) g'4 bes'4 ( g'4) a'4 ( f'4) \divisioMinima
 c'4 ( f'4) g'4 ( f'4) ~ f'4 ( ees'4.) g'4 a'4 ( bes'4 f'4) \finalis
 f'4 ( f'4 f'4) f'4 ( a'4) a'4 ( bes'4 a'4 f'4.) g'4 ( a'4 g'4) ~ g'4 ( f'4) \divisioMinima
 f'4 ( g'4) f'4 ( g'4) f'4 ( g'4 a'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMaxima
 f'4 f'4 d'4 ees'4 ( f'4 ees'4 d'4) ees'4 ( d'4 c'4) f'4 ( g'4 a'4) g'4 ( f'4 g'4) g'4 ( bes'4 f'4) \divisioMinima
 f'4 ( ees'4 \once \tweak #'font-size #-4 g' ) g'4. f'4 ( bes'4 g'4) a'4 ( g'4.) f'4 ( bes'4 g'4 a'4) g'4 ( f'4) \divisioMaior
 f'4 f'4 ( g'4) bes'4 ( \tiny a' g' 4) bes'4 ( c''4 bes'4 f'4.) g'4 ( f'4 ees'4 f'4) \divisioMaior
 c'4 ( f'4) g'4 ( f'4) ~ f'4 ( ees'4.) g'4 bes'4 ( g'4) a'4 ( f'4) \divisioMinima
 c'4 ( f'4) g'4 ( f'4) ~ f'4 ( ees'4.) g'4 a'4 ( bes'4 f'4) \finalis

}

altoMusic = {
r2 d'2 ees'2*3/2 f'2*3/2 d'2*3/4 c'2*3/2 ~ c'4 d'2 ~ d'2 ~ d'2*3/2 f'2*3/2 ~ f'2*3/4 c'2*3/2 ~ c'4 ~ \divisioMaior
c'2*3/2 r2*7/4 d'2*3/2 ~ d'2 \divisioMinima
c'2*3/2 r2 ees'2*3/4 ~ ees'4 ~ ees'2 c'4 \finalis
d'2*3/2 ~ d'2 ees'2*3/2 d'2*3/4 ~ d'2 c'2*3/2 \divisioMinima
d'2 ~ d'2 c'2 ~ c'2*4/2 ~ c'2 \divisioMaxima
bes4 ~ bes2 c'2*4/2 ~ c'2 ~ c'4 ~ c'2*3/2 ~ c'2*3/2 bes2*3/2 ~ \divisioMinima
bes2*3/2 c'2*3/4 ~ c'2*3/2 ~ c'2*5/4 ~ c'2*4/2 ~ c'2 \divisioMaior
d'4 ~ d'2 ~ d'2*3/2 f'2*9/4 c'2*3/2 ~ c'4 ~ \divisioMaior
c'2*3/2 r2*7/4 d'2*3/2 ~ d'2 \divisioMinima
c'2*3/2 r2 ees'2*3/4 ~ ees'4 ~ ees'2 c'4 \finalis
}

tenorMusic = {
r2 bes2 c'2*3/2 d'2*3/2 c'2*3/4 bes2*3/2 a4 bes2 ~ bes2 ~ bes2*3/2 ~ bes2*9/4 ~ bes2*3/2 a4 ~ \divisioMaior
a2*3/2 bes2*7/4 ~ bes2*3/2 c'2 ~ \divisioMinima
c'2*3/2 bes2*7/4 c'4 bes2 a4 \finalis
bes2*3/2 c'2 ~ c'2*3/2 ~ c'2*3/4 bes2 a2*3/2 \divisioMinima
bes2 ~ bes2 a2 ~ a2*4/2 bes4 a4 \divisioMaxima
r4 f2 g2*4/2 bes2*3/2 d2*3/2 ees2*3/2 f2*3/2 \divisioMinima
g2*3/2 ~ g2*3/4 ~ g2*3/2 f2*5/4 bes2*4/2 a2 \divisioMaior
bes4 ~ bes2 ~ bes2*3/2 ~ bes2*9/4 ~ bes2*3/2 a4 ~ \divisioMaior
a2*3/2 bes2*7/4 ~ bes2*3/2 c'2 ~ \divisioMinima
c'2*3/2 bes2*7/4 c'4 bes2 a4 \finalis
}

bassMusic = {
r2*31/4 r2 a2 g2*3/2 d2*9/4 c2*3/2 f4 \divisioMaior
r2*3/2 g2*7/4 ~ g2*3/2 ~ g2 \divisioMinima
a2*3/2 g2*7/4 c4 ~ c2 f4 \finalis
r2*29/4 \divisioMinima
r2 a2 g2 f2*4/2 ~ f2 \divisioMaxima
d4 ~ d2 c2*4/2 ~ c2*3/2 ~ c2*3/2 ~ c2*3/2 d2*3/2 \divisioMinima
ees2*3/2 ~ ees2*3/4 f2*3/2 ~ f2*5/4 ~ f2*4/2 ~ f2 \divisioMaior
r4 a2 g2*3/2 d2*9/4 c2*3/2 f4 \divisioMaior
r2*3/2 g2*7/4 ~ g2*3/2 ~ g2 \divisioMinima
a2*3/2 g2*7/4 c4 ~ c2 f4 \finalis
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
        "VIII"
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
