\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.40
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

\header {
  title = \markup \center-column {"Agnus Dei VI." \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page ""
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "" }
    \line {}
  }
}

chantText = \lyricmode {
A -- gnus De -- i, 
\set stanza = " * " qui tol -- _ lis pec -- cá -- ta mun -- _ di: 
mi -- se -- ré -- re no -- bis. 
A -- gnus De -- i, 
\set stanza = " * " qui tol -- _ lis pec -- cá -- ta mun -- _ di: 
mi -- se -- ré -- re no -- bis. 
A -- gnus De -- i, 
\set stanza = " * " qui tol -- _ lis pec -- cá -- ta mun -- _ di: 
do -- na nó -- bis pa -- cem. }

chantMusic = {
\tieDown   f'4 ( g'4 f'4 f'4) ees'4 ( f'4) f'4 ( g'4 f'4) f'4 \divisioMinima
 g'4 bes'4 ( c''4 bes'4) c''4 ( ees''4 c''4) bes'4 ( a'4) g'4 ( f'4 ees'4) g'4 ( f'4) f'4 ( bes'4 bes'4) \forceBreak
 f'4 ( d'4) ees'4 ( \once \tweak #'font-size #-4 f' ) f'4 \divisioMaior
 c'4 d'4 ( ees'\prall f'4) ~ f'4 ( ees'4) g'4 ( f'4) f'4 ( bes'4) ~ bes'4 ( a'4) f'4 f'4 \finalis
 f'4 ( g'4 f'4 f'4) ees'4 ( f'4) \forceBreak
 f'4 ( g'4 f'4) f'4 \divisioMinima
 g'4 bes'4 ( c''4 bes'4) c''4 ( ees''4 c''4) bes'4 ( a'4) g'4 ( f'4 ees'4) g'4 ( f'4) f'4 ( bes'4 bes'4) f'4 ( d'4) ees'4 ( \once \tweak #'font-size #-4 f' ) f'4 \divisioMaior
 c'4 \forceBreak
 d'4 ( ees'\prall f'4) ~ f'4 ( ees'4) g'4 ( f'4) f'4 ( bes'4) ~ bes'4 ( a'4) f'4 f'4 \finalis
 f'4 ( g'4 f'4 f'4) ees'4 ( f'4) f'4 ( g'4 f'4) f'4 \divisioMinima
 g'4 bes'4 ( c''4 bes'4) c''4 ( ees''4 c''4) bes'4 ( a'4) \forceBreak
 g'4 ( f'4 ees'4) g'4 ( f'4) f'4 ( bes'4 bes'4) f'4 ( d'4) ees'4 ( \once \tweak #'font-size #-4 f' ) f'4 \divisioMaior
 c'4 d'4 ( ees'\prall f'4) ~ f'4 ( ees'4) g'4 ( f'4) f'4 ( bes'4) ~ bes'4 ( a'4) f'4 f'4 \finalis

}

altoMusic = {
d'2*4/2 ees'2 ~ ees'2*3/2 d'4 ~ \divisioMinima
d'4 ~ d'2*3/2 ees'2*3/2 f'2 ees'2*3/2 ~ ees'2 f'2*3/2 bes2 c'2 ~ c'4 \divisioMaior
a4 bes2 ~ bes2*3/2 ~ bes2 ~ bes4 ~ bes2*3/2 ~ bes4 a4 \finalis
d'2*4/2 c'2 ~ c'2*3/2 ~ c'4 \divisioMinima
ees'4 f'2*3/2 ees'2*3/2 f'2 ees'2*3/2 bes2 ~ bes2*3/2 ~ bes2*4/2 c'4 ~ \divisioMaior
c'4 bes2 ~ bes2*3/2 c'2 ~ c'4 bes2*3/2 ~ bes4 a4 \finalis
d'2*4/2 ees'2 ~ ees'2*3/2 d'4 ~ \divisioMinima
d'4 ~ d'2*3/2 g'2*3/2 f'2 ees'2*3/2 d'2 ~ d'2*3/2 bes2*4/2 c'4 \divisioMaior
c'2*3/2 ~ c'2*3/2 ees'2 -\tweak Glissando.Y-offset #-0.8 \glissando f'4 c'2*3/2 ~ c'2 \finalis
}

tenorMusic = {
bes2*4/2 c'2 bes2*3/2 ~ bes4 ~ \divisioMinima
bes4 ~ bes2*3/2 ~ bes2*3/2 ~ bes2 ~ bes2*3/2 ~ bes2 ~ bes2*3/2 ~ bes2 ~ bes2 a4 \divisioMaior
f4 ~ f2 c2*3/2 d2 ~ d4 ~ d2*3/2 f2 \finalis
bes2*4/2 ~ bes2 ~ bes2*3/2 a4 \divisioMinima
bes4 ~ bes2*3/2 ~ bes2*3/2 ~ bes2 ~ bes2*3/2 ~ bes2 f2*3/2 d2*4/2 c4 \divisioMaior
f4 ~ f2 ees2*3/2 ~ ees2 d4 ~ d2*3/2 f2 \finalis
bes2*4/2 c'2 bes2*3/2 ~ bes4 ~ \divisioMinima
bes4 ~ bes2*3/2 ~ bes2*3/2 ~ bes2 ~ bes2*3/2 ~ bes2 ~ bes2*3/2 ~ bes2*4/2 a4 \divisioMaior
ees2*1/2 f2 g2*3/2 bes2 ~ bes4 c'2*3/2 bes4 a4 \finalis
}

bassMusic = {
r2*11/2 g2*3/2 c2*3/2 d2 ees2*3/2 c2 d2*3/2 g2 ~ g2 f4 ~ \divisioMaior
f4 bes,2 ~ bes,2*3/2 ~ bes,2 a,4 g,2*3/2 f,2 \finalis
r2*6/2 f2*3/2 ~ f4 \divisioMinima
ees4 d2*3/2 c2*3/2 d2 ees2*3/2 d2 ~ d2*3/2 bes,2*4/2 a,4 ~ \divisioMaior
a,4 g,2 ~ g,2*3/2 bes,2 a,4 g,2*3/2 f,2 \finalis
r2*10/2 \divisioMinima
r4 g2*3/2 ees2*3/2 d2 ees2*3/2 bes,2 a,2*3/2 g,2*4/2 f,4 \divisioMaior
c2*3/2 ~ c2*3/2 ~ c2 d4 f2*3/2 ~ f2 \finalis
}

voiceLines = {
\voiceLineStyle


s2*70/2
\allowVoiceLineBreak
\voiceLine "down" "down" d2*3/2 d2*1/2


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        ""
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
