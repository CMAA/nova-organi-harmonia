\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.36
%(volume.page)

global = {
 \key g \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Benedictus qui venit" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Benedictus qui venit"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Benedictus qui venit" }
    \line {}
  }
}

chantText = \lyricmode {
Be -- _ ne -- dí -- _ ctus 
\set stanza = " * " qui ve -- _ _ nit 
in nó -- mi -- ne _ Dó -- _ mi -- ni: _ _ 
be -- ne -- dí -- xi -- mus _ vo -- bis 
de do -- mo Dó -- _ mi -- _ ni: 
De -- _ _ us _ Dó -- _ _ mi -- _ _ _ nus, _ 
et il -- lú -- xit no -- _ bis, _ 
al -- le -- lú -- _ ia, _ _ al -- le -- _ _ lú -- ia. _ _ }

chantMusic = {
\tieDown   f'4 ( g'4 f'4) ~ f'4 ( e'4) c'4 ( d'4) f'4 ~ f'4 ( g'\prall a'4 g'4 a'4) a'4 ( g'4) \divisioMinima
 g'4 a'4 ( c''4) ~ c''4 ( c''4) d''4 ( c''4) c''4 \divisioMaior
 c''4 \forceBreak
 c''4 ( d''4 e''4 d''4) d''4 ( c''4 c''4) g'4 ( a'4 g'4) b'4 ( d''4 c''4) \divisioMinima
 c''4 ( d''4 b'4) c''4 ( a'4) g'4 ( f'4) a'4 ( b'\prall c''4 a'4) b'4 ( a'4 g'4) a'4 ( g'4) \divisioMaxima \forceBreak

 f'4 g'4 g'4 ( c''4) c''4 c''4 ( c''4) ~ c''4 ( a'4 g'4 a'4) f'4 ( g'4) a'4 ( c''4 a'4 g'4 a'4) \divisioMaior
 f'4 ( g'4) g'4 ( a'4) a'4 ( c''4) c''4 ( c''4 c''4) d''4. \forceBreak
 c''4 ( e''4 d''4) d''4 ( e''4 c''4) ~ c''4 ( a'4 b'\prall c''4 b'4) b'4 \divisioMaxima
 g'4 c''4 ( c''4 c''4) d''4. c''4 ( e''4 d''4) d''4 ( e''4 c''4) ~ c''4 ( a'4 b'\prall c''4 b'4) \divisioMinima
 g'4 \forceBreak
 c''4 ( c''4 c''4) d''4 ( c''4) c''4 ( d''4 c''4) d''4 ( b'4) c''4 ( a'4) g'4 ( b'4 a'4) a'4 ( g'4) ~ g'4 ( f'4 g'4) \divisioMaior
 f'4 ( g'4) g'4 ( a'4) a'4 ( d''4 e''4) c''4 ( b'4) c''4 ( c''4) ~ c''4 ( a'4 \forceBreak
) a'4. g'4 ( c''4 a'4 c''4) \divisioMaior
 f'4 g'4 a'4 c''4 ( c''4 c''4) c''4 ( d''4 c''4 b'4) c''4. ~ c''4 ( c''4) ~ c''4 ( g'4) \divisioMinima
 a'4 ( c''4) c''4 ( c''4 c''4) d''4 ( c''4 \forceBreak
) d''4 ( c''4 c''4) a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( c''4 a'4) b'4 ( a'4) ~ a'4 ( g'4) \finalis

}

altoMusic = {
d'2 c'2*3/2 ~ c'2 ~ c'2*6/2 e'2 ~ \divisioMinima
e'4 ~ e'2 ~ e'2 a'2 g'4 ~ \divisioMaior
g'4 ~ g'2*4/2 e'2*3/2 d'2*3/2 e'2*3/2 \divisioMinima
g'2*5/2 ~ g'4 f'4 ~ f'2*4/2 d'2*3/2 ~ d'2 \divisioMaxima
r4 g'4 ~ g'2*3/2 ~ g'2 f'2*4/2 ~ f'2 e'2*5/2 \divisioMaior
d'2 c'2 ~ c'2 g'2*3/2 ~ g'2*3/4 ~ g'2*3/2 ~ g'2 a'2 ~ a'2 ~ a'2 g'4 ~ \divisioMaxima
g'4 ~ g'2*3/2 ~ g'2*3/4 ~ g'2*3/2 ~ g'2 ~ g'2 f'2 ~ f'2 \divisioMinima
g'4 ~ g'2*5/2 f'2*3/2 g'2*4/2 d'2*4/2 c'2*3/2 d'4 \divisioMaior
r4 g'4 ~ g'2 ~ g'4 ~ g'2 ~ g'2 ~ g'2 ~ g'2 e'2*3/4 ~ e'2*4/2 \divisioMaior
r2 f'4 e'2*3/2 a'2*4/2 g'2*3/4 ~ g'2 ~ g'2 ~ \divisioMinima
g'2 f'2*5/2 e'2*3/2 f'2 g'2*4/2 d'2 ~ d'4 \finalis
}

tenorMusic = {
r2 a2*3/2 ~ a2 ~ a2*6/2 c'2 ~ \divisioMinima
c'4 ~ c'2 ~ c'2 ~ c'2 ~ c'4 ~ \divisioMaior
c'4 ~ c'2*4/2 ~ c'2*3/2 b2*3/2 c'2*3/2 ~ \divisioMinima
c'2*5/2 ~ c'2 ~ c'2*4/2 ~ c'2*3/2 ~ c'4 b4 \divisioMaxima
c'2 ~ c'2*3/2 ~ c'2 ~ c'2*4/2 ~ c'2 ~ c'2*5/2 \divisioMaior
a2 g2 f2 a2*3/2 b2*3/4 c'2*3/2 e'2 ~ e'2 d'2 ~ d'2 ~ d'4 ~ \divisioMaxima
d'4 c'2*3/2 b2*3/4 a2*3/2 b2 c'2 ~ c'2 d'2 ~ \divisioMinima
d'4 c'2*5/2 ~ c'2*3/2 ~ c'2*4/2 ~ c'2*4/2 a2*3/2 b4 \divisioMaior
c'2 ~ c'2 ~ c'4 b2 e'2 d'2 c'2 b2*3/4 c'2*4/2 ~ \divisioMaior
c'2*3/2 ~ c'2*3/2 ~ c'2*4/2 ~ c'2*3/4 d'2 c'2 ~ \divisioMinima
c'2 ~ c'2*5/2 ~ c'2*3/2 ~ c'2 ~ c'2*4/2 ~ c'2 b4 \finalis
}

bassMusic = {
r2*5/2 g2 f2*6/2 c'2 \divisioMinima
r4 b2 a2 f2 ~ f4 ~ \divisioMaior
f4 e2*4/2 a2*3/2 ~ a2*3/2 ~ a2*3/2 \divisioMinima
e2*5/2 a2 d2*4/2 g2*3/2 ~ g2 \divisioMaxima
a2 f2*3/2 e2 d2*4/2 ~ d2 c2*5/2 \divisioMaior
d2 e2 f2 e2*3/2 ~ e2*3/4 ~ e2*3/2 ~ e2 f2 ~ f2 g2 ~ g4 \divisioMaxima
e4 ~ e2*3/2 ~ e2*3/4 ~ e2*3/2 ~ e2 ~ e2 d2 ~ d2 \divisioMinima
e4 ~ e2*5/2 d2*3/2 e2*4/2 g2*4/2 ~ g2*3/2 ~ g4 \divisioMaior
a2 f2 e4 ~ e2 ~ e2 ~ e2 ~ e2 a2*3/4 ~ a2*4/2 ~ \divisioMaior
a2*3/2 ~ a2*3/2 f2*4/2 e2*3/4 ~ e2 ~ e2 ~ \divisioMinima
e2 a2*5/2 ~ a2*3/2 d2 e2*4/2 g2 ~ g4 \finalis
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
