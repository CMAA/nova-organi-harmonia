\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.146
%(volume.page)

global = {
 \key d \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Tu es Deus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Tu es Deus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Tu es Deus" }
    \line {}
  }
}

chantText = \lyricmode {
Tu _ _ es 
\set stanza = " * " De -- us, _ _ _ 
qui fa -- _ _ cis mi -- ra -- bí -- _ li -- _ a _ so -- lus: _ _ _ 
no -- tam _ fe -- cís -- _ sti in gén -- _ _ ti -- bus _ _ 
vir -- _ tú -- tem _ _ _ _ _ tu -- am. _ _ _ _ _ _ _ _ _ _ _ _ ℣. 
Li -- be -- rá -- sti in brá -- chi -- o tu -- o _ _ _ _ _ _ _ 
pó -- _ _ _ _ _ _ _ _ _ pu -- _ lum _ _ _ 
tu -- _ _ _ _ _ _ _ _ um, 
fí -- li -- os Is -- ra -- el _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
\set stanza = " * " 
et Jo -- seph. _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   bes4 ( c'4) ees'4 ( ees'4) f'4 ( ees'4 d'4) d'4 \divisioMinima
  d'4 ( ees'4 f'\prall g'4 f'4) f'4 ( aes'4 g'4 f'4) ees'4 ( ees'4) ~ ees'4 ( c'4) f'4 ( ees'4 d'4) \divisioMaior
 d'4 ( ees'4 f'4 \forceBreak
) g'4. f'4 ( bes'4 g'4) a'4 ( bes'4) a'4 \divisioMinima
 a'4 ( bes'4) a'4 a'4 ( bes'4) c''4 ( bes'4) bes'4 ( bes'4) ~ bes'4 ( g'4) g'4 ( f'4) bes'4 ( a'4 bes'4) \divisioMinima
 g'4 ( bes'4 a'4 f'4)  f'4 ( g'4 \forceBreak
) d'4 ( ees'4 f'\prall g'4 aes'4 f'4) ees'4 ( ees'4) c'4 ( d'4 c'4) \divisioMaxima
 f'4 ( g'4 f'4 c''4) c''4 ( bes'4) ~ bes'4 ( g'4 bes'4) f'4 f'4 ( a'4) ~ a'4 ( g'4 a'4) f'4 \divisioMinima
 f'4 f'4 ( a'4) ~ a'4 ( g'4 \forceBreak
 bes'4) ~ bes'4 ( g'4 a'4) f'4 ( g'4)  d'4 ( ees'4 f'\prall g'4 aes'4 f'4) ees'4 ( ees'4) c'4 ( d'4 c'4) \divisioMaxima
 f'4 ( bes'4) g'4 ( \once \tweak #'font-size #-4 a'' ) a'4 ( bes'4 a'4 bes'\prall c''4 bes'4 a'4 g'4) g'4. f'4 bes'4 ( bes'4) ~ bes'4 ( bes'4 \forceBreak
) ~ bes'4 ( bes'4) ~ bes'4 ( f'4) ~ f'4 ( ees'4) \divisioMinima
 ees'4 ( g'4 a'\prall bes'4) a'4 ( f'4) a'4 ( g'4 f'4) g'4 ( g'4 ees'4) g'4 ( g'4) \divisioMinima
 f'4 bes'4 ( bes'4) ~ bes'4 ( bes'4) ~ bes'4 ( bes'4) ~ bes'4 ( g'4 f'4 ees'4 d'4 \forceBreak
)  ees'4 ( g'4.) aes'4 ( f'4 ees'4) f'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( d'4) \finalis
 f'4 f'4 f'4 ( bes'4) bes'4 \divisioMinima
 bes'4 bes'4 ( c''4 a'4 bes'4) a'4 ( g'4) g'4 ( a'\prall bes'4 \forceBreak
) bes'4 a'4 ( g'4) bes'4 ( a'4 g'4) \divisioMinima
 bes'4 ( bes'4) c''4 ( a'4) bes'4 ( g'4 f'4) bes'4 ( g'4) a'4 ( g'4) ~ g'4 ( f'4) \divisioMaxima
 a'4 ( bes'4) ~ bes'4 ( bes'4) ~ bes'4 ( g'4 f'4) g'4 ( a'\prall bes'4 a'4) \divisioMinima
 d'4 ( f'4 g'4 \forceBreak
) bes'4 ( a'4 bes'4) g'4 bes'4 ( bes'4) ~ bes'4 ( bes'4) ~ bes'4 ( g'4 f'4) g'4 ( a'\prall bes'4) bes'4 ( bes'4) ~ bes'4 ( g'4 f'4 g'4) g'4. f'4 ( a'4 g'4 f'4) g'4 ( ees'4) ~ ees'4 ( d'4) \divisioMaior
 ees'4 ( c'4) ees'4 ( ees'4 c'4 \forceBreak
) d'4 ( ees'4) f'4 ( g'4) bes'4 ( c''4 bes'4) ~ bes'4 ( bes'4) ~ bes'4 ( g'4 f'4) bes'4 ( bes'4 bes'4) ~ bes'4 ( a'4) a'4 \divisioMaxima
 f'4 g'4 ( bes'4) bes'4 bes'4 bes'4 a'4. bes'4 ( c''4 g'4) bes'4 ( a'4 bes'4 g'4 f'4) \divisioMinima \forceBreak

 bes'4 ( a'4) bes'4 ( c''4) d''4 ( a'4) bes'4 ( c''4 bes'4 a'4 g'4) \divisioMinima
 c''4 d''4 ( a'4) bes'4 ( c''4 bes'4 a'4 g'4.) bes'4 ( a'4 bes'4 g'4 f'4) bes'4 ( f'4) a'4 ( bes'4.) f'4 ( g'4) bes'4 ( bes'4) ~ bes'4 ( g'4 f'4 ees'4) ~ ees'4 ( c'4) \divisioMaior \forceBreak

 f'4 g'4 ( bes'4) a'4 ( a'4 bes'4) g'4 ( a'4 g'4) f'4 ( g'4 f'4.) d'4 ( ees'4 f'4) g'4 ( d'4) f'4 ( a'4 g'4 f'4) g'4 ( ees'4) ~ ees'4 ( d'4) \finalis

}

altoMusic = {
r2 bes2 c'2*3/2 bes4 d'2*3/2 ~ d'2 c'2*4/2 bes2 aes2 bes2*3/2 \divisioMaior
d'2*3/2 ~ d'2*3/4 ~ d'2*3/2 f'2*3/2 ~ \divisioMinima
f'2*3/2 d'2 ~ d'2 ~ d'2 ~ d'2 c'2 d'2*3/2 ~ \divisioMinima
d'2*4/2 ~ d'2 ~ d'2*3/2 ees'2*3/2 ~ ees'4 r2*4/2 \divisioMaxima
f'2 ~ f'2 ees'4 d'2*4/2 ~ d'2 ~ d'2 ~ d'2*3/2 ~ \divisioMinima
d'2 ~ d'2*3/2 ~ d'2 ~ d'2 c'2 bes2*3/2 aes2*3/2 g2 ~ g2 bes4 ~ \divisioMaxima
bes2 d'2 ~ d'2 ~ d'2*6/2 c'2*5/4 d'2 ees'2 bes2*3/2 ~ bes2*3/2 ~ \divisioMinima
bes2*4/2 d'2 ~ d'2*3/2 ~ d'2*3/2 c'2 ~ \divisioMinima
c'4 bes2 ~ bes2 ~ bes2 ~ bes2*5/2 ~ bes2*5/4 aes2*3/2 c'2*4/2 bes2*3/2 \finalis
d'2 ~ d'2*3/2 ~ \divisioMinima
d'2*5/2 ~ d'2 ~ d'2*3/2 f'4 ~ f'2 d'2*3/2 \divisioMinima
f'2*4/2 ~ f'2 ~ f'4 d'2*3/2 c'2*3/2 \divisioMaxima
d'2 g'2 f'2*3/2 ~ f'2*4/2 \divisioMinima
d'2*3/2 ~ d'2*4/2 ~ d'2 g'2 f'2 ~ f'4 ees'2*3/2 d'2 ~ d'2*4/2 c'2*3/4 ~ c'2*3/2 bes2 ~ bes2 ~ bes4 \divisioMaior
c'2 ~ c'2*3/2 ~ c'2*4/2 f'2*3/2 ~ f'2 ~ f'2*3/2 ~ f'2*3/2 c'2 ~ c'4 \divisioMaxima
f'2*4/2 ~ f'2 ~ f'2*3/4 ees'2*3/2 d'2*3/2 c'2 \divisioMinima
d'2*4/2 ~ d'2 ~ d'2 ~ d'2*3/2 ~ \divisioMinima
d'2*3/2 ~ d'2 c'2*7/4 f'2 g2*3/2 f'2 bes2*5/4 c'2 bes2 ~ bes2*3/2 ~ bes2 c'4 ~ \divisioMaior
c'4 d'2 ~ d'2*6/2 ~ d'2*7/4 ~ d'2*4/2 ~ d'4 c'2*3/2 bes2 ~ bes2 ~ bes4 \finalis
}

tenorMusic = {
r2 bes2 a2*3/2 g4 ~ g2*3/2 d2 ees2*4/2 ~ ees2 ~ ees2 d2*3/2 \divisioMaior
g2*3/2 a2*3/4 bes2*3/2 ~ bes2*3/2 \divisioMinima
c'2*3/2 ~ c'2 a2 g2 a2 ~ a2 bes2*3/2 ~ \divisioMinima
bes2*4/2 ~ bes2 ~ bes2*3/2 aes2*3/2 g2 f2 ees4 \divisioMaxima
r2 a2*3/2 g2*4/2 a2 ~ a2 ~ a2*3/2 ~ \divisioMinima
a2 f2*3/2 ~ f2 d2 ~ d2 ~ d2*3/2 ees2*3/2 ~ ees2 f2 ees4 \divisioMaxima
f2*4/2 ~ f2 g2*6/2 ~ g2*5/4 ~ g2 ~ g2 f2*3/2 g2*3/2 ~ \divisioMinima
g2*4/2 f2 g2*3/2 ees2*3/2 d2 ~ \divisioMinima
d4 ~ d2 g2 f2 ees2*5/2 ~ ees2*5/4 ~ ees2*3/2 d2*4/2 ~ d2*3/2 \finalis
bes2 ~ bes2*3/2 ~ \divisioMinima
bes4 ~ bes2*4/2 c'2 bes2*3/2 c'4 d'2 ~ d'2*3/2 ~ \divisioMinima
d'2*4/2 ~ d'2*3/2 bes2*3/2 a2*3/2 \divisioMaxima
bes2 ~ bes2 ~ bes2*3/2 d'2*4/2 ~ \divisioMinima
d'4 c'2 ~ c'2*4/2 bes2 ~ bes2 ~ bes2*3/2 ~ bes2*3/2 ~ bes2 g2*4/2 ~ g2*3/4 d2*3/2 ~ d2 g2 ~ g4 ~ \divisioMaior
g2 ~ g2*3/2 ~ g2*4/2 f2*3/2 d'2 c'2*3/2 bes2*3/2 g2 a4 \divisioMaxima
c'4 bes2*3/2 g2 f2*3/4 g2*3/2 ~ g2*3/2 a2 \divisioMinima
bes2*4/2 a2 ~ a2 bes2*3/2 \divisioMinima
a4 ~ a2 g2 ~ g2*7/4 f2 d2*3/2 f2 ~ f2*5/4 d2 ~ d2 g2*3/2 ~ g2 ees4 \divisioMaior
d4 ~ d2 g2*6/2 a2*7/4 bes2*5/2 f2*3/2 ~ f2 g2 ~ g4 \finalis
}

bassMusic = {
g2 ~ g2 ~ g2*3/2 ~ g4 bes,2*3/2 ~ bes,2 aes,2*4/2 g,2 f,2 g,2*3/2 \divisioMaior
bes,2*3/2 ~ bes,2*3/4 ~ bes,2*3/2 d2*3/2 ~ \divisioMinima
d2*3/2 f2 ~ f2 g2 ~ g2 ~ g2 ~ g2*3/2 \divisioMinima
r2*4/2 a2 g2*3/2 f2*3/2 c2 ~ c2 ~ c4 \divisioMaxima
d2 ~ d2*3/2 g2*4/2 ~ g2 f2 d2*3/2 \divisioMinima
c2 ~ c2*3/2 bes,2 ~ bes,2 a,2 g,2*3/2 f,2*3/2 c2 ~ c2 ~ c4 \divisioMaxima
d2*4/2 c2 bes,2*6/2 a,2*5/4 g,2 c2 d2*3/2 g2*3/2 \divisioMinima
c2*4/2 ~ c2 bes,2*3/2 ~ bes,2*3/2 a,2 ~ \divisioMinima
a,4 g,2 ~ g,2 ~ g,2 ~ g,2*5/2 c2*5/4 f,2*3/2 aes,2*4/2 g,2*3/2 \finalis
r2 a2*3/2 ~ \divisioMinima
a4 g2*4/2 ~ g2 ~ g2*3/2 f4 ~ f2 g2*3/2 \divisioMinima
r2*4/2 g2*3/2 ~ g2*3/2 a2*3/2 \divisioMaxima
g2 ees2 d2*3/2 ~ d2*4/2 ~ \divisioMinima
d4 ~ d2 g2*4/2 ~ g2 ees2 d2*3/2 c2*3/2 bes,2 ~ bes,2*4/2 a,2*3/4 ~ a,2*3/2 g,2 ~ g,2 ~ g,4 \divisioMaior
c2 d2*3/2 ees2*4/2 d2*3/2 ~ d2 ~ d2*3/2 ~ d2*3/2 f2 ~ f4 \divisioMaxima
d2*4/2 ~ d2 ~ d2*3/4 c2*3/2 g2*3/2 ~ g2 ~ \divisioMinima
g2*4/2 f2 g2 ~ g2*3/2 ~ \divisioMinima
g4 f2 ees2 ~ ees2*7/4 d2*5/2 ~ d2 ~ d2*5/4 a,2 g,2 ~ g,2*3/2 c2 ~ c4 ~ \divisioMaior
c4 bes,2 ~ bes,2*6/2 ~ bes,2*7/4 ~ bes,2*5/2 d2*3/2 ~ d2 g,2 ~ g,4 \finalis
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
