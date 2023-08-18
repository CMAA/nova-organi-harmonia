\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.16
%(volume.page)

global = {
 \key g \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Intonuit de caelo" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Intonuit de caelo"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Intonuit de caelo" }
    \line {}
  }
}

chantText = \lyricmode {
In -- tó -- nu -- it 
\set stanza = " * " de cœ -- _ _ lo _ 
Dó -- _ _ _ _ _ mi -- nus, 
et Al -- tís -- _ si -- mus 
de -- _ dit vo -- _ _ _ _ cem su -- am: 
et ap -- pa -- _ ru -- é -- _ runt fon -- tes a -- quá -- rum, 
al -- le -- _ _ _ _ _ _ _ lú -- ia. }

chantMusic = {
\tieDown   f'4 f'4 ( aes'4) aes'4 ( bes'\prall c''4 bes'4 c''4) c''4 ( bes'4) \divisioMinima
 bes'4  bes'4 ( des''4 c''4) des''4 ( bes'4) aes'4 ( g'4 f'4) aes'4 ( aes'4) bes'4 ( c''4 bes'4) \divisioMaior
  bes'4 ( des''4 c''4 bes'4) ~ bes'4 ( aes'4 \forceBreak
) bes'4 ( g'4.) c''4 ( bes'4) ~ bes'4 ( aes'4) bes'4 ( c''4 bes'4) g'4 ( bes'4 aes'4 aes'4) aes'4 ( g'4) \divisioMaxima
 c''4 c''4  bes'4 ( des''4 bes'4) ~ bes'4 ( c''4) aes'4 ( aes'4 g'4 aes'4) aes'4 ( g'4) \divisioMaior \forceBreak

 aes'4 ( aes'4) ~ aes'4 ( aes'4) aes'4 ( \once \tweak #'font-size #-4 f' ) aes'4 ( aes'4) bes'4 ( f'4) aes'4 ( aes'4) bes'4 ( g'4) aes'4 ( g'4 f'4 g'4) f'4 f'4 ( g'4 aes'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMaxima
 aes'4 bes'4 ( c''4 \forceBreak
)  c''4 ( ees''4 c''4) des''4 ( ees''4) bes'4 bes'4 ( des''4 c''4) des''4 ( bes'4) aes'4 ( aes'4 g'4) \divisioMinima
 bes'4 bes'4 ( c''4 bes'4) aes'4 bes'4 ( c''4 aes'4 aes'4) g'4 ( f'4) \divisioMaior \forceBreak

 aes'4 g'4 ( aes'4 c''4 bes'4 aes'4) ~ aes'4 ( g'4 bes'\prall c''4 bes'4 c''4) aes'4 ( bes'\prall c''4 bes'4) c''4 ( aes'4) bes'4 ( g'4) \divisioMinima
 c''4 ( bes'4) ~ bes'4 ( aes'4) bes'4 ( c''4 bes'4) g'4 ( bes'4 aes'4 aes'4) aes'4 ( g'4) \finalis

}

altoMusic = {
r4 c'2 ees'2*5/2 ~ ees'2 ~ \divisioMinima
ees'4 des'2*3/2 ~ des'2 c'2*3/2 ~ c'2 ees'2*3/2 f'2*3/2 ~ f'2*3/2 ees'2*7/4 ~ ees'2*3/2 ~ ees'2*3/2 ~ ees'2*4/2 ~ ees'2 ~ \divisioMaxima
ees'2 f'2 ~ f'2*3/2 ees'2*4/2 ~ ees'2 \divisioMaior
c'2 des'2 c'2 f'2*3/2 ~ f'4 ees'2 ~ ees'2 ~ ees'2*5/2 c'2*6/2 ~ c'2 \divisioMaxima
ees'2*3/2 f'2*6/2 ~ f'2*5/2 ees'2*4/2 ~ ees'2*4/2 ~ ees'2*4/2 c'2 ~ \divisioMaior
c'4 ees'2*4/2 ~ ees'2*7/2 ~ ees'2*4/2 ~ ees'2 ~ ees'2 ~ \divisioMinima
ees'4 f'2*3/2 ~ f'2*3/2 ees'2*4/2 ~ ees'2 \finalis
}

tenorMusic = {
r4 aes2 ~ aes2*5/2 g2 ~ \divisioMinima
g4 f2*3/2 g2 aes2*3/2 f2 g2*3/2 aes2*3/2 bes2*3/2 ~ bes2*7/4 aes2*3/2 g2*3/2 bes2*4/2 c'2 \divisioMaxima
aes2 ~ aes2 bes2*3/2 ~ bes2*4/2 c'2 \divisioMaior
aes2 ~ aes2 ~ aes2 ~ aes2*4/2 ~ aes2 ~ aes2 c'2*5/2 bes2*6/2 aes2 ~ \divisioMaxima
aes2*3/2 ~ aes2*6/2 bes2*5/2 ~ bes2*4/2 g2*4/2 aes2*4/2 bes4 aes4 ~ \divisioMaior
aes4 bes2*4/2 ~ bes2*7/2 aes2*4/2 f2 g2 ~ \divisioMinima
g4 ~ g2*3/2 aes2*3/2 bes2*4/2 c'2 \finalis
}

bassMusic = {
f4 ~ f2 c2*5/2 ees2 ~ \divisioMinima
ees4 bes,2*3/2 ~ bes,2 f2*3/2 ~ f2 ees2*3/2 des2*3/2 ~ des2*3/2 c2*7/4 ~ c2*3/2 ~ c2*3/2 ~ c2*4/2 ~ c2 \divisioMaxima
r2 des2 ~ des2*3/2 c2*4/2 ~ c2 \divisioMaior
f2 ~ f2 ~ f2 des2*4/2 ~ des2 c2 ~ c2*5/2 f2*6/2 ~ f2 \divisioMaxima
c2*3/2 des2*6/2 d2*5/2 ees2*4/2 ~ ees2*4/2 c2*4/2 f2 ~ \divisioMaior
f4 ees2*4/2 c2*7/2 ~ c2*4/2 ees2 ~ ees2 ~ \divisioMinima
ees4 des2*3/2 d2*3/2 c2*4/2 ~ c2 \finalis
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
        "IV"
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
