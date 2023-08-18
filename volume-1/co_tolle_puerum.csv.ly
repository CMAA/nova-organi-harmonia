\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.81
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Tolle puerum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Tolle puerum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Tolle puerum" }
    \line {}
  }
}

chantText = \lyricmode {
Tol -- le 
\set stanza = " * " pú -- e -- rum et ma -- trem e -- jus, 
et va -- de in ter -- ram _ Is -- ra -- el: 
de -- fún -- cti sunt e -- nim, _ 
qui quæ -- ré -- _ bant á -- ni -- mam _ pú -- e -- ri. }

chantMusic = {
\tieDown   f'4 ( g'4) f'4  g'4 ( bes'4) bes'4 ( a'4) bes'4 ( c''4) \divisioMinima
 c''4 c''4 ( c''4 bes'4 a'4) g'4 a'4 ( bes'4) a'4 \divisioMaior
 c''4 bes'4 ( bes'4 a'4) f'4 \forceBreak
 g'4 ( a'\prall bes'4) bes'4 g'4 ( bes'4) c''4 ( a'4 g'4 a'4) f'4 f'4 ( g'4 f'4) f'4 \divisioMaxima
 f'4 g'4 ( bes'4) a'4 bes'4 c''4 ( d''4 c''4 d''4) bes'4 ( c''4) d''4 ( c''4) \divisioMaior \forceBreak

 bes'4 bes'4 bes'4 ( d''4) ees''4 ( d''4 c''4) d''4 ( c''4) \divisioMinima
 c''4 bes'4 a'4 ( g'4) bes'4 ( a'4 g'4 a'4) f'4 f'4 ( g'4 f'4) f'4 \finalis

}

altoMusic = {
d'2*3/2 ~ d'2 f'2 ~ f'2 ~ \divisioMinima
f'4 d'2*5/2 ~ d'2*3/2 ~ \divisioMaior
d'4 ~ d'2*4/2 ~ d'2*3/2 ~ d'4 ees'2 f'2*4/2 ~ f'4 c'2*3/2 ~ c'4 \divisioMaxima
d'4 ~ d'2*4/2 f'2*6/2 ~ f'2 \divisioMaior
d'2 g'2 ~ g'2*3/2 a'2 \divisioMinima
d'2*4/2 ees'2*4/2 ~ ees'4 c'2*3/2 ~ c'4 \finalis
}

tenorMusic = {
bes2*3/2 ~ bes2 c'2 g2 \divisioMinima
a4 g2*5/2 f2*3/2 ~ \divisioMaior
f4 ~ f2*4/2 ~ f2*3/2 bes4 ~ bes2 a2*4/2 bes4 ~ bes2*3/2 a4 \divisioMaxima
r4 bes2*4/2 ~ bes2*6/2 a2 \divisioMaior
g2 ~ g2 c'2*3/2 ~ c'2 \divisioMinima
g2*4/2 ~ g2*4/2 bes4 ~ bes2*3/2 a4 \finalis
}

bassMusic = {
r2*3/2 g2 f2 ~ f2 ~ \divisioMinima
f4 g2*5/2 d2*3/2 ~ \divisioMaior
d4 c2*4/2 bes,2*3/2 ~ bes,4 c2 d2*4/2 ~ d4 f2*3/2 ~ f4 \divisioMaxima
bes,4 ~ bes,2*4/2 d2*6/2 f2 \divisioMaior
r2 ees2 ~ ees2*3/2 f2 \divisioMinima
r2*4/2 c2*4/2 ~ c4 f2*3/2 ~ f4 \finalis
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
        "VII"
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
