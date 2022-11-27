\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.149
%(volume.page)

global = {
 \key ees \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Dico vobis" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Dico vobis"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Dico vobis" }
    \line {}
  }
}

chantText = \lyricmode {
Di -- co vo -- bis, 
\set stanza = " * " gáu -- di -- um est An -- ge -- lis De -- i 
su -- per u -- no pec -- ca -- tó -- re pæ -- ni -- tén -- ti -- am _ a -- gén -- te. }

chantMusic = {
\tieDown   bes'4 g'4 bes'4 ( c''4) c''4 \divisioMinima
 c''4 ( d''4) c''4 bes'4 bes'4 bes'4 a'4 c''4 bes'4 ( c''4 g'4) g'4 \divisioMaior
 g'4 f'4 \forceBreak
 g'4 f'4 g'4 ees'4 f'4 ( g'4) g'4 \divisioMinima
 g'4 bes'4 g'4 f'4 g'4 ( a'\prall bes'4 a'4) bes'4 ( c''4 bes'4) g'4 ees'4 ( f'4 \once \tweak #'font-size #-4 ees' ) ees'4 \finalis

}

altoMusic = {
ees'2 f'2 ees'4 \divisioMinima
g'2*3/2 ~ g'2 ~ g'2*3/2 ees'2*3/2 d'4 \divisioMaior
ees'2 ~ ees'2 ~ ees'2 d'2 ~ d'4 ~ \divisioMinima
d'2 ~ d'2 ~ d'2 ~ d'2 ~ d'2 ~ d'2 bes2*3/2 ~ bes4 \finalis
}

tenorMusic = {
g2 ~ g2 ~ g4 \divisioMinima
c'2*3/2 ees'2 d'2*3/2 c'2*3/2 bes4 ~ \divisioMaior
bes2 g2 ~ g2 ~ g2 ~ g4 ~ \divisioMinima
g2 a2 bes2 g2 f2 bes2 aes2*3/2 g4 \finalis
}

bassMusic = {
ees2 d2 c4 \divisioMinima
ees2*3/2 c2 g2*3/2 ~ g2*3/2 ~ g4 \divisioMaior
ees2 d2 c2 ~ c2 bes,4 ~ \divisioMinima
bes,2 ~ bes,2 ~ bes,2 ~ bes,2 ~ bes,2 ~ bes,2 ees2*3/2 ~ ees4 \finalis
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
        "V"
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
