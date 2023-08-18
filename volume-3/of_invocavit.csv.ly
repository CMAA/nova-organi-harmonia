\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.127
%(volume.page)

global = {
 \key f \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Invocavit" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Invocavit"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Invocavit" }
    \line {}
  }
}

chantText = \lyricmode {
In -- vo -- cá -- vit 
\set stanza = " * " Al -- tís -- si -- mum po -- tén -- _ _ tem 
in op -- pu -- gnán -- _ do in -- i -- mí -- _ cos ún -- di -- que, _ _ 
et au -- dí -- vit il -- _ lum 
ma -- _ _ _ gnus et san -- _ ctus _ De -- us. }

chantMusic = {
\tieDown   c'4 d'4  d'4 ( a'4 bes'4) a'4 \divisioMinima
 a'4  a'4 ( bes'4) a'4 a'4  a'4 a'4 c''4 ( c''4 a'4) bes'4 ( c''4) g'4 ( a'4) \divisioMaior
 f'4 ( a'4) a'4 g'4 g'4 ( a'4) c''4 ( a'4 g'4 a'4) a'4 g'4 a'4 c''4 ( a'4.) d''4 ( c''4 b'4 g'4) g'4 ( a'4) \divisioMinima
 a'4 ( c''4 a'4) a'4  a'4 c''4 ( c''4 a'4) bes'4 ( g'4 f'4 g'4) \divisioMaxima
 f'4 g'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( g'4 a'4) a'4 ( c''4 b'4 a'4) g'4 ( b'4 a'4) ~ a'4 ( g'4) g'4 \divisioMaior
 f'4 ( g'\prall a'4 g'4 a'4.) g'4 ( a'4) c''4 ( c''4) ~ c''4 ( d''4 c''4 a'4) a'4 \divisioMinima
 a'4 ( \once \tweak #'font-size #-4 b' ) g'4 ( a'4) c''4. d''4 ( c''4 d''4) b'4 ( c''4) d''4 ( a'4) g'4 ( a'4 g'4 f'4) f'4 \finalis

}

altoMusic = {
r2 d'2*3/2 ~ d'4 ~ \divisioMinima
d'4 ~ d'4 ~ d'2*5/2 c'2*5/2 ~ c'2 ~ \divisioMaior
c'2 ~ c'2 ~ c'2 ~ c'2*5/2 ~ c'2 e'2*5/4 d'2*4/2 ~ d'2 \divisioMinima
c'2*3/2 ~ c'2 f'2*3/2 d'2*4/2 \divisioMaxima
r4 c'2 ~ c'2*3/2 ~ c'2*4/2 d'2 ~ d'2*3/2 c'4 ~ \divisioMaior
c'2*4/2 ~ c'2*7/4 ~ c'2 ~ c'2*4/2 e'4 ~ \divisioMinima
e'2 d'2 e'2*3/4 d'2*3/2 g'2 f'2 c'2*4/2 ~ c'4 \finalis
}

tenorMusic = {
r2*6/2 \divisioMinima
f4 e4 f2*5/2 ~ f2*5/2 e2 \divisioMaior
f2 e2 ~ e2 ~ e2*5/2 ~ e2 g2*5/4 ~ g2*4/2 d2 \divisioMinima
e2*3/2 f2 ~ f2*3/2 g2*4/2 \divisioMaxima
r4 e2 ~ e2*3/2 ~ e2*4/2 g2 d2*3/2 e4 \divisioMaior
d2*4/2 e2*7/4 ~ e2 ~ e2*4/2 ~ e4 \divisioMinima
g2 ~ g2 ~ g2*3/4 ~ g2*3/2 ~ g2 a2 c'2*4/2 a4 \finalis
}

bassMusic = {
r2*6/2 \divisioMinima
d4 ~ d4 ~ d2*5/2 a,2*5/2 ~ a,2 ~ \divisioMaior
a,2 c2 b,2 a,2*5/2 ~ a,2 ~ a,2*5/4 b,2*4/2 ~ b,2 \divisioMinima
c2*3/2 d2 ~ d2*3/2 bes,2*4/2 \divisioMaxima
r4 c2 b,2*3/2 a,2*4/2 b,2 ~ b,2*3/2 c4 ~ \divisioMaior
c2*4/2 ~ c2*7/4 b,2 a,2*4/2 c4 ~ \divisioMinima
c2 b,2 a,2*3/4 b,2*3/2 e2 d2 e2*4/2 f4 \finalis
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
        "VI"
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
