\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.167
%(volume.page)

global = {
 \key c \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Esto mihi" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Esto mihi"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Esto mihi" }
    \line {}
  }
}

chantText = \lyricmode {
E -- sto mi -- hi 
\set stanza = " * " in De -- um pro -- te -- _ _ _ ctó -- _ rem, _ _ _ _ _ 
et in lo -- _ cum re -- _ fú -- gi -- i, _ _ _ _ _ _ _ _ _ 
ut sal -- _ vum me fá -- _ _ _ _ ci -- as. _ _ _ _ ℣. 
De -- us, in te _ _ spe -- rá -- vi: Dó -- mi -- ne, _ _ _ 
non con -- fún -- _ _ _ _ _ dar _ _ _ 
\set stanza = " * " 
in æ -- tér -- _ num. _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   ees'4 ( ees'4 f'4) ees'4 ees'4 ( f'4) ees'4 \divisioMinima
 ees'4 ( f'4) f'4 ( ees'4) ees'4 f'4 ( g'4 f'4 g'4) g'4 ( f'4) ees'4 ( ees'4 c'4) ees'4 ( ees'4 \forceBreak
) ~ ees'4 ( f'4 g'4) f'4. ees'4 ( f'4 ees'4) ees'4. \divisioMinima
 c'4 ees'4 ( ees'4) f'4 ( d'4) ees'4 ( f'4 c'4) d'4 ( c'4) ~ c'4 ( bes4) \divisioMaior
 ees'4 ( f'4) ees'4 f'4 ( g'4 f'4 \forceBreak
) g'4 ( f'4 ees'4) f'4 \divisioMinima
 f'4 ( g'4 a'\prall bes'4 a'4) bes'4 ( c''4 bes'4) g'4 ( f'4 ees'4) g'4 ( f'4) f'4. c'4 ees'4 ( f'4.) ees'4 ( g'4) bes'4 ( f'4 ees'4) ~ ees'4 ( c'4) \divisioMinima \forceBreak

 ees'4 ( ees'4) f'4 ( d'4) ees'4 ( f'4 c'4) d'4 ( c'4) ~ c'4 ( bes4) \divisioMaxima
 c'4 ees'4 ( c'4) ees'4 ( ees'4 ees'4) bes4 ( c'4) c'4 ( c'4) \divisioMinima
  g'4 ( g'4 f'4) g'4 ( g'4) f'4 ( g'4 aes'4 f'4 ees'4 \forceBreak
) g'4 ( g'4) ees'4 ( g'4 bes'4) bes'4  bes'4 ( c''4 a'4 bes'4 g'4) \divisioMinima
 ees'4 ( f'4 g'4) bes'4 ( bes'4) c''4 ( d''4 a'4 bes'4 g'4.)  f'4 ( aes'4 g'4 ees'4) \finalis
  ees'4 ees'4 g'4 \forceBreak
 g'4 ( bes'4) c''4 ( bes'4) c''4 ( d''4 bes'4) bes'4 bes'4 bes'4 ( bes'4 c''4) \divisioMinima
 c''4 ( bes'4) bes'4 ( a'4) bes'4 ( bes'4 g'4) bes'4 ( bes'4 g'4.) bes'4 ( c''4 bes'4 bes'4) g'4 ( a'4 g'4) \divisioMaxima \forceBreak

 bes'4 ( bes'4) bes'4 c''4 ( bes'4) c''4 ( d''4 bes'4.) c''4 ( bes'4) c''4 ( d''4 c''4 d''4.) bes'4 ( c''4) d''4 ( c''4 d''4) d''4 ( bes'4) d''4 ( ees''4 c''4) bes'4 ( bes'4) g'4 ( a'4 g'4) \divisioMaior
 ees'4 ( f'4 g'4) g'4 \forceBreak
 g'4 ( bes'4 a'4 g'4) bes'4 ( bes'4 bes'4) bes'4 ( bes'4 g'4) \divisioMinima
  aes'4 ( g'4) aes'4 ( f'4 ees'4.) g'4 ( aes'4 f'4 ees'4.) g'4 ( f'4) bes'4. ~ bes'4 ( bes'4) ~ bes'4 ( g'4 g'4) ees'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( ees'4) \finalis

}

altoMusic = {
bes2*4/2 ~ bes2 ~ bes4 ~ \divisioMinima
bes2 c'2 ees'4 ~ ees'2*4/2 d'2 c'2 ~ c'4 bes2 c'2*3/2 d'2*3/4 bes2*3/2 ~ bes2*3/4 \divisioMinima
c'4 ~ c'2*4/2 g2 ~ g2 r2*3/2 \divisioMaior
bes2*3/2 r2*3/2 ees'2 ~ ees'4 f'4 \divisioMinima
d'2*3/2 ~ d'2 ~ d'2*3/2 ees'2 ~ ees'4 c'2 ~ c'2*5/4 ~ c'2*9/4 d'2 c'2 ~ c'4 \divisioMinima
bes2*4/2 g2 ~ g2 ~ g2*3/2 \divisioMaxima
r4 g4 c'4 ~ c'2*3/2 bes4 c'4 ~ c'2 d'2*3/2 ~ d'2 c'2 ~ c'2*3/2 ees'2 ~ ees'4 ~ ees'2*3/2 f'2 ~ f'2 d'4 \divisioMinima
ees'2*3/2 f'2 ~ f'2*4/2 ees'2*3/4 bes2*3/2 ~ bes4 r2*3/2 g'2 ~ g'2 ~ g'2*3/2 f'4 ees'4 g'2 ~ g'4 ~ \divisioMinima
g'2 ~ g'2 ~ g'2*3/2 f'2*7/4 ees'2*4/2 d'2 ~ d'4 \divisioMaxima
f'2*3/2 ees'2*11/4 f'2 g'2*9/4 f'2 ~ f'2*3/2 ~ f'2 ees'2*3/2 d'2 c'2 bes4 \divisioMaior
c'2*4/2 d'2*4/2 ~ d'2*3/2 ees'2*3/2 ~ ees'2*4/2 ~ ees'2*3/4 c'2*3/2 ~ c'2*3/4 ~ c'2 bes2*3/4 d'2 ~ d'2*3/2 c'2 ~ c'2 bes2 ~ bes4 \finalis
}

tenorMusic = {
g2*4/2 aes2 g4 ~ \divisioMinima
g2 ~ g2*3/2 bes2*4/2 ~ bes2 g2*3/2 ~ g2 ees2*3/2 bes2*3/4 aes2*3/2 g2*5/4 ~ g2*4/2 ~ g2 ees2 f2*3/2 \divisioMaior
g2*3/2 bes2*3/2 ~ bes2*3/2 ~ bes4 ~ \divisioMinima
bes2*3/2 a2 g2*3/2 bes2*3/2 ~ bes2 a2*5/4 g2*9/4 ~ g2 ~ g2*3/2 ~ \divisioMinima
g2*4/2 c2 ees2 d2*3/2 \divisioMaxima
r2*3/2 g2*3/2 f2 g2 ~ g2*3/2 bes2 ~ bes2 aes2*3/2 bes2 g4 ~ g2*3/2 f2 c'2 bes4 ~ \divisioMinima
bes2*3/2 ~ bes2 f2*4/2 bes2*3/4 aes2*3/2 g4 r2*5/2 f'2 ees'2*3/2 ~ ees'4 d'4 ees'2 ~ ees'4 \divisioMinima
d'2 ees'2 d'2*3/2 ~ d'2*7/4 c'2*4/2 ~ c'2 bes4 ~ \divisioMaxima
bes2*3/2 ~ bes2*11/4 ~ bes2 ~ bes2*9/4 ~ bes2 ~ bes2*3/2 a2 g2*3/2 ~ g2 d2 ~ d4 \divisioMaior
g2*4/2 ~ g2*4/2 ~ g2*3/2 ~ g2*3/2 f2*4/2 g2*3/4 aes2*3/2 g2*3/4 ~ g2 f2*3/4 ~ f2 bes2*3/2 g2 aes2 a2 g4 \finalis
}

bassMusic = {
ees2*4/2 ~ ees2 ~ ees4 \divisioMinima
d2 c2*3/2 bes,2*4/2 ~ bes,2 c2*3/2 g,2 aes,2*3/2 bes,2*3/4 ees2*3/2 ~ ees2*3/4 ~ \divisioMinima
ees4 c2*4/2 ~ c2 ~ c2 d2*3/2 \divisioMaior
r2*3/2 d2*3/2 c2*3/2 d4 \divisioMinima
bes,2*3/2 ~ bes,2 ~ bes,2*3/2 c2*3/2 f2 ~ f2*5/4 c2*9/4 bes,2 c2*3/2 \divisioMinima
g,2*4/2 ~ g,2 ~ g,2 ~ g,2*3/2 \divisioMaxima
r4 c2 ~ c2*3/2 d2 c2 bes,2*3/2 ~ bes,2 f2 ~ f2*3/2 ees2 ~ ees4 c2*3/2 d2 ~ d2 g4 ~ \divisioMinima
g2*3/2 d2 ~ d2*4/2 ees2*3/4 ~ ees2*3/2 ~ ees4 r2*12/2 d'2 c'4 \divisioMinima
g2 ~ g2 ~ g2*3/2 ~ g2*7/4 ~ g2*4/2 ~ g2 ~ g4 \divisioMaxima
d2*3/2 c2*11/4 d2 ees2*9/4 d2 bes,2*3/2 ~ bes,2 c2*3/2 g,2 ~ g,2 ~ g,4 \divisioMaior
c2*4/2 bes,2*4/2 g,2*3/2 c2*3/2 ~ c2*4/2 ~ c2*3/4 f2*3/2 c2*3/4 ees2 d2*3/4 bes,2 ~ bes,2*3/2 ~ bes,2 aes,2 ees2 ~ ees4 \finalis
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
