\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.110
%(volume.page)

global = {
 \key g \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Benedicimus Deum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Benedicimus Deum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Benedicimus Deum" }
    \line {}
  }
}

chantText = \lyricmode {
Be -- ne -- dí -- ci -- mus 
\set stanza = " * " De -- um _ _ cœ -- li, 
et co -- ram ó -- mni -- bus vi -- vén -- ti -- bus con -- fi -- té -- bi -- mur e -- i: 
qui -- a fe -- cit no -- bís -- _ cum _ 
mi -- se -- ri -- cór -- di -- am _ _ su -- am. }

chantMusic = {
\tieDown   c''4 bes'4 ( aes'4) bes'4 ( c''4) bes'4 g'4 \divisioMinima
 bes'4 ( g'4 aes'4) g'4 ( f'4) aes'4 ( bes'4 c''4 bes'4 aes'4) bes'4 ( c''4 bes'4) g'4 ( bes'4 aes'4 aes'4) aes'4 ( g'4) \divisioMaxima \forceBreak

 c''4 bes'4 c''4 bes'4 ( aes'4) bes'4 ( c''4) c''4 c''4 bes'4 ( c''4) bes'4 ( c''4) bes'4 ( g'4) \divisioMinima
 g'4 bes'4 ( g'4 aes'4) f'4 ( bes'4 aes'4) f'4 ( aes'4) aes'4 ( bes'4 aes'4 f'4 \forceBreak
) aes'4 ( bes'\prall c''4 bes'4 c''4) c''4 ( bes'4) \divisioMaxima
 bes'4 ( g'4 aes'4) g'4 ( f'4) aes'4 ( bes'4 g'4 aes'4) g'4 ( f'4)  c''4 ees''4 ( c''4) ~ c''4 ( bes'4 des''4) c''4 ( bes'4) c''4 ( des''4 c''4) \divisioMaior \forceBreak

 c''4 bes'4 ( c''4 aes'4 bes'4) aes'4 ( g'4) g'4 ( aes'4 bes'4) bes'4 c''4 ( bes'4) ~ bes'4 ( aes'4) bes'4 ( c''4 bes'4) g'4 ( bes'4 aes'4 aes'4) aes'4 ( g'4) \finalis

}

altoMusic = {
r4 ees'2 d'2*4/2 \divisioMinima
f'2*4/2 ~ f'4 ees'2 ~ ees'2*3/2 f'2*3/2 ees'2*4/2 ~ ees'2 ~ \divisioMaxima
ees'4 ~ ees'2 ~ ees'2 ~ ees'2 ~ ees'2 f'2 ~ f'2 d'2 \divisioMinima
ees'4 f'2*3/2 c'2*3/2 ~ c'2 f'2*3/2 ~ f'4 ees'2 ~ ees'2*3/2 ~ ees'2 ~ \divisioMaxima
ees'2*3/2 ~ ees'2 c'2*4/2 ~ c'2 f'2 ~ f'2*4/2 ~ f'2 ees'2*3/2 ~ \divisioMaior
ees'4 ~ ees'2 ~ ees'2 ~ ees'2 ~ ees'2 ~ ees'2*3/2 ~ ees'2*3/2 ~ ees'2*3/2 c'2*4/2 ees'2 \finalis
}

tenorMusic = {
r2*3/2 g2*4/2 \divisioMinima
c'2*5/2 ~ c'2 aes2*3/2 f2*3/2 bes2 c'2 bes2 \divisioMaxima
aes4 g2 f2 g2 ~ g2 f2 bes2 ~ bes2 ~ \divisioMinima
bes4 c'2*3/2 aes2*3/2 ~ aes2 ~ aes2*4/2 ~ aes2 ~ aes2*3/2 g2 \divisioMaxima
bes2*3/2 ~ bes2 ~ bes2*4/2 aes2 ~ aes2 ~ aes2*4/2 ~ aes2 ~ aes2*3/2 ~ \divisioMaior
aes4 g2 f2 ees2 bes2 g2*3/2 ees2*3/2 g2*3/2 aes2*4/2 c'2 \finalis
}

bassMusic = {
c'4 ~ c'2*6/2 \divisioMinima
f2*5/2 c2 ~ c2*3/2 d2*3/2 ees2*4/2 ~ ees2 \divisioMaxima
r2*5/2 ees2 c2 d2 ~ d2 g2 ~ \divisioMinima
g4 f2*3/2 ~ f2*3/2 ees2 des2*4/2 c2 aes,2*3/2 ees2 \divisioMaxima
f2*3/2 c2 f2*4/2 ~ f2 ees2 des2*4/2 aes,2 ~ aes,2*3/2 ~ \divisioMaior
aes,4 ees2 ~ ees2 ~ ees2 ~ ees2 d2*3/2 c2*3/2 ~ c2*3/2 f2*4/2 c2 \finalis
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
