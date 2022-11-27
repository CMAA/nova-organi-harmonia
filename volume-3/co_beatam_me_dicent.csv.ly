\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.323
%(volume.page)

global = {
 \key f \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Beatam me dicent" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Beatam me dicent"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Beatam me dicent" }
    \line {}
  }
}

chantText = \lyricmode {
Be -- á -- tam me di -- _ cent 
\set stanza = " * " o -- _ mnes ge -- ne -- ra -- ti -- ó -- nes, 
qui -- a fe -- cit mi -- hi ma -- gna _ qui _ po -- tens est. }

chantMusic = {
\tieDown   d'4 f'4 ( f'4 g'4) f'4 f'4 ( a'4) a'4 ( g'4) ~ g'4 ( f'4 g'4) g'4 f'4 \divisioMinima
 f'4 \once \tweak #'font-size #-4 f'  e'4 ( g'4 f'4 d'4) d'4 ( c'4) f'4 f'4 ( e'4) g'4  g'4 ( bes'4 g'4 a'\prall bes'4) f'4 ( g'4 f'4) f'4 \divisioMaxima
 f'4 f'4  f'4 ( g'\prall a'4 bes'4) a'4 a'4 ( c''4 c''4) a'4 ( c''4) g'4 ( \once \tweak #'font-size #-4 f' ) f'4 ( g'4 f'4 f'4) d'4 ( e'4 d'4) \divisioMinima
 f'4 ( e'4) g'4 ( g'4 a'4) f'4 f'4 ( g'4 a'4 g'4 f'4 g'4) g'4 ( f'4) \finalis

}

altoMusic = {
d'4 ~ d'2*4/2 ~ d'2*3/2 ~ d'2*4/2 c'2 \divisioMinima
d'2 a2*4/2 ~ a2*3/2 c'2*3/2 d'2 ~ d'2*3/2 c'2*3/2 ~ c'4 ~ \divisioMaxima
c'2 d'2*5/2 c'2*3/2 ~ c'2 ~ c'2 a2*4/2 ~ a2*3/2 ~ \divisioMinima
a2 d'2*3/2 ~ d'4 c'2*6/2 ~ c'2 \finalis
}

tenorMusic = {
r2*5/2 c'2*3/2 bes2*4/2 a2 ~ \divisioMinima
a2 g2*4/2 f2*3/2 g2*3/2 ~ g2 bes2*3/2 b2*3/2 a4 \divisioMaxima
f2 ~ f2*5/2 ~ f2*3/2 ~ f2 e2 d2*4/2 g2 f4 ~ \divisioMinima
f2 ~ f2*3/2 bes4 ~ bes2*6/2 a2 \finalis
}

bassMusic = {
r2*14/2 \divisioMinima
d2 ~ d2*4/2 ~ d2*3/2 c2*3/2 bes,2 ~ bes,2*3/2 f2*3/2 ~ f4 \divisioMaxima
a,2 bes,2*5/2 f,2*3/2 a,2 ~ a,2 d2*4/2 ~ d2 ~ d4 \divisioMinima
c2 bes,2*3/2 ~ bes,4 f2*6/2 <f f,>2 \finalis
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
        "6"
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
