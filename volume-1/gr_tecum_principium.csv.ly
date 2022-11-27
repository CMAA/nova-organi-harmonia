\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.50
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Tecum principium" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Tecum principium"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Tecum principium" }
    \line {}
  }
}

chantText = \lyricmode {
Te -- cum prin -- cí -- pi -- _ um 
\set stanza = " * " in _ di -- _ _ _ e 
vir -- tú -- _ _ tis _ tu -- _ æ: _ _ _ _ _ 
in splen -- dó -- ri -- bus _ san -- ctó -- _ _ _ rum, _ 
ex ú -- te -- ro _ _ 
an -- te lu -- cí -- _ _ _ _ _ fe -- rum _ _ _ _ _ 
gé -- _ nu -- i _ te. _ _ _ _ _ _ _ ℣. 
Di -- xit Dó -- mi -- nus Dó -- mi -- no me -- _ _ _ _ _ _ _ _ _ _ o: 
Se -- _ de a dex -- tris me -- _ _ _ _ _ _ _ _ _ is: 
do -- nec po -- nam _ i -- ni -- mí -- _ cos _ tu -- _ os _ _ _ 
sca -- bél -- _ _ _ _ lum _ _ _ _ _ 
pe -- _ dum 
\set stanza = " * " tu -- ó -- _ rum. _ _ _ _ }

chantMusic = {
\tieDown  g'4 d'4 g'4 g'4 g'4 ( a'4 g'4 f'4) g'4 ( f'4 g'4) g'4 \divisioMinima
 bes'4 ( bes'4) c''4 ( d''4 c''4 bes'4) c''4 ( a'4 \forceBreak
) bes'4 ( g'4 f'4 g'4) bes'4 ( bes'4) c''4 ( g'4) g'4 \divisioMaior
 g'4 ( a'\prall bes'4) bes'4. a'4 ( c''4 bes'4) a'4 ( bes'4 g'4)  g'4 ( f'4) aes'4 ( g'4 f'4) f'4 ( ees'4) g'4 ( f'4 g'4 \forceBreak
) g'4 ( ees'4) f'4 ( g'4) bes'4 ( bes'4 g'4 f'4) g'4 ( a'\prall bes'4) c''4 ( bes'4 bes'4) g'4 ( a'4 g'4) \divisioMaxima
 g'4 f'4 bes'4 ( bes'4) bes'4 ( d''4 c''4) c''4 ( bes'4) ~ bes'4 ( g'4) \divisioMinima \forceBreak

 g'4 bes'4 ( g'4 ( a'\prall bes'4) c''4 ( g'4) c''4 ( d''4) bes'4 ( g'4) bes'4. a'4 ( bes'4 g'4 f'4 g'4) \divisioMaior
 g'4 bes'4 ( g'4 bes'4) bes'4 ( bes'4 bes'4) bes'4 ( g'4 a'\prall bes'4 c''4. \forceBreak
) bes'4 ( c''4 d''4 bes'4 bes'4) c''4 ( c''4 bes'4) \divisioMaxima
 bes'4 ( bes'4 \once \tweak #'font-size #-4 c'' ) bes'4 bes'4 bes'4 ( a'4) bes'4 ( c''4) d''4 ( bes'4 a'4) bes'4 ( bes'4 a'4) \divisioMinima
 c''4 ( bes'4) c''4 ( bes'4 g'4) g'4 \forceBreak
 g'4 ( bes'4 g'4 f'4) g'4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( bes'4 a'4 g'4) bes'4 ( f'4) ~ f'4 ( ees'4) \divisioMaxima
 ees'4 ( f'4 g'4) bes'4 ( a'4 g'4 a'4) f'4 ( g'4) bes'4 ( g'4) bes'4 ( c''4) c''4 ( bes'4 \forceBreak
) c''4 ( d''4 c''4 bes'4) \divisioMinima
 d''4 ( bes'4) d''4 ( ees''4 c''4 a'4) bes'4 ( g'4 f'4) g'4 ( a'\prall bes'4 c''4.) bes'4 ( c''4 d''4) \divisioMinima
 c''4 ( d''4 c''4 d''4 bes'4 g'4 a'\prall bes'4 g'4) \finalis \forceBreak

 g'4 bes'4 bes'4 ( c''4) c''4 c''4 c''4 c''4 c''4 ( d''4) d''4 ( c''4 bes'4 a'4) bes'4 ( g'4 f'4) \divisioMinima
 a'4 ( f'4) g'4 bes'4 ( bes'4 \forceBreak
) c''4 ( d''4 c''4 d''4) \divisioMinima
 bes'4 ( d''4) ees''4 ( c''4 a'4) bes'4 ( g'4 f'4) g'4 ( a'4 g'4 f'4) g'4 \divisioMinima
 c''4 ( d''\prall ees''4 d''4) ees''4 ( d''4 c''4 d''4) d''4 ( c''4) \divisioMaxima \forceBreak

 c''4 ( d''\prall ees''4 d''4 c''4 ( d''\prall ees''4 d''4 c''4) c''4 \divisioMinima
 c''4 c''4 c''4 ( d''4) d''4 ( bes'4) d''4 ( c''4 bes'4) ~ bes'4 ( g'4) bes'4 ( bes'4 g'4) bes'4. ~ bes'4 ( bes'4) ~ bes'4 ( g'4) \divisioMinima \forceBreak

 bes'4 ( c''4) d''4 ( c''4 bes'4) d''4 ( c''4 bes'4) c''4 ( g'4) g'4 \divisioMaxima
 bes'4 ( bes'4) bes'4 bes'4 ( d''4 c''4) c''4 ( bes'4) ~ bes'4 ( g'4) \divisioMinima
 g'4 g'4 ( c''4) c''4 ( g'4 \forceBreak
) c''4 ( d''4) bes'4 ( g'4) bes'4. a'4 ( bes'4 g'4 f'4 g'4) \divisioMinima
 bes'4 ( g'4) bes'4 ( bes'4 bes'4) bes'4 ( g'4 a'\prall bes'4 c''4.) bes'4 ( c''4) d''4 ( bes'4 bes'4) c''4 ( c''4 bes'4) \divisioMaxima \forceBreak

 bes'4 ( bes'4) bes'4 ( a'4) bes'4 ( c''4 d''4 bes'4 a'4) bes'4 ( bes'4 a'4) \divisioMinima
 c''4 ( bes'4) c''4 ( bes'4 g'4) g'4 ( bes'4 g'4 f'4) g'4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( bes'4 a'4 g'4) bes'4 ( f'4) ~ f'4 ( ees'4) \divisioMaxima \forceBreak

 ees'4 ( f'4 g'4) bes'4 ( a'4 g'4 a'4) f'4  g'4 bes'4 ( g'4) bes'4 ( c''4) c''4 ( d''4 bes'4 a'4) bes'4 ( c''4) \divisioMinima
 f'4 ( g'4 bes'4) ~ bes'4 ( d''4 bes'4 a'4 g'4) f'4 ( a'\prall bes'4 g'4) \finalis

}

altoMusic = {
r2*4/2 d'2*4/2 ~ d'2*3/2 ~ d'4 ~ \divisioMinima
d'2 f'2*4/2 ~ f'2 ~ f'2*4/2 e'2 ~ e'2 d'4 \divisioMaior
e'2*3/2 f'2*3/4 ~ f'2*3/2 d'2*3/2 c'2 ~ c'2*3/2 bes2 ~ bes2*3/2 ~ bes2*4/2 e'2*4/2 d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 \divisioMaxima
c'2 d'2 f'2*3/2 ~ f'4 e'2*3/2 ~ \divisioMinima
e'4 f'2*4/2 d'2*4/2 ~ d'2 e'2*7/4 d'2*3/2 ~ \divisioMaior
d'4 f'2*3/2 ~ f'2*3/2 e'2*4/2 ~ e'2*3/4 f'2*5/2 d'2*3/2 \divisioMaxima
e'2*5/2 f'2*7/2 ~ f'2*3/2 ~ \divisioMinima
f'2*5/2 ~ f'4 d'2*5/2 e'2*3/2 d'2*3/2 ~ d'2 c'2*3/2 \divisioMaxima
e'2*3/2 ~ e'2*4/2 f'2 d'2*4/2 ~ d'2 ~ d'2*4/2 \divisioMinima
f'2 ~ f'2*4/2 d'2*3/2 ~ d'2*3/2 g'2*3/4 f'2*3/2 ~ \divisioMinima
f'2*3/2 ~ f'2 e'2*3/2 d'4 \finalis
r2 b'2*4/2 a'2 ~ a'2 ~ a'2*4/2 f'2*3/2 ~ \divisioMinima
f'2*3/2 ~ f'2 ~ f'2*4/2 ~ \divisioMinima
f'2 e'2*3/2 d'2*3/2 ~ d'2*5/2 \divisioMinima
g'2*4/2 f'2*4/2 a2 \divisioMaxima
f'2*4/2 ~ f'2*6/2 ~ \divisioMinima
f'2*4/2 ~ f'2*4/2 ~ f'2*3/2 e'2*3/2 ~ e'2*3/4 d'2 ~ d'2 \divisioMinima
f'2 ~ f'2*3/2 ~ f'2*3/2 e'2 d'4 ~ \divisioMaxima
d'2*3/2 f'2*3/2 ~ f'4 e'2*3/2 ~ \divisioMinima
e'4 f'2 g'2*4/2 ~ g'2 d'2*7/4 ~ d'2*3/2 ~ \divisioMinima
d'2 ~ d'2*3/2 e'2*11/4 f'2*5/2 d'2*3/2 \divisioMaxima
g'2 f'2 ~ f'2*5/2 ~ f'2*3/2 ~ \divisioMinima
f'2 d'2*3/2 c'2*5/2 f'2*3/2 e'2*3/2 d'2 bes2*3/2 \divisioMaxima
e'2*3/2 d'2*4/2 c'2 d'2*4/2 ~ d'2 ~ d'2 f'2 ~ \divisioMinima
f'2 ~ f'2 e'2*4/2 ~ e'2*3/2 d'4 \finalis
}

tenorMusic = {
r2*8/2 g2*3/2 bes4 ~ \divisioMinima
bes2 a2*4/2 d'2 ~ d'2*4/2 bes2 a2 bes4 ~ \divisioMaior
bes2*3/2 ~ bes2*3/4 ~ bes2*3/2 ~ bes2*3/2 aas2 ~ aas2*3/2 g2 ~ g2*3/2 ~ g2*4/2 ~ g2*4/2 ~ g2*3/2 ~ g2*3/2 d2*3/2 \divisioMaxima
a2 g2 f2*3/2 ~ f4 g2*3/2 \divisioMinima
c'4 bes2*4/2 a2*4/2 bes2 c'2*7/4 bes2*3/2 \divisioMaior
r4 f2*3/2 g2*3/2 ~ g2*4/2 bes2*3/4 ~ bes2*5/2 ~ bes2*3/2 \divisioMaxima
g2*5/2 f2*4/2 bes2*3/2 c'2*3/2 \divisioMinima
d'2*5/2 c'4 ~ c'2*5/2 bes2*3/2 ~ bes2*3/2 ~ bes2 g2*3/2 \divisioMaxima
bes2*3/2 c'2*4/2 ~ c'2 ~ c'2*4/2 a2 bes2*4/2 ~ \divisioMinima
bes2 c'2*4/2 ~ c'2*3/2 bes2*3/2 ~ bes2*3/4 ~ bes2*3/2 \divisioMinima
a2*3/2 bes2 ~ bes2*3/2 a4 \finalis
r2 e'2*4/2 ~ e'2 d'2 f'2*4/2 d'2*3/2 ~ \divisioMinima
d'2*3/2 ~ d'2 ~ d'2*4/2 ~ \divisioMinima
d'2 bes2*3/2 ~ bes2*3/2 ~ bes2*5/2 ~ \divisioMinima
bes2*4/2 c'2*4/2 ~ c'2 ~ \divisioMaxima
c'2*4/2 ~ c'2*6/2 ~ \divisioMinima
c'4 g4 a2 bes2*4/2 d'2*3/2 e'2*3/2 c'2*3/4 ~ c'2 g2 \divisioMinima
bes2 ~ bes2*3/2 a2*3/2 ~ a2 bes4 \divisioMaxima
g2*3/2 f2*3/2 g4 ~ g2*3/2 ~ \divisioMinima
g4 ~ g2 ~ g2 ~ g2 c'2 ~ c'2*7/4 bes2*3/2 \divisioMinima
a2 g2*3/2 ~ g2*4/2 bes2*3/4 ~ bes2*5/2 ~ bes2*3/2 ~ \divisioMaxima
bes2 ~ bes2 ~ bes2*5/2 c'2*3/2 \divisioMinima
a2 g2*3/2 ~ g2*5/2 ~ g2*3/2 ~ g2*3/2 ~ g2 ~ g2*3/2 ~ \divisioMaxima
g2*3/2 ~ g2*4/2 ~ g2 ~ g2*4/2 a2 g2 f2 \divisioMinima
a2 g2 ~ g2*4/2 bes2*3/2 ~ bes4 \finalis
}

bassMusic = {
r2*4/2 g2*4/2 f2*3/2 g4 ~ \divisioMinima
g2 d2*4/2 ~ d2 g2*4/2 ~ g2 ~ g2 ~ g4 \divisioMaior
c2*3/2 d2*3/4 ~ d2*3/2 g2*3/2 ~ g2 f2*3/2 ~ f2 ees2*3/2 d2*4/2 c2*4/2 b,2*3/2 g,2*3/2 ~ g,2*3/2 \divisioMaxima
r2*4/2 d2*3/2 ~ d4 c2*3/2 ~ \divisioMinima
c4 d2*4/2 g2*4/2 ~ g2 ~ g2*7/4 ~ g2*3/2 ~ \divisioMaior
g4 d2*3/2 ~ d2*3/2 c2*4/2 ~ c2*3/4 d2*5/2 g2*3/2 \divisioMaxima
c2*5/2 d2*4/2 ~ d2*3/2 ~ d2*3/2 ~ \divisioMinima
d2*5/2 ~ d4 g2*5/2 ~ g2*3/2 ~ g2*3/2 b,2 c2*3/2 \divisioMaxima
g2*3/2 c2*4/2 d2 g2*4/2 ~ g2 ~ g2*4/2 \divisioMinima
ees2 ~ ees2*4/2 g2*3/2 ~ g2*3/2 ees2*3/4 d2*3/2 ~ \divisioMinima
d2*3/2 ~ d2 c2*3/2 g4 \finalis
r2*10/2 d'2*4/2 ~ d'2*3/2 \divisioMinima
c'2*3/2 bes2 a2*4/2 \divisioMinima
g2 ~ g2*3/2 ~ g2*3/2 f2*5/2 \divisioMinima
ees2*4/2 ~ ees2*4/2 f2 \divisioMaxima
c2*4/2 ees2*6/2 ~ \divisioMinima
ees2 ~ ees2 g2*4/2 ~ g2*3/2 ~ g2*3/2 ~ g2*3/4 ~ g2 ees2 ~ \divisioMinima
ees2 d2*3/2 ~ d2*3/2 g2 ~ g4 \divisioMaxima
g,2*3/2 d2*3/2 ~ d4 c2*3/2 ~ \divisioMinima
c4 d2 ees2 ~ ees2 ~ ees2 g2*7/4 ~ g2*3/2 ~ \divisioMinima
g2 ~ g2*3/2 c2*4/2 ~ c2*3/4 d2*5/2 g2*3/2 \divisioMaxima
ees2 ~ ees2 d2*5/2 f2*3/2 ~ \divisioMinima
f2 ~ f2*3/2 ees2*5/2 d2*3/2 c2*3/2 b,2 g,2*3/2 \divisioMaxima
c2*3/2 b,2*4/2 a,2 g,2*4/2 ~ g,2 ~ g,2 d2 ~ \divisioMinima
d2 ~ d2 c2*4/2 ~ c2*3/2 g4 \finalis
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
