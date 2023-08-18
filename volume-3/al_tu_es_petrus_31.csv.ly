\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.31
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Tu es Petrus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Tu es Petrus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Tu es Petrus" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- ia, _ _ 
\set stanza = " * " al -- le -- lú -- ia. _ _ _ _ _ _ _ _ ℣. 
Tu es Pe -- _ trus, _ _ 
et su -- per hanc pe -- _ _ _ _ _ _ tram 
æ -- di -- fi -- cá -- _ _ _ _ _ bo _ 
Ec -- clé -- si -- am 
\set stanza = " * " me -- _ am. _ }

chantMusic = {
\tieDown   f'4 g'4 bes'4 ( \once \tweak #'font-size #-4 c'' ) c''4 ( bes'4) c''4 ( a'4) ~ a'4 ( g'4) \divisioMinima
  f'4 g'4 bes'4 ( \once \tweak #'font-size #-4 c'' ) c''4 ( bes'4) c''4 ( a'4) ~ a'4 ( g'4) \divisioMinima
 bes'4. c''4 ( d''4 c''4) f'4 ( g'4) bes'4 ( g'4.) bes'4. a'4 ( bes'4 f'4) bes'4 ( bes'4) ~ bes'4 ( g'4 a'\prall bes'4 g'4) \finalis
 bes'4 ( c''4) c''4 d''4 ( c''4) ~ c''4 ( bes'4 c''4) c''4. bes'4 ( bes'4) g'4 ( a'4 g'4) \divisioMaior
 g'4 g'4 ( a'4) g'4 g'4 g'4 bes'4 ( bes'4) c''4 ( d''4 bes'4 g'4) c''4 ( bes'4 a'4 f'4 g'4.) bes'4 ( g'4 bes'4) ~ bes'4 ( g'4) a'4 ( f'4) f'4 \divisioMaxima
 g'4 f'4 g'4 g'4 ( g'4 f'4) g'4 ( g'4 f'4) g'4 ( d'4) \divisioMinima
 f'4 ( g'4) bes'4 ( bes'4 g'4 f'4) bes'4 ( bes'4 bes'4) c''4 ( bes'4 a'4) bes'4 ( g'4) \divisioMaior
 g'4 bes'4 ( bes'4) bes'4 bes'4 ( \once \tweak #'font-size #-4 c'' )  c''4 ( bes'4) d''4 ( c''4 d''4) d''4 ( d''4 c''4 bes'4 a'4 f'4.) g'4 ( a'\prall bes'4 g'4) \finalis

}

altoMusic = {
cis'2 ~ cis'2 ~ cis'2*3/2 ~ cis'2 ~ cis'4 e'2 ~ e'2 ~ e'2*3/2 ~ e'2 cis'4 \divisioMinima
e'2*3/4 ~ e'2*3/2 ~ e'2 ~ e'2*5/4 d'2*9/4 e'2 ~ e'2*3/2 cis'2 \finalis
e'2*4/2 fis'2*4/2 cis'2*3/4 ~ cis'2 ~ cis'2*3/2 ~ \divisioMaior
cis'4 d'2*5/2 e'2*6/2 ~ e'2*4/2 ~ e'2*7/4 ~ e'2*3/2 ~ e'2 cis'4 ~ \divisioMaxima
cis'2*3/2 ~ cis'2*3/2 b2*3/2 a2 \divisioMinima
b2 cis'2*4/2 d'2*3/2 ~ d'2*3/2 ~ d'2 ~ \divisioMaior
d'4 e'2*3/2 ~ e'2 fis'2*5/2 e'2*4/2 ~ e'2*5/4 ~ e'2 cis'2 \finalis
}

tenorMusic = {
r2*4/2 gis2*3/2 b2 a4 ~ a2 fis2 gis2*3/2 b2 a4 ~ \divisioMinima
a2*3/4 gis2*3/2 b2 a2*5/4 ~ a2*9/4 ~ a2 b2*3/2 ~ b4 a4 ~ \finalis
a2*4/2 ~ a2*4/2 ~ a2*3/4 b2 a2*3/2 ~ \divisioMaior
a4 ~ a2*5/2 ~ a2*6/2 gis2*4/2 a2*7/4 b2*3/2 gis2 ~ gis4 ~ \divisioMaxima
gis2*3/2 fis2*3/2 ~ fis2*3/2 ~ fis2 ~ \divisioMinima
fis2 ~ fis2*4/2 ~ fis2*3/2 e2*3/2 fis2 ~ \divisioMaior
fis4 e2*3/2 a2 ~ a2*5/2 gis2*4/2 b2*5/4 ~ b2 ~ b4 a4 \finalis
}

bassMusic = {
a2 fis2 ~ fis2*3/2 ~ fis2 ~ fis4 cis2 ~ cis2 ~ cis2*3/2 ~ cis2 fis4 \divisioMinima
cis2*3/4 ~ cis2*3/2 ~ cis2 ~ cis2*5/4 b,2*9/4 cis2 ~ cis2*3/2 fis2 \finalis
cis2*4/2 d2*4/2 ~ d2*3/4 fis2 ~ fis2*3/2 ~ \divisioMaior
fis4 b,2*5/2 cis2*6/2 ~ cis2*4/2 ~ cis2*7/4 ~ cis2*3/2 ~ cis2 ~ cis4 \divisioMaxima
a,2*3/2 ~ a,2*3/2 gis,2*3/2 ~ gis,2 \divisioMinima
fis,2 ~ fis,2*4/2 b,2*3/2 ~ b,2*3/2 ~ b,2 ~ \divisioMaior
b,4 cis2*3/2 ~ cis2 d2*5/2 e2*4/2 ~ e2*5/4 cis2 fis2 \finalis
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
        "II"
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
