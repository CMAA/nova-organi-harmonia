\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.225
%(volume.page)

global = {
 \key a \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Comedite pinguia" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Comedite pinguia"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Comedite pinguia" }
    \line {}
  }
}

chantText = \lyricmode {
Co -- mé -- di -- te 
\set stanza = " * " pín -- gui -- a, et bí -- bi -- te mul -- _ sum, 
et mít -- ti -- te par -- tes e -- is qui non præ -- pa -- ra -- vé -- runt si -- bi: 
san -- ctus e -- nim di -- es Dó -- mi -- ni est, 
no -- lí -- te con -- tri -- stá -- ri: 
gáu -- di -- um ét -- e -- nim Dó -- mi -- ni est for -- ti -- tú -- _ do no -- stra. }

chantMusic = {
\tieDown   e'4 g'4 ( b'4 a'4) a'4 a'4  b'4 ( a'4 b'4) a'4 ( g'4) g'4 \divisioMinima
 g'4 a'4 ( b'4) b'4  d''4 ( b'4 c''4 \forceBreak
)  c''4 ( a'4) b'4 ( g'4) g'4 \divisioMaior
 g'4 ( \once \tweak #'font-size #-4 e' ) g'4 a'4 b'4 b'4 a'4 \divisioMinima
 b'4 a'4 g'4 g'4 ( \once \tweak #'font-size #-4 fis' ) g'4 fis'4 \forceBreak
 a'4 a'4 ( b'4) a'4 ( \once \tweak #'font-size #-4 b' ) g'4 ( a'4 g'4 fis'4) fis'4 \divisioMaxima
 b'4 a'4 b'4 a'4 b'4 a'4 b'4 a'4 g'4 ( a'4) a'4 ( e'4) \divisioMaior \forceBreak

 e'4 g'4 fis'4 a'4 ( b'4) g'4 ( fis'4) e'4 e'4 \divisioMaxima
 a'4 g'4 ( a'4) a'4 b'4 a'4 g'4 a'4 ( b'4) b'4 a'4 ( b'4) b'4 \divisioMinima \forceBreak

 b'4 a'4 b'4 ( cis''4 a'4 fis'4) a'4. b'4 ( cis''4 a'4) a'4 a'4 ( b'4 a'4) a'4 \finalis

}

altoMusic = {
e'4 ~ e'2*4/2 fis'4 ~ fis'2*3/2 d'2*4/2 ~ d'2*3/2 e'2*3/2 ~ e'2 ~ e'2 ~ e'4 ~ \divisioMaior
e'2 ~ e'2*3/2 ~ e'2 \divisioMinima
d'2*3/2 ~ d'2 ~ d'2*3/2 ~ d'2 ~ d'2 b2*4/2 d'4 \divisioMaxima
fis'2 d'2 ~ d'2 ~ d'2 ~ d'2 e'2 ~ \divisioMaior
e'4 d'2 ~ d'2 ~ d'2 b2 \divisioMaxima
d'4 ~ d'2 ~ d'4 ~ d'4 ~ d'2 ~ d'2*3/2 e'2 d'4 ~ \divisioMinima
d'2 cis'2*4/2 ~ cis'2*3/4 fis'2*3/2 d'4 ~ d'2*3/2 cis'4 \finalis
}

tenorMusic = {
r4 r2*4/2 d'4 ~ d'2*3/2 b2*3/2 ~ \divisioMinima
b4 a2*3/2 g2*3/2 a2 g2 b4 ~ \divisioMaior
b2 ~ b2*3/2 e2 \divisioMinima
g2*3/2 b2 a2*3/2 g2 fis2 g2*4/2 b4 ~ \divisioMaxima
b2 fis2 ~ fis2 g2 b2 a2 ~ \divisioMaior
a4 ~ a2 fis2 a2 ~ a4 g4 \divisioMaxima
fis4 e2 fis4 ~ fis4 g2 ~ g2*3/2 fis2 ~ fis4 ~ \divisioMinima
fis2 ~ fis2*4/2 ~ fis2*3/4 ~ fis2*4/2 e2*3/2 ~ e4 \finalis
}

bassMusic = {
r4 d'2*4/2 ~ d'4 d2*3/2 g2*3/2 ~ \divisioMinima
g4 fis2*3/2 e2*3/2 r2*4/2 e4 ~ \divisioMaior
e2 d2*3/2 c2 \divisioMinima
b,2*3/2 ~ b,2 d2*3/2 ~ d2 ~ d2 e2*4/2 b,4 \divisioMaxima
d2 ~ d2 b,2 e2 ~ e2 c2 ~ \divisioMaior
c4 d2 ~ d2 b,2 e2 \divisioMaxima
d4 ~ d2 ~ d4 b,4 ~ b,2 e2*3/2 c2 b,4 \divisioMinima
d2 fis2*4/2 e2*3/4 d2*4/2 a,2*3/2 ~ a,4 \finalis
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
        "VIII."
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
