\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.162
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Exaltabo te" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Exaltabo te"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Exaltabo te" }
    \line {}
  }
}

chantText = \lyricmode {
Ex -- al -- tá -- bo te 
\set stanza = " * " Dó -- mi -- _ ne, 
quó -- ni -- am _ _ _ _ sus -- ce -- pí -- sti me, 
nec _ de -- _ le -- _ ctá -- _ sti _ _ _ 
in -- i -- mí -- cos me -- _ _ os su -- _ per _ _ _ _ _ me: 
Dó -- _ mi -- ne _ cla -- má -- vi ad _ _ te, 
et sa -- ná -- _ _ _ _ _ _ sti me. }

chantMusic = {
\tieDown   d'4 f'4 f'4 ( a'4 g'4) g'4 g'4 \divisioMinima
 g'4 g'4 bes'4 ( bes'4 bes'4) g'4 ( f'4 g'4 f'4) \divisioMaior
 bes'4 ( bes'4) g'4 ( f'4 g'4) g'4 bes'4 ( bes'4 bes'4 \forceBreak
) a'4 ( c''4 bes'4 a'4) bes'4 ( a'4 g'4) a'4 ( g'4) \divisioMinima
 g'4 ( bes'4 g'4 f'4 g'4) ees'4 ees'4 ( g'4 bes'4 g'4 ees'4) ees'4 ( f'4 ees'4) ees'4 \divisioMaxima
 g'4 bes'4 ( bes'4 c''4) g'4 bes'4 ( bes'4 bes'4) g'4 \forceBreak
 bes'4 ( bes'4 bes'4) f'4 g'4 ( a'4 g'4) g'4 ( f'4 g'4) bes'4 ( bes'4) ~ bes'4 ( g'4 f'4) ~ f'4 ( d'4 f'4) \divisioMaior
 d'4 d'4 f'4 ( g'4) g'4 ( \once \tweak #'font-size #-4 f' ) g'4 bes'4 ( bes'4) c''4 ( bes'4) bes'4 \divisioMinima \forceBreak

 bes'4 ( c''4) d''4 ( c''4 d''4) bes'4 ( g'4) c''4 ( bes'4) c''4 ( bes'4) ~ bes'4 ( f'4) g'4 ( a'\prall bes'4 a'4 g'4) a'4 ( \tiny g' f' 4) g'4 ( f'4) \divisioMaxima
 g'4 ( bes'4) c''4 ( bes'4) c''4 ( bes'4 g'4) g'4 ( f'4) g'4 ( f'4 d'4 f'4) \divisioMinima \forceBreak

 f'4 ( \once \tweak #'font-size #-4 d' ) f'4 ( g'4) g'4 ( f'4) g'4 bes'4 ( bes'4) c''4 ( bes'4) bes'4 \divisioMaior
 bes'4 g'4 ( a'\prall bes'4 a'4) bes'4 ( bes'4) ~ bes'4 ( g'4 f'4 g'4) bes'4 ( bes'4) ~ bes'4 ( g'4 f'4.) g'4 ( a'4 g'4) a'4 ( g'4) bes'4 ( bes'4 bes'4) g'4 ( a'4 g'4) g'4 \finalis

}

altoMusic = {
d'2 ~ d'2*4/2 ~ d'4 ~ \divisioMinima
d'2 ~ d'2*3/2 c'2*4/2 \divisioMaior
d'2 ~ d'2*4/2 ees'2*3/2 f'2*4/2 d'2*3/2 ~ d'2 \divisioMinima
ees'2*6/2 ~ ees'2*5/2 bes2*3/2 ~ bes4 \divisioMaxima
ees'4 f'2*4/2 ~ f'2*4/2 ees'2*3/2 f'2*4/2 d'2*3/2 ~ d'2 ees'2 d'2*4/2 \divisioMaior
a2 d'2 ~ d'2*3/2 ~ d'2 ~ d'2*3/2 \divisioMinima
f'2*5/2 ~ f'2 ~ f'2*3/2 ~ f'2*3/2 ~ f'2*5/2 ~ f'2*3/2 d'2 ~ \divisioMaxima
d'2*4/2 ~ d'2*3/2 ~ d'2 ~ d'2*4/2 ~ \divisioMinima
d'2 ~ d'2 ~ d'2*3/2 ~ d'2 ~ d'2 ~ d'4 ~ \divisioMaior
d'4 ~ d'2*4/2 ~ d'2 f'2*4/2 ees'2 f'2*7/4 ~ f'2*5/2 d'2*3/2 ~ d'2*3/2 ~ d'4 \finalis
}

tenorMusic = {
r2 c'2*4/2 bes4 \divisioMinima
a2 g2*3/2 a2*4/2 \divisioMaior
r2 bes2*4/2 ~ bes2*3/2 c'2*4/2 bes2*3/2 c'4 bes4 ~ \divisioMinima
bes2*6/2 ~ bes2*5/2 f2*3/2 g4 \divisioMaxima
bes4 ~ bes2*4/2 ~ bes2*4/2 ~ bes2*3/2 ~ bes2*4/2 a2*3/2 g2 r2 a2*4/2 \divisioMaior
f2 a2 g2*3/2 ~ g2 ~ g2*3/2 \divisioMinima
f2*5/2 g2 a2*3/2 bes2*3/2 d'2*5/2 bes2*3/2 a2 \divisioMaxima
bes2*4/2 a2*3/2 g2 a2*4/2 \divisioMinima
c'2 bes2 a2*3/2 g2 a2 bes4 ~ \divisioMaior
bes4 c'2*4/2 bes2 ~ bes2*4/2 ~ bes2 ~ bes2*7/4 c'2*5/2 ~ c'2*3/2 a2*3/2 bes4 \finalis
}

bassMusic = {
d2 ~ d2*4/2 g4 ~ \divisioMinima
g2 ~ g2*3/2 r2*4/2 \divisioMaior
g2 ~ g2*4/2 ~ g2*3/2 f2*4/2 g2*3/2 ~ g2 \divisioMinima
ees2*6/2 c2*5/2 ees2*3/2 ~ ees4 ~ \divisioMaxima
ees4 ~ ees2*4/2 d2*4/2 c2*3/2 d2*4/2 ~ d2*3/2 g2 ~ g2 d2*4/2 ~ \divisioMaior
d2 c2 bes,2*3/2 a,2 g,2*3/2 \divisioMinima
d2*5/2 ~ d2 ~ d2*3/2 ~ d2*3/2 ~ d2*5/2 ~ d2*3/2 ~ d2 \divisioMaxima
g2*4/2 ~ g2*3/2 ~ g2 d2*4/2 ~ \divisioMinima
d2 ~ d2 ~ d2*3/2 g2 ~ g2 ~ g4 ~ \divisioMaior
g4 ~ g2*4/2 ~ g2 d2*4/2 c2 d2*7/4 ~ d2*5/2 g2*3/2 ~ g2*3/2 ~ g4 \finalis
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
