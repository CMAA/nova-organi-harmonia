\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.282
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Deus exaudi" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Deus exaudi"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Deus exaudi" }
    \line {}
  }
}

chantText = \lyricmode {
De -- us 
\set stanza = " * " ex -- áu -- _ _ _ _ di _ _ _ 
o -- ra -- ti -- ó -- nem _ me -- _ am: _ _ _ _ _ 
áu -- ri -- bus pér -- _ _ _ _ ci -- pe _ _ _ 
ver -- ba o -- _ _ _ ris _ me -- _ _ i. _ _ _ _ _ _ _ _ _ _ _ _ ℣. 
De -- us in nó -- mi -- ne tu -- _ _ o _ _ _ _ _ _ 
sal -- _ _ vum me fac, _ _ _ 
et in vir -- tú -- te _ tu -- _ _ _ _ _ a _ _ _ _ 
\set stanza = " * " 
jú -- di -- ca _ _ _ _ _ _ _ _ me. _ _ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   ees'4 ( g'4 f'4) f'4 \divisioMinima
 f'4 ( g'4 f'4 g'4) g'4 ( ees'4) f'4 ( g'4) bes'4 ( bes'4) ~ bes'4 ( g'4) ~ g'4 ( \once \tweak #'font-size #-4 f' )  f'4 ( g'4.) d'4 ( ees'4 f'\prall g'4 aes'4 f'4) ees'4 ( ees'4) c'4 ( d'4 c'4) \divisioMaior \forceBreak

 ees'4 ( g'4 f'4) f'4 f'4 f'4 ( g'4 f'4 g'4)  g'4 ( f'4) aes'4 ( g'4 f'4) f'4 ( ees'4) g'4 ( f'4 g'4) g'4 ( ees'4) f'4 ( g'4) bes'4 ( bes'4 g'4 f'4.) g'4 ( a'\prall bes'4) c''4 ( bes'4 bes'4) f'4 ( g'4 f'4) \divisioMaxima \forceBreak

 a'4 ( a'4 bes'4) g'4 g'4 ( bes'4 a'4 g'4) g'4 ( ees'4) f'4 ( g'4) bes'4 ( bes'4) ~ bes'4 ( g'4) ~ g'4 ( \once \tweak #'font-size #-4 f' ) f'4  f'4 ( g'4.) d'4 ( ees'4 f'\prall g'4 aes'4 f'4) ees'4 ( ees'4) c'4 ( d'4 c'4) \divisioMaior \forceBreak

 ees'4 ( f'4 g'4) g'4 ( f'4) g'4. f'4 bes'4 ( bes'4 g'4) bes'4 ( bes'4) ~ bes'4 ( f'4) g'4 ( f'4) ees'4 ( ees'4 c'4 d'\prall ees'4 f'4)  g'4 ( f'4) g'4 ( aes'4 f'4 ees'4) \divisioMinima
  g'4 bes'4 ( bes'4 g'4 a'\prall bes'4 c''4 \forceBreak
) bes'4. a'4 ( c''4 bes'4 a'4) bes'4 ( bes'4) c''4 ( d''4 bes'4) ~ bes'4 ( bes'4 g'4 f'4 ees'4) f'4 ( g'4) bes'4 ( bes'4) ~ bes'4 ( g'4 f'4 ees'4) \divisioMinima
 g'4 ( a'4 g'4 f'4) bes'4 ( bes'4) f'4 ( bes'4 g'4) a'4 ( g'4) ~ g'4 ( f'4) \finalis \forceBreak

 f'4 f'4 bes'4 ( bes'4) bes'4 ( c''4 bes'4) bes'4 bes'4 bes'4 ( a'4) bes'4 ( c''4 d''4 c''4 bes'4) c''4 ( d''4 c''4 d''4) c''4 ( d''4 bes'4) \divisioMinima
 bes'4 ( c''4 bes'4) c''4 ( bes'4 \forceBreak
) c''4 ( bes'4) d''4 ( c''4 bes'4) ~ bes'4 ( a'4 g'4 f'4) g'4 ( f'4) \divisioMaior
 a'4 ( f'4 a'4 g'4 f'4.) a'4 ( f'4) g'4 ( a'\prall bes'4 c''4) bes'4 ( c''4) bes'4 ( bes'4) bes'4 ( bes'4) ~ bes'4 ( g'4 f'4) g'4 ( bes'4) ~ bes'4 ( f'4) \divisioMaxima \forceBreak

 g'4 f'4 g'4 g'4 ( bes'4 c''4 bes'4) bes'4 ( bes'4) ~ bes'4 ( g'4 f'4) g'4 ( f'4) bes'4 ( bes'4 f'4) g'4 ( f'4) \divisioMinima
 bes'4 ( bes'4) ~ bes'4 ( g'4) ~ g'4 ( f'4) f'4 ( g'4 f'4) g'4 ( f'4) g'4 ( f'4 \forceBreak
) a'4 ( g'4 f'4 f'4) d'4 ( ees'4 d'4) \divisioMaior
 d'4 ( f'4 g'4) g'4 ( f'4) g'4. f'4 bes'4 ( bes'4 g'4) bes'4 ( bes'4) ~ bes'4 ( f'4) g'4 ( f'4)  ees'4 ( ees'4 c'4 d'\prall ees'4 f'4. \forceBreak
) g'4 ( f'4) g'4 ( aes'4 f'4 ees'4) \divisioMinima
  g'4 bes'4 ( bes'4 g'4 a'\prall bes'4 c''4) bes'4. a'4 ( c''4 bes'4 a'4) bes'4 ( bes'4) c''4 ( d''4 bes'4) ~ bes'4 ( bes'4 g'4 f'4 ees'4) f'4 ( g'4 \forceBreak
) bes'4 ( bes'4) ~ bes'4 ( g'4 f'4 ees'4) \divisioMinima
 g'4 ( a'4 g'4 f'4) bes'4 ( bes'4) f'4 ( bes'4 g'4) a'4 ( g'4) ~ g'4 ( f'4) \finalis

}

altoMusic = {
bes2*3/2 ~ bes4 \divisioMinima
c'2*4/2 bes2*4/2 ~ bes2*3/2 c'2*3/2 ~ c'2*5/4 ~ c'2*6/2 g2 ~ g2*3/2 ~ \divisioMaior
g2*3/2 c'2 ~ c'2*4/2 bes2 aes2*3/2 bes2*5/2 ~ bes2*4/2 ~ bes2*9/4 ees'2*3/2 f'2*3/2 d'2*3/2 ~ \divisioMaxima
d'2*4/2 ~ d'2*4/2 bes2*4/2 ~ bes2*3/2 c'2*4/2 ~ c'2*5/4 ~ c'2*6/2 g2 ~ g2*3/2 \divisioMaior
ees'2*3/2 d'2 ees'2*5/4 f'2*3/2 ees'2 f'2 ees'2 ~ ees'4 r2*5/2 ees'2*5/2 ~ ees'4 ~ ees'4 f'2 ees'2*4/2 f'2*3/4 ~ f'2*4/2 ~ f'2 ~ f'2*3/2 ees'2*5/2 ~ ees'2 f'2 ees'2*4/2 ~ \divisioMinima
ees'2*4/2 f'2 ~ f'2*4/2 c'2 ~ c'4 \finalis
r2 g'2 ~ g'2*3/2 f'2 ~ f'2 ~ f'2*5/2 ~ f'2*4/2 ~ f'2*3/2 \divisioMinima
g'2*3/2 ~ g'2 ~ g'2 ~ g'2*3/2 f'2*4/2 ~ f'2 ~ \divisioMaior
f'2*11/4 d'2 ~ d'2*4/2 ~ d'2 c'2 f'2 ees'2*4/2 f'2 ~ f'4 \divisioMaxima
d'2*3/2 ~ d'2*4/2 ~ d'2 ~ d'2*3/2 ~ d'2 f'2*3/2 d'2 \divisioMinima
f'2*3/2 d'2*3/2 f'2*3/2 ~ f'2*4/2 d'2*4/2 ~ d'2*3/2 ~ \divisioMaior
d'4 ~ d'2 ~ d'2 ees'2*5/4 f'2*3/2 ees'2 f'2 ees'2 ~ ees'4 r2*11/4 ees'2*5/2 ~ ees'4 ~ ees'4 f'2 ees'2*4/2 f'2*3/4 ~ f'2*4/2 ~ f'2 ~ f'2*3/2 ees'2*5/2 ~ ees'2 f'2 ees'2*4/2 ~ \divisioMinima
ees'2*4/2 f'2 ~ f'2*4/2 c'2 ~ c'4 \finalis
}

tenorMusic = {
ees2*3/2 f4 \divisioMinima
d2*4/2 ees2*4/2 f2*3/2 ees2*3/2 ~ ees2*5/4 f2*6/2 ~ f2 ees2*3/2 ~ \divisioMaior
ees2*3/2 ~ ees2 ~ ees2*4/2 ~ ees2 ~ ees2*3/2 ~ ees2*5/2 ~ ees2*4/2 f2*9/4 bes2*3/2 ~ bes2*3/2 ~ bes2*3/2 \divisioMaxima
g2*4/2 d2*4/2 ees2*4/2 f2*3/2 ees2*4/2 ~ ees2*5/4 f2*6/2 ~ f2 ees2*3/2 \divisioMaior
bes2*3/2 ~ bes2 bese2*5/4 bes2*3/2 ~ bes2 ~ bes2 ~ bes2 ~ bes2*6/2 ~ bes2*6/2 ~ bes4 ~ bes2 ~ bes2*4/2 ~ bes2*3/4 c'2*4/2 bes2 d2*3/2 g2*5/2 bes2 ~ bes2 ~ bes2*4/2 \divisioMinima
c'2*4/2 ~ c'2 bes2*4/2 ~ bes2 a4 \finalis
f'2 ~ f'2 ees'2*3/2 ~ ees'2 d'2 ~ d'2*5/2 ~ d'2*4/2 ~ d'2*3/2 ~ \divisioMinima
d'2*3/2 ~ d'2 ~ d'2 c'2*3/2 ~ c'2*4/2 bes2 \divisioMaior
c'2*11/4 ~ c'2 bes2*4/2 g2 ~ g2 ~ g2 ~ g2*4/2 f2 bes4 ~ \divisioMaxima
bes2*3/2 ~ bes2*4/2 ~ bes2 a2*3/2 bes2 ~ bes2*3/2 a2 \divisioMinima
g2*3/2 a2*3/2 c'2*3/2 bes2*4/2 a2*4/2 bes2*3/2 ~ \divisioMaior
bes4 a2 bes2 ~ bes2*5/4 ~ bes2*3/2 ~ bes2 ~ bes2 ~ bes2 ~ bes2*13/4 ~ bes2*5/2 g4 bes4 ~ bes2 ~ bes2*4/2 ~ bes2*3/4 c'2*4/2 bes2 f2*3/2 g2*5/2 bes2 ~ bes2 ~ bes2*4/2 \divisioMinima
c'2*4/2 ~ c'2 bes2*4/2 ~ bes2 a4 \finalis
}

bassMusic = {
g,2*3/2 d4 \divisioMinima
aes,2*4/2 g,2*4/2 ~ g,2*3/2 c2*3/2 bes,2*5/4 aes,2*6/2 c2 ~ c2*3/2 ~ \divisioMaior
c2*3/2 bes,2 aes,2*4/2 g,2 f,2*3/2 g,2*5/2 c2*4/2 d2*9/4 c2*3/2 d2*3/2 bes,2*3/2 ~ \divisioMaxima
bes,2*4/2 ~ bes,2*4/2 g,2*4/2 ~ g,2*3/2 c2*4/2 bes,2*5/4 aes,2*6/2 c2 ~ c2*3/2 ~ \divisioMaior
c2*3/2 g2*9/4 d2*3/2 c2 d2 ees2 g2*6/2 c2*6/2 ees4 d2 c2*4/2 d2*3/4 ~ d2*4/2 ~ d2 bes2*3/2 c2*5/2 ~ c2 d2 g2*4/2 \divisioMinima
c2*4/2 d2 ~ d2*4/2 f2 ~ f4 \finalis
r2*11/2 c'2*5/2 bes2*4/2 a2*3/2 \divisioMinima
g2*3/2 f2 ees2 ~ ees2*3/2 d2*4/2 ~ d2 ~ \divisioMaior
d2*11/4 g2 ~ g2*4/2 f2 ees2 d2 c2*4/2 d2 ~ d4 \divisioMaxima
r2*3/2 a2*4/2 g2 ~ g2*3/2 ~ g2 d2*3/2 ~ d2 ~ \divisioMinima
d2*3/2 ~ d2*3/2 ~ d2*3/2 ~ d2*4/2 ~ d2*4/2 g2*3/2 ~ \divisioMaior
g4 ~ g2 ~ g2 ees2*5/4 d2*3/2 c2 d2 ees2 g2*13/4 ees2*5/2 ~ ees4 ~ ees4 d2 c2*4/2 d2*3/4 ~ d2*4/2 ~ d2 ~ d2*3/2 c2*5/2 ~ c2 d2 g2*4/2 \divisioMinima
c2*4/2 d2 ~ d2*4/2 f2 ~ f4 \finalis
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
        "VIII"
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
