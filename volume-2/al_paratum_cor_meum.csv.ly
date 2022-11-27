\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.240
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Paratum cor meum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Paratum cor meum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Paratum cor meum" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- _ _ ia, 
\set stanza = " * " 
al -- le -- lú -- _ _ ia. 
_ _ _ _ _ _ _ _ _ _ _ ℣. 
Pa -- rá -- tum cor me -- um, De -- us, 
pa -- rá -- tum cor _ me -- _ um: 
can -- tá -- _ _ bo, _ _ et psal -- lam ti -- bi 
gló -- _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ri -- _ a 
\set stanza = " * " 
me -- _ _ a. _ _ _ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   e'4 ( e'4 f'4) d'4 ( g'4) g'4 ( b'4 g'4) a'4 ( b'\prall c''4) ~ c''4 ( d''4) b'4 \divisioMaior
 e'4 ( e'4 f'4) d'4 ( g'4) g'4 ( b'4 g'4) a'4 ( b'\prall c''4) ~ c''4 ( d''4) b'4 \divisioMaior \forceBreak

 g'4 ( a'4 b'\prall c''4 a'4.) c''4 ( a'4) b'4 ( g'4) \divisioMinima
 g'4 ( a'4 b'\prall c''4 a'4.) c''4 ( a'4) b'4 ( g'4) ~ g'4 ( e'4) \divisioMinima
 e'4 ( f'4 g'4) a'4 ( g'4 a'4 f'4 e'4) f'4 ( g'4 f'4) ~ f'4 ( e'4) \finalis \forceBreak

 c'4 ( d'4 e'\prall f'4 f'4) f'4 f'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( f'4)  f'4 ( g'\prall a'4 bes'4) a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMaior
 f'4 ( a'4 b'\prall c''4 c''4) c''4 \forceBreak
  c''4 ( c''4 bes'4 g'4) g'4 c''4 ( c''4 c''4)  c''4 ( a'4) bes'4 ( bes'4 a'4) a'4 \divisioMaxima
 f'4 ( a'4) a'4 c''4 ( a'4) ~ a'4 ( f'4 g'4) g'4. f'4 ( f'4) d'4 ( e'4 d'4) \divisioMinima
 d'4 f'4 ( f'4 \forceBreak
) g'4 ( a'4 g'4 f'4 g'4)  g'4 ( a'4 bes'4 g'4) g'4 \divisioMaior
  f'4 ( a'4) bes'4 ( g'4) a'4 ( a'4) g'4 ( g'4) a'4 ( f'4 g'4) \divisioMinima
  g'4 ( c''4) ~ c''4 ( a'4) bes'4 ( g'4) a'4 ( a'4 \forceBreak
) g'4 ( g'4) a'4 ( f'4 g'4) \divisioMinima
  c''4 ( c''4) ~ c''4 ( a'4) bes'4 ( g'4) a'4 ( a'4) g'4 ( g'4) a'4 ( f'4 g'4) \divisioMinima
 e'4 ( f'4) g'4 ( a'4 g'4) f'4. e'4 ( f'4 d'4) \divisioMinima
 d'4 ( e'4 f'4) g'4 ( a'4 g'4 \forceBreak
) f'4 ( e'4) f'4 ( e'4 d'4 e'4) e'4 ( d'4) \divisioMaior
 f'4 ( f'4) g'4 ( f'4) a'4 ( g'4 a'4) a'4 ( a'4 f'4) \divisioMinima
 a'4 ( g'4) a'4 ( f'4 d'4) g'4 ( f'4 f'4) ~ f'4 ( e'4 c'4.) g'4 ( g'4 f'4 \forceBreak
) g'4 ( a'4 d'4) ~ d'4 ( c'4) d'4 ( a4) \divisioMinima
 c'4 ( d'4) f'4 ( f'4 d'4 c'4 d'4) f'4 ( f'4) g'4 ( f'4 f'4) d'4 ( e'4 d'4) \finalis

}

altoMusic = {
r2*8/2 e'2 ~ e'2*3/2 g'4 \divisioMaior
c'2*3/2 d'2 ~ d'2*3/2 ~ d'2 c'2*3/2 d'4 \divisioMaior
g'2*11/4 ~ g'2*4/2 \divisioMinima
e'2*3/2 ~ e'2*5/4 f'2*3/2 e'2 ~ e'4 \divisioMinima
c'2*3/2 ~ c'2*3/2 ~ c'2 b2 c'2*3/2 \finalis
r2*9/2 f'4 ~ f'2*4/2 ~ f'2 c'2*5/2 ~ c'2 \divisioMaior
f'2*3/2 g'2 ~ g'4 d'2*3/2 ~ d'4 g'4 ~ g'2*3/2 f'2 ~ f'2*4/2 ~ \divisioMaxima
f'2 e'2 ~ e'2 c'2 ~ c'2*3/4 a2 ~ a2*3/2 ~ \divisioMinima
a4 c'2 d'2*3/2 ~ d'2 ~ d'2*4/2 ~ d'4 f'2*4/2 ~ f'2 ~ f'2*5/2 r4 f'2*3/2 ~ f'2 ~ f'2 c'2 ~ c'2 ~ c'4 g'2 f'2 ~ f'2 ~ f'2 d'2 c'2 ~ c'4 ~ \divisioMinima
c'2 ~ c'2*3/2 a2*3/4 ~ a2 ~ a4 \divisioMinima
d'2*3/2 ~ d'2*3/2 ~ d'2 c'2*4/2 a2 \divisioMaior
c'2*4/2 d'2*3/2 c'2*3/2 ~ \divisioMinima
c'2 ~ c'2*3/2 ~ c'2*3/2 ~ c'2 ~ c'2*3/4 ~ c'2*3/2 ~ c'2 a2*3/2 c'2 \divisioMinima
g2 a2*5/2 bes2 ~ bes2*3/2 a2 ~ a4 \finalis
}

tenorMusic = {
r2*5/2 d'2*3/2 ~ d'2 c'2*3/2 d'4 \divisioMaior
g2*3/2 ~ g2 d2*3/2 e2 ~ e2*3/2 g4 \divisioMaior
c'2*11/4 d'2*4/2 \divisioMinima
c'2*3/2 ~ c'2*5/4 ~ c'2*3/2 b2*3/2 \divisioMinima
a2*3/2 ~ a2*3/2 ~ a2 ~ a2 ~ a2*3/2 ~ \finalis
a2*5/2 d'4 ~ d'2 ~ d'2 c'2*4/2 ~ c'2 ~ c'2*5/2 a2 ~ \divisioMaior
a2*3/2 g2 c'4 ~ c'2*3/2 bes2 g2*3/2 d'2 c'2*4/2 \divisioMaxima
a2 ~ a2 c'2 a2 g2*3/4 ~ g2 f2*3/2 ~ \divisioMinima
f4 a2 ~ a2*3/2 c'2 ~ c'2*4/2 bes4 d'2*4/2 ~ d'2 ~ d'2*5/2 ~ d'4 c'2*3/2 ~ c'2 ~ c'2 r2*5/2 a2 ~ a2 g2 f2 ~ f2 d2 e4 \divisioMinima
g2 e2*3/2 f2*3/4 g2 f4 ~ \divisioMinima
f2*3/2 bes2*3/2 a2 g2*4/2 ~ g4 f4 ~ \divisioMaior
f2*4/2 ~ f2*3/2 ~ f2*3/2 ~ \divisioMinima
f2 ~ f2*3/2 ~ f2*3/2 g2*7/4 e2*3/2 ~ e2 ~ e2*3/2 d2 ~ \divisioMinima
d2 ~ d2*5/2 ~ d2 g2*3/2 ~ g2 f4 \finalis
}

bassMusic = {
c'2*3/2 ~ c'2 b2*3/2 a2 ~ a2*3/2 g4 \divisioMaior
c2*3/2 b,2 ~ b,2*3/2 a,2 ~ a,2*3/2 g,4 \divisioMaior
e2*11/4 g2*4/2 \divisioMinima
r2*3/2 c2*5/4 d2*3/2 e2*3/2 \divisioMinima
g2*3/2 f2*3/2 d2 ~ d2 a,2*3/2 \finalis
r2*6/2 c'2 bes2 a2*4/2 f2 e2*5/2 f2 \divisioMaior
d2*3/2 e2 ~ e4 g2*3/2 ~ g2 e2*3/2 d2 f2*4/2 ~ \divisioMaxima
f2 c2 ~ c2 d2 e2*3/4 d2 ~ d2*3/2 ~ \divisioMinima
d4 a2 d2*3/2 ~ d2 g2*4/2 ~ g4 r2*4/2 c2 bes2*5/2 b4 a2*3/2 g2 f2 ~ f2 d2 e4 ~ e2 d2 ~ d2 ~ d2 bes,2 c2 ~ c4 ~ \divisioMinima
c2 ~ c2*3/2 d2*3/4 ~ d2 ~ d4 \divisioMinima
c2*3/2 bes,2*3/2 ~ bes,2 c2*4/2 d2 \divisioMaior
a,2*4/2 bes,2*3/2 f,2*3/2 \divisioMinima
r2 e2*3/2 d2*3/2 c2*7/4 ~ c2*3/2 a,2 ~ a,2*3/2 f,2 \divisioMinima
e,2 d,2*5/2 g,2 ~ g,2*3/2 d2 ~ d4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Alleluia"
        "III"
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
