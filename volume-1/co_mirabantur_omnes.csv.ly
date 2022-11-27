\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.130
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Mirabantur omnes" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Mirabantur omnes"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Mirabantur omnes" }
    \line {}
  }
}

chantText = \lyricmode {
Mi -- ra -- bán -- _ tur o -- _ mnes 
\set stanza = " * " 
de _ _ his quæ pro -- ce -- dé -- bant 
de o -- _ re De -- _ _ i. }

chantMusic = {
\tieDown   f'4 ( g'4) f'4 ( g'4 a'\prall bes'4) bes'4 ( bes'4) ~ bes'4 ( a'4 g'4) bes'4 ( g'4 a'\prall bes'4 a'4 g'4) f'4 ( g'4) a'4 ( g'4 a'4) g'4 ( f'4) \divisioMaior
 f'4 ( bes'4 a'4) bes'4 ( c''4 bes'4 \forceBreak
) c''4 ( d''4) c''4 f'4 ( g'4) f'4 ( g'4 f'4 ees'4) g'4 bes'4 ( c''4) bes'4 ( c''4 bes'4) \divisioMaior
 bes'4 ( c''4) c''4 ( bes'4) ~ bes'4 ( a'4 g'4) bes'4 g'4 ( bes'4 f'4) ~ f'4 ( ees'4.) f'4 ( g'4 a'4) g'4 ( f'4) \finalis

}

altoMusic = {
d'2 ~ d'2*4/2 ~ d'2 ees'2*3/2 f'2*6/2 c'2*5/2 ~ c'2 \divisioMaior
f'2*6/2 ~ f'2*3/2 ~ f'2 ~ f'4 r2*3/2 g'4 ~ g'2 f'2*3/2 \divisioMaior
g'2*3/2 ees'2*5/2 d'2 r2*7/4 d'2*3/2 c'2 \finalis
}

tenorMusic = {
bes2 ~ bes2*4/2 ~ bes2 ~ bes2*3/2 ~ bes2*6/2 ~ bes2*5/2 a2 \divisioMaior
bes2*3/2 ~ bes2*3/2 ~ bes2*3/2 a2 bes2*5/2 ~ bes2 ~ bes2*3/2 \divisioMaior
f2 g4 ~ g2*5/2 bes2 ~ bes2*7/4 ~ bes2*3/2 ~ bes4 a4 \finalis
}

bassMusic = {
bes2 a2*4/2 g2 c2*3/2 d2*6/2 f2*5/2 ~ f2 \divisioMaior
d2*3/2 g2*3/2 f2*3/2 ~ f2 g2*5/2 ees2 d2*3/2 ~ \divisioMaior
d2 ~ d4 c2*5/2 bes,2 c2*7/4 ees2*3/2 f2 \finalis
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
