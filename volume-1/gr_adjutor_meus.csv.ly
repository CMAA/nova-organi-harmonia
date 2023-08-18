\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.210
%(volume.page)

global = {
 \key cis \
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Adjutor meus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Adjutor meus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Adjutor meus" }
    \line {}
  }
}

chantText = \lyricmode {
Ad -- jú -- tor _ _ me -- us, 
\set stanza = " * " 
et li -- be -- rá -- tor me -- us _ _ _ e -- sto: _ _ 
Dó -- _ mi -- _ ne, _ _ _ _ _ _ 
ne tar -- dá -- ve -- _ ris. _ _ _ _ _ ℣. 
Con -- fun -- dán -- _ _ tur, _ _ 
et re -- ve -- re -- án -- _ _ _ _ _ _ tur 
in -- i -- mí -- ci me -- _ _ _ _ _ _ i, _ _ _ _ 
qui quæ -- runt á -- ni -- mam 
\set stanza = " * " me -- _ _ _ _ _ _ am. _ _ _ _ }

chantMusic = {
\tieDown   b4 d'4 ( e'4 fis'4) b4 ( d'4) e'4 ( fis'4) g'4 ( fis'4 fis'4) e'4 ( fis'4 g'4 fis'4 e'4 fis'4) fis'4 ( e'4) \divisioMaior
 e'4 ( \once \tweak #'font-size #-4 d' ) e'4 g'4 ( fis'4) g'4 ( a'4 g'4 e'4 \forceBreak
) g'4 ( e'4 fis'\prall g'4) g'4 ( a'4 g'4 e'4) e'4 ( d'4 g'4) fis'4 ( g'4 e'4.) fis'4 ( e'4 d'4) e'4 ( d'4) \divisioMinima
 g'4 ( fis'4) fis'4 ( a'4 g'4 fis'4) g'4 ( fis'4 e'4) fis'4 ( e'4) \divisioMaxima
 e'4 ( g'4 fis'4) g'4 ( a'4 \forceBreak
) g'4 ( fis'4) ~ fis'4 ( e'4 fis'4) e'4. d'4 ( e'4) g'4 ( g'4 e'4) g'4 ( g'4 e'4 d'4) g'4 ( a'4 g'4) ~ g'4 ( g'4 e'4) d'4 ( d'4 b4 d'4) \divisioMaior
 b4 b4 d'4 ( e'4) g'4 ( e'4) ~ e'4 ( d'4 fis'4) fis'4 ( a'4 g'4. \forceBreak
) a'4 ( g'4 e'4) fis'4 ( e'4 d'4 e'4) g'4 g'4 \divisioMinima
 a'4 ( b'4 a'4 fis'4) g'4 ( a'4 g'4 g'4) e'4 ( fis'4 e'4) \finalis
  d'4 e'4 g'4 ( a'4 b'4 a'4 g'4) a'4 ( g'4 fis'4) g'4 ( a'4 g'4 a'4 \forceBreak
)  a'4 ( cis''4 a'4 b'\prall cis''4) ~ cis''4 ( b'4 a'4) b'4 ( a'4) \divisioMaior
 g'4 g'4 g'4 a'4 ( b'4) b'4 ( a'4 g'4.) fis'4 ( g'4) a'4 ( fis'4) a'4 ( g'4) ~ g'4 ( g'4) ~ g'4 ( e'4 d'4) fis'4 ( d'4 e'4) e'4 \divisioMaior \forceBreak

 d'4 e'4 fis'4 ( e'4 b'4) b'4  d''4 ( b'4) ~ b'4 ( a'4) b'4 ( cis''4 a'4 g'4) \divisioMinima
 a'4 ( b'4) d''4 ( d''4 b'4 g'4.) b'4 ( a'4 g'4) ~ g'4 ( f'4 e'4) e'4 g'4 ( g'4 e'4) g'4 ( a'4 g'4 \forceBreak
) ~ g'4 ( g'4) e'4 ( f'4 e'4) \divisioMaxima
 e'4 g'4 ( g'4 a'4) g'4 a'4 ( b'4 g'4) a'4 ( b'4) b'4   d''4 ( b'4) ~ b'4 ( a'4) b'4 ( cis''4 a'4 g'4) \divisioMinima
 a'4 ( b'4 \forceBreak
) d''4 ( d''4 b'4 g'4.) b'4 ( a'4 g'4) ~ g'4 ( f'4 e'4) e'4 g'4 ( g'4 e'4) g'4 ( a'4 g'4) ~ g'4 ( g'4) e'4 ( f'4 e'4) \finalis

}

altoMusic = {
r4 a2*3/2 b2*4/2 ~ b2*3/2 ~ b2*6/2 ~ b2 \divisioMaior
r2*3/2 b2 ~ b2*4/2 ~ b2*4/2 a2*4/2 d'2*3/2 ~ d'2 ~ d'2*3/4 ~ d'2*5/2 ~ \divisioMinima
d'2 ~ d'2*4/2 b2*3/2 ~ b2 \divisioMaxima
c'2*3/2 d'2*3/2 ~ d'2*4/2 ~ d'2*3/4 c'2 d'2*3/2 ~ d'2*4/2 b2*3/2 ~ b2*3/2 ~ b2*4/2 ~ \divisioMaior
b2 c'2*3/2 b2*4/2 d'2 ~ d'2*3/4 e'2 ~ e'4 d'2*4/2 ~ d'2 \divisioMinima
e'2*4/2 ~ e'2*4/2 b2 ~ b4 r4 e'4 ~ e'2*5/2 ~ e'2*3/2 d'2*4/2 e'2 ~ e'2 ~ e'2*4/2 fis'2 \divisioMaior
e'2 ~ e'2*3/2 ~ e'2*7/4 ~ e'2*6/2 ~ e'2 r2*3/2 d'2*3/2 r4 \divisioMaior
d'2 b2*3/2 e'2 fis'2*3/2 e'2*4/2 ~ \divisioMinima
e'2 d'2*3/2 ~ d'2*7/4 c'2*4/2 d'2*4/2 ~ d'2*3/2 ~ d'2 b2 ~ b4 \divisioMaxima
r4 b2*4/2 e'2*3/2 ~ e'2*3/2 d'4 ~ d'2*3/2 e'2*4/2 ~ \divisioMinima
e'2 d'2*3/2 ~ d'2*7/4 c'2*4/2 d'2*4/2 e'2*3/2 ~ e'2 b2 d'4 \finalis
}

tenorMusic = {
g4 ~ g2*3/2 ~ g2*4/2 ~ g2*3/2 a2*6/2 g2 \divisioMaior
a2*3/2 g2 ~ g2*4/2 e2*4/2 ~ e2*4/2 g2*3/2 a2 g2*3/4 fis2*5/2 \divisioMinima
g2 a2*4/2 ~ a2*3/2 g2 ~ \divisioMaxima
g2*3/2 ~ g2*3/2 a2*4/2 g2*3/4 ~ g2 ~ g2*3/2 a2*4/2 ~ a2*3/2 g2*3/2 fis2*4/2 ~ \divisioMaior
fis2 g2*3/2 fis2*4/2 a2 b2*3/4 a2*3/2 ~ a2*4/2 g2 ~ \divisioMinima
g2*4/2 a2*4/2 ~ a2 g4 d'2 ~ d'2*5/2 c'2*3/2 ~ c'2*4/2 ~ c'2 ~ c'2 ~ c'2*4/2 d'2 \divisioMaior
e'2 d'2*3/2 c'2*7/4 ~ c'2*6/2 ~ c'2 ~ c'2*3/2 b2*3/2 ~ b4 \divisioMaior
a2 ~ a2*3/2 g2 ~ g2*3/2 ~ g2*4/2 \divisioMinima
fis2 ~ fis2*3/2 g2*7/4 ~ g2*4/2 ~ g2*4/2 b2*3/2 a2 ~ a2 g4 \divisioMaxima
e4 ~ e2*4/2 ~ e2*3/2 fis2*3/2 ~ fis4 g2*3/2 ~ g2*4/2 \divisioMinima
fis2 ~ fis2*3/2 g2*7/4 ~ g2*4/2 ~ g2*4/2 ~ g2*3/2 a2 ~ a2 g4 \finalis
}

bassMusic = {
r4 fis2*3/2 ~ fis2*4/2 e2*3/2 ~ e2*6/2 ~ e2 \divisioMaior
fis2*3/2 ~ fis2 e2*4/2 d2*4/2 c2*4/2 b,2*3/2 ~ b,2 ~ b,2*3/4 ~ b,2*5/2 ~ \divisioMinima
b,2 ~ b,2*4/2 e2*3/2 ~ e2 \divisioMaxima
a,2*3/2 b,2*3/2 ~ b,2*4/2 ~ b,2*3/4 a,2 b,2*3/2 ~ b,2*4/2 e2*3/2 ~ e2*3/2 b,2*4/2 ~ \divisioMaior
b,2 a,2*3/2 b,2*4/2 ~ b,2 ~ b,2*3/4 c2*3/2 b,2*4/2 ~ b,2 \divisioMinima
c2*4/2 ~ c2*4/2 e2 ~ e4 r2*16/2 b2 a2*4/2 d'2 \divisioMaior
r2*29/4 b2 a2*3/2 ~ a2*3/2 g4 \divisioMaior
fis2 e2*3/2 ~ e2 d2*3/2 c2*4/2 ~ \divisioMinima
c2 b,2*3/2 ~ b,2*7/4 a,2*4/2 b,2*4/2 ~ b,2*3/2 ~ b,2 e2 ~ e4 \divisioMaxima
r4 d2*4/2 c2*3/2 ~ c2*3/2 b,4 ~ b,2*3/2 c2*4/2 ~ \divisioMinima
c2 b,2*3/2 ~ b,2*7/4 a,2*4/2 b,2*4/2 c2*3/2 ~ c2 e2 ~ e4 \finalis
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
        "2"
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
