\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page I.84
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Posuisti" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Posuisti"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Posuisti" }
    \line {}
  }
}

chantText = \lyricmode {
Po -- su -- í -- _ _ _ sti, 
\set stanza = " * " Dó -- _ _ mi -- ne, 
in cá -- _ _ _ _ _ _ _ pi -- te e -- jus 
co -- ró -- _ _ _ nam _ _ 
de lá -- pi -- de _ _ _ pre -- ti -- ó -- _ _ _ _ _ so: 
vi -- tam pé -- _ _ _ ti -- it a te, _ _ _ _ _ _ 
tri -- bu -- í -- _ _ sti e -- i, 
al -- le -- _ _ _ _ lú -- ia. }

chantMusic = {
\tieDown   ees'4 f'4 f'4 g'4 ( bes'4 g'4 f'4) ~ f'4 ( ees'4) f'4 ( g'4 f'4) f'4 \divisioMinima
 g'4 ( f'4) g'4 bes'4 ( bes'4) c''4 ( bes'4 g'4) f'4 ( ees'4 g'4) g'4 \divisioMaior \forceBreak

 g'4 bes'4 ( g'4) ~ g'4 ( ees'4) f'4 ( g'4 f'4 ees'4) ~ ees'4 ( c'4 d'4 bes4) \divisioMinima
 bes4 ( c'4) ees'4 ( ees'4) f'4 ( g'4) bes'4 ( g'4) f'4 ees'4 ees'4 ( \once \tweak #'font-size #-4 f' ) f'4 \divisioMaior \forceBreak

 f'4 ( g'4 a'\prall bes'4) bes'4 ( bes'4) a'4 ( bes'4 f'4.) g'4 ( bes'4 a'4 bes'4) c''4 ( d''4 bes'4 bes'4) c''4 ( a'4) bes'4 ( g'4) ~ g'4 ( f'4) \divisioMaior
 f'4 f'4 f'4 f'4 ( f'4) ~ f'4 ( d'4 c'4 \forceBreak
) d'4 ( f'4) g'4 ( f'4 ees'4 f'4) \divisioMinima
 f'4 g'4 ( bes'4) a'4 ( f'4 g'4) bes'4 ( bes'4) c''4 ( d''4 c''4 a'4) bes'4 ( c''4 bes'4) ~ bes'4 ( g'4) a'4 ( f'4) f'4 \divisioMaxima
 f'4 f'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( f'4 ees'4 \forceBreak
) f'4 ( ees'4 d'4 ees'4.) f'4 ( g'4 ees'4) ~ ees'4 ( c'4 f'4) ees'4 ( f'4) f'4 \divisioMinima
 g'4 f'4 ( bes'4 a'4 f'4) g'4 ( g'4) ees'4 ( g'4) bes'4 ( f'4 ees'4) ~ ees'4 ( c'4) d'4 ( ees'4) f'4 ( g'4 f'4) \divisioMaxima \forceBreak

 f'4 f'4 f'4 ( bes'4) ~ bes'4 ( a'4) bes'4 ( g'4) g'4 f'4 ( g'4) g'4 \divisioMaior
 g'4 ( a'\prall bes'4 \once \tweak #'font-size #-4 a' ) bes'4 ( c''4 bes'4 g'4.) f'4 ( a'4.) g'4 ( bes'4 a'4 g'4.) f'4 bes'4 ( bes'4) g'4 ( a'4 f'4) f'4 ( g'4 f'4) f'4 \finalis

}

altoMusic = {
ees'2 ~ ees'4 d'2*3/2 c'2*3/2 ~ c'2*4/2 \divisioMinima
d'2*3/2 ~ d'2*5/2 r2*3/2 d'4 ~ \divisioMaior
d'2 c'2*3/2 bes2*3/2 ~ bes2*5/2 ~ \divisioMinima
bes2 ~ bes2*4/2 c'2*4/2 bes2 c'4 \divisioMaior
d'2*4/2 f'2*11/4 ees'2*4/2 f'2*4/2 ~ f'2*3/2 d'2*3/2 ~ \divisioMaior
d'4 ~ d'2 c'2 bes2*3/2 d'2 c'2*4/2 \divisioMinima
d'4 ~ d'2 f'2*3/2 ~ f'2*6/2 d'2 ~ d'2*3/2 f'2 c'4 \divisioMaxima
bes4 ~ bes2 ~ bes2*3/2 ~ bes2*13/4 g2*4/2 bes2 c'4 ~ \divisioMinima
c'4 d'2*4/2 ees'2*6/2 bes2*3/2 ~ bes2 c'2*3/2 \divisioMaxima
d'2*3/2 f'2*6/2 c'2 d'4 \divisioMaior
ees'2*4/2 d'2*9/4 c'2*5/4 d'2*11/4 f'2 d'2*3/2 c'2*3/2 ~ c'4 \finalis
}

tenorMusic = {
bes2 ~ bes4 ~ bes2*3/2 ~ bes2*3/2 c'2*4/2 \divisioMinima
bes2*3/2 ~ bes2*5/2 ~ bes2*3/2 ~ bes4 ~ \divisioMaior
bes2 ~ bes2*3/2 ~ bes2*3/2 g2*5/2 \divisioMinima
f2 g2*4/2 ~ g2*4/2 ~ g2 a4 \divisioMaior
bes2*4/2 ~ bes2*11/4 ~ bes2*4/2 ~ bes2*4/2 d'2*3/2 a2*3/2 ~ \divisioMaior
a4 bes2 a2 g2*3/2 bes2 ~ bes2*4/2 ~ \divisioMinima
bes4 ~ bes2 c'2*3/2 bes2*6/2 ~ bes2 c'2*3/2 ~ c'2 a4 \divisioMaxima
r4 d2 ~ d2*3/2 ees2*13/4 ~ ees2*4/2 g2 a4 ~ \divisioMinima
a4 bes2*4/2 ~ bes2*6/2 ~ bes2*3/2 g2 a2*3/2 \divisioMaxima
bes2*3/2 ~ bes2*6/2 a2 bes4 ~ \divisioMaior
bes2*4/2 ~ bes2*9/4 a2*5/4 bes2*11/4 ~ bes2 ~ bes2*3/2 ~ bes2*3/2 a4 \finalis
}

bassMusic = {
g2 r2*7/2 a2*4/2 ~ \divisioMinima
a2*3/2 g2*5/2 ~ g2*3/2 ~ g4 ~ \divisioMaior
g2 ees2*3/2 d2*3/2 g2*5/2 \divisioMinima
d2 c2*4/2 ees2*4/2 f2 ~ f4 \divisioMaior
r2*4/2 d2*11/4 c2*4/2 d2*4/2 ~ d2*3/2 ~ d2*3/2 ~ \divisioMaior
d4 bes2 r2*12/2 g2 d2*3/2 ~ d2*6/2 g2 ~ g2*3/2 f2 ~ f4 \divisioMaxima
bes,4 ~ bes,2 g,2*3/2 ~ g,2*13/4 c2*4/2 ~ c2 f4 ~ \divisioMinima
f4 bes,2*4/2 c2*6/2 g2*3/2 f2 ~ f2*3/2 \divisioMaxima
bes,2*3/2 d2*6/2 g2 ~ g4 \divisioMaior
c2*4/2 g2*9/4 ~ g2*5/4 ~ g2*11/4 d2 ees2*3/2 f2*3/2 ~ f4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Offertory"
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
