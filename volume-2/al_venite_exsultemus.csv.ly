\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.203
%(volume.page)

global = {
 \key ees \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Venite exsultemus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Venite exsultemus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Venite exsultemus" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- ia, _ 
\set stanza = " * " 
al -- le -- lú -- ia. 
_ _ _ _ _ _ _ _ _ ℣. 
Ve -- ní -- _ te, 
ex -- sul -- té -- _ mus, _ _ Dó -- mi -- no: _ 
ju -- bi -- lé -- mus De -- _ _ _ _ o 
sa -- lu -- tá -- ri 
\set stanza = " * " no -- _ _ stro. _ _ _ 
_ _ _ _ _ _ _ _ _ _ _ _ 
_ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   ees'4 ees'4 aes'4 ( g'4 bes'4) bes'4 ( c''4 bes'4 aes'4) ~ aes'4 ( f'4) \divisioMaior
 ees'4 ees'4 aes'4 ( g'4 bes'4) bes'4 ( c''4 bes'4 aes'4 aes'4) f'4 \divisioMaior \forceBreak

 aes'4 ( bes'4 aes'4 aes'4) ~ aes'4 ( bes'4) aes'4 ( aes'4 aes'4) bes'4 ( c''4 aes'4) ~ aes'4 ( ees'4) \divisioMinima
 aes'4 ( f'4 aes'4.) g'4 ( aes'4 f'4 ees'4) f'4 ( g'4 f'4) ~ f'4 ( ees'4) \finalis \forceBreak

 ees'4 ees'4 ( aes'4 g'4) bes'4 ( c''4) bes'4 \divisioMaior
 bes'4 bes'4 ( \once \tweak #'font-size #-4 aes' ) bes'4 des''4 ( des''4 bes'4) bes'4 ( c''4 aes'4) bes'4 ( aes'4 g'4) aes'4 ( g'4) \divisioMinima
 aes'4 ( bes'4 g'4) aes'4 ( bes'4 aes'4 g'4 \forceBreak
) aes'4 ( bes'4 c''\prall des''4 c''4) ~ c''4 ( bes'4) \divisioMaior
 bes'4 bes'4 ( g'4) aes'4 ( bes'\prall c''4 bes'4 c''4) bes'4 \divisioMinima
 bes'4 des''4 ( des''4 bes'4) aes'4 ( c''4 bes'4 aes'4) ~ aes'4 ( c''4 bes'4 aes'4) ~ aes'4 ( g'4 f'4 ees'4 \forceBreak
) f'4 ( f'4 ees'4) \divisioMaior
 ees'4 ( f'4) ees'4 ees'4 ( f'4 g'\prall aes'4 g'4 aes'4) g'4 \divisioMinima
 aes'4 ( bes'4 aes'4) ~ aes'4 ( g'4) aes'4 ( bes'\prall c''4 bes'4 c''4) bes'4 des''4 ( des''4 bes'4) c''4 ( g'4) aes'4 ( bes'4) \divisioMaior \forceBreak

 f'4 ( g'\prall aes'4 bes'4) des''4 ( des''4 bes'4) c''4 ( g'4) aes'4 ( bes'4) \divisioMinima
 bes'4 des''4 ( des''4) ~ des''4 ( bes'4.) ees''4 ( f''4 des''4 bes'4) des''4 ( des''4 bes'4 aes'4) des''4 ( des''4 bes'4) \divisioMinima
 bes'4 des''4 ( des''4 aes'4 \forceBreak
) c''4 ( bes'4 aes'4) ~ aes'4 ( ees'4) \divisioMaior
 f'4 ( aes'4) ~ aes'4 ( g'4) aes'4 ( c''4 bes'4 aes'4 f'4) bes'4 ( aes'4) bes'4 ( aes'4) ~ aes'4 ( ees'4) \divisioMinima
 aes'4 ( aes'4) ~ aes'4 ( f'4 ees'4) f'4 ( g'4 f'4) ~ f'4 ( ees'4) \finalis

}

altoMusic = {
r4 ees'4 ~ ees'2*3/2 ~ ees'2*3/2 f'2 ~ f'4 \divisioMaior
r4 ees'4 ~ ees'2*3/2 ~ ees'2*3/2 c'2*3/2 \divisioMaior
ees'2*4/2 des'2 ees'2*3/2 f'2 ees'2 ~ ees'4 \divisioMinima
c'2*7/4 ees'2*3/2 ~ ees'4 des'2 bes2 ~ bes4 \finalis
ees'4 ~ ees'2*3/2 ~ ees'2 ~ ees'4 ~ \divisioMaior
ees'4 f'2 ~ f'4 ~ f'2*3/2 ~ f'2*3/2 ~ f'2*3/2 ees'2 ~ \divisioMinima
ees'2*3/2 ~ ees'2*4/2 f'2*4/2 ~ f'2*3/2 ~ \divisioMaior
f'4 ees'2 ~ ees'2*5/2 ~ ees'4 ~ \divisioMinima
ees'4 f'2*3/2 ~ f'2*3/2 ees'2*4/2 des'2*3/2 ~ des'2 bes2 ~ bes4 ~ \divisioMaior
bes2*3/2 c'2*3/2 ~ c'2*3/2 ees'4 ~ \divisioMinima
ees'2 ~ ees'2*3/2 ~ ees'2 f'2*4/2 ~ f'2*3/2 ees'2 ~ ees'2 \divisioMaior
f'2*4/2 aes'2*3/2 g'2 r2 \divisioMinima
r4 f'2 ~ f'2*5/4 ~ f'2 ~ f'2 ~ f'2*4/2 ~ f'2*3/2 ~ \divisioMinima
f'4 aes'2 ~ aes'4 f'2 ees'2*3/2 \divisioMaior
f'4 ~ f'2*3/2 ~ f'2*3/2 ~ f'2 ~ f'2*3/2 ees'2*3/2 ~ \divisioMinima
ees'2 des'2*3/2 ~ des'2 bes2 ~ bes4 \finalis
}

tenorMusic = {
r2 c'2*3/2 ~ c'2*3/2 ~ c'2 ~ c'4 ~ \divisioMaior
c'2 ~ c'2*3/2 g2*3/2 aes2*3/2 ~ \divisioMaior
aes2*4/2 ~ aes2 ~ aes2*3/2 ~ aes2 ~ aes2*3/2 ~ \divisioMinima
aes2*7/4 ~ aes2*4/2 ~ aes2 ~ aes2 g4 \finalis
r4 c'2*3/2 bes2 ~ bes4 ~ \divisioMaior
bes4 c'2 ees'4 des'2*3/2 c'2*3/2 ~ c'2*3/2 ~ c'2 ~ \divisioMinima
c'2*3/2 ~ c'2*4/2 ~ c'2*4/2 aes2*3/2 ~ \divisioMaior
aes4 g2 f2*5/2 g4 ~ \divisioMinima
g4 bes2*3/2 f2*3/2 ~ f2*4/2 ~ f2*3/2 aes2 ~ aes2 g4 \divisioMaior
bes2*3/2 aes2*3/2 ~ aes2*3/2 c'4 ~ \divisioMinima
c'2 bes2*3/2 aes2 ~ aes2*4/2 ~ aes2*3/2 g2 f4 g4 \divisioMaior
c'2*4/2 bes2*3/2 ees'2 ~ ees'2 ~ \divisioMinima
ees'4 des'2 bes2*5/4 c'2 des'2 ees'2*4/2 des'2*4/2 ~ des'2*3/2 ~ des'2 c'2*4/2 ~ c'2*3/2 ~ c'2*3/2 f'2 f2*3/2 aes2*3/2 \divisioMinima
f2 ~ f2*3/2 aes2 ~ aes2 g4 \finalis
}

bassMusic = {
r2*5/2 g2*3/2 f2 aes4 \divisioMaior
r2 c2*3/2 ~ c2*3/2 f2*3/2 \divisioMaior
c2*4/2 bes,2 c2*3/2 des2 c2*3/2 \divisioMinima
f2*7/4 c2*4/2 bes,2 ees2 ~ ees4 \finalis
r4 aes2*3/2 ~ aes2 g4 ~ \divisioMaior
g4 f2 ~ f4 bes2*3/2 f2*3/2 aes2*3/2 c'2 \divisioMinima
aes2*3/2 g2*4/2 f2*4/2 des2*3/2 ~ \divisioMaior
des4 ees2 ~ ees2*5/2 ~ ees4 ~ \divisioMinima
ees4 des2*3/2 ~ des2*3/2 c2*4/2 bes,2*3/2 ~ bes,2 ees2 ~ ees4 \divisioMaior
g2*3/2 ~ g2*3/2 f2*3/2 c4 ~ \divisioMinima
c2 ~ c2*3/2 ~ c2 des2*4/2 bes,2*3/2 ees2 ~ ees2 \divisioMaior
aes2*4/2 f2*3/2 ees2 f4 g4 ~ \divisioMinima
g4 bes2 ~ bes2*5/4 ~ bes2 ~ bes2 ~ bes2*4/2 ~ bes2*3/2 ~ \divisioMinima
bes4 f2*3/2 aes2 ~ aes2*3/2 ~ \divisioMaior
aes4 f2*3/2 ees2*3/2 ~ ees2 des2*3/2 c2*3/2 ~ \divisioMinima
c2 bes,2*3/2 ~ bes,2 ees2 ~ ees4 \finalis
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
        "VII."
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
