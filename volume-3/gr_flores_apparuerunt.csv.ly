\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.80
%(volume.page)

global = {
 \key c \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Flores apparuerunt" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Flores apparuerunt"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Flores apparuerunt" }
    \line {}
  }
}

chantText = \lyricmode {
Flo -- res 
\set stanza = " * " ap -- pa -- ru -- é -- _ runt in ter -- ra no -- _ _ _ stra, 
tem -- pus pu -- ta -- ti -- ó -- nis ad -- vé -- _ _ nit, 
vox túr -- tu -- ris au -- dí -- ta est _ 
in ter -- ra no -- stra. _ _ _ _ _ _ _ ℣. 
Sur -- ge, _ _ _ _ _ _ _ 
a -- mí -- _ ca me -- _ a, 
spe -- ci -- ó -- _ _ _ _ sa me -- _ _ _ a, 
et ve -- _ _ _ _ _ _ _ _ ni: 
co -- lúm -- ba _ me -- a _ _ _ 
in fo -- ra -- mí -- ni -- bus _ pe -- _ _ _ træ, 
in ca -- vér -- _ na 
\set stanza = " * " ma -- cé -- ri -- æ. _ _ _ _ _ }

chantMusic = {
\tieDown   ees'4 ( ees'4 f'4) ees'4  ees'4 f'4 ( g'4) g'4 g'4 ( f'4) g'4 ( ees'4) ees'4 \divisioMinima
 f'4 ( \once \tweak #'font-size #-4 g' ) ees'4 ( ees'4) ees'4 ees'4 ( ees'4) ~ ees'4 ( c'4 bes4) c'4 ( ees'4 ees'4) g'4 ( f'4 g'4 ees'4) ees'4 \divisioMaxima
 g'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 bes'4 bes'4 ( c''4) bes'4 g'4 ( f'4 g'4) g'4 ees'4 ( g'4) f'4. ees'4 ( g'4 ees'4) f'4 ( g'4) f'4 \divisioMaior
 g'4 ( f'4) f'4 ( bes'4) bes'4 a'4 ( bes'4) g'4 ( g'4 \once \tweak #'font-size #-4 f' ) g'4 f'4 ( ees'4) ees'4 ( f'4 ees'4 ees'4) c'4 ( d'4 c'4) \divisioMaior
 ees'4 ( f'4 ees'4) ees'4 ( f'4 g'4)  g'4 ( bes'4 g'4 f'4 g'\prall aes'4 g'4 f'4) ees'4 ees'4 ( ees'4) ~ ees'4 ( c'4 bes4) \divisioMinima
 ees'4 ( f'4) g'4 ( f'4 ees'4) d'4 ( f'4 g'4.) ees'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( ees'4) \finalis
  bes'4 ( \once \tweak #'font-size #-4 c'' ) c''4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( c''4 bes'4 a'4.) bes'4 ( c''4 g'4 ees'4) \divisioMinima
 g'4 bes'4 ( bes'4 c''4) bes'4 ( bes'4 g'4) bes'4 ( c''4 bes'4 a'4.) bes'4 ( c''4 g'4 ees'4) \divisioMaior
 ees'4  f'4 ( g'4 f'4 g'4.) bes'4 ( c''4 bes'4 g'4 aes'4) g'4 ( f'4)  bes'4 ( g'4) aes'4 ( bes'4)  aes'4 ( g'4) \divisioMaxima
 bes'4 bes'4 bes'4 ( c''4) d''4 ( c''4 bes'4) ~ bes'4 ( g'4) bes'4 ( bes'4) ~ bes'4 ( c''4) bes'4 \divisioMinima
  g'4 ( aes'4 g'4 f'4.) g'4 ( aes'4 g'4 ees'4.) g'4 ( f'4 ees'4) f'4 ( ees'4) ees'4 \divisioMaior
 ees'4 g'4 ( ees'4 g'4 f'4 ees'4.) g'4 ( ees'4) f'4 ( g'4) bes'4 ( bes'4) c''4 ( a'4) bes'4 ( g'4) bes'4 ( c''4) ees''4 ( ees''4) ~ ees''4 ( bes'4) bes'4 \divisioMaxima
 g'4 bes'4 bes'4 ( a'4) c''4 ( d''4) c''4 ( bes'4) bes'4 ( a'4) c''4 ( bes'4.) d''4 ( c''4 bes'4 a'4) bes'4 ( g'4) \divisioMaior
 g'4 g'4 g'4 g'4 ( c''4) c''4 ( bes'4) bes'4 c''4 ( f'4 g'4) g'4 ( bes'4 c''4) bes'4 ( bes'4 g'4.) bes'4 ( g'4 bes'4) ~ bes'4 ( f'4 g'4 ees'4) ees'4 \divisioMaior
 ees'4 f'4 ( g'4) g'4 bes'4 ( bes'4 g'4 a'4) f'4 ( g'4)   bes'4 bes'4 ( g'4 aes'4 f'4) ees'4 ees'4 ( f'4) aes'4 ( g'4) aes'4 ( bes'4) \divisioMinima
  g'4 ( aes'4 f'4 ees'4) f'4 ( g'4 f'4) ~ f'4 ( ees'4) \finalis

}

altoMusic = {
c'2*3/2 bes4 ~ bes4 ~ bes2 ~ bes4 c'2*4/2 bes4 ~ \divisioMinima
bes2 ~ bes2*3/2 c'2 bes2*3/2 aes2*3/2 c'2*4/2 ~ c'4 \divisioMaxima
ees'2 ~ ees'2 f'2*3/2 ees'2*4/2 c'2 ~ c'2*3/4 bes2*3/2 c'2*3/2 \divisioMaior
ees'2 f'2*3/2 ees'2 d'2*3/2 c'2*3/2 bes2*4/2 g2*3/2 ~ \divisioMaior
g2*3/2 bes2*3/2 ~ bes2*3/2 c'2*5/2 bes4 aes2 g2*3/2 \divisioMinima
bes2*5/2 ~ bes2*7/4 ~ bes2*4/2 ~ bes2 ~ bes4 g'2 f'4 ~ f'2*3/2 ees'2*9/4 d'2 c'2 \divisioMinima
d'4 ~ d'2*3/2 ees'2*3/2 f'2*9/4 ees'2*4/2 \divisioMaior
c'4 ~ c'2*3/2 ~ c'2*3/4 ~ c'2*3/2 ~ c'2 ~ c'2 bes2*4/2 c'2 \divisioMaxima
d'2 ~ d'2 ~ d'2 ~ d'2*3/2 ees'2 f'2*3/2 ees'2*9/4 ~ ees'2*9/4 c'2*3/2 ~ c'2 ~ c'4 \divisioMaior
bes4 c'2*11/4 ees'2*4/2 d'2 ~ d'2 ~ d'2 ees'2 ~ ees'2 ~ ees'2 d'4 \divisioMaxima
ees'2 f'2 ~ f'2 ~ f'2 ~ f'2 ~ f'2*5/4 ~ f'2 ~ f'2 d'2 \divisioMaior
g'4 f'2 ees'2 f'2 d'4 ~ d'2*4/2 ~ d'2 ~ d'2*7/4 ees'2 d'2*3/2 c'2 bes4 \divisioMaior
ees'2*3/2 d'4 ~ d'2*4/2 ~ d'2 ees'4 ~ ees'2 ~ ees'2 c'4 ~ c'2 ees'2 ~ ees'2 ~ ees'2 c'2 bes2 ~ bes2 ~ bes4 \finalis
}

tenorMusic = {
aes2*3/2 g4 ~ g4 f2 ees4 ~ ees2*4/2 ~ ees4 \divisioMinima
d2 c2*3/2 ~ c2 ~ c2*3/2 ~ c2*3/2 ~ c2*4/2 ~ c4 \divisioMaxima
c'2 bes2 ~ bes2*3/2 ~ bes2*4/2 ~ bes2 ~ bes2*3/4 g2*3/2 aes2*3/2 \divisioMaior
bes2 ~ bes2*3/2 ~ bes2 ~ bes2*3/2 c'2*3/2 ees2*4/2 ~ ees2*3/2 \divisioMaior
c2*3/2 ~ c2*3/2 d2*3/2 ees2*5/2 ~ ees4 ~ ees2 ~ ees2*3/2 ~ \divisioMinima
ees2*5/2 g2*7/4 ~ g2*4/2 bes2 g4 ees'2 ~ ees'4 d'2*3/2 c'2*9/4 bes2 ~ bes2 ~ \divisioMinima
bes4 g2*3/2 ~ g2*3/2 f2*9/4 g2*4/2 \divisioMaior
c4 d2*3/2 f2*3/4 ees2*3/2 ~ ees2 ~ ees2 ~ ees2*4/2 ~ ees2 \divisioMaxima
f2 g2 a2 bes2*3/2 ~ bes2 ~ bes2*3/2 ~ bes2*3/2 ~ bes2*3/4 ~ bes2*3/2 c'2*3/4 bes2*3/2 aes2 g4 ~ \divisioMaior
g4 bes2*4/2 c'2*3/4 bes2*4/2 a2 g2 ~ g2 ~ g2 ~ g2 ~ g2 ~ g4 \divisioMaxima
bes4 c'4 ~ c'2 ~ c'2 d'2 c'2 bes2*5/4 a2 c'2 bes2 ~ \divisioMaior
bes4 ~ bes2 ~ bes2 ~ bes2 ~ bes4 a2*4/2 g2 ~ g2*7/4 ~ g2 ~ g2*3/2 bes2 ~ bes4 ~ \divisioMaior
bes2*3/2 ~ bes4 c'2*4/2 bes2 ~ bes4 ~ bes2 c'2 bes4 ~ bes2 ~ bes2 ~ bes2 c'2 bes2 ~ bes2 aes2 g4 \finalis
}

bassMusic = {
r2*4/2 c4 d2 ees4 aes,2*4/2 g,4 \divisioMinima
bes,2 bes2*3/2 aes,2 g,2*3/2 f,2*3/2 bes,2*4/2 c4 ~ \divisioMaxima
c2 ~ c2 d2*3/2 ees2*4/2 ~ ees2 f2*3/4 ~ f2*3/2 ~ f2*3/2 \divisioMaior
ees2 d2*3/2 c2 bes,2*3/2 aes,2*3/2 g,2*4/2 c2*3/2 ~ \divisioMaior
c2*3/2 bes,2*3/2 ~ bes,2*3/2 aes,2*5/2 g,4 f,2 ees,2*3/2 \divisioMinima
g,2*5/2 ~ g,2*7/4 c2*4/2 d2 ees4 r2*29/4 \divisioMinima
g4 f2*3/2 ees2*3/2 d2*9/4 c2*4/2 ~ \divisioMaior
c4 ~ c2*3/2 ~ c2*3/4 ~ c2*3/2 bes,2 aes,2 g,2*4/2 c2 \divisioMaxima
bes,2 ~ bes,2 ~ bes,2 ~ bes,2*3/2 c2 d2*3/2 ees2*3/2 d2*3/4 c2*3/2 ~ c2*3/4 ~ c2*3/2 ~ c2 ~ c4 \divisioMaior
g4 ~ g2*4/2 aes2*3/4 g2*4/2 ~ g2 ~ g2 f2 ees2 d2 c2 g4 ~ \divisioMaxima
g2 f2 d2 ~ d2 ~ d2 ~ d2*5/4 ~ d2 ~ d2 g2 \divisioMaior
ees4 d2 c2 d2 g4 ~ g2*4/2 ~ g2 f2*7/4 ees2 g2*3/2 ~ g2 ~ g4 ~ \divisioMaior
g2*3/2 ~ g4 ~ g2*4/2 ~ g2 ~ g4 c2 ~ c2 ~ c4 f2 ~ f2 g2 c2 ~ c2 d2 ees2 ~ ees4 \finalis
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
        "V"
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
