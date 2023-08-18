\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.308
%(volume.page)

global = {
 \key d \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Signa eos" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Signa eos"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Signa eos" }
    \line {}
  }
}

chantText = \lyricmode {
Si -- gna e -- os 
\set stanza = " * " qui in me cre -- _ dunt, _ 
hæc se -- _ quén -- tur: 
dæ -- mó -- ni -- a e -- jí -- ci -- ent: 
su -- per æ -- _ gros ma -- nus im -- pó -- nent, 
et _ be -- ne ha -- bé -- bunt. }

chantMusic = {
\tieDown   a'4 a'4 ( fis'4) a'4 a'4 ( b'4) \divisioMinima
 a'4 b'4 a'4 ( a'4 g'4) b'4 d''4 ( d''4 a'4 b'4) b'4 ( a'4) ~ a'4 ( fis'4 a'4) \divisioMaior
 a'4 ( b'4) a'4. g'4 ( a'4 fis'4 g'4) e'4 ( fis'\prall g'4 \tiny fis' e' 4) fis'4 ( e'4) \divisioMaxima
 e'4 e'4 ( a'4) a'4 a'4 a'4 ( fis'4) a'4 ( b'4) a'4 ( b'4) a'4 ( b'4) \divisioMaior
 a'4 ( g'4) a'4 b'4 d''4 ( d''4 a'4 b'4) b'4 \divisioMinima
 b'4 a'4 a'4 ( \once \tweak #'font-size #-4 fis' ) g'4 ( a'4 g'4 g'4) g'4 ( fis'4) \divisioMaior
 g'4 ( a'4) d'4 ( \once \tweak #'font-size #-4 e' ) e'4 d'4 ( e'4 d'4 c'4) d'4 ( e'4 fis'\prall g'4 fis'4 e'4 fis'\prall g'4 fis'4 e'4) d'4 ( e'4 fis'4 e'4 d'4 e'4) e'4 ( d'4) \finalis

}

altoMusic = {
r4 d'2*3/2 ~ d'2 ~ \divisioMinima
d'2 ~ d'2*4/2 ~ d'2*5/2 ~ d'2*4/2 \divisioMaior
b2 ~ b2*3/4 ~ b2*4/2 ~ b2*5/2 ~ b2 \divisioMaxima
r4 e'2*4/2 d'2 ~ d'2*4/2 ~ d'2 ~ \divisioMaior
d'2*4/2 ~ d'2*4/2 ~ d'4 ~ \divisioMinima
d'2 ~ d'2 e'2*4/2 d'2 ~ \divisioMaior
d'2 r2*7/2 fis'2*5/2 c'2*5/2 a2*6/2 ~ a2 \finalis
}

tenorMusic = {
fis4 ~ fis2*3/2 ~ fis2 ~ \divisioMinima
fis2 g2*4/2 fis2*5/2 ~ fis2*4/2 ~ \divisioMaior
fis2 ~ fis2*3/4 g2*4/2 a2*5/2 g2 \divisioMaxima
b4 a2*4/2 ~ a2 fis2*4/2 ~ fis2 \divisioMaior
g2*4/2 e2*4/2 fis4 ~ \divisioMinima
fis2 a2 b2*4/2 ~ b2 \divisioMaior
g2 fis2*3/2 g2*4/2 ~ g2*5/2 ~ g2*5/2 ~ g2*6/2 fis2 \finalis
}

bassMusic = {
d4 ~ d2*3/2 b,2 ~ \divisioMinima
b,2 ~ b,2*4/2 ~ b,2*5/2 d2*4/2 ~ \divisioMaior
d2 e2*3/4 ~ e2*4/2 ~ e2*5/2 ~ e2 \divisioMaxima
c4 ~ c2*4/2 d2 ~ d2*4/2 c,2 \divisioMaior
b,2*4/2 ~ b,2*4/2 ~ b,4 \divisioMinima
d2 fis2 e2*4/2 b,2 ~ \divisioMaior
b,2 ~ b,2*3/2 a,2*4/2 b,2*5/2 c2*5/2 d2*6/2 ~ d2 \finalis
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
