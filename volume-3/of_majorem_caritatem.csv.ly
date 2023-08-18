\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.436
%(volume.page)

global = {
 \key f \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Majorem caritatem" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Majorem caritatem"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Majorem caritatem" }
    \line {}
  }
}

chantText = \lyricmode {
Ma -- jó -- rem 
\set stanza = " * " ca -- ri -- tá -- _ _ _ _ _ _ _ tem 
ne -- mo ha -- bet, 
ut á -- ni -- mam su -- am _ po -- nat _ quis _ _ 
pro a -- mí -- _ _ _ cis _ su -- is. _ _ _ _ }

chantMusic = {
\tieDown   c'4 ees'4 ( g'4 f'4) f'4 \divisioMinima
 f'4 ees'4 ( f'4) f'4 aes'4 ( aes'4) ~ aes'4 ( f'4) aes'4 ( c''4 bes'4 aes'4) bes'4 ( aes'4) ~ aes'4 ( aes'4) ~ aes'4 ( f'4 ees'4) f'4 ( g'\prall aes'4 f'4) f'4 \divisioMaior
 f'4 ( aes'4 f'4 g'\prall aes'4) ees'4 ( f'4) f'4 ( g'\prall aes'4 bes'4 aes'4) f'4 ( aes'4 f'4 aes'4) \divisioMaxima
 ees'4 ( f'4) aes'4 ( bes'4) bes'4 bes'4 ( c''4) aes'4  aes'4 ( c''4 des''4 c''4) ~ c''4 ( bes'4) \divisioMinima
  aes'4 ( bes'4 c''\prall des''4 c''4) bes'4 ( c''4 bes'4) ~ bes'4 ( aes'4) aes'4 ( bes'\prall c''4 bes'4) aes'4 ( aes'4) f'4 ( g'4 f'4) \divisioMaior
 aes'4 ( g'4) g'4 ( bes'4 aes'4 aes'4) bes'4. aes'4 ( c''4 bes'4 aes'4) ~ aes'4 ( f'4) aes'4 ( bes'4 aes'4) aes'4. ~ aes'4 ( aes'4 aes'4) \divisioMinima
 f'4 f'4 aes'4 ( aes'4) ~ aes'4 ( f'4) aes'4 ( aes'4 aes'4) f'4 ( g'4 f'4) \finalis

}

altoMusic = {
c'4 ~ c'2*3/2 ~ c'4 ~ \divisioMinima
c'2*4/2 ~ c'2 des'2 ees'2*6/2 f'2*3/2 ~ f'4 r4 c'2*4/2 ~ c'4 \divisioMaior
des'2 c'2*5/2 ~ c'2*5/2 ~ c'2*4/2 ~ \divisioMaxima
c'2 des'2*3/2 ees'2*3/2 f'2*3/2 ees'2*3/2 ~ ees'2*7/2 ~ ees'2*3/2 ~ ees'2*4/2 ~ ees'2 c'2*3/2 ~ \divisioMaior
c'2 ees'2*4/2 f'2*3/4 ~ f'2*3/2 c'2*3/2 ~ c'2*3/2 des'2*3/4 c'2*3/2 ~ \divisioMinima
c'2 bes2 c'2 des'2*3/2 ~ des'2 c'4 \finalis
}

tenorMusic = {
r4 bes2*3/2 aes4 ~ \divisioMinima
aes4 g2*3/2 f2 aes2 ~ aes2*6/2 ~ aes2 bes2*3/2 ~ bes2*4/2 aes4 ~ \divisioMaior
aes2 ~ aes2*5/2 g2*5/2 aes2*4/2 ~ \divisioMaxima
aes2 ~ aes2*3/2 ~ aes2*3/2 ~ aes2*3/2 g2*3/2 aes2*7/2 g2*3/2 c'2*4/2 bes2 ~ bes2 aes4 ~ \divisioMaior
aes2 c'2*4/2 des'2*3/4 c'2*3/2 bes2*3/2 aes2*3/2 ~ aes2*3/4 ~ aes2*3/2 ~ \divisioMinima
aes2 ~ aes2 ~ aes2 ~ aes2*3/2 g2 aes4 \finalis
}

bassMusic = {
f4 ~ f2*3/2 ~ f4 ~ \divisioMinima
f4 ~ f2*3/2 ~ f2 bes,2 c2*6/2 des2 ~ des2*3/2 f2*4/2 ~ f4 ~ \divisioMaior
f2 ~ f2*5/2 ~ f2*5/2 ~ f2*4/2 \divisioMaxima
aes,2 bes,2*3/2 c2*3/2 des2*3/2 ees2*3/2 c2*7/2 ~ c2*3/2 ~ c2*4/2 ~ c2 f2 ~ f4 ~ \divisioMaior
f2 c'2*4/2 bes2*3/4 f2*3/2 ~ f2*3/2 ~ f2*3/2 ~ f2*3/4 ~ f2*3/2 ~ \divisioMinima
f2 des2 c2 bes,2*3/2 ~ bes,2 f4 \finalis
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
