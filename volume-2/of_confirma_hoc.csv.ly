\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.83
%(volume.page)

global = {
 \key fis \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Confirma hoc" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Confirma hoc"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Confirma hoc" }
    \line {}
  }
}

chantText = \lyricmode {
Con -- fír -- ma 
\set stanza = " * " hoc _ _ De -- us, _ _ 
quod o -- pe -- rá -- _ tus es in no -- _ bis: _ 
a tem -- plo tu -- _ o, _ 
quod _ est _ in Je -- rú -- _ sa -- lem, _ 
ti -- _ bi óf -- _ _ fe -- rent re -- _ ges mú -- ne -- _ ra, _ 
al -- le -- _ _ lú -- ia. _ _ }

chantMusic = {
\tieDown   e'4 ( fis'\prall g'4) g'4 fis'4 ( g'4 a'4)   a'4 ( b'4 g'4.) c''4 ( b'4) c''4 ( a'4 b'4) fis'4 fis'4 ( a'4 g'4) a'4 ( g'4) ~ g'4 ( fis'4) \divisioMaior \forceBreak

 g'4 g'4 ( a'4 g'4 g'4) e'4 ( g'4) g'4 ( g'4 g'4) a'4 ( b'4 a'4) a'4 ( fis'4 g'4) fis'4 ( e'4) \divisioMinima
 a'4 ( b'4) a'4 d''4 ( d''4 d''4) b'4 ( d''4 b'4) ~ b'4 ( a'4) \divisioMaxima \forceBreak

 a'4 a'4 ( b'4) b'4 ( a'4)  a'4 ( c''4 b'4) c''4 ( a'4 g'4) a'4 ( g'4) ~ g'4 ( fis'4) \divisioMaior
 g'4 ( fis'4) g'4 ( a'4)  b'4 ( c''4 a'4) b'4 ( g'4 fis'4) \divisioMinima \forceBreak

 a'4 ( b'4) a'4 ( d''4 b'4) a'4 ( b'4 g'4) a'4 ( b'4 a'4) g'4 ( e'4) fis'4. g'4 ( a'4 g'4 a'4 e'4) \divisioMaxima
 e'4 ( g'4) a'4 ( fis'4 g'4) g'4  g'4 ( fis'4) b'4 ( c''4 b'4) c''4 ( b'4 \forceBreak
) b'4 ( b'4 a'4 b'4) a'4 e'4 ( g'4) a'4 ( fis'4 g'4) g'4 \divisioMinima
 g'4 ( a'4 fis'4) g'4 a'4 ( b'4 g'4) g'4 ( g'4) a'4 ( b'4 a'4) \divisioMaior
 b'4 ( \once \tweak #'font-size #-4 a'  \forceBreak
)  b'4 ( g'4) c''4 ( b'4) c''4 ( a'4 b'4) fis'4 fis'4 ( a'4 g'4) a'4 ( g'4) ~ g'4 ( fis'4) \finalis

}

altoMusic = {
r2*4/2 fis'2*3/2 d'2*7/4 e'2*5/2 ~ e'4 d'2*4/2 c'2 d'4 ~ \divisioMaior
d'4 e'2*4/2 ~ e'2 d'2*3/2 ~ d'2*3/2 b2*3/2 ~ b2 \divisioMinima
e'2 ~ e'4 d'2*3/2 ~ d'2 ~ d'2*3/2 ~ \divisioMaxima
d'4 ~ d'2 e'2 ~ e'2*5/2 d'2 ~ d'2*3/2 \divisioMaior
e'2*4/2 ~ e'2*3/2 d'2*3/2 \divisioMinima
e'2 d'2*3/2 ~ d'2*6/2 ~ d'2 ~ d'2*3/4 b2*3/2 ~ b2 ~ \divisioMaxima
b2*6/2 d'2 ~ d'2*5/2 ~ d'2*5/2 b2 ~ b2*3/2 ~ b4 \divisioMinima
c'2*3/2 d'4 ~ d'2*3/2 ~ d'2 ~ d'2*3/2 ~ \divisioMaior
d'2 ~ d'2 e'2*5/2 ~ e'4 d'2 ~ d'2 c'2 d'4 \finalis
}

tenorMusic = {
r2*3/2 e'4 d'2*3/2 b2*7/4 a2*5/2 b2*5/2 ~ b2 ~ b4 ~ \divisioMaior
b4 ~ b2*4/2 g2 ~ g2*3/2 fis2*3/2 ~ fis2*3/2 g2 \divisioMinima
e2 fis4 ~ fis2*3/2 g2 fis2*3/2 ~ \divisioMaxima
fis4 g2 ~ g2 a2*5/2 ~ a2 b2*3/2 ~ \divisioMaior
b2*4/2 a2*3/2 ~ a2*3/2 \divisioMinima
fis2 ~ fis2*3/2 g2*6/2 e2 d2*3/4 e2*3/2 ~ e2 ~ \divisioMaxima
e2*6/2 d2 fis2*3/2 g2 fis2*5/2 a2 fis2*3/2 e4 ~ \divisioMinima
e2*3/2 d4 g2*3/2 ~ g2 fis2*3/2 \divisioMaior
g2 ~ g2 ~ g2*5/2 a4 ~ a2 e2 b2 ~ b4 \finalis
}

bassMusic = {
r2*47/4 \divisioMaior
r4 e2*4/2 ~ e2 b,2*3/2 ~ b,2*3/2 d2*3/2 e2 \divisioMinima
c2 ~ c4 b,2*3/2 ~ b,2 d2*3/2 \divisioMaxima
r2*3/2 c2 ~ c2*5/2 b,2 ~ b,2*3/2 \divisioMaior
e2*4/2 g2*3/2 fis2*3/2 \divisioMinima
cis2 b,2*3/2 ~ b,2*6/2 ~ b,2 ~ b,2*3/4 e2*3/2 e,2 \divisioMaxima
g,2*6/2 b,2 ~ b,2*3/2 ~ b,2 d2*5/2 e2 ~ e2*3/2 ~ e4 \divisioMinima
a,2*3/2 b,4 ~ b,2*3/2 e2 d2*3/2 \divisioMaior
r2 e2 a,2*5/2 ~ a,4 b,2 ~ b,2 ~ b,2 ~ b,4 \finalis
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
