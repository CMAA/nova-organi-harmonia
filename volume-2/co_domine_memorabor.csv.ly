\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.216
%(volume.page)

global = {
 \key g \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Domine memorabo" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Domine memorabo"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Domine memorabo" }
    \line {}
  }
}

chantText = \lyricmode {
Dó -- mi -- ne, 
\set stanza = " * " me -- mo -- rá -- bor ju -- stí -- _ ti -- _ æ tu -- æ so -- _ lí -- _ us: 
De -- us, do -- cu -- í -- sti me a ju -- ven -- tú -- _ te _ me -- _ a, 
et us -- _ que in se -- né -- _ ctam et sé -- ni -- _ um, 
De -- us, _ ne de -- re -- _ lín -- quas me. }

chantMusic = {
\tieDown   f'4 ( g'4 a'4) g'4 g'4 \divisioMinima
 g'4 g'4 ( f'4) g'4 ( g'4 f'4 g'4) d'4 \divisioMinima
 d'4 d'4 g'4 ( f'4 g'4) g'4 ( e'4) f'4 ( d'4 \forceBreak
) d'4 g'4 ( f'4 g'4) g'4 \divisioMinima
 f'4 ( g'4 a'4) c''4 ( b'4 c''4) c''4 ( a'4) b'4 ( g'4) g'4 \divisioMaxima
 c''4 c''4 ( c''4 c''4) c''4 ( b'4) a'4 \forceBreak
 b'4 ( c''4 d''4) a'4 g'4 \divisioMinima
 g'4 g'4 g'4 g'4 ( a'4) c''4 ( b'4) b'4 ( a'4) c''4 ( d''4 c''4)  a'4 ( g'4) bes'4 ( a'4 f'4) f'4 \divisioMaxima \forceBreak

 g'4 g'4 ( a'4 b'\prall c''4) ~ c''4 ( d''4) c''4 a'4 g'4 f'4 g'4 ( f'4 g'4) d'4 \divisioMinima
 f'4 e'4 ( f'4 g'4) g'4 ( e'4) f'4 ( d'4) d'4 \divisioMaior \forceBreak

 g'4 ( f'4 g'4) g'4 ( a'4 g'4) ~ g'4 ( f'4) \divisioMinima
 f'4 ( a'4 c''4) f'4 ( a'4 c''4) c''4 ( a'4) b'4 ( g'4) g'4 g'4 ( f'4 g'\prall a'4 g'4) g'4 \finalis

}

altoMusic = {
a2*4/2 c'4 ~ \divisioMinima
c'4 ~ c'2 d'2*4/2 ~ d'4 \divisioMinima
r2 c'2*3/2 ~ c'2 ~ c'2 r4 c'2*3/2 ~ c'4 ~ \divisioMinima
c'2*3/2 f'2*3/2 d'2 ~ d'2 ~ d'4 \divisioMaxima
e'4 g'2*3/2 f'2*3/2 d'2*4/2 ~ d'4 ~ \divisioMinima
d'4 e'2 ~ e'2 ~ e'2 ~ e'2 ~ e'2*3/2 ~ e'2 f'2 ~ f'4 c'4 \divisioMaxima
r4 c'2*3/2 e'2*3/2 ~ e'2 d'2 ~ d'2*3/2 ~ d'4 ~ \divisioMinima
d'4 c'2*3/2 ~ c'2*4/2 ~ c'4 ~ \divisioMaior
c'2*3/2 ~ c'2 ~ c'2*3/2 \divisioMinima
f'4 ~ f'2 ~ f'4 ~ f'2 d'2 ~ d'2 c'4 ~ c'2*5/2 b4 \finalis
}

tenorMusic = {
f2*4/2 g4 ~ \divisioMinima
g4 a2 ~ a2*4/2 f4 \divisioMinima
a2 g2*3/2 a2 ~ a2 f4 ~ f2*3/2 e4 \divisioMinima
a2*3/2 ~ a2*3/2 ~ a2 g2 b4 \divisioMaxima
c'4 ~ c'2*3/2 ~ c'2*3/2 ~ c'2*4/2 b4 ~ \divisioMinima
b4 ~ b2 ~ b2 g2 e2 a2*3/2 c'2 ~ c'2*3/2 a4 \divisioMaxima
r4 g2*3/2 ~ g2*3/2 a2 ~ a2 ~ a2*3/2 ~ a4 ~ \divisioMinima
a4 ~ a2*3/2 ~ a2*4/2 f4 ~ \divisioMaior
f2*3/2 e2 a2*3/2 \divisioMinima
f4 ~ f2 a4 ~ a2 ~ a2 g2 e4 d2*5/2 ~ d4 \finalis
}

bassMusic = {
r2*4/2 e4 ~ \divisioMinima
e4 ~ e2 d2*4/2 ~ d4 \divisioMinima
f2 e2*3/2 ~ e2 d2 ~ d4 c2*3/2 ~ c4 \divisioMinima
e2*3/2 d2*3/2 g2 ~ g2 ~ g4 \divisioMaxima
c4 e2*3/2 d2*3/2 g2*4/2 ~ g4 ~ \divisioMinima
g4 e2 d2 ~ d2 c2 ~ c2*3/2 ~ c2 f2*3/2 ~ f4 \divisioMaxima
r4 e2*3/2 c2*3/2 ~ c2 d2 e2*3/2 f4 ~ \divisioMinima
f4 a2*3/2 d2*4/2 ~ d4 \divisioMaior
c2*3/2 ~ c2 f2*3/2 ~ \divisioMinima
f4 e2 ~ e4 d2 g,2 ~ g,2 ~ g,4 ~ g,2*5/2 ~ g,4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Communion"
        "VIII."
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
