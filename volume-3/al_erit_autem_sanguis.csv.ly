\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.252
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Erit autem sanguis" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Erit autem sanguis"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Erit autem sanguis" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- _ ia. 
\set stanza = " * " _ _ _ _ _ _ _ _ _ _ ℣. 
E -- rit au -- _ tem san -- guis vo -- _ bis in si -- _ _ gnum 
et vi -- dé -- bo sán -- gui -- nem, 
et trans -- í -- _ _ bo vos: 
nec e -- rit in vo -- bis 
\set stanza = " * " pla -- ga dis -- pér -- _ dens. _ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   d'4 ( \once \tweak #'font-size #-4 e' ) e'4 g'4 ( e'4) ~ e'4 ( \once \tweak #'font-size #-4 d' ) d'4 ( fis'4 e'4) \divisioMinima
 fis'4 ( g'4 fis'4) e'4 ( fis'4 e'4 d'4.) g'4 ( a'4 g'4) b'4. a'4 ( b'4 g'4 e'4.) fis'4 ( e'4) fis'4 ( e'4) fis'4 ( e'4 d'4) \divisioMinima
 d'4 ( fis'4) a'4. b'4 ( a'4 fis'4) g'4 ( fis'4) ~ fis'4 ( e'4) \finalis
 d'4 ( e'4) e'4 g'4 ( e'4) ~ e'4 ( \once \tweak #'font-size #-4 d' ) d'4 ( fis'4 e'4) \divisioMinima
 e'4 ( \once \tweak #'font-size #-4 b' ) b'4 d''4 ( b'4) ~ b'4 ( a'4) b'4 b'4 b'4 ( a'4 g'4 fis'4 e'4.) g'4 ( fis'4) g'4 ( a'4 e'4 fis'\prall g'4 fis'4 e'4 d'4 e'4) e'4 ( d'4) \divisioMaxima
 e'4 ( \once \tweak #'font-size #-4 d' ) g'4 a'4 ( b'4) fis'4 ( g'4 fis'4 e'4) fis'4 ( g'4 a'4 g'4 e'4 fis'4) e'4 ( d'4) d'4 ( e'4) \divisioMaior
 e'4 e'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4 g'4 fis'4 e'4.) g'4 ( fis'4) g'4 ( a'4) e'4 ( fis'\prall g'4 fis'4 e'4 d'4 e'4) e'4 ( d'4) \divisioMaxima
 d'4 ( e'4) e'4 e'4 fis'4 e'4 ( d'4) d'4 \divisioMinima
 e'4 d'4 ( e'4) e'4 g'4 ( e'4) ~ e'4 ( \once \tweak #'font-size #-4 d' ) d'4 ( fis'4 e'4) \divisioMinima
 fis'4 ( g'4 fis'4) e'4 ( fis'4 e'4 d'4.) g'4 ( a'4 g'4) b'4. a'4 ( b'4 g'4 e'4.) fis'4 ( e'4) fis'4 ( e'4) fis'4 ( e'4 d'4) \divisioMinima
 d'4 ( fis'4) a'4. b'4 ( a'4 fis'4) g'4 ( fis'4) ~ fis'4 ( e'4) \finalis

}

altoMusic = {
b2*4/2 ~ b2*3/2 ~ b2*3/2 ~ \divisioMinima
b2*3/2 ~ b2*9/4 ~ b2*3/2 d'2*3/4 ~ d'2*9/4 ~ d'2*7/2 ~ \divisioMinima
d'2 ~ d'2*3/4 b2*4/2 ~ b2*3/2 ~ \finalis
b2*4/2 d'2*3/2 b2*3/2 \divisioMinima
e'2*3/2 d'4 ~ d'2*5/2 ~ d'2*11/4 c'2*4/2 ~ c'2*7/2 b2 ~ \divisioMaxima
b2*3/2 ~ b2 ~ b2*4/2 ~ b2*6/2 ~ b2 ~ b2 ~ \divisioMaior
b4 e'2 ~ e'2*11/4 d'2*4/2 c'2*7/2 b2 \divisioMaxima
r2*8/2 \divisioMinima
r2*4/2 b4 ~ b2*3/2 ~ b2*3/2 ~ \divisioMinima
b2*3/2 ~ b2*9/4 ~ b2*3/2 ~ b2*3/4 ~ b2*9/4 ~ b2*7/2 \divisioMinima
d'2 ~ d'2*3/4 b2*4/2 ~ b2*3/2 \finalis
}

tenorMusic = {
fis2*4/2 g2*3/2 a2 g4 ~ \divisioMinima
g2*3/2 ~ g2*9/4 ~ g2*3/2 fis2*3/4 g2*9/4 a2*7/2 ~ \divisioMinima
a2 ~ a2*3/4 ~ a2*4/2 ~ a2 g4 \finalis
fis2*4/2 g2*3/2 a2 g4 ~ \divisioMinima
g2*3/2 ~ g4 fis2*5/2 g2*11/4 ~ g2*4/2 ~ g2*7/2 fis2 \divisioMaxima
g2*3/2 fis2 a2*4/2 g2*6/2 fis2 g2 ~ \divisioMaior
g4 ~ g2 ~ g2*11/4 ~ g2*4/2 ~ g2*7/2 fis2 \divisioMaxima
b2*5/2 a2*3/2 ~ \divisioMinima
a2*4/2 ~ a4 g2*3/2 fis2 g4 ~ \divisioMinima
g2*3/2 ~ g2*9/4 ~ g2*3/2 fis2*3/4 g2*9/4 a2*7/2 ~ \divisioMinima
a2 ~ a2*3/4 ~ a2*4/2 ~ a2 g4 \finalis
}

bassMusic = {
b,2*4/2 e2*3/2 ~ e2 ~ e4 \divisioMinima
g2*3/2 fis2*9/4 e2*3/2 d2*3/4 ~ d2*9/4 ~ d2*7/2 \divisioMinima
e2 fis2*3/4 d2*4/2 e2 ~ e4 \finalis
b,2*4/2 e2*3/2 ~ e2 ~ e4 ~ \divisioMinima
e2*3/2 b,4 ~ b,2*5/2 ~ b,2*11/4 a,2*4/2 ~ a,2*7/2 b,2 \divisioMaxima
e2*3/2 ~ e2 ~ e2*4/2 ~ e2*6/2 ~ e2 ~ e2 ~ \divisioMaior
e4 d2 c2*11/4 b,2*4/2 a,2*7/2 b,2 \divisioMaxima
g2*5/2 fis2*3/2 ~ \divisioMinima
fis2*4/2 e4 ~ e2*3/2 ~ e2 ~ e4 \divisioMinima
g2*3/2 fis2*9/4 e2*3/2 d2*3/4 ~ d2*9/4 ~ d2*7/2 \divisioMinima
e2 fis2*3/4 d2*4/2 e2 ~ e4 \finalis
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
        "I."
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
