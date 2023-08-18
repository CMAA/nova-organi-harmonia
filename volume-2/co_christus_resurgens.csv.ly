\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.21
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Christus resurgens" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Christus resurgens"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Christus resurgens" }
    \line {}
  }
}

chantText = \lyricmode {
Chri -- stus 
\set stanza = " * " re -- súr -- gens ex mór -- tu -- is, jam non mó -- _ ri -- tur, al -- le -- lú -- ia: 
mors il -- li _ ul -- tra non do -- mi -- ná -- bi -- tur, 
al -- le -- lú -- ia, al -- le -- lú -- _ ia. }

chantMusic = {
\tieDown   f'4 ( bes'4) a'4 ( a'4 bes'4) \divisioMinima
 bes'4 ( g'4) bes'4 ( \once \tweak #'font-size #-4 c'' ) a'4 g'4 a'4 ( a'4 bes'4) g'4 ( f'4) f'4 \divisioMinima
 a'4 a'4 a'4 ( g'4) a'4 ( bes'4) f'4 d'4 \divisioMinima \forceBreak

 g'4 g'4 f'4 ( g'4 f'4 \once \tweak #'font-size #-4 d' ) d'4 \divisioMaxima
 g'4 f'4 ( g'4) g'4 ( f'4) ~ f'4 ( d'4) f'4 ( \once \tweak #'font-size #-4 a' ) g'4 bes'4 ( bes'4 \once \tweak #'font-size #-4 g' ) bes'4 ( c''4 d''4) c''4 ( d''4) a'4 \forceBreak
 a'4 ( c''4 bes'4 bes'4) bes'4 ( a'4) \divisioMaior
 a'4 ( \once \tweak #'font-size #-4 d'' ) d''4 d''4 ( c''4 d''4) a'4 \divisioMinima
 bes'4 g'4 ( bes'4 a'4 g'4) a'4 ( g'4) ~ g'4 ( f'4 g'4) g'4 ( f'4) \finalis

}

altoMusic = {
d'2 ees'2 d'4 ~ \divisioMinima
d'2 ~ d'2*4/2 f'2*3/2 r2 f'4 ~ \divisioMinima
f'2 d'2 ~ d'2 ~ d'2 ~ \divisioMinima
d'2 ~ d'2 ~ d'2 ~ d'4 ~ \divisioMaxima
d'4 ~ d'2 ~ d'4 ~ d'2 ~ d'4 f'2*3/2 ~ f'2*3/2 ~ f'2*3/2 ~ f'2*3/2 ~ f'2*4/2 ~ f'2 ~ \divisioMaior
f'2*3/2 ees'2*3/2 d'4 ~ \divisioMinima
d'4 ~ d'2*4/2 f'4 c'2*4/2 ~ c'2 \finalis
}

tenorMusic = {
r2 c'2 bes4 ~ \divisioMinima
bes2 ~ bes2*4/2 c'2*3/2 bes2 a4 \divisioMinima
c'2 ~ c'2 bes2 a2 \divisioMinima
bes2 a2 g2 f4 \divisioMaxima
bes4 a2 bes4 a2*3/2 c'2*3/2 bes2*3/2 ~ bes2*3/2 a2*3/2 c'2*4/2 d'2 \divisioMaior
a2*3/2 g2*3/2 f4 \divisioMinima
r4 bes2*4/2 c'4 bes2*4/2 a2 \finalis
}

bassMusic = {
bes2 ~ bes2 ~ bes4 \divisioMinima
a2 g2*4/2 f2*3/2 ~ f2 ~ f4 ~ \divisioMinima
f2 g2 ~ g2 d2 \divisioMinima
bes,2 ~ bes,2 ~ bes,2 ~ bes,4 \divisioMaxima
g4 ~ g2 ~ g4 d2*3/2 ~ d2*3/2 ~ d2*3/2 ~ d2*3/2 ~ d2*3/2 ~ d2*4/2 ~ d2 ~ \divisioMaior
d2*3/2 ~ d2*3/2 ~ d4 \divisioMinima
g4 ~ g2*4/2 f4 ~ f2*4/2 ~ f2 \finalis
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
