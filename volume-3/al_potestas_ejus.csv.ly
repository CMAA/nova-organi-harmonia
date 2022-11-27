\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.418
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Potestas ejus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Potestas ejus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Potestas ejus" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ _ lú -- ia, 
\set stanza = " * " al -- le -- _ _ lú -- ia. _ _ _ _ _ _ _ _ _ _ ℣. 
Po -- té -- stas e -- jus, _ _ po -- té -- _ _ _ _ stas æ -- tér -- _ _ _ _ _ _ na, 
quæ _ _ non au -- fe -- ré -- tur: 
et _ _ _ _ _ _ _ _ _ _ _ re -- gnum e -- jus _ 
\set stanza = " * " 
quod non cor -- _ rum -- pé -- tur. _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   e'4 ( \once \tweak #'font-size #-4 d' ) e'4 ( g'4 a'4 g'4 fis'4 e'4) g'4 ( fis'4 e'4) ~ e'4 ( d'4) g'4 ( a'\prall b'4 cis''4) b'4 ( g'4 a'4) \divisioMinima
  e'4 ( \once \tweak #'font-size #-4 d' ) e'4 ( g'4 a'4 g'4 fis'4 e'4) g'4 ( fis'4 e'4) ~ e'4 ( d'4) g'4 ( a'\prall b'4 cis''4) b'4 ( g'4 a'4) \divisioMinima
  b'4 ( a'4 g'4) a'4 ( c''4.) b'4 ( c''4 d''4 c''4 b'4 a'4.) b'4 ( a'4 g'4) a'4 ( b'4) ~ b'4 ( a'4 g'4 a'4.) e'4 ( g'4 e'4) ~ e'4 ( d'4) \divisioMinima
 d'4 ( g'4 a'4 b'4 a'4 fis'4 e'4) fis'4 ( fis'4 d'4) \finalis
 d'4 d'4 ( e'4) e'4 e'4 ( \once \tweak #'font-size #-4 d' ) e'4 ( g'4 a'4 g'4 fis'4 e'4) g'4 ( fis'4 e'4) ~ e'4 ( d'4) \divisioMinima
 g'4  a'4 ( b'4) ~ b'4 ( a'4 g'4) a'4 ( g'4 a'4) b'4 ( a'4) b'4 ( c''4) b'4 ( a'4 a'4) \divisioMinima
 g'4  a'4 ( g'4 a'4) b'4 ( a'4 g'4) a'4 ( c''4.) b'4 ( c''4 d''4 c''4 a'4) ~ a'4 ( g'4 a'4) b'4 ( a'4) b'4 ( c''4) b'4 \divisioMaior
 b'4 ( a'4 g'4 a'4.) e'4 ( g'4 e'4) ~ e'4 ( d'4) d'4 ( g'4 a'4 b'4 a'4 g'4) fis'4 ( e'4) d'4 ( e'4) e'4 ( fis'4 e'4) e'4 \divisioMaxima
  d'4 ( g'4 a'4 c''4 c''4) ~ c''4 ( b'4 g'4) a'4 ( g'4 a'4) b'4 ( d''4 b'4) \divisioMinima
  d'4 ( g'4 a'4 c''4 c''4) ~ c''4 ( b'4 g'4) a'4 ( g'4 a'4) b'4 ( d''4 b'4) \divisioMinima
  d''4 ( c''4 b'4) c''4 ( b'4 a'4) b'4 ( a'4 g'4) a'4 ( b'4) b'4 ( a'4 g'4) a'4 ( b'4) a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4 g'4) ~ g'4 ( fis'4 e'4) \divisioMaior
 e'4 e'4 ( d'4) e'4 ( g'4 a'4 g'4 fis'4 e'4) g'4 ( fis'4 e'4) e'4 ( d'4)  g'4 ( a'\prall b'4 c''4) b'4 ( g'4 a'4) \divisioMinima
  b'4 ( a'4 g'4) a'4 ( c''4.) b'4 ( c''4 d''4 c''4 b'4 a'4.) b'4 ( a'4 g'4) a'4 ( b'4) ~ b'4 ( a'4 g'4 a'4.) e'4 ( g'4 e'4) ~ e'4 ( d'4) \divisioMinima
 d'4 ( g'4 a'4 b'4 a'4 fis'4 e'4) g'4 ( g'4 e'4) \finalis

}

altoMusic = {
b2*3/2 ~ b2*7/2 a2*3/2 d'2*4/2 e'2 f'4 b2*3/2 c'2*7/2 b2*3/2 d'2*4/2 ~ d'2*3/2 ~ d'2*3/2 c'2*5/4 e'2*13/4 ~ e'2*4/2 d'2*4/2 ~ d'2*7/4 b2*3/2 \divisioMinima
d'2 ~ d'2*5/2 b2*3/2 \finalis
r4 b2*3/2 ~ b2*3/2 c'2*7/2 b2*3/2 \divisioMinima
d'2 ~ d'2*4/2 ~ d'2*7/2 ~ d'2*3/2 ~ \divisioMinima
d'4 ~ d'2*3/2 ~ d'2*3/2 e'2*5/4 d'2*4/2 c'2*4/2 e'2 ~ e'2*3/2 \divisioMaior
b2*3/2 ~ b2*7/4 ~ b2*3/2 d'2*6/2 ~ d'2*4/2 b2*3/2 ~ b4 d'2*3/2 e'2 ~ e'2*3/2 ~ e'2*3/2 d'2*3/2 ~ d'2*3/2 c'2 d'2*3/2 e'2*3/2 d'2*3/2 ~ d'2*3/2 e'2*3/2 ~ e'2*5/2 d'2*3/2 ~ d'2 b2 d'2 ~ d'2*4/2 \divisioMaior
b4 ~ b2*3/2 c'2*8/2 b2 d'2*3/2 ~ d'2 ~ d'2 ~ d'2*3/2 c'2*5/4 e'2*13/4 ~ e'2*4/2 d'2*4/2 ~ d'2*7/4 b2*3/2 \divisioMinima
d'2 ~ d'2*5/2 b2 ~ b4 \finalis
}

tenorMusic = {
g2*3/2 ~ g2*7/2 a2*3/2 b2*4/2 ~ b2 d'4 g2*3/2 ~ g2*7/2 f2*3/2 g2*4/2 e2 f4 g2*3/2 ~ g2*5/4 ~ g2*13/4 ~ g2*4/2 ~ g2*4/2 e2*7/4 f2*3/2 \divisioMinima
b2 a2*5/2 ~ a2 g4 \finalis
r4 f2*3/2 g2*3/2 ~ g2*7/2 f2*3/2 ~ \divisioMinima
f2 g2*4/2 ~ g2*3/2 e2*4/2 f2*3/2 ~ \divisioMinima
f4 ~ f2*3/2 g2*3/2 ~ g2*5/4 ~ g2*4/2 e2*4/2 a2 ~ a2 g4 \divisioMaior
f2*3/2 e2*7/4 f2*3/2 g2*6/2 a2*4/2 ~ a2*3/2 g4 ~ g2*3/2 ~ g2 ~ g2*3/2 ~ g2*3/2 ~ g2*3/2 ~ g2*3/2 e2 ~ e2*3/2 ~ e2*3/2 f2*3/2 g2*3/2 ~ g2*3/2 ~ g2*5/2 ~ g2*3/2 f2 ~ f2 d2 e2*4/2 ~ \divisioMaior
e4 g2*3/2 ~ g2*8/2 f2 g2*3/2 e2 f2 g2*3/2 ~ g2*5/4 ~ g2*13/4 ~ g2*4/2 ~ g2*4/2 e2*7/4 f2*3/2 \divisioMinima
b2 a2*5/2 ~ a2 g4 \finalis
}

bassMusic = {
r2*3/2 e2*7/2 f2*3/2 g2*4/2 ~ g2 d4 g,2*3/2 a,2*7/2 b,2*3/2 ~ b,2*4/2 d2 ~ d4 f2*3/2 e2*5/4 d2*13/4 c2*4/2 b,2*4/2 ~ b,2*7/4 ~ b,2*3/2 ~ \divisioMinima
b,2 ~ b,2*5/2 e2 ~ e4 \finalis
r4 b,2*3/2 g,2*3/2 a,2*7/2 b,2*3/2 ~ \divisioMinima
b,2 ~ b,2*4/2 d2*3/2 ~ d2*4/2 ~ d2*3/2 ~ \divisioMinima
d4 b,2*3/2 ~ b,2*3/2 c2*5/4 g,2*4/2 a,2*4/2 c2 e2 ~ e4 ~ \divisioMaior
e2*3/2 ~ e2*7/4 b2*3/2 b,2*6/2 ~ b,2*4/2 e2*3/2 ~ e4 b,2*3/2 a,2 b,2*3/2 c2*3/2 g,2*3/2 b,2*3/2 a,2 b,2*3/2 c2*3/2 b,2*3/2 ~ b,2*3/2 a,2*3/2 c2*5/2 g,2*3/2 ~ g,2 ~ g,2 ~ g,2 ~ g,2*4/2 ~ \divisioMaior
g,4 ~ g,2*3/2 a,2*8/2 b,2 ~ b,2*3/2 d2 ~ d2 f2*3/2 e2*5/4 d2*13/4 c2*4/2 b,2*4/2 ~ b,2*7/4 ~ b,2*3/2 ~ \divisioMinima
b,2 ~ b,2*5/2 e2 ~ e4 \finalis
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
        "1"
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
