\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.178
%(volume.page)

global = {
 \key g \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Scapulis suis" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Scapulis suis"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Scapulis suis" }
    \line {}
  }
}

chantText = \lyricmode {
Scá -- pu -- lis su -- is 
\set stanza = " * " o -- bum -- brá -- _ bit ti -- bi _ Dó -- mi -- nus, 
et sub pen -- _ nis e -- jus _ _ 
spe -- rá -- _ _ bis: 
scu -- _ to _ cir -- cúm -- da -- bit te 
vé -- _ _ ri -- tas e -- jus. }

chantMusic = {
\tieDown   a'4 g'4 g'4 g'4 ( b'4 a'4) a'4 \divisioMinima
 g'4 g'4 g'4 ( a'4) c''4 ( b'4) b'4 ( \once \tweak #'font-size #-4 a' ) c''4 ( d''4) a'4. f'4 ( a'4 g'4) g'4 \forceBreak
 g'4 ( a'4 g'4) g'4 \divisioMaxima
 g'4 g'4 g'4 ( a'4) c''4 ( b'4) c''4 c''4 c''4 ( c''4) ~ c''4 ( b'4 a'4 g'4) a'4 ( g'4) \divisioMaior
 a'4 ( b'4 a'4) c''4 ( c''4) a'4 ( c''4 \forceBreak
) d''4 ( c''4 d''4) c''4 ( b'4) \divisioMaxima
 a'4 ( c''4) d''4 ( c''4) c''4 ( c''4) ~ c''4 ( c''4 c''4) a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4 b'\prall c''4) c''4 ( d''4 c''4 a'4) a'4 ( g'4) g'4 ( f'4) \divisioMaior \forceBreak

  f'4 ( g'4) bes'4 ( a'4 g'4 a'4) c''4 ( d''4 c''4) a'4 ( f'4) f'4 ( a'4 g'4) g'4 ( a'4 g'4) g'4 \finalis

}

altoMusic = {
d'2*3/2 e'2*4/2 \divisioMinima
d'2 e'2 ~ e'2 g'2 ~ g'2 ~ g'2*3/4 f'2*3/2 e'4 d'2*3/2 ~ d'4 ~ \divisioMaxima
d'2 e'2 ~ e'2*3/2 f'4 ~ f'2 g'2*3/2 ~ g'4 e'2 \divisioMaior
g'2*3/2 f'2*4/2 g'2*3/2 ~ g'2 \divisioMaxima
e'2*4/2 d'2 e'2*3/2 ~ e'2 f'2*4/2 g'2*4/2 c'2 d'2 ~ d'2 ~ d'2*4/2 e'2*3/2 f'2 d'2*3/2 ~ d'2*3/2 ~ d'4 \finalis
}

tenorMusic = {
b2*3/2 c'2*4/2 \divisioMinima
b2 ~ b2 a2 g2 a2 c'2*11/4 ~ c'2*3/2 b4 ~ \divisioMaxima
b2 ~ b2 a2*3/2 ~ a4 c'2 ~ c'2*4/2 b2 \divisioMaior
c'2*3/2 ~ c'2*4/2 ~ c'2*3/2 d'2 \divisioMaxima
a2*4/2 ~ a2 ~ a2*3/2 b2 c'2*4/2 ~ c'2*4/2 g2 a2 ~ a2 g2*4/2 ~ g2*3/2 f2 c'2*3/2 ~ c'2*3/2 b4 \finalis
}

bassMusic = {
r2*3/2 a2*4/2 \divisioMinima
e2 c2 ~ c2 e2 ~ e2 d2*11/4 g2*3/2 ~ g4 \divisioMaxima
e2 c2 ~ c2*3/2 d4 ~ d2 e2*4/2 ~ e2 ~ \divisioMaior
e2*3/2 d2*4/2 e2*3/2 g2 \divisioMaxima
a,2*4/2 b,2 c2*3/2 ~ c2 d2*4/2 e2*4/2 ~ e2 d2 bes,2 ~ bes,2*4/2 a,2*3/2 d2 ~ d2*3/2 g2*3/2 ~ g4 \finalis
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
