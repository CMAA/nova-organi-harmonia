\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.190
%(volume.page)

global = {
 \key fis \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Domine Deus salutis" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Domine Deus salutis"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Domine Deus salutis" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ _ lú -- ia, 
\set stanza = " * " al -- le -- _ _ lú -- ia. _ _ _ _ _ 
_ _ _ _ _ _ _ _ _ _ _ ℣. 
Dó -- mi -- ne De -- us _ _ sa -- lú -- tis _ me -- æ, 
in di -- _ e cla -- má -- _ _ _ _ _ vi, 
et no -- cte 
\set stanza = " * " co -- ram te. _ _ _ _ _ 
_ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   fis'4 fis'4 ( a'4 g'4) fis'4 ( g'4 fis'4 e'4) fis'4 ( fis'4 e'4) a'4 ( b'\prall cis''4 d''4) cis''4 ( b'4) \divisioMinima
 fis'4 fis'4 ( a'4 g'4) fis'4 ( g'4 fis'4 e'4) fis'4 ( fis'4 e'4) a'4 ( b'\prall cis''4 d''4) cis''4 ( b'4) \divisioMinima \forceBreak

 d''4 ( cis''4 b'4) d''4 ( d''4 cis''4) a'4 ( b'4) cis''4 ( b'4) ~ b'4 ( a'4) \divisioMaior
 a'4 ( b'4) d''4 ( d''4 cis''4 a'4) b'4 ( b'4) a'4 ( b'4) cis''4 ( a'4) \divisioMinima
 a'4 ( b'4) d''4 ( d''4 cis''4 a'4) b'4 ( b'4 a'4 g'4 \forceBreak
) a'4 ( b'4 a'4) b'4 ( a'4) ~ a'4 ( fis'4) \finalis
 fis'4 ( g'4 fis'4 e'4) a'4 b'4 ( d''4 d''4) d''4 cis''4 ( b'4) d''4 ( e''4 d''4 b'4 a'4) b'4 ( b'4 a'4) \divisioMinima
 b'4 ( cis''4 b'4 \forceBreak
) cis''4 ( d''4 cis''4) b'4 ( a'4) b'4 ( cis''\prall d''4) cis''4 ( e''4 d''4 cis''4) cis''4 \divisioMaxima
 a'4 a'4 d''4 ( d''4) cis''4 ( b'4) cis''4 a'4 b'4 ( b'4 g'4) a'4 ( a'4) fis'4 ( a'4 fis'4) ~ fis'4 ( e'4 \forceBreak
) fis'4 ( g'4) fis'4 \divisioMaior
 fis'4 fis'4 ( a'4 g'4) fis'4 ( g'4 a'4)  b'4 ( cis''4 b'4 a'4) a'4 ( b'4 d''4) cis''4 ( b'4) \divisioMinima
 d''4 ( cis''4 b'4) d''4 ( d''4 cis''4) a'4 ( b'4) cis''4 ( b'4) ~ b'4 ( a'4) \divisioMaior \forceBreak

 a'4 ( b'4 d''4) ~ d''4 ( cis''4 a'4) b'4 ( b'4) a'4 ( b'4) cis''4 ( a'4) \divisioMinima
 a'4 ( b'4) d''4 ( d''4 cis''4 a'4) b'4 ( b'4 a'4 g'4) a'4 ( b'4 a'4) b'4 ( a'4) ~ a'4 ( fis'4) \finalis

}

altoMusic = {
r4 d'2*3/2 ~ d'2*4/2 r2 e'4 ~ e'2*4/2 d'2 ~ \divisioMinima
d'4 ~ d'2*3/2 ~ d'2*4/2 b2*3/2 e'2 ~ e'2 d'2 ~ \divisioMinima
d'2*3/2 e'2*3/2 fis'2*3/2 e'2*3/2 ~ \divisioMaior
e'2 d'2*4/2 ~ d'2 cis'2*4/2 \divisioMinima
e'2 d'2*4/2 ~ d'2*4/2 ~ d'2*4/2 ~ d'2 ~ d'4 \finalis
r2*3/2 e'4 ~ e'4 fis'2*3/2 a'4 ~ a'2 fis'2*3/2 ~ fis'2 ~ fis'2*3/2 ~ \divisioMinima
fis'2*3/2 ~ fis'2*3/2 ~ fis'2 ~ fis'2*3/2 a'2*4/2 ~ a'4 \divisioMaxima
r4 a'4 ~ a'2 fis'2 ~ fis'2 g'2*3/2 e'2 d'2 cis'2*3/2 d'2*3/2 ~ \divisioMaior
d'4 ~ d'2*3/2 fis'2*3/2 ~ fis'2*4/2 ~ fis'2*3/2 ~ fis'2 ~ \divisioMinima
fis'2*3/2 ~ fis'2*3/2 ~ fis'2*3/2 ~ fis'2*3/2 \divisioMaior
e'2 d'2*4/2 ~ d'2 cis'2*4/2 \divisioMinima
fis'2 ~ fis'2 ~ fis'2 d'2 ~ d'2 e'2 ~ e'2 cis'2*3/2 \finalis
}

tenorMusic = {
r4 b2*3/2 ~ b2*4/2 ~ b2*3/2 a2*4/2 fis2 ~ \divisioMinima
fis4 b2*3/2 a2*4/2 g2*3/2 fis2 ~ fis2 ~ fis2 ~ \divisioMinima
fis2*3/2 a2*3/2 ~ a2*3/2 ~ a2*3/2 \divisioMaior
fis2 ~ fis2*4/2 g2 a2*4/2 ~ \divisioMinima
a2 ~ a2*4/2 g2*4/2 ~ g2*4/2 fis2 a4 \finalis
d'2*4/2 cis'4 d'2*3/2 fis'4 e'2 ~ e'2*3/2 d'2 cis'2*3/2 \divisioMinima
d'2*3/2 e'2*3/2 cis'2 d'2*3/2 e'2*4/2 ~ e'4 \divisioMaxima
d'2 b2 a2 ~ a2 e2*3/2 ~ e2 a2 ~ a2*3/2 ~ a2*3/2 ~ \divisioMaior
a4 b2*3/2 ~ b2*3/2 cis'2*4/2 e'2*3/2 d'2 \divisioMinima
r2*3/2 a2*3/2 fis2*3/2 ~ fis2*3/2 ~ \divisioMaior
fis2 ~ fis2*4/2 g2 a2*4/2 ~ \divisioMinima
a2 b2 fis2 g2 ~ g2 e2 a2 ~ a2*3/2 \finalis
}

bassMusic = {
r4 r2*3/2 a2*4/2 g2*3/2 fis2*4/2 b,2 ~ \divisioMinima
b,4 ~ b,2*3/2 ~ b,2*4/2 e2*3/2 cis2 a,2 b,2 ~ \divisioMinima
b,2*3/2 a,2*3/2 d2*3/2 cis2*3/2 ~ \divisioMaior
cis2 b,2*4/2 ~ b,2 fis2*4/2 \divisioMinima
cis2 fis2*4/2 g2*4/2 d2*4/2 ~ d2 ~ d4 \finalis
r2*5/2 b2*3/2 fis4 ~ fis2 b2*3/2 ~ b2 fis2*3/2 \divisioMinima
b2*3/2 ~ b2*3/2 ~ b2 ~ b2*3/2 a2*4/2 ~ a4 \divisioMaxima
fis2 ~ fis2 e2 d2 ~ d2*3/2 cis2 b,2 a,2*3/2 d2*3/2 ~ \divisioMaior
d4 b,2*3/2 d2*3/2 fis2*4/2 ~ fis2*3/2 b2 ~ \divisioMinima
b2*3/2 fis2*3/2 e2*3/2 d2*3/2 \divisioMaior
cis2 b,2*4/2 ~ b,2 fis2*4/2 \divisioMinima
e2 d2 ~ d2 g2 e2 cis2 ~ cis2 fis2*3/2 \finalis
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
        "III"
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
