\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"

%Page reference: page v.16
%(volume.page)

global = {
 \key g \dorian
 \cadenzaOn 
 \override Glissando #'thickness = #2.0
}

\header {
  title = \markup \center-column {"Agnus Dei II." \vspace #1 }
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
A -- gnus _ De -- i, 
\set stanza = " * " qui tol -- _ lis pec -- cá -- ta mun -- _ di: 
mi -- se -- ré -- _ re no -- _ bis. 
A -- gnus De -- i, 
\set stanza = " * " qui tol -- lis pec -- cá -- ta _ mun -- _ di: 
mi -- se -- ré -- _ re no -- _ _ bis. 
A -- gnus _ De -- i, 
\set stanza = " * " qui tol -- _ lis pec -- cá -- ta mun -- _ di: 
do -- na nó -- _ bis pa -- _ cem. }

chantMusic = {
\tieDown   g'4 ( a'4) f'4 a'4 ( bes'4 a'4) ~ a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4 g'4) g'4 \divisioMinima
 a'4 ( c''4) c''4 ( bes'4 g'4) a'4 ( g'4 a'4) g'4 ( f'4) a'4 ( bes'\prall c''4) \forceBreak
 c''4 ( d''4) g'4 ( a'4 bes'4 a'4 g'4 g'4) f'4 a'4 ( bes'4 \once \tweak #'font-size #-4 g' ) g'4 \divisioMaior
 g'4 g'4 ( a'4) a'4 c''4 ( d''4 c''4) bes'4 ( a'4) a'4 ( c''4) ~ c''4 ( bes'4 g'4 f'4) a'4 ( bes'4 g'4) g'4 \finalis
 \forceBreak
 bes'4 ( bes'4) g'4 ( a'4) a'4 ( f'4 g'4) g'4 \divisioMinima
 g'4 bes'4 ( a'4) bes'4 ( c''4) c''4 ( bes'4) g'4 ( a'4) a'4 ( g'4) bes'4 ( bes'4 a'4) a'4 ( g'4 f'4) a'4 ( bes'4 \once \tweak #'font-size #-4 g' ) g'4 \divisioMaior
 \forceBreak
 g'4 g'4 ( a'4) a'4 c''4 ( d''4 c''4) bes'4 ( a'4) a'4 ( c''4) ~ c''4 ( bes'4 g'4) f'4 a'4 ( bes'4 g'4) g'4 \finalis
 g'4 ( a'4) f'4 a'4 ( bes'4 a'4) ~ a'4 ( \once \tweak #'font-size #-4 g' ) \forceBreak
 g'4 ( a'4 g'4) g'4 \divisioMinima
 a'4 ( c''4) c''4 ( bes'4 g'4) a'4 ( g'4 a'4) g'4 ( f'4) a'4 ( bes'\prall c''4) c''4 ( d''4) g'4 ( a'4 bes'4 a'4 g'4 g'4) f'4 a'4 ( bes'4 \once \tweak #'font-size #-4 g' ) g'4 \divisioMaior
 \forceBreak
 g'4 g'4 ( a'4) a'4 c''4 ( d''4 c''4) bes'4 ( a'4) a'4 ( c''4) ~ c''4 ( bes'4 g'4 f'4) a'4 ( bes'4 g'4) g'4 \finalis

}

altoMusic = {
r2 f'4 ~ f'2 f'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando g'4 a'4 g'4 g'4 \divisioMinima
f'2 d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'2*3/2 ~ d'2 ~ d'2*7/2 ~ d'2*3/2 ~ d'4 ~ \divisioMaior
d'4 f'2*3/2 ~ f'2*3/2 c'2*3/2 d'2*3/2 c'2 ~ c'2*3/2 bes4 \finalis
d'2 ~ d'2 ~ d'2*3/2 ~ d'4 ~ \divisioMinima
d'4 f'2*4/2 ~ f'2*6/2 ~ f'2*3/2 ~ f'2*3/2 d'2*3/2 ~ d'4 ~ \divisioMaior
d'4 f'2*3/2 ~ f'2*3/2 c'2*3/2 d'2*3/2 c'2 ~ c'2*3/2 bes4 \finalis
r2 f'4 ~ f'2 ~ f'2*3/2 -\tweak Glissando.Y-offset #-0.8 \glissando g'4 a'4 g'4 g'4 \divisioMinima
f'2 d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'2*3/2 ~ d'2 ~ d'2*7/2 ~ d'2*3/2 ~ d'4 ~ \divisioMaior
d'4 f'2*3/2 ~ f'2*3/2 c'2*3/2 d'2*3/2 c'2 ~ c'2*3/2 bes4 \finalis
}

tenorMusic = {
r2*3/2 d'2 ~ d'2*3/2 ~ d'2*3/2 ~ d'4 \divisioMinima
c'2 ~ c'2*3/2 bes2*3/2 a2 f2*3/2 a2 bes2 g2 bes2*3/2 c'2*3/2 bes4 ~ \divisioMaior
bes4 c'2*3/2 a2*3/2 \shiftRight f2*3/2 ~ f2*3/2 \shiftRight d2 ~ d2*3/2 ~ d4 \finalis
r2 bes2 c'2*3/2 bes4 ~ \divisioMinima
bes4 ~ bes2 g2 a2 bes2 c'2 d'2*3/2 c'2*3/2 ~ c'2*3/2 bes4 ~ \divisioMaior
bes4 c'2*3/2 a2*3/2 \shiftRight f2*3/2 ~ f2*3/2 \shiftRight d2 d2*3/2 ~ d4 \finalis
r2*3/2 d'2 ~ d'2*3/2 ~ d'2*3/2 ~ d'4 \divisioMinima
c'2 ~ c'2*3/2 bes2*3/2 a2 f2*3/2 a2 bes2 g2 bes2*3/2 c'2*3/2 bes4 ~ \divisioMaior
bes4 c'2*3/2 a2*3/2 \shiftRight f2*3/2 ~ f2*3/2 \shiftRight d2 ~ d2*3/2 ~ d4 \finalis
}

bassMusic = {
r2*5/2 c'2*3/2 ~ c'2*3/2 bes4 \divisioMinima
f2 g2*3/2 ~ g2*3/2 d2 ~ d2*3/2 f2 g2*7/2 ~ g2*3/2 ~ g4 ~ \divisioMaior
g4 f2*3/2 ~ f2*3/2 ~ f2*3/2 d2*3/2 ~ d2 g,2*3/2 ~ g,4 \finalis
g2 ~ g2 ~ g2*3/2 ~ g4 ~ \divisioMinima
g4 d2*4/2 ~ d2*6/2 ~ d2*3/2 ~ d2*3/2 g2*3/2 ~ g4 ~ \divisioMaior
g4 f2*3/2 ~ f2*3/2 ~ f2*3/2 d2*3/2 ~ d2 g,2*3/2 ~ g,4 \finalis
r2*5/2 c'2*3/2 ~ c'2*3/2 bes4 \divisioMinima
f2 g2*3/2 ~ g2*3/2 d2 ~ d2*3/2 f2 g2*7/2 ~ g2*3/2 ~ g4 ~ \divisioMaior
g4 f2*3/2 ~ f2*3/2 ~ f2*3/2 d2*3/2 ~ d2 g,2*3/2 ~ g,4 \finalis
}

voiceLines = {
\voiceLineStyle


s2*22/2
\allowVoiceLineBreak
\voiceLine "down" "down" f2*3/2 f2*1/2


s2*73/2
\allowVoiceLineBreak
\voiceLine "down" "down" d2*2/2 d2*1/2


s2*25/2
\allowVoiceLineBreak
\voiceLine "down" "down" f2*3/2 f2*1/2


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
