\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.130
%(volume.page)

global = {
 \key a \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Dextera Domini" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Dextera Domini"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Dextera Domini" }
    \line {}
  }
}

chantText = \lyricmode {
Dex -- te -- ra _ _ Dó -- mi -- ni 
\set stanza = " * " 
fe -- _ cit vir -- _ _ tú -- _ tem, 
déx -- te -- ra _ Dó -- _ mi -- ni ex -- al -- tá -- _ _ _ _ vit me: 
non mó -- ri -- ar, sed _ vi -- vam, 
et nar -- rá -- bo ó -- pe -- ra _ _ Dó -- mi -- ni. _ _ }

chantMusic = {
\tieDown   e'4 ( g'4 a'4) a'4 ( b'4 a'4 g'4) g'4 ~ g'4 ( g'4 g'4) a'4 ( b'4 a'4 b'4) g'4 ( a'4) e'4 ( f'4 e'4 d'4 e'4) e'4 ( d'4) \divisioMaior
 d'4 e'4 g'4 ( a'4 g'4) a'4 \forceBreak
 a'4 ( b'4) d''4 ( d''4 b'4) c''4 ( d''4) a'4. g'4 ( b'4 a'4) a'4 \divisioMaxima
 c''4 ( c''4) c''4 ( b'4) c''4 ( c''4) ~ c''4 ( a'4) a'4 ( c''4) ~ c''4 ( a'4) a'4 a'4 \divisioMinima
 g'4 a'4 \forceBreak
 a'4 ( c''4) ~ c''4 ( c''4) ~ c''4 ( a'4) d''4 ( c''4) ~ c''4 ( a'4) a'4 ( b'4 \tiny a' g' 4) a'4 ( g'4) \divisioMaxima
 a'4 ( b'\prall c''4) c''4 c''4 ( b'4 a'4) a'4 \divisioMinima
 g'4 c''4 ( c''4 c''4 \forceBreak
) a'4 ( b'4 g'4) e'4 ( g'4 e'4 g'4) \divisioMaior
 d'4 e'4 g'4 e'4 g'4 ( a'4 g'4) a'4 a'4 c''4 ( d''4 c''4) d''4 ( c''4 b'4 a'4) a'4 a'4 a'4 ( b'\prall c''4) ~ c''4 ( b'4 a'4) b'4 ( b'4 a'4) \finalis

}

altoMusic = {
c'2*3/2 e'2*4/2 ~ e'2*4/2 ~ e'2*4/2 d'2 c'2*5/2 b2 \divisioMaior
d'2 ~ d'2*4/2 f'2 ~ f'2*5/2 e'2*3/4 ~ e'2*3/2 ~ e'4 \divisioMaxima
c'2 d'2 e'2 ~ e'2 g'4 f'2*4/2 e'4 ~ \divisioMinima
e'2 ~ e'2 f'2 ~ f'2*3/2 g'2*3/2 e'2*4/2 d'2 \divisioMaxima
e'2*3/2 ~ e'4 f'2*3/2 e'4 ~ \divisioMinima
e'4 g'2*3/2 ~ g'2*3/2 e'2 ~ e'2 \divisioMaior
d'2 c'2 d'2*4/2 e'4 ~ e'2*3/2 ~ e'2*4/2 f'2 ~ f'2 g'2*4/2 e'2 ~ e'4 \finalis
}

tenorMusic = {
r2*3/2 e2*4/2 a4 b2*3/2 c'2*4/2 b2 a2*5/2 g2 ~ \divisioMaior
g2 b2*4/2 c'2 ~ c'2*5/2 b2*3/4 d'2*3/2 c'4 \divisioMaxima
a2*4/2 ~ a2 ~ a2 ~ a4 ~ a2*4/2 ~ a4 \divisioMinima
b2 a2 ~ a2 c'2*3/2 ~ c'2*3/2 ~ c'2*4/2 ~ c'4 b4 \divisioMaxima
c'2*3/2 ~ c'4 d'2*3/2 c'4 ~ \divisioMinima
c'4 ~ c'2*3/2 d'2*3/2 ~ d'2 c'2 \divisioMaior
b2 a2 b2*4/2 a4 b2*3/2 a2*4/2 ~ a2 c'2 d'2*4/2 ~ d'2 c'4 \finalis
}

bassMusic = {
a,2*3/2 c2*4/2 ~ c2*4/2 ~ c2*4/2 e2 f2*5/2 g2 \divisioMaior
e2 ~ e2*4/2 ~ e2 d2*5/2 e2*3/4 ~ e2*3/2 a4 \divisioMaxima
a,2*4/2 ~ a,2 c2 e4 d2*4/2 c4 ~ \divisioMinima
c2 ~ c2 d2 ~ d2*3/2 e2*3/2 f2*4/2 g2 \divisioMaxima
r2*3/2 a4 ~ a2*3/2 ~ a4 ~ \divisioMinima
a4 e2*3/2 ~ e2*3/2 a2 ~ a2 ~ \divisioMaior
a2 ~ a2 e2*4/2 c4 ~ c2*3/2 ~ c2*4/2 d2 ~ d2 e2*4/2 a2 ~ a4 \finalis
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
