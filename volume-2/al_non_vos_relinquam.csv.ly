\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.72
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Non vos relinquam" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Non vos relinquam"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Non vos relinquam" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ lú -- ia. 
\set stanza = " * " 
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ℣. 
Non vos _ re -- lín -- _ quam ór -- _ pha -- nos: 
va -- _ _ _ _ do, et vé -- ni -- o ad _ vos, 
et gau -- dé -- _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ bit 
\set stanza = " * " 
cor _ ve -- strum. 
_ _ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   e'4 ( fis'\prall g'4 fis'4) e'4 ( d'4) e'4 ( e'4 d'4)  g'4 ( a'\prall b'4 c''4 \tiny b' a' 4) a'4 ( b'4) \divisioMaior
  e'4 ( b'4) c''4 ( b'4 a'4) b'4 ( a'4 g'4) a'4 ( g'4) a'4 ( b'4) \divisioMinima \forceBreak

  e'4 ( b'4) c''4 ( b'4 a'4) b'4 ( a'4 g'4) a'4 ( g'4) a'4 ( b'4) \divisioMinima
  e'4 ( b'4) c''4 ( b'4 a'4) ~ a'4 ( fis'4.) a'4 ( b'4 a'4 g'4 fis'4 d'4.) fis'4 ( a'4 g'4 fis'4 e'4 fis'\prall g'4 e'4) \finalis \forceBreak

 e'4 ( fis'\prall g'4 fis'4) e'4 ( d'4) e'4 ( e'4 d'4)  g'4 ( a'\prall b'4 c''4) b'4 ( a'4 g'4 a'\prall b'4 a'4) b'4 ( c''4) b'4 \divisioMinima
 b'4 ( b'4) a'4 ( \once \tweak #'font-size #-4 b' ) g'4 ( a'4 b'4)  c''4 ( b'4) \divisioMaxima \forceBreak

  e'4 ( b'4) c''4 ( b'4 a'4) b'4 ( a'4 g'4) a'4 ( g'4) a'4 ( b'4) c''4 ( b'4) \divisioMinima
 b'4 ( \once \tweak #'font-size #-4 a' ) b'4 ( a'4) g'4 ( a'4) a'4 ( g'4 e'4 fis'\prall g'4 fis'4 e'4 d'4) g'4 ( b'4) g'4 ( \once \tweak #'font-size #-4 a' ) a'4 \divisioMaxima \forceBreak

 g'4 a'4 ( b'4 \once \tweak #'font-size #-4 a' )  b'4 c''4 ( a'4) b'4 ( g'4.) b'4 ( c''4 a'4 g'4.) fis'4 ( a'4) b'4 ( g'4) a'4 ( fis'4) g'4 ( e'4) \divisioMinima
  d'4 ( g'4) ~ g'4 ( e'4) d'4 ( g'4 g'4) ~ g'4 ( b'4 b'4 \forceBreak
) c''4 ( b'4 a'4) b'4 ( a'4 g'4) a'4 ( g'4) a'4 ( b'4) c''4 ( b'4) \divisioMaior
 e'4 ( fis'\prall g'4 fis'4 e'4 d'4) e'4 ( e'4 d'4)  g'4 ( a'\prall b'4 c''4 b'4 a'4) a'4 ( b'4) \divisioMaior \forceBreak

  e'4 ( b'4 c''4 b'4 a'4) b'4 ( a'4 g'4) a'4 ( g'4) a'4 ( b'4) \divisioMinima
  e'4 ( b'4 c''4 b'4 a'4) b'4 ( a'4 g'4) a'4 ( g'4) a'4 ( b'4) \divisioMinima
  e'4 ( b'4 c''4 b'4 a'4) ~ a'4 ( fis'4. \forceBreak
) a'4 ( b'4 a'4 g'4 fis'4 d'4.) fis'4 ( a'4 g'4 fis'4 e'4 fis'\prall g'4 e'4) \finalis

}

altoMusic = {
r2*9/2 g'2*3/2 ~ g'2*3/2 e'2 ~ e'2 ~ e'2*3/2 ~ e'2*3/2 ~ e'2 ~ e'2 ~ e'2 ~ e'2*6/2 d'2 ~ d'2 e'2 ~ e'2 d'2*7/4 ~ d'2*4/2 ~ d'2*5/4 ~ d'2*4/2 b2*3/2 ~ b4 \finalis
r2*9/2 g'2*4/2 ~ g'2 e'2 ~ e'2 ~ e'2 ~ e'4 \divisioMinima
fis'2*4/2 g'2*3/2 ~ g'2 e'2 ~ e'2*3/2 ~ e'2*3/2 ~ e'2*4/2 ~ e'2 \divisioMinima
d'2 ~ d'2*4/2 b2 c'2 d'2*4/2 ~ d'2 ~ d'2 ~ d'4 ~ \divisioMaxima
d'4 ~ d'2*3/2 g'4 ~ g'2 e'2*5/4 ~ e'2*3/2 d'2*7/4 fis'2*3/2 ~ fis'4 e'2 r4 b2*3/2 ~ b2*3/2 ~ b2*3/2 e'2*6/2 d'2 ~ d'2 e'2 \divisioMaior
c'2 d'2*4/2 ~ d'2*3/2 ~ d'2*3/2 g'2*3/2 e'2 ~ e'2 ~ e'2*3/2 ~ e'2*3/2 ~ e'2 ~ e'2 ~ e'2 ~ e'2*3/2 ~ e'2*3/2 d'2 ~ d'2 e'2 ~ e'2 d'2*7/4 ~ d'2*4/2 ~ d'2*5/4 ~ d'2*4/2 b2*3/2 ~ b4 \finalis
}

tenorMusic = {
b2*6/2 a2*3/2 b2*3/2 a2*3/2 g2 b2 a2*3/2 g2*3/2 ~ g2 ~ g2 ~ g2 a2*6/2 ~ a2 g2 ~ g2 a2 ~ a2*7/4 g2*4/2 b2*5/4 a2*4/2 ~ a2*3/2 g4 \finalis
b2*6/2 a2*3/2 b2*4/2 c'2 ~ c'2 ~ c'2 a2 b4 \divisioMinima
d'2*4/2 b2*3/2 e'2 b2 a2*3/2 g2*3/2 ~ g2*4/2 ~ g2 ~ \divisioMinima
g2 ~ g2*4/2 ~ g2 ~ g2 ~ g2 fis2 e2 ~ e2 fis4 \divisioMaxima
r4 g2*3/2 ~ g4 fis2 g2*5/4 a2*3/2 b2*7/4 ~ b2*4/2 ~ b4 g4 fis4 g2*3/2 ~ g2*3/2 ~ g2*3/2 a2*6/2 ~ a2 g2 ~ g2 ~ \divisioMaior
g2 ~ g2*4/2 fis2*3/2 e2*3/2 a2*3/2 g2 b2 a2*3/2 g2*3/2 ~ g2 ~ g2 ~ g2 ~ g2*3/2 a2*3/2 ~ a2 fis2 g2 a2 ~ a2*7/4 g2*4/2 b2*5/4 a2*4/2 ~ a2*3/2 g4 \finalis
}

bassMusic = {
g2*6/2 fis2*3/2 e2*3/2 ~ e2*3/2 ~ e2 g2 ~ g2*3/2 ~ g2*3/2 fis2 e2 d2 c2*6/2 b,2 ~ b,2 a,2 ~ a,2 b,2*7/4 ~ b,2*4/2 ~ b,2*5/4 ~ b,2*4/2 e2*3/2 ~ e4 \finalis
g2*6/2 fis2*3/2 e2*4/2 ~ e2 b2 a2 g2 ~ g4 \divisioMinima
r2*4/2 g2*3/2 e'2 g2 ~ g2*3/2 ~ g2*3/2 fis2*4/2 e2 \divisioMinima
r2 fis2*4/2 e2 a,2 b,2 ~ b,2 e2 d2 ~ d4 \divisioMaxima
b,4 ~ b,2*3/2 e4 ~ e2 ~ e2*5/4 c2*3/2 b,2*7/4 d2*4/2 e2 ~ e4 ~ e2*3/2 fis2*3/2 e2*3/2 c2*6/2 b,2 ~ b,2 e2 \divisioMaior
a,2 b,2*4/2 ~ b,2*3/2 e2*3/2 ~ e2*3/2 ~ e2 g2 ~ g2*3/2 ~ g2*3/2 fis2 e2 d2 c2*3/2 ~ c2*3/2 b,2 ~ b,2 a,2 ~ a,2 b,2*7/4 ~ b,2*4/2 ~ b,2*5/4 ~ b,2*4/2 e2*3/2 ~ e4 \finalis
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
        "I"
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
