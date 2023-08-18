\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.249
%(volume.page)

global = {
 \key g \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Gressus meos" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Gressus meos"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Gressus meos" }
    \line {}
  }
}

chantText = \lyricmode {
Gres -- sus me -- os 
\set stanza = " * " dí -- ri -- ge _ Dó -- mi -- ne 
se -- cún -- _ _ _ _ _ _ _ dum e -- ló -- _ qui -- um tu -- um: _ 
ut non _ _ do -- mi -- né -- tur _ _ 
o -- mnis _ in -- ju -- stí -- ti -- a, _ Dó -- mi -- _ ne. }

chantMusic = {
\tieDown   f'4 f'4 ( g'4) g'4 g'4 \divisioMinima
 g'4 ( a'4 g'4) g'4 ( e'4 f'4) d'4 f'4 ( f'4)  f'4 ( a'4 bes'4 a'4 g'4) g'4 ( a'4 g'4) g'4 \divisioMaior
 c''4 \forceBreak
 c''4 ( c''4) ~ c''4 ( a'4 g'4) ~ g'4 ( f'4) g'4 ( a'4) c''4 ( c''4) ~ c''4 ( g'4.) b'4 ( a'4 g'4) ~ g'4 ( f'4 g'\prall a'4 b'4 \tiny a' g' 4) a'4 ( g'4) \divisioMinima
 f'4 f'4 ( g'4 a'4) ~ a'4 ( g'4) g'4 ( a'4 b'\prall c''4 b'4 \forceBreak
) b'4 ( \once \tweak #'font-size #-4 a' ) c''4 ( d''4 c''4) a'4 ( b'4 a'4) ~ a'4 ( g'4) \divisioMaxima
 f'4 ( g'4 \once \tweak #'font-size #-4 a' ) g'4 c''4 ( c''4) ~ c''4 ( c''4 c''4) a'4 a'4 ( g'4) a'4 g'4 ( e'4) f'4 ( g'4 a'4) ~ a'4 ( g'4) \divisioMaior \forceBreak

 g'4 ( \once \tweak #'font-size #-4 e' ) f'4 ( g'4 f'4) ~ f'4 ( g'4 d'4 c'4 d'4) c'4 d'4 d'4 ( g'4) g'4 ( f'4) g'4. c''4 ( c''4 b'4 a'4 b'\prall c''4 b'4 a'4) \divisioMinima
 a'4 ( g'4) g'4 ( a'4) c''4 ( a'4 b'4) a'4 ( g'4) \finalis

}

altoMusic = {
c'4 d'2 f'4 e'4 \divisioMinima
d'2*3/2 c'2*3/2 d'4 ~ d'2 ~ d'2*5/2 f'2*3/2 e'4 ~ \divisioMaior
e'4 ~ e'2 ~ e'2 c'2*3/2 ~ c'2 g'2 ~ g'2*9/4 r2 f'2*6/2 d'2 \divisioMinima
f'4 ~ f'2 ~ f'2*3/2 ~ f'2*5/2 ~ f'2 g'2*5/2 d'2 ~ d'4 \divisioMaxima
f'2*4/2 g'2 f'2*4/2 e'2 ~ e'4 c'2*4/2 d'2*3/2 \divisioMaior
c'2*4/2 ~ c'2 a2*3/2 d'2 ~ d'4 ~ d'2 ~ d'2 ~ d'2*3/4 c'2*3/2 e'2*5/2 \divisioMinima
f'2 ~ f'2 g'2*3/2 d'2 \finalis
}

tenorMusic = {
a4 c'2 ~ c'4 ~ c'4 \divisioMinima
b2*3/2 r2*4/2 bes2 b2*5/2 c'2*3/2 ~ c'4 ~ \divisioMaior
c'4 ~ c'2 ~ c'2 r2*5/2 c'2 ~ c'2*9/4 ~ c'2 ~ c'2*6/2 ~ c'4 b4 \divisioMinima
c'4 ~ c'2 ~ c'2*3/2 ~ c'2*5/2 ~ c'2 ~ c'2*5/2 ~ c'2 b4 \divisioMaxima
c'2*4/2 ~ c'2 ~ c'2*4/2 ~ c'2 e4 ~ e2*4/2 d2*3/2 \divisioMaior
e2*4/2 f2 ~ f2*3/2 g2*3/2 a2 ~ a2 g2*3/4 ~ g2*3/2 a2*5/2 ~ \divisioMinima
a2 c'2 ~ c'2*3/2 ~ c'4 b4 \finalis
}

bassMusic = {
r2*5/2 \divisioMinima
r2*3/2 a2*4/2 ~ a2 g2*5/2 c'2*3/2 r4 \divisioMaior
r4 b2 a2 ~ a2*3/2 g2 f2 e2*9/4 d2 ~ d2*6/2 g2 \divisioMinima
a4 g2 f2*3/2 e2*5/2 d2 e2*5/2 g2 ~ g4 \divisioMaxima
d2*4/2 e2 d2*4/2 c2 ~ c4 a,2*4/2 b,2*3/2 \divisioMaior
a,2*4/2 ~ a,2 d2*3/2 e2*3/2 f2 d2 e2*3/4 ~ e2*3/2 c2*5/2 \divisioMinima
d2 ~ d2 e2*3/2 g2 \finalis
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
