\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.260
%(volume.page)

global = {
 \key d \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Exsurge... fer opem" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Exsurge... fer opem"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Exsurge... fer opem" }
    \line {}
  }
}

chantText = \lyricmode {
Ex -- súr -- ge 
\set stanza = " * " Dó -- _ _ _ _ _ mi -- ne, _ _ _ _ _ _ 
fer o -- _ pem _ _ no -- _ _ _ bis: _ _ _ 
et lí -- _ be -- _ _ _ ra nos _ _ _ _ _ 
pro -- pter _ no -- _ men _ tu -- _ _ _ _ _ _ _ um. _ _ _ ℣. 
De -- us, áu -- ri -- _ bus no -- stris _ au -- dí -- _ _ vi -- _ _ _ _ mus: _ _ 
pa -- tres no -- _ _ _ stri 
an -- nun -- ti -- a -- vé -- _ _ runt no -- _ _ bis _ _ _ 
o -- _ pus, quod o -- pe -- rá -- tus es 
in di -- é -- _ bus _ e -- ó -- rum, _ _ _ _ _ 
in di -- é -- _ bus _ 
\set stanza = " * " an -- _ tí -- _ _ _ _ _ _ _ quis. _ _ _ }

chantMusic = {
\tieDown   f'4 g'4 ( bes'4 a'4) bes'4 \divisioMinima
 bes'4 ( bes'4) ~ bes'4 ( bes'4) ~ bes'4 ( g'4 a'\prall bes'4) c''4 ( bes'4.) d''4 ( c''4) d''4 ( c''4 a'4) a'4 c''4 ( a'4) bes'4 ( c''4) d''4 ( bes'4) \divisioMinima \forceBreak

 bes'4 ( bes'4) ~ bes'4 ( c''4 bes'4) c''4 ( bes'4) ~ bes'4 ( a'4) \divisioMaior
 g'4 ( bes'4 a'4) bes'4 ( c''4 bes'4) ~ bes'4 ( g'4) bes'4 ( c''4 a'4) bes'4 ( c''4 g'4) ~ g'4 ( f'4) \divisioMinima
 g'4 ( bes'4 a'4) bes'4 ( g'4 \forceBreak
 c''4) ~ c''4 ( bes'4) ~ bes'4 ( a'4) a'4. f'4 ( a'4) c''4 ( bes'4 bes'4) g'4 ( a'4 g'4) \divisioMaxima
 g'4 bes'4 ( g'4) a'4 ( bes'4 a'4) a'4 ( f'4) g'4 bes'4 ( bes'4) ~ bes'4 ( g'4 f'4) ~ f'4 ( d'4 \forceBreak
) ees'4 ( f'4) f'4 ( g'4 a'4 g'4 f'4 g'4) bes'4 ( bes'4) g'4 bes'4 ( bes'4) ~ bes'4 ( a'4 g'4) bes'4 ( f'4) ~ f'4 ( ees'4) \divisioMaior
 g'4 bes'4 ( g'4) a'4 ( bes'4 c''4 g'4 f'4) g'4 ( f'4) ~ f'4 ( d'4 \forceBreak
) f'4 ( g'4 f'4) g'4 bes'4 ( bes'4)  g'4 ( f'4) g'4 ( aes'4 f'4 ees'4) f'4 ( g'4 ees'4 d'4) \divisioMinima
 f'4 ( g'4) bes'4 ( bes'4 g'4 f'4) g'4 ( g'4) f'4 ( g'4) aes'4 ( f'4) d'4. f'4 ( f'4 d'4.) f'4 ( ees'4) f'4 ( d'4) \finalis \forceBreak

 g'4 ( bes'4 a'4) a'4 \divisioMinima
 bes'4 ( c''4) c''4 ( bes'4) ~ bes'4 ( a'4 bes'4) bes'4 ( a'4) d''4 ( c''4 d''4) d''4 ( c''4) bes'4 ( bes'4 g'4) \divisioMinima
 d''4 ( c''4 d''4) d''4 ( c''4) bes'4 ( bes'4 g'4) c''4 ( a'4 \forceBreak
) bes'4 ( c''4 bes'4) ~ bes'4 ( bes'4) ~ bes'4 ( g'4 f'4) bes'4 ( a'4) bes'4 ( c''4) c''4 ( bes'4) c''4 ( bes'4) ~ bes'4 ( a'4) \divisioMaxima
 g'4 c''4 c''4 ( bes'4) ~ bes'4 ( g'4) c''4 ( d''4 c''4 bes'4 \forceBreak
) c''4 ( bes'4 a'4) a'4 \divisioMaior
 bes'4 g'4 ( a'\prall bes'4) bes'4 bes'4 a'4 ( bes'4) d''4 ( c''4) d''4 ( bes'4) bes'4 a'4 a'4 \divisioMinima
 bes'4 ( g'4.) bes'4 ( a'4 f'4) g'4 ( a'\prall bes'4 a'4 \forceBreak
) a'4. f'4 ( a'4) c''4 ( bes'4 bes'4) g'4 ( a'4 g'4) \divisioMaxima
 g'4 ( bes'4 g'4) bes'4 ( bes'4 g'4 a'4) g'4 \divisioMinima
 g'4 g'4 bes'4 a'4 ( bes'4 g'4) a'4 g'4 \divisioMaior \forceBreak

 g'4 g'4 bes'4 ( g'4) a'4 ( bes'4 c''4 g'4 f'4) g'4 ( f'4) ~ f'4 ( d'4) \divisioMinima
 f'4 ( g'4 f'4 g'4) g'4 g'4 ( a'4 g'4 f'4 g'4) bes'4 ( bes'4) g'4 \forceBreak
 bes'4 ( bes'4) ~ bes'4 ( a'4 g'4) bes'4 ( f'4) ~ f'4 ( ees'4) \divisioMaior
 g'4 g'4 bes'4 ( g'4) a'4 ( bes'4 c''4 g'4 f'4) g'4 ( f'4) ~ f'4 ( d'4) \divisioMinima
 f'4 ( g'4 f'4 g'4) bes'4 ( bes'4 \forceBreak
)  g'4 ( f'4) g'4 ( aes'4 f'4 ees'4) f'4 ( g'4 ees'4 d'4) \divisioMinima
 f'4 ( g'4) bes'4 ( bes'4 g'4 f'4) g'4 ( g'4) f'4 ( g'4) aes'4 ( f'4) d'4. f'4 ( f'4 d'4.) f'4 ( ees'4) f'4 ( d'4) \finalis

}

altoMusic = {
d'4 ~ d'2*3/2 ~ d'4 \divisioMinima
g'2 f'2 ees'2*4/2 f'2*9/4 ~ f'2*3/2 ~ f'4 ~ f'2 ~ f'2 ~ f'2 \divisioMinima
d'2 ees'2*4/2 f'2*3/2 \divisioMaior
d'2*3/2 ~ d'2 ees'2*3/2 f'2*5/2 c'2*3/2 \divisioMinima
d'2*3/2 ees'2 f'2 ~ f'2*3/2 ~ f'2*3/4 ~ f'2*5/2 d'2 ~ d'4 \divisioMaxima
r4 f'2 ees'2*3/2 f'2*3/2 ~ f'2 ees'2 d'2 ~ d'4 r2 c'2*6/2 d'2*3/2 f'2 ees'2*4/2 r2*3/2 \divisioMaior
ees'4 d'2 f'2*6/2 d'2*3/2 ~ d'2*4/2 ~ d'2 c'2 ~ c'2*4/2 bes2*4/2 ~ \divisioMinima
bes2 ~ bes2*4/2 d'2 ~ d'2 ~ d'2 ~ d'2*3/4 bes2*7/4 ~ bes2 ~ bes2 \finalis
d'2*3/2 f'4 ~ \divisioMinima
f'2 ees'4 ~ ees'2*4/2 d'2 ~ d'2*5/2 ~ d'2*3/2 \divisioMinima
g'2*3/2 ~ g'2 f'2*3/2 ees'2 f'2*3/2 ees'2 d'2*3/2 f'2*4/2 ~ f'2*3/2 ~ f'2*3/2 \divisioMaxima
g'2 ~ g'4 f'2*3/2 ~ f'2*4/2 ~ f'2*3/2 ~ f'4 ~ \divisioMaior
f'4 ~ f'2*5/2 ~ f'2*5/2 ~ f'2*3/2 ~ f'4 ~ \divisioMinima
f'2*5/4 ~ f'2 ~ f'4 g'2*4/2 f'2*7/4 ~ f'2*3/2 d'2*3/2 \divisioMaxima
ees'2*3/2 d'2*5/2 ~ \divisioMinima
d'4 ~ d'2 c'2*5/2 \divisioMaior
f'2 ees'2*8/2 d'2*3/2 ~ \divisioMinima
d'2*4/2 ~ d'4 c'2*5/2 f'2*3/2 ees'2 ~ ees'2*4/2 r2 ees'4 ~ \divisioMaior
ees'2 d'2 f'2*6/2 d'2*3/2 ~ \divisioMinima
d'2*4/2 ~ d'2 c'2 ~ c'2*4/2 bes2*4/2 ~ \divisioMinima
bes2 ~ bes2*4/2 d'2 ~ d'2 ~ d'2 ~ d'2*3/4 bes2*7/4 ~ bes2 ~ bes2 \finalis
}

tenorMusic = {
bes4 ~ bes2*3/2 ~ bes4 ~ \divisioMinima
bes2 ~ bes2 ~ bes2*4/2 ~ bes2*9/4 a2*3/2 c'4 ~ c'2 ~ c'2 bes2 ~ \divisioMinima
bes2 ~ bes2*4/2 c'2*3/2 ~ \divisioMaior
c'2*3/2 bes2 ~ bes2*3/2 c'2*5/2 a2*3/2 \divisioMinima
bes2*3/2 ~ bes2 ~ bes2 c'2*3/2 d'2*3/4 c'2*5/2 ~ c'2 bes4 \divisioMaxima
g4 bes2 ~ bes2*3/2 ~ bes2*3/2 ~ bes2 ~ bes2 a2*3/2 bes2 a2*6/2 bes2*3/2 ~ bes2 ~ bes2*4/2 ~ bes2*3/2 ~ \divisioMaior
bes4 ~ bes2 ~ bes2*6/2 a2*3/2 ~ a2*4/2 g2 ~ g2 f2*4/2 g2*4/2 \divisioMinima
ees2 d2*4/2 ~ d2 g2 f2 ~ f2*3/4 d2*7/4 ees2 g2 \finalis
bes2*3/2 d'4 ~ \divisioMinima
d'2 c'4 ~ c'2*4/2 r2 a2*5/2 bes2*3/2 ~ \divisioMinima
bes2*3/2 ~ bes2 ~ bes2*3/2 ~ bes2 ~ bes2*3/2 ~ bes2 ~ bes2*3/2 ~ bes2*4/2 ~ bes2*3/2 d'2*3/2 ~ \divisioMaxima
d'2 c'4 ~ c'2*3/2 bes2*4/2 a2*3/2 d'4 ~ \divisioMaior
d'4 bes2*5/2 c'2*5/2 d'2*3/2 c'4 \divisioMinima
bes2*5/4 c'2*3/2 ~ c'2*4/2 ~ c'2*7/4 bes2*3/2 ~ bes2*3/2 ~ \divisioMaxima
bes2*3/2 ~ bes2*5/2 ~ \divisioMinima
bes4 g2 ~ g2*5/2 ~ \divisioMaior
g2 ~ g2*8/2 a2*3/2 \divisioMinima
g2*4/2 bes4 g2*5/2 ~ g2*3/2 ~ g2 c'2*4/2 bes2*3/2 ~ \divisioMaior
bes2 ~ bes2 ~ bes2*6/2 a2*3/2 ~ \divisioMinima
a2*4/2 g2 ~ g2 f2*4/2 g2*4/2 \divisioMinima
ees2 d2*4/2 ~ d2 g2 f2 ~ f2*3/4 d2*7/4 ees2 g2 \finalis
}

bassMusic = {
r4 a2*3/2 g4 \divisioMinima
ees2 d2 c2*4/2 d2*9/4 f2*3/2 ~ f4 ~ f2 d2 ~ d2 \divisioMinima
g2 ~ g2*4/2 f2*3/2 \divisioMaior
g2*3/2 ~ g2 ~ g2*3/2 f2*5/2 ~ f2*3/2 \divisioMinima
bes,2*3/2 c2 d2 ~ d2*3/2 ~ d2*3/4 ~ d2*5/2 g2 ~ g4 \divisioMaxima
r4 d2 c2*3/2 d2*3/2 g2 ~ g2 ~ g2*3/2 ~ g2 ~ g2*6/2 ~ g2*3/2 d2 c2*4/2 g2*3/2 ~ \divisioMaior
g4 ~ g2 d2*6/2 ~ d2*3/2 c2*4/2 bes,2 aes,2 ~ aes,2*4/2 g,2*4/2 ~ \divisioMinima
g,2 ~ g,2*4/2 bes,2 ~ bes,2 d2 ~ d2*3/4 g,2*7/4 ~ g,2 ~ g,2 \finalis
r2*4/2 \divisioMinima
r2*7/2 g2 ~ g2*5/2 ~ g2*3/2 \divisioMinima
f2*3/2 ees2 d2*3/2 c2 d2*3/2 g2 ~ g2*3/2 ~ g2*4/2 d2*3/2 ~ d2*3/2 \divisioMaxima
ees2 ~ ees4 d2*3/2 ~ d2*4/2 ~ d2*3/2 ~ d4 ~ \divisioMaior
d4 ~ d2*5/2 ~ d2*5/2 ~ d2*3/2 ~ d4 \divisioMinima
g2*5/4 f2*3/2 ees2*4/2 d2*7/4 ~ d2*3/2 g2*3/2 ~ \divisioMaxima
g2*3/2 ~ g2*5/2 ~ \divisioMinima
g4 f2 ees2*5/2 \divisioMaior
d2 c2*8/2 f2*3/2 ~ \divisioMinima
f2*4/2 g4 ees2*5/2 d2*3/2 c2 ~ c2*4/2 g2*3/2 ~ \divisioMaior
g2 ~ g2 d2*6/2 ~ d2*3/2 \divisioMinima
c2*4/2 bes,2 aes,2 ~ aes,2*4/2 g,2*4/2 ~ \divisioMinima
g,2 ~ g,2*4/2 bes,2 ~ bes,2 d2 ~ d2*3/4 g,2*7/4 ~ g,2 ~ g,2 \finalis
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
