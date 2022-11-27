\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.138
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Illumina faciem" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Illumina faciem"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Illumina faciem" }
    \line {}
  }
}

chantText = \lyricmode {
Il -- lú -- mi -- na 
\set stanza = " * " fá -- ci -- em tu -- am 
su -- per ser -- vum tu -- um, 
et sal -- vum me fac in tu -- _ a mi -- se -- ri -- cór -- di -- _ a: 
Dó -- mi -- ne, non con -- fún -- dar, 
quó -- ni -- am in -- vo -- cá -- vi te. }

chantMusic = {
\tieDown   e'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( fis'4 g'4) e'4 ( d'4) d'4 \divisioMinima
 g'4 ( a'4) g'4 e'4 ( \once \tweak #'font-size #-4 g' ) g'4 g'4 \divisioMaior
 e'4 e'4 e'4 d'4 e'4 ( g'4 fis'4 e'4) e'4 \divisioMaxima \forceBreak

 e'4 g'4 ( a'4) a'4 ( b'4) fis'4 ( g'4 e'4) e'4 \divisioMinima
 g'4 ( \once \tweak #'font-size #-4 b' ) b'4 ( a'4) d''4 ( d''4 b'4) b'4  b'4 ( c''4 b'4) a'4 a'4 ( fis'4) a'4 ( \once \tweak #'font-size #-4 b' ) g'4 ( a'4) b'4 ( a'4 g'4 a'4) a'4 ( g'4) \divisioMaxima \forceBreak

  b'4 ( c''4 b'4) a'4 a'4 ( fis'4) a'4 a'4 g'4 ( fis'4 g'4) e'4 ( g'4 fis'4 d'4) \divisioMaior
 g'4 ( g'4 a'4) g'4 g'4 g'4 ( a'4) fis'4 ( g'4 fis'4 d'4) e'4 ( fis'4 g'4 fis'4 e'4) e'4 ( fis'4 e'4) e'4 \finalis

}

altoMusic = {
b2 ~ b2*3/2 a2*3/2 \divisioMinima
b2*5/2 ~ b2 ~ \divisioMaior
b2 ~ b2 c2*4/2 b4 \divisioMaxima
r4 d'2 ~ d'2 ~ d'2*3/2 b4 ~ \divisioMinima
b2 e'2 d'2*4/2 c2*4/2 d'2 ~ d'2*4/2 ~ d'2*4/2 b2 d'2*4/2 b2*4/2 ~ b2*3/2 d'2*3/2 ~ d'4 \divisioMaior
b2*3/2 ~ b2 d'2 ~ d'2*4/2 ~ d'2 c'2*3/2 b2*3/2 ~ b4 \finalis
}

tenorMusic = {
g2 ~ g2*3/2 fis2*3/2 \divisioMinima
e2*5/2 ~ e2 ~ \divisioMaior
e2 fis2 g2*4/2 ~ g4 \divisioMaxima
r4 d2 g2 ~ g2*3/2 ~ g4 \divisioMinima
e2 fis2 ~ fis2*3/2 g4 ~ g2*4/2 fis2 g2*4/2 fis2*4/2 g2 ~ g2*4/2 fis2*4/2 g2*3/2 a2*3/2 fis4 \divisioMaior
r2*3/2 g2 ~ g2 a2*4/2 g2 ~ g2*3/2 a2*3/2 g4 \finalis
}

bassMusic = {
r2 e2*3/2 fis2*3/2 \divisioMinima
r2*5/2 d2 \divisioMaior
c2 b,2 a,2*4/2 e4 \divisioMaxima
r4 b,2 ~ b,2 e2*3/2 ~ e4 \divisioMinima
d2 cis2 b,2*3/2 ~ b,4 a,2*4/2 b,2 ~ b,2*4/2 d2*4/2 e2 b,2*4/2 d2*4/2 e2*3/2 d2*3/2 ~ d4 \divisioMaior
e2*3/2 ~ e2 b,2 ~ b,2*4/2 ~ b,2 a,2*3/2 e2*3/2 ~ e4 \finalis
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
