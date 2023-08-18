\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.108
%(volume.page)

global = {
 \key d \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Joseph fili David" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Joseph fili David"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Joseph fili David" }
    \line {}
  }
}

chantText = \lyricmode {
Jo -- seph 
\set stanza = " * " fi -- li Da -- vid, 
no -- lí ti -- mé -- re ac -- ci -- pe -- re Ma -- rí -- am cón -- _ ju -- gem tu -- _ am: 
quod e -- nim in e -- a na -- tum est, _ 
de Spí -- ri -- tu San -- cto est. _ _ _ _ _ T.P. 
Al -- le -- _ lú -- ia. }

chantMusic = {
\tieDown   d'4 ( g'4) fis'4 ( fis'4 g'4) \divisioMinima
 g'4 g'4 ( e'4) g'4 ( a'4 g'4) a'4 \divisioMaior
 fis'4 d'4 fis'4 ( g'4) e'4 ( d'4) d'4 \divisioMinima
 e'4 d'4 ( c'4) d'4 e'4 a'4 g'4 ( b'4 a'4) a'4 \divisioMinima
 g'4 ( e'4) g'4 ( a'4) g'4 g'4 ( fis'4) d'4 ( e'4) fis'4 ( e'4 d'4 e'4) e'4 ( d'4) \divisioMaxima
 d'4 d'4 ( a'4) a'4 a'4 a'4 ( b'4) a'4 g'4 ( fis'4) e'4 g'4 ( g'4 a'4 b'\prall c''4 b'4 a'4) b'4 ( a'4) \divisioMaior
 g'4 b'4 ( a'4 b'4) g'4 e'4 ( fis'4) d'4 e'4 ( g'4) g'4. fis'4 ( g'4) a'4 ( g'4 e'4) ~ e'4 ( c'4.) e'4 ( g'4) ~ g'4 ( g'4 d'4) \finalis
 d'4 ( \once \tweak #'font-size #-4 fis' ) fis'4. e'4 ( g'4 fis'4) d'4 ( e'4 d'4) d'4 \finalis

}

altoMusic = {
d'2 ~ d'2*3/2 \divisioMinima
e'4 ~ e'2 ~ e'2*3/2 ~ e'4 \divisioMaior
d'2 ~ d'2 a2 ~ a4 \divisioMinima
b4 r2 d'2 ~ d'4 ~ d'2*3/2 ~ d'4 \divisioMinima
b2 e'2 d'4 ~ d'2 ~ d'2 b2*4/2 a2 \divisioMaxima
d'4 ~ d'2 ~ d'2 e'2*3/2 d'2*3/2 c'2*4/2 ~ c'2*3/2 d'2 \divisioMaior
b4 ~ b2*3/2 ~ b2*3/2 ~ b2*3/2 ~ b2*3/4 d'2*4/2 c'2 ~ c'2*3/4 ~ c'2 b2*3/2 \finalis
a2 ~ a2*3/4 ~ a2*3/2 ~ a2*3/2 ~ a4 \finalis
}

tenorMusic = {
r2 b2*3/2 \divisioMinima
c'4 ~ c'2 d'2*3/2 c'4 \divisioMaior
b2 ~ b2 a2 ~ a4 ~ \divisioMinima
a4 g2 ~ g2 fis4 e2*3/2 fis4 \divisioMinima
e2 ~ e2 ~ e4 d2 fis2 a2*4/2 g4 fis4 \divisioMaxima
r4 fis2 e2 ~ e2*3/2 ~ e2*3/2 ~ e2*4/2 g2*3/2 fis2 \divisioMaior
e4 fis2*3/2 g2*3/2 a2*3/2 g2*3/4 ~ g2*4/2 a2 g2*7/4 ~ g2*3/2 \finalis
fis2 a2*3/4 g2*3/2 e2*3/2 fis4 \finalis
}

bassMusic = {
r2*5/2 \divisioMinima
r4 b2 a2*3/2 ~ a4 ~ \divisioMaior
a2 g2 ~ g2 fis4 \divisioMinima
e4 ~ e2 d2 ~ d4 ~ d2*3/2 ~ d4 ~ \divisioMinima
d2 c2 b,4 ~ b,2 ~ b,2 ~ b,2*4/2 d2 \divisioMaxima
r4 d2 ~ d2 c2*3/2 b,2*3/2 a,2*4/2 ~ a,2*3/2 d2 \divisioMaior
e4 ~ e2*3/2 ~ e2*3/2 ~ e2*3/2 ~ e2*3/4 b,2*4/2 a,2 ~ a,2*7/4 g,2*3/2 \finalis
d2 ~ d2*3/4 ~ d2*3/2 ~ d2*3/2 ~ d4 \finalis
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
