\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.68
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Video caelos" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Video caelos"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Video caelos" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- ia, _ _ 
\set stanza = " * " al -- le -- lú -- ia. _ _ _ _ _ _ _ _ ℣. 
Ví -- _ de -- _ o _ _ cæ -- los a -- pér -- _ _ _ _ _ _ tos, 
et Je -- sum stan -- _ _ _ _ _ tem _ 
a dex -- _ _ tris _ _ vir -- tú -- _ _ _ _ _ _ tis 
\set stanza = " * " 
De -- _ _ i. _ }

chantMusic = {
\tieDown  f'4 g'4 bes'4 ( \once \tweak #'font-size #-4 c'' ) c''4 ( bes'4) c''4 ( a'4) ~ a'4 ( g'4) \divisioMinima
 f'4 g'4 bes'4 ( \once \tweak #'font-size #-4 c'' ) c''4 ( bes'4) c''4 ( a'4) ~ a'4 ( g'4) \divisioMinima
 bes'4. c''4 ( d''4 c''4) f'4 ( g'4 \forceBreak
) bes'4 ( g'4) bes'4. a'4 ( bes'4 f'4) bes'4 ( bes'4) ~ bes'4 ( g'4 a'\prall bes'4 g'4) \finalis
 g'4 ( f'4) g'4 ( a'\prall bes'4 c''4) d''4 ( c''4) ~ c''4 ( bes'4 c''4) c''4. bes'4 ( bes'4) g'4 ( a'4 g'4) \divisioMinima \forceBreak

 g'4 ( a'4) g'4 g'4 g'4 bes'4 ( bes'4) c''4 ( d''4 bes'4 g'4) c''4 ( bes'4 a'4 f'4 g'4.) bes'4 ( g'4 bes'4) ~ bes'4 ( g'4) a'4 ( f'4) f'4 \divisioMaxima
 g'4 f'4 ( g'4) g'4 \forceBreak
 g'4 ( g'4 f'4) g'4 ( g'4 f'4) g'4 ( d'4) \divisioMinima
 f'4 ( g'4) bes'4 ( bes'4 g'4 f'4) bes'4 ( bes'4 bes'4) c''4 ( bes'4 a'4) bes'4 ( g'4) \divisioMaxima
 g'4 g'4 ( bes'4 c''4) d''4 ( c''4) ~ c''4 ( bes'4 c''4) c''4. bes'4 ( bes'4 \forceBreak
) g'4 ( a'4 g'4) \divisioMinima
 g'4 g'4 bes'4 ( bes'4) c''4 ( d''4 bes'4 g'4) c''4 ( bes'4 a'4 f'4 g'4.) bes'4 ( g'4 bes'4) ~ bes'4 ( g'4) a'4 ( f'4) f'4 \divisioMaior
 bes'4 ( bes'4) c''4 ( bes'4) d''4 ( c''4 d''4) d''4 ( d''4 c''4 bes'4 a'4 f'4.) g'4 ( a'\prall bes'4 g'4) \finalis

}

altoMusic = {
d'2 ~ d'2 ~ d'2*3/2 ~ d'2 ~ d'4 ~ \divisioMinima
d'2 ees'2 f'2*3/2 d'2 ~ d'4 \divisioMinima
f'2*3/4 ~ f'2*5/2 ees'2 ~ ees'2*3/4 d'2*3/2 ~ d'2 ~ d'4 bes2 ~ bes2 \finalis
c'2 d'2*5/2 ees'2*4/2 d'2*3/4 ~ d'2 ~ d'2 ~ d'4 ~ \divisioMinima
d'2*5/2 g'2*6/2 f'2*15/4 ~ f'2*3/2 ~ f'2 r4 \divisioMaxima
r4 d'2*3/2 ~ d'2*3/2 c'2*3/2 d'2 \divisioMinima
c'2 d'2*4/2 ~ d'2*3/2 c'2*3/2 d'2 \divisioMaxima
r4 f'2*4/2 ~ f'2*4/2 d'2*3/4 ~ d'2 ~ d'2*3/2 ~ \divisioMinima
d'2 g'2 ~ g'2*4/2 f'2*15/4 d'2*3/2 f'2 c'4 \divisioMaior
g'2*7/2 f'2*4/2 ~ f'2*5/4 d'2 ~ d'2 \finalis
}

tenorMusic = {
bes2 ~ bes2 ~ bes2*3/2 c'2 bes4 ~ \divisioMinima
bes2 ~ bes2 ~ bes2*3/2 c'2 bes4 ~ \divisioMinima
bes2*3/4 a2*5/2 g2 ~ g2*3/4 ~ g2*3/2 ~ g2 f4 ees2 d2 \finalis
a2 bes2*5/2 a2*4/2 bes2*3/4 c'2 ~ c'2 bes4 ~ \divisioMinima
bes2*5/2 ~ bes2*6/2 ~ bes2*15/4 d'2*3/2 c'2 a4 \divisioMaxima
bes4 ~ bes2*3/2 ~ bes2*3/2 a2*3/2 bes2 \divisioMinima
a2 g2*4/2 ~ g2*3/2 ~ g2*3/2 ~ g4 bes4 \divisioMaxima
g4 bes2*4/2 a2*4/2 ~ a2*3/4 c'2 bes2*3/2 ~ \divisioMinima
bes2 d'2 c'2*4/2 ~ c'2*15/4 bes2*3/2 c'2 a4 \divisioMaior
bes2*7/2 ~ bes2*4/2 c'2*5/4 ~ c'2 bes2 \finalis
}

bassMusic = {
r2 a2 g2*3/2 ~ g2 ~ g4 \divisioMinima
bes,2 c2 d2*3/2 g2 ~ g4 \divisioMinima
d2*3/4 ~ d2*5/2 ~ d2 c2*3/4 bes,2*3/2 g,2*3/2 ~ g,2 ~ g,2*4/2 g2*5/2 ~ g2*4/2 ~ g2*3/4 ~ g2 ~ g2 ~ g4 \divisioMinima
f2*5/2 ees2*6/2 d2*15/4 ~ d2*3/2 f2 ~ f4 \divisioMaxima
r4 a2*3/2 g2*3/2 ~ g2*3/2 ~ g2 \divisioMinima
bes2 g2*4/2 f2*3/2 ees2*3/2 g4 ~ g4 \divisioMaxima
r4 d2*4/2 ~ d2*4/2 g2*3/4 ~ g2 ~ g2*3/2 ~ \divisioMinima
g2 f2 ees2*4/2 d2*15/4 g2*3/2 f2 ~ f4 \divisioMaior
ees2*7/2 d2*4/2 ~ d2*5/4 g2 ~ g2 \finalis
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
