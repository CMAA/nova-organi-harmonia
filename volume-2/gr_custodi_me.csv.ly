\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.178
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Custodi me" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Custodi me"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Custodi me" }
    \line {}
  }
}

chantText = \lyricmode {
Cu -- stó -- di me, _ _ _ 
\set stanza = " * " Dó -- _ mi -- _ ne, _ _ _ _ _ _ _ _ _ 
ut pu -- píl -- lam _ ó -- cu -- li: _ _ _ 
sub um -- bra _ _ _ a -- lá -- _ _ _ rum tu -- á -- _ _ rum _ _ _ _ _ _ 
pró -- _ te -- _ _ _ _ ge _ _ _ _ me. _ _ _ _ _ ℣. 
De vul -- tu tu -- o _ _ _ _ _ _ _ _ 
ju -- dí -- _ ci -- _ um me -- _ _ _ _ um pród -- e -- at: 
ó -- cu -- li tu -- _ _ _ _ _ _ i _ _ _ 
ví -- _ _ _ _ _ _ de -- ant 
\set stanza = " * " 
æ -- qui -- tá -- _ tem. _ _ _ }

chantMusic = {
\tieDown   e'4 e'4 d'4 ( e'4) g'4 ( g'4) fis'4 ( a'4 g'4 fis'4) g'4 ( fis'4 e'4) fis'4 ( e'4) \divisioMinima
 e'4 ( g'4 fis'4) g'4 ( a'4) g'4 ( fis'4) ~ fis'4 ( e'4 fis'4) e'4. \forceBreak
 d'4 ( e'4) g'4 ( g'4 e'4) g'4 ( g'4 e'4 d'4) g'4 ( a'4 g'4) ~ g'4 ( g'4 e'4) \divisioMinima
 g'4 ( g'4 e'4 fis'4.) g'4 ( a'4 e'4) fis'4 ( e'4 d'4) e'4 ( d'4) \divisioMaior
 g'4 ( a'4) g'4 \forceBreak
 g'4 ( b'4 a'4 b'4)  b'4 ( c''4 b'4) ~ b'4 ( a'4) g'4 g'4 ( fis'4 e'4) e'4 fis'4 ( g'4 a'4 g'4 fis'4 e'4.) g'4 ( a'4 g'4) a'4 ( g'4 fis'4 e'4) \divisioMaxima
 e'4 ( d'4 g'4) b'4 ( g'4 b'4 \forceBreak
) b'4 d''4 ( d''4 b'4) d''4 ( a'4) ~ a'4 ( g'4) \divisioMinima
 g'4 b'4 ( g'4 b'4 a'4 g'4.) b'4 ( g'4) a'4 ( b'4) d''4 ( d''4) b'4 ( d''4) a'4 ( g'4) g'4. fis'4 ( a'4 g'4) ~ g'4 ( fis'4 e'4) e'4 ( g'4) \divisioMinima \forceBreak

 d'4 ( e'4 g'4) b'4 ( g'4 b'4.) a'4 ( b'4 g'4) ~ g'4 ( a'4 g'4) a'4 ( g'4) ~ g'4 ( fis'4) \divisioMaior
 g'4 ( e'4) g'4 ( a'\prall b'4 a'4 b'4) b'4 ( a'4) g'4 ( g'4 e'4) g'4 ( g'4)  b'4 ( c''4 a'4 g'4) b'4 ( a'4 g'4 \forceBreak
) a'4 ( g'4) ~ g'4 ( e'4 d'4) g'4 ( g'4 d'4) \divisioMinima
 g'4 ( a'4 g'4 a'4)  b'4 ( a'4) b'4 ( c''4 a'4 g'4) a'4 ( b'4 a'4 b'4.) d''4 ( b'4 a'4) b'4 ( g'4 e'4.) g'4 ( g'4 g'4) e'4 ( fis'4 e'4) \finalis \forceBreak

 d'4 ( e'4)  e'4 ( b'4 c''4) b'4 b'4 b'4 ( a'4) b'4 ( b'4 a'4) b'4 ( b'4) \divisioMinima
 a'4 ( b'4) d''4 ( d''4) ~ d''4 ( b'4) d''4 ( d''4 cis''4 b'4) d''4 ( a'4) ~ a'4 ( g'4) \divisioMaior \forceBreak

 e'4 ( b'4) b'4 d''4 ( d''4 b'4) b'4 d''4 ( d''4 b'4) b'4 b'4 ( a'4 b'4) d''4 ( d''4) ~ d''4 ( a'4) cis''4 ( b'4) ~ b'4 ( a'4) a'4 cis''4 d''4 ( cis''4 b'4) b'4 ( cis''4 b'4) \divisioMaxima \forceBreak

 b'4 ( d''4) b'4 ( g'4) a'4 b'4 ( g'4) a'4 ( b'4) d''4. cis''4 ( d''4 b'4) \divisioMinima
  d''4 ( d''4 b'4 a'4) b'4 ( c''4 a'4 g'4.) a'4 ( b'4 g'4 e'4) g'4. fis'4 ( a'\prall b'4 a'4 b'4 \forceBreak
)  b'4 ( g'4) b'4 ( c''4 a'4) g'4 ( g'4) e'4 ( fis'4 e'4) \divisioMaxima
 e'4 ( g'4 fis'4 e'4) g'4 ( fis'4 e'4.) ~ e'4 ( fis'4 g'4 a'4) b'4 ( d''4 cis''4 b'4) ~ b'4 ( a'4 b'4) \divisioMinima \forceBreak

  g'4 ( b'4 c''4 a'4 g'4 fis'4.) g'4 ( a'\prall b'4 c''4 b'4 a'4) b'4 ( a'4) a'4 \divisioMaior
 a'4 a'4 ( b'4)  d''4 ( b'4 c''4 a'4 g'4.) b'4 d''4 ( d''4 b'4 a'4 \forceBreak
) b'4 ( a'4 b'4 g'4 fis'4) g'4 ( a'4) \divisioMinima
 e'4 ( fis'\prall g'4 a'4.) g'4 ( b'4 a'4 g'4 fis'4 e'4 fis'\prall g'4 e'4) \finalis

}

altoMusic = {
b2 ~ b2 ~ b2 d'2*4/2 ~ d'2*3/2 b2 \divisioMinima
e'2*3/2 d'2*3/2 b2*4/2 ~ b2*3/4 a2 b2*3/2 c'2 ~ c'2 d'2*3/2 e'2 ~ e'4 \divisioMinima
d'2*3/2 ~ d'2*3/4 c'2*3/2 ~ c'2*3/2 a2 \divisioMaior
d'2*3/2 b2*4/2 g'2 fis'2*3/2 d'4 ~ d'2*3/2 b4 e'2*5/2 ~ e'2*9/4 ~ e'2 b2 \divisioMaxima
r2 g'4 ~ g'2*4/2 fis'2*4/2 d'2*4/2 ~ d'2 ~ d'2*7/4 ~ d'2*4/2 ~ d'2*4/2 ~ d'2 ~ d'2*3/4 ~ d'2 b2*4/2 ~ b2 ~ \divisioMinima
b2*3/2 d'2*7/4 e'2 d'2*5/2 ~ d'2*3/2 \divisioMaior
b2 d'2*5/2 ~ d'2 b2*3/2 c'2 ~ c'2*4/2 ~ c'2*4/2 d'2 ~ d'2 ~ d'2*3/2 ~ \divisioMinima
d'2*4/2 ~ d'2 c'2 ~ c'2 d'2 ~ d'2*5/4 ~ d'2*3/2 ~ d'2*7/4 c'2*3/2 b2 ~ b4 \finalis
r4 e'4 ~ e'2*4/2 <fis' e'>4 <fis' d'>2 <e' c'>2*3/2 fis'2 \divisioMinima
g'2 a'2 g'2 fis'2*3/2 ~ fis'2 e'2*3/2 ~ \divisioMaior
e'2*3/2 d'2*4/2 ~ d'2*4/2 g'2*3/2 ~ g'2 fis'2*3/2 e'2*3/2 ~ e'2 ~ e'2*3/2 ~ e'2 d'4 ~ \divisioMaxima
d'2*5/2 ~ d'2*4/2 fis'2*3/4 ~ fis'2*3/2 g'2*4/2 ~ g'2*3/2 ~ g'2*3/4 e'2*4/2 ~ e'2*3/4 fis'2 ~ fis'2*3/2 e'2 ~ e'2*3/2 d'2 b'2 b4 \divisioMaxima
c'2*4/2 b2 ~ b2*3/4 e'2 ~ e'2 fis'2*3/2 ~ fis'2*4/2 e'2 ~ e'2*3/2 d'2*3/4 ~ d'2*3/2 c'2*3/2 d'2*3/2 ~ \divisioMaior
d'4 fis'2 g'2*4/2 ~ g'2*3/4 r4 fis'2 ~ fis'2 e'2*3/2 ~ e'2 ~ e'2 \divisioMinima
d'2*3/2 c'2*9/4 ~ c'2 b2*3/2 ~ b4 \finalis
}

tenorMusic = {
g2 a2 g2 a2*4/2 ~ a2*3/2 g2 ~ \divisioMinima
g2*3/2 ~ g2*3/2 d2*4/2 e2*3/4 ~ e2 ~ e2*3/2 ~ e2 g2 ~ g2*3/2 ~ g2*3/2 ~ \divisioMinima
g2*3/2 d2*3/4 e2*3/2 g2*3/2 ~ g4 fis4 \divisioMaior
g2*3/2 ~ g2*4/2 b2 ~ b2*3/2 ~ b4 a2*3/2 g4 b2*5/2 c'2*9/4 b2 a4 g4 \divisioMaxima
b2*3/2 ~ b2*4/2 ~ b2*4/2 ~ b2*3/2 ~ \divisioMinima
b4 g2 ~ g2*7/4 ~ g2*4/2 fis2*4/2 g2 b2*3/4 a2 ~ a2*4/2 g2 ~ \divisioMinima
g2*3/2 ~ g2*7/4 ~ g2 ~ g2*5/2 a2*3/2 \divisioMaior
g2 ~ g2*5/2 fis2 e2*3/2 ~ e2 ~ e2*4/2 g2*4/2 ~ g2 ~ g2 ~ g2*3/2 \divisioMinima
e2*4/2 ~ e2 ~ e2 g2 ~ g2 fis2*5/4 ~ fis2*3/2 g2*7/4 a2*3/2 ~ a2 g4 \finalis
r2*12/2 d'2 ~ \divisioMinima
d'2 b2 ~ b2 ~ b2*3/2 d'2 b2*3/2 \divisioMaior
g2*3/2 ~ g2*4/2 fis2*4/2 g2*3/2 a2 ~ a2*3/2 e2*3/2 a2 g2*3/2 fis2 ~ fis4 \divisioMaxima
g2*5/2 ~ g2*4/2 b2*3/4 fis2*3/2 b2*4/2 d'2*9/4 c'2*4/2 b2*3/4 ~ b2 ~ b2*3/2 g2 a2*3/2 b2 a2 g4 \divisioMaxima
a2*4/2 ~ a2 g2*3/4 b2 ~ b2 ~ b2*3/2 ~ b2*4/2 ~ b2 a2*3/2 ~ a2*3/4 g2*3/2 ~ g2*3/2 fis2*3/2 ~ \divisioMaior
fis4 a2 g2*4/2 b2*5/4 ~ b2 ~ b2 g2*3/2 e2 ~ e2 ~ \divisioMinima
e2*3/2 ~ e2*9/4 a2 ~ a2*3/2 g4 \finalis
}

bassMusic = {
r2 fis2 e2 d2*4/2 b,2*3/2 e2 \divisioMinima
c2*3/2 b,2*3/2 a,2*4/2 g,2*3/4 fis,2 e,2*3/2 a,2 ~ a,2 b,2*3/2 c2*3/2 \divisioMinima
b,2*3/2 ~ b,2*3/4 a,2*3/2 ~ a,2*3/2 d2 \divisioMaior
b,2*3/2 e2*4/2 d2 ~ d2*3/2 b,4 ~ b,2*3/2 e4 ~ e2*5/2 ~ e2*9/4 ~ e2 ~ e2 \divisioMaxima
g2*3/2 e2*4/2 d2*4/2 g2*4/2 ~ g2 fis2*7/4 e2*4/2 b,2*4/2 ~ b,2 a,2*3/4 d2 e2*4/2 ~ e2 \divisioMinima
fis2*3/2 e2*7/4 c2 b,2*5/2 d2*3/2 \divisioMaior
e2 b,2*5/2 d2 ~ d2*3/2 c2 a,2*4/2 ~ a,2*4/2 b2 c2 b,2*3/2 ~ \divisioMinima
b,2*4/2 a,2 ~ a,2 ~ a,2 d2 ~ d2*5/4 b,2*3/2 e2*7/4 ~ e2*3/2 ~ e2 ~ e4 \finalis
r2*12/2 b2 \divisioMinima
g2 fis2 e2 d2*3/2 ~ d2 e2*3/2 ~ \divisioMaior
e2*3/2 b,2*4/2 ~ b,2*4/2 e2*3/2 d2 ~ d2*3/2 c2*3/2 ~ c2 b,2*3/2 ~ b,2 ~ b,4 ~ \divisioMaxima
b,2*5/2 e2*4/2 d2*3/4 ~ d2*3/2 e2*4/2 ~ e2*9/4 ~ e2*4/2 ~ e2*3/4 ~ e2 d2*3/2 ~ d2 c2*3/2 b,2 e2 ~ e4 \divisioMaxima
a,2*4/2 e2 ~ e2*3/4 g2 e2 ~ e2*3/2 d2*4/2 e2 a,2*3/2 b,2*3/4 ~ b,2*3/2 e2*3/2 d2*4/2 ~ d2 e2*4/2 ~ e2*5/4 b,2 d2 ~ d2*3/2 ~ d2 c2 \divisioMinima
b,2*3/2 a,2*9/4 ~ a,2 e2*3/2 ~ e4 \finalis
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
        "I"
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
