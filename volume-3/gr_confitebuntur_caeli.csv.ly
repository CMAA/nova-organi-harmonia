\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.201
%(volume.page)

global = {
 \key d \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Confitebuntur coeli" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Confitebuntur coeli"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Confitebuntur coeli" }
    \line {}
  }
}

chantText = \lyricmode {
Con -- fi -- te -- bún -- _ _ tur 
\set stanza = " * " cœ -- _ _ li 
mi -- ra -- bí -- li -- a tu -- _ a Dó -- _ _ mi -- ne, 
et ve -- ri -- tá -- _ _ tem tu -- _ _ _ _ _ _ am _ 
in ec -- clé -- si -- a _ san -- ctó -- rum. _ _ _ _ _ _ _ ℣. 
Mi -- se -- ri -- cór -- di -- as _ tu -- as, Dó -- _ mi -- ne, _ _ _ _ _ _ _ 
in æ -- tér -- _ _ _ _ _ num 
can -- tá -- _ _ _ _ _ bo: 
in ge -- ne -- ra -- ti -- _ ó -- ne _ _ _ 
\set stanza = " * " 
et pro -- gé -- ni -- e. _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   ees'4 ( \once \tweak #'font-size #-4 c' ) c'4 ( ees'4 d'4) ees'4 ( f'4) f'4 ( ees'4) ~ ees'4 ( d'4 c'4) d'4 ( ees'4) ees'4 \divisioMinima
 ees'4 ( g'4 f'4 ees'4) g'4 ( f'4 ees'4) f'4 ( ees'4 d'4) d'4 \divisioMaior
 f'4 g'4 ( a'4 g'4) a'4 ( bes'4 a'4) g'4 ( a'4) g'4 ( f'4) f'4 ( g'4) a'4 ( g'4 a'4) g'4 ( f'4) \divisioMinima
 f'4 ( g'4) a'4 ( g'4) a'4 ( g'4) f'4 ( g'4 f'4) f'4 \divisioMaxima
 f'4 ( \once \tweak #'font-size #-4 d' ) f'4 g'4 ( a'4 g'4) bes'4 ( bes'4) a'4 ( c''4 a'4) bes'4 ( a'4 g'4 f'4 g'4) f'4 \divisioMinima
 f'4. d'4 ( f'4 ees'4) ~ ees'4 ( c'4) f'4 ( ees'4 d'4) ees'4 ( c'4.) d'4 ( f'4 ees'4 d'4) ees'4 ( d'4 c'4 d'4) c'4 d'4 ( ees'4 d'4 ees'4) \divisioMaior
 c'4 d'4 f'4 ( g'4) f'4 ( ees'4) ees'4 ( ees'4 ees'4) c'4 ( d'4 c'4) \divisioMinima
 f'4 f'4 ( g'4 a'4 g'4) g'4. f'4 ( g'4 f'4 d'4) ees'4 ( f'4.) ees'4 ( f'4 ees'4 c'4) ees'4 ( g'4.) f'4 ( g'4 f'4 d'4) ees'4 ( f'4.) ees'4 ( f'4 ees'4 d'4) \finalis
 ees'4 ( c'4) ees'4 ( d'4) ees'4 f'4 ( g'4) f'4 ( ees'4) ees'4 ( ees'4 ees'4) c'4 ( d'4 c'4) f'4 ( g'4 f'4) f'4 \divisioMinima
 f'4 ( g'4) bes'4 ( a'4 bes'4) bes'4 a'4 ( g'4) bes'4 ( a'4 g'4.) bes'4 ( bes'4) c''4 ( a'4) bes'4 ( g'4 f'4) bes'4 ( g'4) a'4 ( g'4) ~ g'4 ( f'4) \divisioMaior
 bes'4 ( a'4) bes'4 ( c''4) c''4 ( d''4 c''4 bes'4) c''4 ( bes'4 a'4) bes'4 ( bes'4) ~ bes'4 ( g'4) a'4 ( g'4 f'4) g'4 ( a'\prall bes'4 c''4) bes'4 \divisioMaior
 bes'4 bes'4 ( bes'4 g'4) bes'4 ( bes'4 g'4.) bes'4 ( d''4 c''4 bes'4) ~ bes'4 ( a'4 f'4.) g'4 ( bes'4 g'4) bes'4 ( bes'4 g'4 bes'4) f'4 ( g'4 f'4) \divisioMaxima
 ees'4 d'4 ( ees'4 f'4) f'4 f'4 ( g'4 a'4 g'4 f'4) f'4 ( g'4) bes'4 ( a'4 bes'4) bes'4 a'4 ( g'4 bes'4.) a'4 ( bes'4 a'4.) g'4 ( a'4 g'4) f'4 ( g'4 ees'4 d'4) \divisioMaior
 ees'4 d'4 ( ees'4 f'4) g'4 ( a'4 g'4 f'4) g'4 ( bes'4 a'4 bes'4) a'4 ( g'4) \divisioMinima
 bes'4 ( a'4 g'4) bes'4 ( a'4 f'4) g'4 ( g'4) ees'4 ( f'4) g'4 ( g'4) f'4 ( a'4 g'4 f'4) g'4 ( ees'4) ~ ees'4 ( d'4) \finalis

}

altoMusic = {
c'2 ~ c'2*3/2 ~ c'2*3/2 ~ c'2*4/2 ~ c'2 ~ c'4 \divisioMinima
bes2*4/2 c'2*3/2 d'2*4/2 ~ \divisioMaior
d'4 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*4/2 ~ d'2*5/2 ~ d'2 \divisioMinima
c'2 ~ c'2*4/2 ~ c'2*3/2 ~ c'4 \divisioMaxima
d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'2*3/2 ~ d'2*5/2 c'4 \divisioMinima
bes2*7/4 ~ bes2*3/2 ~ bes2*3/2 ~ bes2*5/4 ~ bes2*4/2 g2*4/2 ~ g2*5/2 ~ \divisioMaior
g2 bes2*4/2 ~ bes2*3/2 ~ bes2*3/2 ~ \divisioMinima
bes4 ~ bes2*4/2 ~ bes2*3/4 ~ bes2*4/2 ~ bes2*5/4 ~ bes2*4/2 ~ bes2*5/4 ~ bes2*4/2 ~ bes2*5/4 a2*3/2 bes4 \finalis
r2*14/2 c'4 ~ c'2*3/2 ~ c'4 \divisioMinima
d'2*8/2 ~ d'2*7/4 ~ d'2*4/2 f'2*3/2 c'2*3/2 ~ c'2 ~ c'4 \divisioMaior
f'2*4/2 g'2*4/2 ~ g'2*3/2 d'2 ~ d'2 ~ d'2*3/2 ~ d'2*4/2 ~ d'4 ~ \divisioMaior
d'4 ~ d'2*3/2 c'2*7/4 f'2*3/2 ~ f'2*9/4 ees'2*3/2 c'2*4/2 ~ c'2 ~ c'4 \divisioMaxima
r4 bes2*4/2 ~ bes2*5/2 d'2 ~ d'2*3/2 ~ d'4 ~ d'2*7/4 c'2*7/4 bes2*6/2 ~ bes4 ~ \divisioMaior
bes4 ~ bes2*3/2 ~ bes2*4/2 d'2*6/2 ~ \divisioMinima
d'2*3/2 ~ d'2*3/2 bes2*4/2 ~ bes2 ~ bes2*5/2 ~ bes2 ~ bes4 \finalis
}

tenorMusic = {
g2 ~ g2*3/2 ~ g2*3/2 ~ g2*4/2 f2 g4 \divisioMinima
bes2*4/2 ~ bes2*3/2 ~ bes2*4/2 ~ \divisioMaior
bes4 ~ bes2*3/2 ~ bes2*3/2 c'2*4/2 a2*5/2 bes2 \divisioMinima
c'2 ~ c'2*4/2 bes2*3/2 a4 \divisioMaxima
bes2*3/2 ~ bes2*3/2 ~ bes2 c'2*3/2 bes2*5/2 a4 \divisioMinima
g2*7/4 ~ g2*3/2 ~ g2*3/2 ~ g2*5/4 ~ g2*4/2 f2*4/2 ees2*5/2 ~ \divisioMaior
ees2 g2*4/2 f2*3/2 ees2*3/2 ~ \divisioMinima
ees4 d2*4/2 ees2*3/4 f2*4/2 g2*5/4 f2*4/2 ees2*5/4 d2*4/2 c2*5/4 ees2*3/2 f4 \finalis
c'2*5/2 d'2*4/2 bes2*6/2 ~ bes2*3/2 a4 \divisioMinima
bes2*8/2 ~ bes2*7/4 ~ bes2*4/2 ~ bes2*3/2 ~ bes2*3/2 ~ bes2 a4 \divisioMaior
bes2*4/2 ~ bes2*4/2 g2*3/2 ~ g2 c'2 bes2*3/2 a2*4/2 g4 ~ \divisioMaior
g4 ~ g2*3/2 ~ g2*7/4 f2*3/2 bes2*9/4 ~ bes2*3/2 ~ bes2*4/2 ~ bes2 a4 \divisioMaxima
r4 f2*4/2 d2*5/2 ~ d2 ~ d2*3/2 ~ d4 g2*7/4 d2*7/4 ees2*3/2 f2*3/2 g4 ~ \divisioMaior
g4 ~ g2*3/2 f2*4/2 g2*6/2 ~ \divisioMinima
g2*3/2 f2*3/2 ees2*4/2 ~ ees2 f2*5/2 g2 f4 \finalis
}

bassMusic = {
c2 ees2*3/2 d2*3/2 c2*4/2 ~ c2 ~ c4 \divisioMinima
g2*4/2 ~ g2*3/2 bes2*4/2 ~ \divisioMaior
bes4 a2*3/2 g2*3/2 ~ g2*4/2 ~ g2*5/2 ~ g2 \divisioMinima
a2 f2*4/2 ~ f2*3/2 ~ f4 \divisioMaxima
r2*3/2 a2*3/2 g2 ~ g2*3/2 ~ g2*5/2 ~ g4 ~ \divisioMinima
g2*7/4 f2*3/2 ees2*3/2 d2*5/4 c2*4/2 ~ c2*4/2 ~ c2*5/2 ~ \divisioMaior
c2 g,2*4/2 ~ g,2*3/2 ~ g,2*3/2 ~ \divisioMinima
g,4 ~ g,2*4/2 c2*3/4 ~ c2*4/2 ~ c2*5/4 ~ c2*4/2 ~ c2*5/4 ~ c2*4/2 ~ c2*5/4 ~ c2*3/2 bes,4 \finalis
r2*5/2 bes2*4/2 g2*6/2 f2*3/2 ~ f4 \divisioMinima
r2*8/2 a2*7/4 g2*4/2 d2*3/2 ees2*3/2 f2 ~ f4 \divisioMaior
d2*4/2 ees2*4/2 ~ ees2*3/2 g2 ~ g2 ~ g2*3/2 ~ g2*4/2 ~ g4 ~ \divisioMaior
g4 f2*3/2 ees2*7/4 d2*3/2 ~ d2*9/4 ees2*3/2 ~ ees2*4/2 f2 ~ f4 \divisioMaxima
r4 bes,2*4/2 ~ bes,2*5/2 ~ bes,2 a,2*3/2 g,4 ~ g,2*7/4 ~ g,2*7/4 ~ g,2*3/2 ~ g,2*3/2 ~ g,4 ~ \divisioMaior
g,4 c2*3/2 d2*4/2 bes,2*6/2 \divisioMinima
g,2*3/2 ~ g,2*3/2 ~ g,2*4/2 c2 d2*5/2 ees2 bes,4 \finalis
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
        "III."
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
