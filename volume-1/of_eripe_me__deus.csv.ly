\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.291
%(volume.page)

global = {
 \key d \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Eripe me... Deus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Eripe me... Deus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Eripe me... Deus" }
    \line {}
  }
}

chantText = \lyricmode {
E -- ri -- pe _ _ _ me 
\set stanza = " * " 
de in -- i -- mí -- cis _ _ me -- _ _ is, _ _ 
De -- _ _ us _ me -- us 
et ab in -- sur -- gén -- _ _ _ _ _ _ _ _ _ ti -- bus _ _ in me _ _ _ 
lí -- be -- ra _ _ me, Dó -- _ _ _ _ _ _ mi -- ne. }

chantMusic = {
\tieDown   d'4 ( e'4) d'4 e'4 ( d'4) e'4 g'4 ( g'4 fis'4) g'4 ( g'4 fis'4) g'4 ( a'\prall b'4 a'4 b'4) b'4 ( a'4) \divisioMaior
 a'4 a'4 a'4 a'4 ( b'\prall c''4 b'4 a'4 \forceBreak
) a'4 ( b'4 g'4) a'4 ( g'4 fis'4) g'4 ( fis'4) \divisioMinima
 a'4 ( b'4 g'4) ~ g'4 ( a'4 g'4) a'4 ( g'4 a'4 g'4) g'4 ( fis'4) g'4 ( fis'4 e'4 d'4) e'4 ( d'4) \divisioMaior
 fis'4 ( d'4 e'4) g'4 ( g'4 \forceBreak
) a'4 ( c''4 b'4 a'4) a'4 ( g'4) ~ g'4 ( fis'4 e'4) g'4 ( e'4 fis'\prall g'4 fis'4 e'4 d'4 e'4) e'4 ( d'4) \divisioMaxima
 d'4 d'4 g'4 ( \once \tweak #'font-size #-4 fis' ) g'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( a'4 d'4.) e'4 ( fis'4 e'4 d'4) \divisioMinima \forceBreak

 g'4 ( a'4 g'4 fis'4.) a'4 ( b'4 a'4) g'4 ( fis'4 e'4) g'4 ( g'4 a'4) \divisioMinima
 c''4 ( c''4) d''4 ( c''4) d''4 ( c''4 d''4 c''4) d''4 ( e''4) c''4 ( b'4) c''4 ( c''4) ~ c''4 ( a'4) b'4 ( c''4 b'4) \divisioMinima \forceBreak

 a'4 ( \once \tweak #'font-size #-4 g' ) a'4 c''4 ( c''4 a'4.) g'4 ( a'4 g'4 fis'4 e'4) fis'4 ( fis'4 g'4) \divisioMaior
 e'4 a'4 g'4 a'4 ( b'4 g'4) ~ g'4 ( fis'4) d'4 \divisioMinima
 d'4 ( fis'4) a'4 ( fis'4 \forceBreak
) a'4 ( b'4 g'4 e'4) fis'4 ( g'4 e'4 d'4) \divisioMinima
 g'4 ( a'4 g'4 d'4) e'4 ( g'4) ~ g'4 ( fis'4 e'4 fis'\prall g'4 fis'4 e'4) d'4 ( e'4 fis'4 e'4 d'4 e'4) e'4 ( d'4) \finalis

}

altoMusic = {
b2*3/2 ~ b2*3/2 ~ b2*3/2 d'2*3/2 ~ d'2*5/2 ~ d'2 ~ \divisioMaior
d'4 e'2 ~ e'2*5/2 d'2*3/2 ~ d'2*3/2 ~ d'2 \divisioMinima
e'2 ~ e'2*4/2 d'2*4/2 ~ d'2 ~ d'2*3/2 ~ d'4 e'4 d'4 ~ \divisioMaior
d'2*3/2 ~ d'2 e'2*5/2 ~ e'2*3/2 ~ e'4 b2*3/2 ~ b2*5/2 r2 \divisioMaxima
b2 ~ b2 ~ b2 d'2 ~ d'2*3/4 a2*3/2 ~ a4 \divisioMinima
d'2*3/2 ~ d'2*3/4 ~ d'2*3/2 ~ d'2*3/2 e'2*3/2 \divisioMinima
g'2 ~ g'2 ~ g'2*4/2 ~ g'2 ~ g'2 ~ g'2 ~ g'2 ~ g'2*3/2 \divisioMinima
e'2*3/2 ~ e'2*7/4 d'2*5/2 ~ d'2*3/2 \divisioMaior
c'2*3/2 d'2 ~ d'2*3/2 ~ d'4 ~ \divisioMinima
d'2 ~ d'2 ~ d'2*4/2 ~ d'2*4/2 ~ \divisioMinima
d'2*5/2 c'2*5/2 d'2*3/2 ~ d'2*6/2 a2 \finalis
}

tenorMusic = {
g2*3/2 ~ g2*3/2 ~ g2*3/2 ~ g2*3/2 ~ g2*5/2 fis2 ~ \divisioMaior
fis4 ~ fis2 g2*5/2 ~ g2*3/2 fis2*3/2 b2 ~ \divisioMinima
b2 a2*4/2 ~ a2*4/2 d2 e2*4/2 fis2 \divisioMaior
a2*3/2 g2 ~ g2*5/2 a2*4/2 ~ a2*3/2 g2*5/2 a2 \divisioMaxima
g2 ~ g2 ~ g2 fis2*7/4 g2*3/2 fis4 \divisioMinima
g2*3/2 a2*3/4 fis2*3/2 g2*3/2 ~ g2*3/2 ~ \divisioMinima
g2 a2 b2*4/2 c'2 d'2 e'2 d'2 c'2*3/2 \divisioMinima
b2*3/2 a2*7/4 ~ a2*5/2 g2*3/2 ~ \divisioMaior
g2*3/2 ~ g2 a2*3/2 b4 \divisioMinima
a2 fis2 g2*4/2 a2*4/2 \divisioMinima
g2*5/2 ~ g2*5/2 ~ g2*3/2 a2*6/2 g4 fis4 \finalis
}

bassMusic = {
r2*3/2 fis2*3/2 e2*3/2 b,2*3/2 e2*5/2 d2 ~ \divisioMaior
d4 c2 ~ c2*5/2 b,2*3/2 ~ b,2*3/2 ~ b,2 \divisioMinima
c2 ~ c2*4/2 b,2*4/2 ~ b,2 ~ b,2*4/2 ~ b,2 ~ \divisioMaior
b,2*3/2 ~ b,2 c2*5/2 ~ c2*4/2 e2*3/2 ~ e2*5/2 fis2 \divisioMaxima
r2 fis2 e2 d2*7/4 ~ d2*3/2 ~ d4 \divisioMinima
b,2*3/2 ~ b,2*3/4 ~ b,2*3/2 ~ b,2*3/2 c2*3/2 \divisioMinima
e2 ~ e2 ~ e2*4/2 ~ e2 ~ e2 ~ e2 ~ e2 ~ e2*3/2 ~ \divisioMinima
e2*3/2 c2*7/4 b,2*5/2 ~ b,2*3/2 \divisioMaior
a,2*3/2 b,2 ~ b,2*3/2 ~ b,4 ~ \divisioMinima
b,2 ~ b,2 ~ b,2*4/2 ~ b,2*4/2 ~ \divisioMinima
b,2*5/2 a,2*5/2 b,2*3/2 ~ b,2*6/2 d2 \finalis
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
        "VII"
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
