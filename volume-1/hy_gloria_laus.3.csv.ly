\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.305
%(volume.page)

global = {
 \key a \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page ""
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "" }
    \line {}
  }
}

chantText = \lyricmode {
2 Cœ -- tus in ex -- cél -- sis te lau -- dat cœ́ -- li -- cus o -- mnis, 
Et mor -- tá -- lis ho -- mo, et cun -- cta cre -- á -- ta si -- mul. }

chantMusic = {
\tieDown     a'4 g'4 a'4 a'4 ( b'\prall c''4) c''4 ( b'4) a'4 ( g'4) \divisioMinima
 g'4 ( a'4) c''4 c''4 ( d''4) c''4 ( b'4) a'4 g'4 a'4 a'4 \divisioMaxima \forceBreak

 a'4 a'4 g'4 a'4 ( b'\prall c''4) c''4 ( b'4) a'4 ( g'4) \divisioMinima
 g'4 ( a'4) c''4 c''4 ( d''4) c''4 c''4 ( b'4) a'4 g'4 ( a'4) a'4 \finalis

}

altoMusic = {
c'2*3/2 f'2*3/2 e'2 c'2 \divisioMinima
f'2 ~ f'4 g'2 d'2 ~ d'2 ~ d'4 c'4 \divisioMaxima
r2*3/2 f'2*3/2 g'2 r2 \divisioMinima
e'2 ~ e'4 ~ e'2*3/2 d'2*3/2 ~ d'2 c'4 \finalis
}

tenorMusic = {
f2*3/2 ~ f2*3/2 g2 e2 \divisioMinima
c'2 a4 g2 ~ g2 ~ g2 e2 \divisioMaxima
c'2 ~ c'4 ~ c'2*3/2 ~ c'2 b2 ~ \divisioMinima
b2 a4 g2*3/2 f2*3/2 e2 ~ e4 \finalis
}

bassMusic = {
r2*3/2 d2*3/2 c2 ~ c2 \divisioMinima
d2 ~ d4 e2 g2 b,2 a,2 \divisioMaxima
f2 e4 d2*3/2 e2 ~ e2 \divisioMinima
c2 ~ c4 e2*3/2 c2*3/2 b,2 a,4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        ""
        "0"
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
