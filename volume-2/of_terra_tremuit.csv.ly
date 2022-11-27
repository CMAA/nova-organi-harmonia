\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.7
%(volume.page)

global = {
 \key fis \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Terra tremuit" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Terra tremuit"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Terra tremuit" }
    \line {}
  }
}

chantText = \lyricmode {
Ter -- ra _ 
\set stanza = " * " tré -- mu -- it, 
et _ qui -- é -- _ vit, _ 
dum _ _ re -- súr -- ge -- ret _ _ 
in ju -- dí -- _ ci -- o De -- _ _ us, 
al -- _ _ _ _ le -- _ _ _ _ _ _ _ _ _ lú -- ia. _ _ }

chantMusic = {
\tieDown   e'4 ( g'4 fis'4) g'4 ( g'4) ~ g'4 ( e'4 g'4)  fis'4 ( g'4 a'4) a'4 ( g'4 b'4) b'4 \divisioMaior
 b'4 d''4 ( d''4 b'4 a'4) g'4 ( a'\prall b'4 a'4) a'4. \forceBreak
 g'4 ( b'4 a'4) e'4 ( a'4 g'4 fis'4) g'4 ( a'4 g'4 e'4) \divisioMaxima
 e'4 g'4 ( g'4) ~ g'4 ( \once \tweak #'font-size #-4 e' ) fis'4 ( g'4) a'4 ( b'4) a'4 ( g'4) g'4 ( b'4) d''4 ( d''4) ~ d''4 ( b'4) \divisioMaior
 e'4 ( b'4) b'4 b'4 \forceBreak
 d''4 ( d''4 b'4) a'4 a'4 ( cis''4 b'4 a'4 b'4) fis'4 ( g'4) b'4 ( a'4 fis'4) g'4 ( e'4) e'4 \divisioMaxima
 e'4 g'4 ( g'4 g'4) ~ g'4 ( fis'4)  g'4. b'4 ( c''4 b'4 a'4 g'4) ~ g'4 ( \once \tweak #'font-size #-4 fis'  \forceBreak
) a'4 ( b'4 a'4) g'4 a'4 ( fis'4) g'4 ( e'4) \divisioMinima
 e'4 ( g'4) b'4 ( a'4.) e'4 ( g'4) b'4 ( a'4.) g'4 a'4 ( fis'4) g'4 ( e'4.) b'4 ( a'4 g'4 a'4) fis'4 fis'4 ( a'4 g'4) a'4 ( g'4) ~ g'4 ( fis'4) \finalis

}

altoMusic = {
e'2*3/2 ~ e'2 ~ e'2*3/2 ~ e'2*3/2 d'2*4/2 ~ \divisioMaior
d'2*5/2 ~ d'2*4/2 ~ d'2*3/4 ~ d'2*3/2 ~ d'2*4/2 b2*3/2 ~ b4 ~ \divisioMaxima
b2*3/2 ~ b2 ~ b2 d'2*4/2 ~ d'2 g'2 ~ g'2 \divisioMaior
e'2*4/2 d'2*4/2 e'2*3/2 ~ e'2 b2*5/2 ~ b2 ~ b4 ~ \divisioMaxima
b2*4/2 ~ b2*7/4 d'2*4/2 ~ d'2*3/2 e'2*4/2 d'2 b2 ~ \divisioMinima
b2 c'2*5/4 b2 c'2*7/4 ~ c'2 b2*5/4 ~ b2*5/2 c'4 d'2*3/2 cis'2 b4 \finalis
}

tenorMusic = {
b2*3/2 ~ b2 ~ b2*3/2 ~ b2*3/2 ~ b2*3/2 g4 ~ \divisioMaior
g4 fis2*4/2 g2*4/2 b2*3/4 ~ b2*3/2 g2*4/2 fis2*3/2 g4 \divisioMaxima
r2*3/2 e2 ~ e2 d2 g2 b2 ~ b2 d'2 \divisioMaior
a2*3/2 g4 fis2*4/2 e2*3/2 fis2 e2 fis2*3/2 e2 g4 \divisioMaxima
b4 a2*3/2 g2*7/4 ~ g2*4/2 a2*3/2 ~ a2*4/2 ~ a2 ~ a2 \divisioMinima
g2 fis2*5/4 e2 ~ e2*7/4 ~ e2 ~ e2*5/4 ~ e2*5/2 ~ e4 d2*3/2 e2 fis4 \finalis
}

bassMusic = {
e2*3/2 fis2 g2*3/2 b2*3/2 r2*5/2 b,2*4/2 ~ b,2*4/2 ~ b,2*3/4 e2*3/2 ~ e2*4/2 ~ e2*3/2 ~ e4 \divisioMaxima
e,2*3/2 ~ e,2 g,2 b,2 ~ b,2 ~ b,2 e2 ~ e2 ~ \divisioMaior
e2*3/2 ~ e4 b,2*4/2 c2*3/2 ~ c2 d2 ~ d2*3/2 e2 ~ e4 ~ \divisioMaxima
e2*4/2 ~ e2*7/4 b,2*4/2 d2*3/2 c2*4/2 b,2 e2 ~ \divisioMinima
e2 ~ e2*5/4 ~ e2 ~ e2*7/4 r2 e,2*5/4 g,2*5/2 a,4 b,2*3/2 ~ b,2 ~ b,4 \finalis
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
