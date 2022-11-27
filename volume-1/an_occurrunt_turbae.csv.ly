\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.302
%(volume.page)

global = {
 \key g \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Occurrunt turbae" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Occurrunt turbae"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Occurrunt turbae" }
    \line {}
  }
}

chantText = \lyricmode {
Oc -- cúr -- runt tur -- bæ 
\set stanza = " * " cum fló -- ri -- bus et pal -- mis Red -- em -- ptó -- ri ób -- vi -- am: 
et vi -- ctó -- ri tri -- um -- phán -- ti dig -- na dant ob -- sé -- qui -- a: 
Fí -- li -- um De -- i o -- re gen -- tes prǽ -- di -- cant: 
et in lau -- dem Chri -- sti vo -- ces to -- nant per nú -- bi -- la: Ho -- sán -- na! }

chantMusic = {
\tieDown   a'4 f'4 f'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) g'4 \divisioMinima
 f'4 ( a'4) c''4 d''4 c''4 ( b'4) a'4 ( \once \tweak #'font-size #-4 g' ) a'4 g'4 \divisioMinima
 b'4 c''4 \forceBreak
 a'4 g'4 ( f'4) g'4 ( a'4) a'4 g'4 \divisioMaxima
 f'4 g'4 g'4 ( c''4) c''4 c''4 c''4 d''4 ( \once \tweak #'font-size #-4 c'' ) c''4 \divisioMinima
 d''4 c''4 b'4 \forceBreak
 a'4 ( c''4) c''4 ( d''4) c''4 ( b'4) g'4 \divisioMaxima
 c''4 a'4 c''4 b'4 ( a'4) g'4 \divisioMinima
 g'4 g'4 a'4 b'4 ( g'4) a'4 g'4 f'4 \divisioMaior \forceBreak

 g'4 f'4 g'4 a'4 c''4 ( c''4) a'4 ( b'4 a'4) \divisioMinima
 g'4 b'4 g'4 a'4 g'4 f'4 e'4 d'4 \divisioMinima
 f'4 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 \finalis

}

altoMusic = {
r4 d'4 ~ d'2 e'2*3/2 \divisioMinima
f'2 e'2 f'2 r2 e'2 \divisioMinima
f'2 r2*3/2 d'2*3/2 ~ d'4 \divisioMaxima
r2 g'2*3/2 f'2 e'2*3/2 \divisioMinima
d'2*3/2 g'2 f'2 d'2 ~ d'4 \divisioMaxima
e'2*3/2 ~ e'2 ~ e'4 \divisioMinima
r2*3/2 g'2 f'2 ~ f'4 \divisioMaior
e'2 ~ e'2 f'2 e'2 ~ e'4 \divisioMinima
r2 e'2*3/2 r2*3/2 \divisioMinima
r4 d'2 ~ d'4 \finalis
}

tenorMusic = {
r4 d'4 c'2 ~ c'2*3/2 ~ \divisioMinima
c'2 ~ c'2 d'2 ~ d'2 c'2 \divisioMinima
d'2 e'4 c'2 ~ c'2*3/2 b4 \divisioMaxima
a2 g2*3/2 a2 ~ a2*3/2 ~ \divisioMinima
a2*3/2 ~ a2 ~ a2 g2 b4 \divisioMaxima
a2*3/2 ~ a2 b4 \divisioMinima
c'2*3/2 d'2 c'2 ~ c'4 ~ \divisioMaior
c'2 ~ c'2 d'2 ~ d'2 c'4 \divisioMinima
d'2 c'2*3/2 ~ c'2 b4 \divisioMinima
c'4 ~ c'2 b4 \finalis
}

bassMusic = {
r2*7/2 \divisioMinima
a2 ~ a2 b2 ~ b2 c'2 ~ \divisioMinima
c'2 ~ c'4 a2 g2*3/2 ~ g4 \divisioMaxima
d2 e2*3/2 f2 a2*3/2 \divisioMinima
f2*3/2 e2 f2 g2 ~ g4 \divisioMaxima
a2*3/2 e2 ~ e4 ~ \divisioMinima
e2*3/2 ~ e2 f2 a4 \divisioMaior
r2 b2 a2 ~ a2 ~ a4 \divisioMinima
b2 ~ b2*3/2 a2 ~ a4 ~ \divisioMinima
a4 g2 ~ g4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Antiphon"
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
