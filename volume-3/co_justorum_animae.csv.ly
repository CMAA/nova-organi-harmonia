\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.189
%(volume.page)

global = {
 \key d \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Justorum animae" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Justorum animae"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Justorum animae" }
    \line {}
  }
}

chantText = \lyricmode {
Ju -- stó -- rum á -- ni -- mæ 
\set stanza = " * " in ma -- nu De -- i sunt, 
et non tan -- get il -- los tor -- mén -- _ tum ma -- lí -- ti -- æ: 
vi -- si sunt ó -- cu -- lis in -- si -- pi -- én -- ti -- um mo -- ri, 
il -- li au -- tem sunt in pa -- ce. }

chantMusic = {
\tieDown   f'4 a'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 a'4 g'4 \divisioMinima
 f'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 bes'4 ( g'4) a'4 g'4 f'4 \divisioMaior
 g'4 g'4 a'4 g'4 f'4 ( g'4) f'4 \divisioMinima
 f'4 f'4 ( g'4) bes'4 ( a'4 bes'4) g'4 ( f'4) ees'4 ( f'4) f'4 f'4 ( g'4 a'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMaxima
 f'4 ( c''4 d''4) c''4 c''4 ( bes'4 c''4 c''4) a'4 bes'4 bes'4 ( \once \tweak #'font-size #-4 f' ) g'4 bes'4 a'4 ( \once \tweak #'font-size #-4 f' ) g'4 bes'4 a'4 ( c''4 bes'4 bes'4) bes'4 ( a'4) \divisioMaior
 bes'4 ( bes'4 \once \tweak #'font-size #-4 a' ) g'4 ( f'4) g'4 f'4 ( \once \tweak #'font-size #-4 ees' ) f'4 ( g'4) f'4 d'4 ( f'4 ees'4 ees'4) ees'4 ( d'4) \finalis

}

altoMusic = {
f'4 ~ f'4 d'2 ~ d'2 ~ d'4 ~ \divisioMinima
d'2*3/2 ~ d'2 ~ d'2 ~ d'4 ~ \divisioMaior
d'2 ~ d'2 ~ d'2*3/2 ~ \divisioMinima
d'4 ~ d'2 ~ d'2*5/2 ees'2 d'4 c'2*6/2 ~ c'2 \divisioMaxima
f'2*4/2 ~ f'2*3/2 ~ f'2*3/2 ~ f'2*4/2 ~ f'2*4/2 ~ f'2*4/2 ~ f'2 \divisioMaior
d'2*3/2 ~ d'2*3/2 ~ d'2 c'2*3/2 bes2*4/2 ~ bes2 \finalis
}

tenorMusic = {
r4 c'4 ~ c'2 ~ c'2 bes4 \divisioMinima
a2 g4 bes2 d'2 c'4 ~ \divisioMaior
c'2 bes2 a2*3/2 ~ \divisioMinima
a4 g2 f2*5/2 bes2 ~ bes4 ~ bes2*6/2 a2 \divisioMaxima
bes2*4/2 a2*3/2 g2*3/2 f2*4/2 bes2*4/2 c'2*4/2 d'2 \divisioMaior
bes2*3/2 ~ bes2 ~ bes4 a2 g2*3/2 ~ g2*4/2 f2 \finalis
}

bassMusic = {
f4 ~ f4 ~ f2 g2 ~ g4 ~ \divisioMinima
g2 ~ g4 ~ g2 d2 ~ d4 ~ \divisioMaior
d2 ~ d2 ~ d2*3/2 ~ \divisioMinima
d4 ~ d2 ~ d2*5/2 c2 ~ c4 f2*6/2 ~ f2 \divisioMaxima
d2*4/2 ~ d2*3/2 ~ d2*3/2 ~ d2*4/2 ~ d2*4/2 ~ d2*4/2 ~ d2 \divisioMaior
g,2*3/2 a,2 bes,4 ~ bes,2 ~ bes,2*3/2 ~ bes,2*4/2 ~ bes,2 \finalis
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
