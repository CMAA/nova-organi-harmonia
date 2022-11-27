\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.74
%(volume.page)

global = {
 \key fis \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Pater cum essem" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Pater cum essem"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Pater cum essem" }
    \line {}
  }
}

chantText = \lyricmode {
Pa -- ter, 
\set stanza = " * " cum es -- sem cum e -- is, _ 
e -- go ser -- vá -- bam e -- os, quos de -- dí -- sti mi -- hi, 
al -- le -- _ lú -- ia: 
nunc au -- tem ad te vé -- ni -- o: 
non ro -- go ut tol -- las e -- os de mun -- _ do, 
sed ut ser -- ves e -- os a ma -- lo, 
al -- le -- lú -- ia, al -- le -- _ lú -- ia. }

chantMusic = {
\tieDown   g'4 ( a'4 g'4) fis'4 ( fis'4 g'4) \divisioMinima
 e'4 a'4 ( b'4 cis''4) b'4 b'4 ( \once \tweak #'font-size #-4 a' ) b'4 ( d''4 cis''4 a'4) b'4 ( a'4) b'4 ( cis''4 b'4) \divisioMaior \forceBreak

 b'4 a'4 ( b'4 a'4) a'4 ( \once \tweak #'font-size #-4 fis' ) g'4 ( a'4) a'4 a'4 ( b'4) a'4 \divisioMinima
 g'4 ( fis'4) e'4 fis'4 e'4 e'4 ( fis'4 e'4) d'4 \divisioMaior \forceBreak

 e'4 ( \once \tweak #'font-size #-4 fis' ) fis'4 ( a'4 g'4 fis'4) a'4 ( g'4 fis'4) fis'4 ( a'4 g'4 g'4) g'4 ( fis'4) \divisioMaxima
 fis'4 ( fis'4 g'4) e'4 ( a'4 g'4) fis'4 ( fis'4 g'4) fis'4 ( \once \tweak #'font-size #-4 e' ) a'4 ( b'4) d''4 ( cis''4 d''4 \forceBreak
) b'4 ( cis''4 a'4) a'4 \divisioMaxima
 b'4 a'4 ( b'4 a'4) fis'4 g'4  b'4 ( c''4) a'4 a'4 ( b'4) a'4 g'4 g'4 ( fis'4) g'4 ( \tiny fis' e' 4) fis'4 ( e'4) \divisioMaior \forceBreak

 e'4 g'4  b'4 ( c''4) a'4 a'4 ( b'4 a'4) g'4 g'4 g'4 ( fis'4) e'4 \divisioMaior
 g'4 g'4 ( e'4) fis'4 ( \once \tweak #'font-size #-4 e' ) d'4 \divisioMinima \forceBreak

 e'4 ( \once \tweak #'font-size #-4 fis' ) fis'4 ( a'4 g'4 fis'4) a'4 ( g'4 fis'4) fis'4 ( a'4 g'4 g'4) g'4 ( fis'4) \finalis

}

altoMusic = {
e'2*3/2 ~ e'2*3/2 ~ \divisioMinima
e'2 fis'2*3/2 e'2 ~ e'2*4/2 d'2 c'2 d'4 ~ \divisioMaior
d'4 ~ d'2*3/2 ~ d'2 ~ d'2*3/2 ~ d'2*3/2 ~ \divisioMinima
d'2*3/2 b2 a2*3/2 ~ a4 \divisioMaior
e'2 ~ e'2*4/2 d'2*3/2 b2*4/2 d'2 \divisioMaxima
b2*3/2 ~ b2*3/2 ~ b2*3/2 ~ b2 e'2 d'2*3/2 fis'2*3/2 c'4 \divisioMaxima
d'4 ~ d'2*3/2 e'2 ~ e'2*3/2 d'2*4/2 c'2 ~ c'2*3/2 b2 \divisioMaior
d'2 c'2*3/2 e'2*4/2 ~ e'4 d'2 b4 \divisioMaior
c'4 d'2 ~ d'2 ~ d'4 ~ \divisioMinima
d'2 b2*4/2 ~ b2*3/2 ~ b2 d'2 ~ d'2 \finalis
}

tenorMusic = {
b2*3/2 ~ b2*3/2 \divisioMinima
g4 fis4 ~ fis2*3/2 ~ fis2 ~ fis2*6/2 e2 fis4 \divisioMaior
g4 ~ g2*3/2 fis2 e2*3/2 fis2*3/2 \divisioMinima
b2*3/2 g2 ~ g2*3/2 fis4 ~ \divisioMaior
fis2 ~ fis2*4/2 ~ fis2*3/2 e2*4/2 b2 \divisioMaxima
g2*3/2 ~ g2*3/2 ~ g2*3/2 ~ g2 fis2 ~ fis2*3/2 ~ fis2*3/2 ~ fis4 \divisioMaxima
a4 b2*3/2 ~ b2 a2*3/2 ~ a2*4/2 ~ a2 e2*3/2 ~ e2 ~ \divisioMaior
e2 ~ e2*3/2 ~ e2*4/2 b4 a2 g4 ~ \divisioMaior
g4 ~ g2 a2 b4 \divisioMinima
a2 fis2*4/2 e2*3/2 d2 r2 b2 \finalis
}

bassMusic = {
e2*3/2 ~ e2*3/2 ~ \divisioMinima
e4 ~ e4 d2*3/2 c2 b,2*6/2 ~ b,2 ~ b,4 ~ \divisioMaior
b,4 d2*3/2 ~ d2 e2*3/2 r2*3/2 \divisioMinima
r2*5/2 d2*3/2 ~ d4 \divisioMaior
c2 b,2*4/2 ~ b,2*3/2 e2*4/2 r2 \divisioMaxima
r2*3/2 fis2*3/2 e2*3/2 d2 c2 b,2*3/2 d2*3/2 fis4 ~ \divisioMaxima
fis4 ~ fis2*3/2 e2 c2*3/2 b,2*4/2 a,2 ~ a,2*3/2 g,2 \divisioMaior
b,2 a,2*3/2 c2*4/2 ~ c4 d2 e4 \divisioMaior
a,4 b,2 ~ b,2 ~ b,4 \divisioMinima
d2 ~ d2*4/2 ~ d2*3/2 ~ d2 b,2 ~ b,2 \finalis
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
