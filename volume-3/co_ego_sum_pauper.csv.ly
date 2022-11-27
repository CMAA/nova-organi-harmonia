\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.352
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Ego sum pauper" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Ego sum pauper"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Ego sum pauper" }
    \line {}
  }
}

chantText = \lyricmode {
E -- go sum 
\set stanza = " * " pau -- per et do -- _ lens: 
sa -- lus tu -- a, De -- us, su -- scé -- pit me. 
Lau -- dá -- bo no -- men De -- i cum cán -- ti -- co: _ 
et ma -- gni -- fi -- cá -- _ bo e -- um _ _ in lau -- de. }

chantMusic = {
\tieDown   ees'4 ( f'4) f'4 ( g'4) g'4  g'4 ( ees'4 f'4) f'4 f'4 f'4 ( d'4) ees'4 ( c'4) c'4 \divisioMaior
 ees'4 ees'4 ( f'4) f'4 f'4 ( g'4) g'4 ( bes'4) a'4 ( bes'4) \divisioMinima
 g'4 ( c''4) c''4 a'4 ( bes'4) a'4 ( g'4) \divisioMaxima
 bes'4 bes'4 ( d''4) c''4 ( d''4 c''4) bes'4 ( a'4) bes'4 c''4 ( d''4 c''4 bes'4) bes'4 ( g'4) \divisioMinima
 bes'4 bes'4 ( c''4) bes'4 a'4 ( f'4) g'4 ( a'4 g'4) \divisioMaior
 g'4 g'4 bes'4 ( a'4) bes'4 c''4 ( a'4) bes'4 ( c''4) g'4 ( f'4) g'4 ( f'4) f'4 ( d'4) ~ d'4 ( c'4) f'4 ( d'4 f'4) f'4 f'4 ( g'4 f'4) f'4 \finalis

}

altoMusic = {
bes2 ~ bes2*3/2 ~ bes2*5/2 ~ bes2 g2 ~ g4 \divisioMaior
bes4 c'2 ~ c'4 d'2 ~ d'2*4/2 \divisioMinima
ees'2 d'2*3/2 ~ d'2 \divisioMaxima
f'4 ~ f'2 ~ f'2*3/2 ~ f'2*3/2 ~ f'2*4/2 ~ f'2 ~ \divisioMinima
f'4 ~ f'2*3/2 ~ f'2 d'2*3/2 ~ \divisioMaior
d'2 ees'2*3/2 d'2*4/2 ~ d'2 ~ d'2*3/2 bes2*3/2 ~ bes2*4/2 ~ bes2*3/2 a4 \finalis
}

tenorMusic = {
g2 f2*3/2 ees2*5/2 d2 c2 ees4 \divisioMaior
bes2*3/2 a2*3/2 bes2*4/2 ~ \divisioMinima
bes2*3/2 c'2 bes2 \divisioMaxima
r4 bes2 a2*3/2 g2*3/2 f2*4/2 bes2 ~ \divisioMinima
bes4 d'2*3/2 c'2 ~ c'2 bes4 ~ \divisioMaior
bes2 g2*3/2 ~ g2*4/2 ~ g2 ~ g2*3/2 f2*3/2 d2*4/2 c2*3/2 ~ c4 \finalis
}

bassMusic = {
g,2 ~ g,2*3/2 ~ g,2*5/2 ~ g,2 c2 ~ c4 \divisioMaior
g2*3/2 ~ g2*3/2 ~ g2*4/2 ~ \divisioMinima
g2*3/2 ~ g2 ~ g2 \divisioMaxima
d4 ~ d2 ~ d2*3/2 ~ d2*3/2 ~ d2*4/2 ~ d2 ~ \divisioMinima
d4 ~ d2*3/2 ~ d2 g2 ~ g4 ~ \divisioMaior
g2 c2*3/2 g,2*4/2 a,2 bes,2*3/2 ~ bes,2*3/2 ~ bes,2*4/2 f,2*3/2 ~ f,4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Communion"
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
