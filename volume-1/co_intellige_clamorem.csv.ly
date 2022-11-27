\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.208
%(volume.page)

global = {
 \key f \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Intellige clamorem" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Intellige clamorem"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Intellige clamorem" }
    \line {}
  }
}

chantText = \lyricmode {
In -- tel -- li -- ge 
\set stanza = " * " cla -- mó -- rem me -- _ um: 
in -- tén -- de vo -- ci o -- ra -- ti -- ó -- nis me -- æ, 
Rex me -- us, et De -- us me -- _ us: 
quó -- ni -- am ad te o -- rá -- bo, _ _ 
Dó -- mi -- _ ne. }

chantMusic = {
\tieDown   f'4 a'4 ( b'\prall c''4) d''4 c''4 ( d''4)  c''4 c''4 ( d''4) c''4 c''4 ( b'4) ~ b'4 ( a'4 b'4) b'4 ( a'4) \divisioMaior
 a'4 g'4 ( b'4) g'4 \forceBreak
 c''4 ( b'4 c''4) a'4 a'4 f'4 g'4 ( a'4) a'4 ( b'\prall c''4 b'4 g'4) a'4 ( g'4 a'4) f'4 ( g'4 a'4) a'4 \divisioMaior
 c''4 c''4 ( b'4 a'4) a'4 \divisioMinima \forceBreak

 g'4 ( \once \tweak #'font-size #-4 b' ) b'4 ( c''4 b'4) g'4 a'4 ( c''4 a'4 g'4) a'4 ( g'4 f'4 g'4) g'4 ( f'4) \divisioMaxima
 f'4 f'4 d'4 ( e'\prall f'4) f'4 ( \once \tweak #'font-size #-4 d' ) f'4 g'4 ( a'4) a'4 \forceBreak
 g'4 a'4 ( b'\prall c''4 b'4) c''4 ( d''4 c''4) \divisioMaior
 a'4 ( b'\prall c''4 b'4 g'4  bes'\prall c''4 a'4) g'4 f'4 ( g'4) a'4 ( g'4 f'4 g'4) g'4 ( f'4) \finalis

}

altoMusic = {
r4 a'2*4/2 ~ a'2*3/2 f'2*4/2 g'2*4/2 e'2 ~ \divisioMaior
e'4 g'2*3/2 ~ g'2*4/2 f'2*4/2 e'2 g'2*3/2 ~ g'2*4/2 ~ g'2 f'4 ~ \divisioMaior
f'4 d'2*3/2 e'4 \divisioMinima
d'2 e'2*4/2 ~ e'2*4/2 ~ e'2*4/2 d'2 \divisioMaxima
c'2 bes2*3/2 c'2*3/2 ~ c'2 d'2 e'2 ~ e'2 f'2*3/2 ~ \divisioMaior
f'2 g'2 ~ g'2 f'2*3/2 ~ f'2 ~ f'2*4/2 c'2 \finalis
}

tenorMusic = {
r4 r2*4/2 e'2*3/2 d'2*4/2 e'2*4/2 ~ e'2 \divisioMaior
r4 d'2*3/2 e'2*4/2 c'2*4/2 ~ c'2 d'2*3/2 c'2*3/2 ~ c'2*4/2 \divisioMaior
a4 ~ a2*4/2 \divisioMinima
b2 a2*4/2 ~ a2*4/2 c'2*4/2 a2 \divisioMaxima
f2 ~ f2*3/2 ~ f2*3/2 e2 ~ e2 ~ e2 a2 ~ a2*3/2 \divisioMaior
f2 e2 c'2 ~ c'2*3/2 ~ c'2 bes2*4/2 b4 a4 \finalis
}

bassMusic = {
r4 a2*4/2 ~ a2*3/2 d'2*4/2 ~ d'2*4/2 c'2 ~ \divisioMaior
c'4 b2*3/2 a2*4/2 ~ a2*4/2 ~ a2 g2*3/2 e2*3/2 d2*4/2 ~ \divisioMaior
d4 a,2*4/2 ~ \divisioMinima
a,2 ~ a,2*4/2 c2*4/2 ~ c2*4/2 d2 \divisioMaxima
a,2 g,2*3/2 a,2*3/2 ~ a,2 b,2 c2 ~ c2 d2*3/2 ~ \divisioMaior
d2 e2 ~ e2 f2*3/2 d2 ~ d2*4/2 f2 \finalis
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
