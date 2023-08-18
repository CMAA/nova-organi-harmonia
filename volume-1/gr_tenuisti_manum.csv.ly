\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.314
%(volume.page)

global = {
 \key e \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Tenuisti manum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Tenuisti manum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Tenuisti manum" }
    \line {}
  }
}

chantText = \lyricmode {
Te -- nu -- í -- sti _ _ 
\set stanza = " * " ma -- num _ _ déx -- te -- ram _ _ me -- am: _ _ _ _ _ _ _ 
in vo -- _ lun -- tá -- te tu -- _ _ a _ 
de -- du -- xí -- _ _ sti _ _ me: _ 
et cum gló -- ri -- _ a _ _ _ _ _ _ 
as -- _ sum -- psí -- sti me. _ _ _ _ _ ℣. 
Quam _ _ bo -- nus Is -- ra -- el De -- _ _ _ _ _ _ us _ _ _ _ _ 
re -- _ _ _ _ _ ctis _ cor -- _ _ _ _ _ _ de! 
me -- i au -- _ tem pe -- ne -- mo -- _ _ _ _ _ ti _ sunt _ pe -- _ _ _ des, _ _ _ _ 
pe -- ne ef -- fú -- si sunt gres -- _ _ sus me -- i: _ 
qui -- a ze -- lá -- vi in pec -- ca -- tó -- _ _ _ _ _ _ _ _ ri -- bus, _ _ _ _ 
pa -- _ _ _ cem pec -- _ ca -- tó -- _ rum _ _ _ 
\set stanza = " * " 
vi -- _ _ _ dens. _ _ _ _ _ }

chantMusic = {
\tieDown   d'4 e'4 ( d'4) d'4 ( a'4) a'4 ( g'4) ~ g'4 ( g'4 e'4) ~ e'4 ( d'4) \divisioMinima
 e'4 ( a'4 g'4 a'4) g'4 ( g'4) ~ g'4 ( e'4) ~ e'4 ( d'4) \divisioMinima
 e'4 ( g'4 fis'4 \forceBreak
) g'4 ( g'4 g'4) g'4 ( g'4) ~ g'4 ( e'4) fis'4 ( g'4 a'4) g'4 ( e'4 g'4) g'4 ( g'4) ~ g'4 ( e'4 d'4 e'4) g'4 ( g'4) ~ g'4 ( e'4 d'4) e'4 ( e'4) d'4 ( g'4 e'4) fis'4 ( e'4) ~ e'4 ( d'4) \divisioMaxima \forceBreak

 d'4 d'4 ( e'4) g'4 ( fis'4) g'4 g'4 g'4 ( fis'4 g'4) g'4 ( b'4 a'4) g'4 ( g'4 e'4) g'4 ( fis'4) g'4 ( g'4) ~ g'4 ( a'4 g'4 fis'4) \divisioMaior
 e'4 ( g'4 fis'4) g'4 \forceBreak
 g'4 ( g'4) ~ g'4 ( g'4) ~ g'4 ( e'4) e'4 ( d'4) ~ d'4 ( e'4) g'4 ( b'4 a'4)  a'4 ( b'4 a'4.) b'4 ( c''4 b'4 c''4 a'4) \divisioMaxima
 fis'4 ( g'4 a'4) a'4 ( b'4) fis'4 ( g'4 a'4 \forceBreak
) g'4 ( e'4) a'4 ( g'4 fis'4) fis'4 ( a'4 b'4 g'4 e'4) \divisioMinima
 g'4 ( g'4) a'4 ( fis'4) g'4 ( e'4 d'4) g'4 ( e'4) fis'4 ( e'4) ~ e'4 ( d'4) \divisioMaior
 d'4 ( e'4) g'4 ( fis'4) g'4 fis'4 ( g'4 a'4) a'4 ( g'4 a'4 \forceBreak
) a'4 ( e'4 fis'\prall g'4 a'4) \divisioMinima
  g'4 ( a'4 b'4 g'4 fis'4) g'4 ( b'4.) c''4 ( a'4 g'4) b'4. a'4 ( b'4 a'4) ~ a'4 ( fis'4) \finalis
 g'4. ~ g'4 ( g'4) ~ g'4 ( e'4 a'4)  c''4 ( a'4 b'\prall c''4 b'4 c''4 \forceBreak
) c''4 ( b'4) \divisioMinima
 b'4 b'4 b'4 b'4 ( a'4) b'4 ( b'4) ~ b'4 ( a'4) b'4 ( b'4) ~ b'4 ( g'4) \divisioMinima
  a'4 ( b'4 c''4 d''4 b'4 a'4) g'4 ( c''4 b'4 a'4) a'4 ( a'4 g'4) a'4 ( g'4 \forceBreak
) b'4 ( a'4) b'4 ( g'4 e'4) \divisioMinima
  g'4 ( fis'4 g'4) a'4 ( c''4 a'4 b'\prall c''4 a'4 a'4 g'4) \divisioMaior
 g'4 ( e'4) g'4 ( g'4 e'4) fis'4 ( g'4 a'4.) b'4 d''4 ( d''4 b'4) d''4 ( d''4) ~ d''4 ( b'4 \forceBreak
) b'4 ( a'4) d''4 ( b'4 d''4) b'4. g'4 ( a'4 b'4) d''4 ( b'4) d''4 ( a'4 g'4) ~ g'4 ( e'4) \divisioMinima
 fis'4 ( g'4 a'4 b'4 a'4 fis'4) g'4. fis'4 ( g'4 a'4 b'4 a'4 b'4) fis'4 \divisioMaxima \forceBreak

 b'4 b'4 ( a'4)  a'4 ( c''4) b'4 ( \once \tweak #'font-size #-4 c'' ) a'4 \divisioMinima
 b'4 ( a'4) b'4 fis'4 ( g'4) a'4 ( g'4 fis'4) g'4 ( a'4 b'4) b'4 d''4 ( d''4 b'4) d''4 ( d''4) ~ d''4 ( b'4 \forceBreak
) b'4 ( a'4) d''4 ( b'4 d''4) b'4. g'4 ( a'4 b'4) \divisioMinima
 d''4 ( b'4) d''4 ( a'4 g'4) ~ g'4 ( e'4) fis'4 ( g'4 a'4) b'4 ( a'4) fis'4 ( g'4 fis'4 g'4.) fis'4 ( g'4) b'4 ( a'4 fis'4) g'4 ( e'4) \divisioMaxima \forceBreak

 d'4 e'4 e'4 e'4 ( a'4 b'4) g'4 ( g'4 fis'4 g'4) g'4 ( fis'4) \divisioMinima
 g'4 ( g'4) ~ g'4 ( g'4) ~ g'4 ( e'4) d'4 ( e'4) g'4 ( b'4 a'4)  a'4 ( b'4 a'4.) b'4 ( c''4 b'4 c''4 a'4) \divisioMaxima \forceBreak

 g'4 fis'4 g'4 a'4 ( b'4) a'4 \divisioMinima
 g'4 ( \once \tweak #'font-size #-4 e' ) g'4 ( b'4 a'4) fis'4  g'4 ( b'4 a'4) b'4 ( c''4 a'4 g'4) ~ g'4 ( e'4) \divisioMinima \forceBreak

 a'4 ( g'4) a'4 ( b'4 g'4) ~ g'4 ( e'4) a'4 ( g'4 fis'4) g'4 ( fis'4 e'4) fis'4 ( g'4 a'4) a'4 a'4 ( g'4) ~ g'4 ( fis'4 g'4.) fis'4 ( g'4 \forceBreak
) b'4 ( a'4 fis'4) g'4 ( e'4) \divisioMaxima
 e'4 ( d'4) e'4 g'4 ( g'4) ~ g'4 ( e'4 g'4.) fis'4 ( g'4 a'4) a'4 ( \once \tweak #'font-size #-4 b' ) \divisioMinima
 b'4 d''4 ( d''4 b'4) g'4 g'4 ( a'4 b'4) ~ b'4 ( a'4) a'4 ( fis'4 \forceBreak
) a'4 ( b'4 a'4 fis'4) g'4 ( e'4 d'4) e'4 ( fis'\prall g'4 fis'4) \divisioMaior
 g'4 ( e'4) g'4 ( g'4 e'4) fis'4 ( g'4 a'4.) fis'4 ( g'4 b'4) b'4 ( a'4) b'4 ( d''4 a'4 g'4) ~ g'4 ( e'4 \forceBreak
) a'4. g'4 ( b'4.) a'4 ( b'4 a'4) ~ a'4 ( e'4) \finalis

}

altoMusic = {
a2*3/2 ~ a2 d'2 ~ d'2 b2*3/2 \divisioMinima
c'2*4/2 d'2*3/2 b2*3/2 ~ \divisioMinima
b2*3/2 c'2*3/2 d'2*4/2 ~ d'2*3/2 ~ d'2*3/2 b2 ~ b2*4/2 ~ b2 a2*3/2 b2 d'2 b2 a2 ~ a4 \divisioMaxima
r4 a2 b2*3/2 ~ b4 a2*3/2 d'2*3/2 ~ d'2*3/2 c'2 d'2 ~ d'2*4/2 \divisioMaior
b2*4/2 c'2 b2 ~ b2 a2 b2 d'2*3/2 e'2*7/4 d'2*3/2 c'2 \divisioMaxima
d'2*3/2 ~ d'2 ~ d'2*3/2 ~ d'2 cis'2*3/2 d'2 ~ d'2*3/2 \divisioMinima
c'2*4/2 d'2 ~ d'4 b2*3/2 a2*3/2 \divisioMaior
g2 b2*3/2 ~ b2*3/2 d'2*3/2 ~ d'2*5/2 b2 e'2*3/2 d'2*5/4 c'2*3/2 b2*3/4 e'2 d'2 ~ d'4 \finalis
e'2*3/4 ~ e'2 ~ e'2*3/2 ~ e'2*3/2 ~ e'2*3/2 g'2 ~ \divisioMinima
g'2*3/2 ~ g'2*4/2 ~ g'2 e'2*4/2 ~ e'2*3/2 d'2*3/2 c'2*4/2 d'2*3/2 ~ d'2 ~ d'2 ~ d'2*3/2 b2*3/2 e'2 ~ e'2*3/2 ~ e'2*3/2 ~ \divisioMaior
e'2 ~ e'2*3/2 ~ e'2 ~ e'2*5/4 d'2*3/2 g'2 fis'2 e'2 d'2*3/2 ~ d'2*3/4 ~ d'2*3/2 ~ d'2 ~ d'2 e'2*3/2 ~ \divisioMinima
e'2*3/2 ~ e'2*3/2 ~ e'2*3/4 ~ e'2*3/2 fis'2*3/2 ~ fis'4 \divisioMaxima
e'4 ~ e'2 ~ e'2 ~ e'2*3/2 \divisioMinima
d'2*3/2 ~ d'2*5/2 ~ d'2*3/2 a'4 g'2*3/2 ~ g'2 ~ g'2 fis'2 ~ fis'2*3/2 ~ fis'2*3/4 g'2*3/2 \divisioMinima
fis'2 ~ fis'2 e'2*3/2 ~ e'2*3/2 fis'2 b2*3/2 d'2*3/4 ~ d'2 ~ d'2*3/2 b2 \divisioMaxima
a2*3/2 b2*3/2 d'2*4/2 ~ d'2 \divisioMinima
b2 ~ b2 ~ b2 ~ b2 ~ b2*3/2 e'2*7/4 ~ e'2*3/2 ~ e'2 ~ \divisioMaxima
e'2*3/2 ~ e'2*3/2 \divisioMinima
b2 d'2*4/2 ~ d'2*3/2 c'2*3/2 b2*3/2 ~ \divisioMinima
b2*4/2 ~ b2*3/2 d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2 b2*3/2 ~ b2*7/4 c'2*3/2 b2 ~ \divisioMaxima
b2*3/2 ~ b2 ~ b2*7/4 ~ b2*3/2 ~ b2 \divisioMinima
e'4 d'2*4/2 ~ d'2 fis'2*3/2 d'2 b2*4/2 ~ b2 d'4 ~ d'2*4/2 \divisioMaior
b2 ~ b2*3/2 ~ b2 ~ b2*3/4 ~ b2*3/2 e'2 d'2*3/2 ~ d'2*3/2 ~ d'2*3/4 ~ d'2*5/4 ~ d'2 cis'2 d'4 \finalis
}

tenorMusic = {
fis4 ~ fis2 ~ fis2 d2 e2 fis2*3/2 \divisioMinima
g2*4/2 ~ g2*3/2 fis2*3/2 \divisioMinima
e2*3/2 ~ e2*3/2 d2 g2 a2*3/2 b2*3/2 ~ b2 a2*4/2 g2 fis2*3/2 g2 ~ g2 ~ g2 ~ g2 fis4 \divisioMaxima
r4 fis2 e2*3/2 ~ e4 ~ e2*3/2 d2*3/2 e2*3/2 ~ e2 d2 b2*4/2 ~ \divisioMaior
b2*4/2 a2 ~ a2 g2 fis2 g2 ~ g2*3/2 ~ g2*7/4 a2*3/2 e2 \divisioMaxima
r2*3/2 fis2 ~ fis2*3/2 e2 ~ e2*3/2 d2 g2*3/2 ~ \divisioMinima
g2*4/2 ~ g2*3/2 ~ g2*3/2 a2*3/2 \divisioMaior
r2 e2*3/2 ~ e2*3/2 ~ e2*3/2 ~ e4 g2*4/2 e2 ~ e2*3/2 ~ e2*5/4 ~ e2*3/2 ~ e2*3/4 ~ e2 fis2 b4 \finalis
e'2*3/4 d'2 c'2*3/2 ~ c'2*3/2 ~ c'2*3/2 d'2 ~ \divisioMinima
d'2*3/2 ~ d'2 c'2 b2 g2 ~ g2 ~ g2*3/2 ~ g2*3/2 ~ g2*4/2 ~ g2*3/2 e2 fis2 g2*3/2 ~ g2*3/2 ~ g2 c'2*3/2 b2*3/2 ~ \divisioMaior
b2 ~ b2*3/2 ~ b2 a2*5/4 ~ a2*3/2 b2 ~ b2 fis2 ~ fis2*3/2 g2*3/4 ~ g2*3/2 a2 b2 ~ b2*3/2 ~ \divisioMinima
b2*3/2 ~ b2*3/2 ~ b2*3/4 g2*3/2 fis2*3/2 a4 \divisioMaxima
g2*3/2 ~ g2 a2*3/2 \divisioMinima
b2*3/2 a2*5/2 g2*3/2 fis4 e2*3/2 b2 e'2 ~ e'2 ~ e'2*3/2 d'2*3/4 ~ d'2*3/2 \divisioMinima
b2 ~ b2 ~ b2*3/2 g2*3/2 fis2 e2*3/2 ~ e2*3/4 d2 a2*3/2 ~ a4 g4 \divisioMaxima
r2*3/2 g2*3/2 ~ g2*4/2 b2 ~ \divisioMinima
b2 a2 g2 ~ g2 ~ g2*3/2 ~ g2*7/4 ~ g2*3/2 a2 \divisioMaxima
b2*3/2 fis2*3/2 \divisioMinima
r2 d2*4/2 e2*3/2 ~ e2*3/2 ~ e2*3/2 \divisioMinima
r2*10/2 e2*3/2 d2*3/2 a2 ~ a2*3/2 g2*7/4 fis2*3/2 e2 \divisioMaxima
g2*3/2 fis2 e2*7/4 ~ e2*3/2 fis2 ~ \divisioMinima
fis4 ~ fis2*4/2 g2 fis2*3/2 ~ fis2 ~ fis2*4/2 b2*3/2 ~ b2*4/2 ~ \divisioMaior
b2 a2*3/2 g2 fis2*3/4 ~ fis2*3/2 ~ fis2 ~ fis2*3/2 e2*3/2 d2*3/4 e2*5/4 fis2 b2 ~ b4 \finalis
}

bassMusic = {
r4 d2 b,2 ~ b,2 ~ b,2 ~ b,2*3/2 \divisioMinima
a,2*4/2 b,2*3/2 ~ b,2*3/2 \divisioMinima
g,2*3/2 a,2*3/2 b,2 ~ b,2 ~ b,2*3/2 ~ b,2*3/2 e2 ~ e2*4/2 ~ e2 ~ e2*3/2 ~ e2 b,2 c2 d2 ~ d4 \divisioMaxima
r2*6/2 d4 c2*3/2 b,2*3/2 ~ b,2*3/2 a,2 b,2 ~ b,2*4/2 \divisioMaior
e2*4/2 ~ e2 ~ e2 ~ e2 ~ e2 ~ e2 b,2*3/2 c2*7/4 a,2*3/2 ~ a,2 \divisioMaxima
b,2*3/2 ~ b,2 d2*3/2 e2 b,2*3/2 ~ b,2 ~ b,2*3/2 \divisioMinima
a,2*4/2 b,2*3/2 g,2*3/2 fis,2*3/2 \divisioMaior
e,2 ~ e,2*3/2 g,2*3/2 b,2*3/2 d2*5/2 ~ d2 c2*3/2 b,2*5/4 a,2*3/2 g,2*3/4 c2 b,2 ~ b,4 \finalis
r2*13/4 b2*3/2 a2*3/2 g2 \divisioMinima
fis2*3/2 e2 ~ e2 ~ e2 ~ e2 d2 c2*3/2 b,2*3/2 a,2*4/2 b,2*3/2 ~ b,2 ~ b,2 ~ b,2*3/2 d2*3/2 c2 ~ c2*3/2 e2*3/2 \divisioMaior
d2 e2*3/2 g2 ~ g2*5/4 fis2*3/2 e2 d2 cis2 b,2*3/2 ~ b,2*3/4 e2*3/2 fis2 ~ fis2 e2*3/2 \divisioMinima
g2*3/2 fis2*3/2 e2*3/4 ~ e2*3/2 d2*3/2 ~ d4 \divisioMaxima
e4 d2 c2 ~ c2*3/2 \divisioMinima
b,2*3/2 ~ b,2*5/2 ~ b,2*3/2 ~ b,4 e2*3/2 ~ e2 ~ e2 fis2 b2*3/2 ~ b2*3/4 ~ b2*3/2 ~ \divisioMinima
b2 d2 e2*3/2 ~ e2*3/2 d2 ~ d2*3/2 b,2*3/4 ~ b,2 ~ b,2*3/2 e2 \divisioMaxima
fis2*3/2 e2*3/2 b,2*4/2 ~ b,2 \divisioMinima
e2 ~ e2 ~ e2 fis2 e2*3/2 d2*7/4 c2*3/2 ~ c2 \divisioMaxima
e2*3/2 ~ e2*3/2 ~ \divisioMinima
e2 b,2*4/2 ~ b,2*3/2 a,2*3/2 e2*3/2 \divisioMinima
fis2*4/2 e2*3/2 b,2*3/2 ~ b,2*3/2 ~ b,2*3/2 ~ b,2 e2*3/2 ~ e2*7/4 ~ e2*3/2 ~ e2 \divisioMaxima
r2*17/4 d2*3/2 ~ d2 \divisioMinima
cis4 b,2*4/2 e2 d2*3/2 ~ d2 ~ d2*4/2 e2*3/2 b,2*4/2 \divisioMaior
e2 ~ e2*3/2 ~ e2 ~ e2*3/4 d2*3/2 cis2 b,2*3/2 ~ b,2*3/2 ~ b,2*3/4 ~ b,2*5/4 ~ b,2 ~ b,2 ~ b,4 \finalis
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
