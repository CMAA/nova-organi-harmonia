\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.198
%(volume.page)

global = {
 \key d \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Dirigatur oratio mea" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Dirigatur oratio mea"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Dirigatur oratio mea" }
    \line {}
  }
}

chantText = \lyricmode {
Di -- ri -- gá -- tur _ _ 
\set stanza = " * " o -- rá -- ti -- o me -- a _ 
sic -- ut in -- cén -- sum _ in con -- spé -- ctu tu -- o, _ _ _ 
Dó -- _ mi -- ne. _ _ _ _ ℣. 
E -- le -- vá -- _ _ _ _ _ _ _ ti -- o _ _ _ 
má -- nu -- um me -- á -- _ _ _ rum 
sa -- cri -- fí -- ci -- _ um 
\set stanza = " * " ve -- sper -- tí -- _ _ num. _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   d'4 d'4 ( a'4) a'4 a'4 ( fis'4) g'4 ( a'4 e'4) ~ e'4 ( d'4) \divisioMinima
 d'4 d'4 ( g'4 fis'4 a'4) a'4 ( b'4) b'4 ( g'4 a'4) a'4 ( b'4 c''4 b'4 a'4 b'4) a'4 ( b'4 \forceBreak
) c''4 ( b'4) \divisioMaior
 g'4 a'4 b'4 ( \once \tweak #'font-size #-4 d'' ) d''4 d''4 ( a'4) b'4 ( a'4) \divisioMinima
 a'4 b'4 b'4 ( d''4) c''4 b'4 ( g'4 a'4) a'4 ( fis'4.) g'4 ( a'4 g'4) a'4 ( e'4) ~ e'4 ( d'4) \divisioMaior \forceBreak

 g'4 ( g'4 e'4) g'4 ( fis'4 g'4) fis'4 d'4 ( fis'4 a'4 b'4 a'4 g'4) ~ g'4 ( fis'4.) d'4 ( fis'4 e'4) fis'4 ( e'4) ~ e'4 ( d'4) \finalis
 g'4 a'4 a'4 ( d''4.) c''4 ( d''4) e''4 ( c''4 \forceBreak
) ~ c''4 ( c''4) ~ c''4 ( a'4 g'4) ~ g'4 ( e'4) \divisioMinima
 g'4 ( g'4 e'4) g'4 ( g'4 a'4) a'4 a'4 ( g'4.) a'4 ( c''4 b'4) c''4 ( d''4 b'4) ~ b'4 ( a'4) \divisioMaior
 a'4 ( d''4) d''4 e''4 a'4 \forceBreak
 c''4 ( a'4) ~ a'4 ( fis'4.) g'4 ( b'4 a'4 g'4) ~ g'4 ( e'4 fis'\prall g'4 fis'4 e'4 d'4 e'4) e'4 ( d'4) \divisioMaxima
 d'4 e'4 g'4 ( a'4 g'4) e'4 ( a'4 g'4) a'4 ( b'4) a'4 \divisioMinima \forceBreak

 d'4 g'4 ( g'4) g'4. fis'4 ( g'4) a'4 ( g'4 a'4) a'4 ( a'4 fis'4.) a'4 ( c''4 b'4 a'4) c''4 ( b'4 a'4) ~ a'4 ( fis'4) \divisioMinima
 g'4 ( a'4 fis'4) g'4 ( e'4 d'4) e'4 ( fis'4 e'4) ~ e'4 ( d'4) \finalis

}

altoMusic = {
d'2*4/2 ~ d'2*6/2 ~ d'4 ~ \divisioMinima
d'4 fis'2*4/2 d'2 ~ d'2*3/2 e'2*6/2 ~ e'2 ~ e'2 ~ \divisioMaior
e'2 ~ e'2 d'4 ~ d'2 ~ d'2 ~ \divisioMinima
d'2 e'2*3/2 ~ e'2*3/2 fis'2*5/4 e'2*4/2 ~ e'4 r2 \divisioMaior
b2*3/2 ~ b2*4/2 d'2*5/2 ~ d'2*7/4 ~ d'2*4/2 a2 ~ a4 \finalis
g'2 <a' f'>2*5/4 <a' g'>2*4/2 <a' g' e'>2 <g' e' d'>2 <e' d' b>2*3/2 \divisioMinima
<e' c'>2*3/2 ~ <e' c'>2*4/2 d'2*5/4 e'2*3/2 g'2 fis'2*3/2 \divisioMaior
a'2 g'2 e'4 ~ e'4 fis'2 e'2*3/4 ~ e'2*3/2 ~ e'2 ~ e'2*4/2 a2*3/2 ~ a2 \divisioMaxima
b2 ~ b2*3/2 ~ b2*3/2 e'2 ~ e'4 \divisioMinima
d'4 ~ d'2 c'2*3/4 d'2*5/2 ~ d'2*7/4 e'2*4/2 ~ e'2 ~ e'2*3/2 ~ \divisioMinima
e'2*3/2 b2*3/2 a2 ~ a2 ~ a4 \finalis
}

tenorMusic = {
r4 e2 fis4 g2*4/2 ~ g2 fis4 ~ \divisioMinima
fis4 g2*4/2 fis2 g2*3/2 ~ g2*6/2 a2 g2 ~ \divisioMaior
g2 fis2 ~ fis4 g2 fis2 \divisioMinima
g2 ~ g2*3/2 ~ g2*3/2 c'2*5/4 b2*4/2 a2*3/2 \divisioMaior
g2*3/2 ~ g2*4/2 fis2*5/2 g2*7/4 a2*4/2 g2 fis4 \finalis
r2*45/4 b2*5/4 c'2*3/2 e'2 d'2*3/2 ~ \divisioMaior
d'2 ~ d'2 c'4 ~ c'2*3/2 ~ c'2*3/4 b2*3/2 ~ b2 a2*4/2 g2*3/2 ~ g4 fis4 \divisioMaxima
g2 ~ g2*3/2 ~ g2*3/2 ~ g2 fis4 ~ \divisioMinima
fis4 g2 ~ g2*3/4 ~ g2*5/2 fis2*7/4 ~ fis2*4/2 g2 a2*3/2 \divisioMinima
b2*3/2 e2*3/2 g2 ~ g2 fis4 \finalis
}

bassMusic = {
r4 d2*3/2 ~ d2*4/2 ~ d2 ~ d4 ~ \divisioMinima
d4 b,2*4/2 ~ b,2 ~ b,2*3/2 c2*6/2 ~ c2 e2 ~ \divisioMaior
e2 ~ e2 b,4 ~ b,2 ~ b,2 ~ \divisioMinima
b,2 c2*3/2 e2*3/2 ~ e2*5/4 ~ e2*4/2 fis2*3/2 ~ \divisioMaior
fis2*3/2 e2*4/2 b,2*5/2 ~ b,2*7/4 ~ b,2*4/2 d2 ~ d4 \finalis
r2*31/4 \divisioMinima
b2*3/2 a2*4/2 ~ a2*5/4 ~ a2*3/2 ~ a2 d'2*3/2 \divisioMaior
c'2 b2 ~ b4 a2*3/2 ~ a2*3/4 e2*3/2 d2 c2*4/2 ~ c2*3/2 d2 \divisioMaxima
r2 e2*3/2 d2*3/2 c2 ~ c4 \divisioMinima
b,4 ~ b,2 a,2*3/4 b,2*5/2 ~ b,2*7/4 c2*4/2 ~ c2 ~ c2*3/2 \divisioMinima
e2*3/2 d2*3/2 c2 d2 ~ d4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Gradual"
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
