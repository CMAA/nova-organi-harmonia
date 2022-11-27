\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.330
%(volume.page)

global = {
 \key fis \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Ego autem" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Ego autem"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Ego autem" }
    \line {}
  }
}

chantText = \lyricmode {
E -- go au -- tem, 
\set stanza = " * " dum mi -- _ hi mo -- _ lé -- _ sti es -- sent, _ _ _ _ _ _ _ 
in -- du -- é -- _ bam me ci -- lí -- ci -- o, _ 
et hu -- mi -- li -- á -- _ _ bam _ in je -- jú -- ni -- _ _ o 
á -- ni -- mam _ me -- am: _ _ _ _ 
et o -- rá -- ti -- o _ me -- _ _ a _ _ _ _ _ 
in si -- nu me -- o con -- ver -- té -- tur. _ _ _ _ ℣. 
Jú -- di -- ca Dó -- mi -- ne no -- cén -- tes me, _ _ _ _ _ 
ex -- pú -- _ _ gna im -- pu -- gnán -- _ _ _ tes me: 
ap -- pre -- hén -- _ de ar -- _ ma et scu -- _ _ tum, _ _ _ _ _ 
et ex -- sur -- _ _ _ _ _ ge _ _ _ _ 
in ad -- _ ju -- tó -- _ ri -- um _ _ _ 
\set stanza = " * " mi -- _ _ _ hi. _ _ _ _ }

chantMusic = {
\tieDown   d'4 e'4 ( g'4) fis'4 ( fis'4 g'4) fis'4 ( fis'4 g'4) \divisioMinima
 fis'4 ( g'4) e'4 ( g'4 fis'4) a'4 ( g'4) g'4 g'4 ( g'4) ~ g'4 ( e'4 d'4) e'4 ( d'4) a'4 ( g'4) g'4 \divisioMinima \forceBreak

 g'4 ( e'4 g'4) g'4 ( g'4) ~ g'4 ( e'4 d'4 e'4) g'4 ( g'4) ~ g'4 ( e'4 d'4) e'4 ( e'4) d'4 ( g'4 e'4) fis'4 ( e'4) ~ e'4 ( d'4) \divisioMaior
 d'4 d'4 d'4 ( e'4) g'4 ( fis'4 g'4 \forceBreak
) fis'4 ( g'4) g'4 g'4 fis'4 ( g'4 a'\prall b'4) a'4 a'4 ( b'4 a'4) g'4 ( a'4 g'4 e'4) \divisioMaxima
 g'4 g'4 fis'4 g'4 ( a'4) a'4 ( b'4 g'4 fis'4 \forceBreak
) a'4 ( b'4 a'4) b'4 ( g'4 fis'4) fis'4 ( g'4 fis'4 e'4) fis'4 ( e'4) \divisioMinima
 e'4 ( g'4 \once \tweak #'font-size #-4 fis' ) g'4 a'4 ( g'4 b'4) b'4 ( a'4) g'4 ( g'4 e'4) a'4 ( g'4) fis'4 \divisioMaior \forceBreak

 fis'4 ( a'4) g'4 a'4 ( fis'4) g'4 ( e'4 d'4 e'4) g'4 ( a'4)  a'4 ( b'4 a'4.) b'4 ( c''4 b'4 a'4) b'4 ( g'4) a'4 ( g'4) ~ g'4 ( fis'4) \divisioMaxima
 g'4 g'4 fis'4 ( g'4 a'4 \forceBreak
) a'4 a'4 ( fis'4) g'4 ( a'\prall b'4) b'4 ( a'4) ~ a'4 ( g'4) ~ g'4 ( fis'4) g'4 ( e'4) \divisioMinima
 g'4 ( g'4) a'4 ( fis'4) g'4 ( a'4 e'4) fis'4 ( e'4) ~ e'4 ( d'4) \divisioMaior
 d'4 ( e'4) e'4 ( a'4 b'4) a'4 \forceBreak
 a'4 ( e'4 fis'\prall g'4 a'4 g'4 fis'4) g'4 \divisioMinima
 g'4 ( g'4 g'4) g'4 ( g'4 g'4) g'4 ( b'4)  b'4 ( a'4) b'4 ( c''4 b'4 a'4) b'4 ( g'4) a'4 ( g'4) ~ g'4 ( fis'4) \finalis \forceBreak

 fis'4 ( fis'4 g'4) e'4 ( a'4) a'4 a'4 ( cis''4) cis''4 cis''4 ( cis''4 cis''4) \divisioMinima
 cis''4 ( a'4) b'4 ( d''4) cis''4 d''4 ( b'4) cis''4 ( a'4 g'4) b'4 ( g'4 a'\prall b'4 a'4) b'4 ( d''4 b'4) d''4 ( b'4) ~ b'4 ( a'4) \divisioMaxima \forceBreak

 fis'4 fis'4 ( a'4 g'4 fis'4 g'4) b'4 ( b'4) a'4 ( d''4 cis''4 d''4) b'4 ( a'4) \divisioMinima
 b'4 ( cis''\prall d''4) b'4 ( a'4)  b'4 ( a'4) b'4 ( c''4 a'4 g'4) a'4 ( g'4) a'4 ( b'4) fis'4 ( a'4 g'4 a'4) fis'4 \divisioMaxima \forceBreak

 a'4 a'4 a'4 cis''4 ( \once \tweak #'font-size #-4 b' ) b'4 ( a'4) b'4 ( d''4 b'4) ~ b'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( b'4) \divisioMinima
 fis'4 fis'4 ( a'4 g'4 fis'4 g'4) b'4 ( b'4) a'4 ( d''4 cis''4 d''4) b'4. g'4 a'4 ( a'4 g'4) \divisioMinima \forceBreak

 g'4 ( g'4 fis'4) g'4. fis'4 ( g'4 b'4 a'4 fis'4) g'4 ( e'4) ~ e'4 ( d'4) \divisioMaxima
 d'4 e'4 e'4 g'4 ( g'4) ~ g'4 ( g'4) ~ g'4 ( e'4) g'4 ( fis'4 e'4) fis'4 ( g'4 a'4 \forceBreak
) a'4 ( b'4) ~ b'4 ( a'4) g'4 ( b'4) d''4 ( b'4) ~ b'4 ( a'4) \divisioMaior
 b'4 b'4 d''4 ( d''4 b'4) g'4 g'4 ( a'4) b'4 ( b'4 a'4) a'4 a'4 ( fis'4) a'4 ( b'4 a'4 fis'4) g'4 ( e'4 d'4 \forceBreak
) e'4 ( fis'\prall g'4 fis'4) \divisioMinima
 g'4 ( e'4) g'4 ( g'4 e'4) fis'4 ( g'4 a'4) fis'4 ( g'4 b'4) b'4 ( a'4) b'4 ( d''4 b'4 a'4) b'4 ( g'4) a'4 ( g'4) ~ g'4 ( fis'4) \finalis

}

altoMusic = {
b4 ~ b2 ~ b2*3/2 d'2*3/2 ~ \divisioMinima
d'2 b2*3/2 ~ b2*3/2 ~ b2 ~ b2*3/2 ~ b2*4/2 ~ b4 ~ \divisioMinima
b2*3/2 a2 d'2*4/2 c'2 b2*3/2 ~ b2 d'2*4/2 a2 ~ a4 ~ \divisioMaior
a2 d'2 ~ d'2*3/2 ~ d'2 ~ d'2 ~ d'2*5/2 e'2*3/2 ~ e'2*3/2 ~ e'4 ~ \divisioMaxima
e'2*3/2 ~ e'2 ~ e'2*4/2 d'2*3/2 ~ d'2*3/2 ~ d'2*4/2 b2 \divisioMinima
e'2*4/2 ~ e'2*3/2 d'2 ~ d'2*3/2 e'2 ~ e'4 \divisioMaior
d'2*3/2 ~ d'2 ~ d'2*4/2 e'2 ~ e'2*7/4 ~ e'2*4/2 d'2*3/2 ~ d'2 ~ d'4 ~ \divisioMaxima
d'2 ~ d'2*4/2 ~ d'2 ~ d'2*3/2 e'4 ~ e'2 ~ e'2*3/2 ~ e'2 \divisioMinima
b2 a2 d'2 c'2 a2 ~ a4 \divisioMaior
d'2 e'2*4/2 ~ e'2*7/2 ~ e'4 ~ \divisioMinima
e'2*3/2 ~ e'2*3/2 ~ e'2 d'2 ~ d'2*4/2 ~ d'2*3/2 ~ d'2*3/2 ~ \finalis
d'2*3/2 e'2*3/2 cis'2*3/2 fis'2*3/2 ~ \divisioMinima
fis'2 e'2*3/2 d'2 e'2*3/2 cis'2*5/2 d'2*4/2 e'2 ~ e'4 ~ \divisioMaxima
e'4 d'2*5/2 e'2 ~ e'2*4/2 ~ e'2 \divisioMinima
d'2*3/2 ~ d'2 e'2 ~ e'2*4/2 d'2*4/2 ~ d'2*4/2 ~ d'4 \divisioMaxima
e'2 ~ e'2*3/2 fis'2 ~ fis'2 e'2*3/2 d'2 ~ \divisioMinima
d'4 ~ d'2*5/2 ~ d'2 ~ d'2*4/2 ~ d'2*5/4 ~ d'2*3/2 ~ \divisioMinima
d'2*3/2 ~ d'2*3/4 ~ d'2*6/2 a2 ~ a4 \divisioMaxima
b2 ~ b4 ~ b2 ~ b2 a2 d'2*3/2 c'2*3/2 ~ c'4 d'2*3/2 ~ d'2*3/2 e'2*3/2 \divisioMaior
d'2 ~ d'2*4/2 ~ d'2 ~ d'2*4/2 ~ d'2 ~ d'2*7/2 ~ d'2*4/2 \divisioMinima
e'2 ~ e'2*3/2 ~ e'2*3/2 d'2*3/2 ~ d'2 ~ d'2*4/2 ~ d'2*3/2 ~ d'2 ~ d'4 \finalis
}

tenorMusic = {
g4 ~ g2 ~ g2*3/2 ~ g2*3/2 \divisioMinima
a2 ~ a2*3/2 g2*3/2 b2 a2*3/2 fis2*4/2 g4 \divisioMinima
e2*3/2 ~ e2 ~ e2*4/2 ~ e2 ~ e2*3/2 g2 ~ g2*4/2 ~ g2 fis4 ~ \divisioMaior
fis2 ~ fis2 b2*3/2 a2 g2 a2*5/2 ~ a2*3/2 b2*3/2 g4 \divisioMaxima
b2*3/2 ~ b2 a2*4/2 ~ a2*3/2 g2*3/2 a2*4/2 ~ a4 g4 \divisioMinima
b2*4/2 a2*3/2 ~ a2 b2*3/2 ~ b2 a4 ~ \divisioMaior
a2*3/2 g2 b2*4/2 ~ b2 a2*7/4 g2*4/2 ~ g2*3/2 a2 ~ a4 \divisioMaxima
g2 a2*4/2 fis2 b2*3/2 ~ b4 g2 a2*3/2 b4 g4 \divisioMinima
e2 ~ e2 ~ e2 g2 ~ g2 fis4 \divisioMaior
g2 ~ g2*4/2 a2*7/2 b4 ~ \divisioMinima
b2*3/2 ~ b2*3/2 a2 ~ a2 g2*4/2 a2*3/2 b2*3/2 \finalis
a2*3/2 ~ a2*3/2 ~ a2*3/2 ~ a2*3/2 ~ \divisioMinima
a2 ~ a2*3/2 ~ a2 g2*3/2 e2*5/2 fis2*4/2 ~ fis2 e4 \divisioMaxima
a4 ~ a2*5/2 ~ a2 e2*4/2 fis2 ~ \divisioMinima
fis2*3/2 g2 ~ g2 a2*4/2 ~ a2*4/2 g2*4/2 b4 ~ \divisioMaxima
b2 a2*3/2 ~ a2 fis2 ~ fis2*3/2 ~ fis2 \divisioMinima
b4 a2*5/2 g2 fis2*4/2 g2*5/4 b2*3/2 \divisioMinima
a2*3/2 g2*3/4 a2*6/2 g2 fis4 \divisioMaxima
g2 ~ g4 ~ g2 e2 ~ e2 ~ e2*3/2 ~ e2*3/2 fis4 ~ fis2*3/2 g2*3/2 e2*3/2 \divisioMaior
fis2 ~ fis2*4/2 g2 fis2*4/2 a2 g2*7/2 b2*4/2 ~ \divisioMinima
b2 ~ b2*3/2 a2*3/2 ~ a2*3/2 g2 fis2*4/2 g2*3/2 a2 b4 \finalis
}

bassMusic = {
r4 fis2 e2*3/2 b,2*3/2 \divisioMinima
d2 e2*3/2 ~ e2*3/2 ~ e2 ~ e2*3/2 ~ e2*4/2 ~ e4 \divisioMinima
d2*3/2 c2 b,2*4/2 a,2 g,2*3/2 ~ g,2 b,2*4/2 d2 ~ d4 ~ \divisioMaior
d2 b,2 ~ b,2*3/2 ~ b,2 ~ b,2 ~ b,2*5/2 c2*3/2 e2*3/2 ~ e4 \divisioMaxima
d2*3/2 c2 ~ c2*4/2 b,2*3/2 ~ b,2*3/2 ~ b,2*4/2 e2 \divisioMinima
d2*4/2 c2*3/2 b,2 ~ b,2*3/2 c2 ~ c4 \divisioMaior
b,2*3/2 ~ b,2 ~ b,2*4/2 c2 ~ c2*7/4 e2*4/2 b,2*3/2 d2 ~ d4 \divisioMaxima
b,2 ~ b,2*4/2 ~ b,2 ~ b,2*3/2 c4 ~ c2 ~ c2*3/2 e2 \divisioMinima
d2 c2 b,2 a,2 d2 ~ d4 \divisioMaior
b,2 c2*4/2 ~ c2*7/2 e4 \divisioMinima
d2*3/2 c2*3/2 ~ c2 b,2 ~ b,2*4/2 ~ b,2*3/2 ~ b,2*3/2 \finalis
d2*3/2 cis2*3/2 fis2*3/2 e2*3/2 \divisioMinima
d2 cis2*3/2 b,2 ~ b,2*3/2 ~ b,2*5/2 ~ b,2*4/2 cis2 ~ cis4 \divisioMaxima
d4 ~ d2*5/2 cis2 ~ cis2*4/2 ~ cis2 \divisioMinima
b,2*3/2 ~ b,2 cis2 ~ cis2*4/2 b,2*4/2 ~ b,2*4/2 ~ b,4 \divisioMaxima
cis2 ~ cis2*3/2 d2 ~ d2 cis2*3/2 b,2 ~ \divisioMinima
b,4 ~ b,2*5/2 ~ b,2 ~ b,2*4/2 ~ b,2*5/4 ~ b,2*3/2 ~ \divisioMinima
b,2*3/2 ~ b,2*3/4 ~ b,2*6/2 d2 ~ d4 \divisioMaxima
r2 fis4 e2 d2 c2 b,2*3/2 a,2*3/2 ~ a,4 d2*3/2 b,2*3/2 cis2*3/2 \divisioMaior
d2 b,2*4/2 ~ b,2 ~ b,2*4/2 ~ b,2 ~ b,2*7/2 ~ b,2*4/2 \divisioMinima
e2 d2*3/2 c2*3/2 b,2*3/2 ~ b,2 ~ b,2*4/2 ~ b,2*3/2 ~ b,2 ~ b,4 \finalis
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
