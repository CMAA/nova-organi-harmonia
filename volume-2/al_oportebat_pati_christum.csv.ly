\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.48
%(volume.page)

global = {
 \key a \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Oportebat pati Christum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Oportebat pati Christum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Oportebat pati Christum" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ lú -- ia. 
\set stanza = " * " 
_ _ _ _ _ _ _ 
_ _ _ _ _ _ _ _ _ _ _ ℣. 
O -- por -- _ _ té -- _ bat pa -- _ _ _ ti Chri -- _ stum, 
et re -- súr -- ge -- re a mór -- _ _ tu -- is, 
et i -- _ ta in -- trá -- _ _ _ _ re 
in gló -- _ _ ri -- am 
\set stanza = " * " su -- am. _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   a'4 g'4 ( a'4 g'4 f'4) g'4 ( f'4 g'4) f'4 ( \once \tweak #'font-size #-4 a' ) a'4 \divisioMaior
 bes'4 ( g'4 a'4) g'4 ( a'4 f'4.) g'4 ( f'4 g'4) a'4 ( bes'4 a'4) \divisioMinima \forceBreak

 bes'4 ( g'4 a'4) g'4 ( a'4 f'4.) g'4 ( f'4 g'4) a'4 ( bes'4 a'4) \divisioMaior
 g'4 ( d''4) ~ d''4 ( c''4) d''4 ( c''4 bes'4) c''4 ( bes'4 a'4) \divisioMinima
 g'4 ( d''4) ~ d''4 ( c''4) d''4 ( c''4 bes'4) c''4 ( bes'4 a'4) \divisioMinima \forceBreak

 a'4 ( bes'4 c''4) ~ c''4 ( c''4 bes'4 g'4 f'4) g'4 ( g'4 a'4) \finalis
 a'4 g'4 ( a'4 g'4 f'4) g'4 ( f'4 g'4) f'4 ( a'4) a'4 ( bes'4) ~ bes'4 ( a'4) a'4 \divisioMinima
 a'4 ( bes'4) c''4 ( bes'4 c''4 \forceBreak
 a'4) ~ a'4 ( g'4) bes'4 ( a'4 g'4) f'4 ( a'4) a'4 ( bes'4) ~ bes'4 ( a'4) a'4 \divisioMaior
 a'4 a'4 ( g'4) a'4 g'4 ( f'4) g'4 ( f'4 e'4 d'4) \divisioMinima
 f'4 f'4 ( a'4 \forceBreak
) bes'4 ( a'4 g'4) a'4 ( g'4 f'4) g'4 ( a'4) a'4 \divisioMaxima
 f'4 ( a'4) a'4 ( c''4 bes'4) c''4 ( d''4 c''4 a'4) a'4 ( c''4 bes'4 a'4) \divisioMinima
 f'4 ( \once \tweak #'font-size #-4 a' ) a'4 bes'4 ( g'4 a'4 \forceBreak
) g'4 ( a'4 f'4.) g'4 ( f'4 g'4) a'4 ( bes'4 a'4 g'4 a'4) a'4 \divisioMaior
 f'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( c''4 bes'4) c''4 ( d''4 c''4 a'4) c''4 ( bes'4 a'4) g'4 ( a'4) g'4 ( f'4)  f'4 ( a'4) a'4. bes'4 ( g'4 a'4 \forceBreak
) g'4 ( a'4 f'4.) g'4 ( f'4 g'4) a'4 ( bes'4 a'4) \divisioMinima
 bes'4 ( g'4 a'4) g'4 ( a'4 f'4.) g'4 ( f'4 g'4) a'4 ( bes'4 a'4) \divisioMinima
 g'4 ( d''4) ~ d''4 ( c''4) d''4 ( c''4 bes'4) c''4 ( bes'4 a'4) \divisioMinima \forceBreak

 g'4 ( d''4) ~ d''4 ( c''4) d''4 ( c''4 bes'4) c''4 ( bes'4 a'4) \divisioMinima
 a'4 ( bes'4 c''4) ~ c''4 ( c''4 bes'4 g'4 f'4) g'4 ( g'4 a'4) \finalis

}

altoMusic = {
r4 d'2*4/2 c'2*3/2 d'2 ~ d'4 \divisioMaior
f'2*3/2 ~ f'2 ~ f'2*3/4 ~ f'2*3/2 ~ f'2*3/2 \divisioMinima
c'2*3/2 ~ c'2*7/4 d'2*3/2 c'2*3/2 \divisioMaior
r4 f'2*3/2 ~ f'2*3/2 d'2*3/2 \divisioMinima
r4 f'2*3/2 ~ f'2*3/2 e'2*3/2 \divisioMinima
d'2*3/2 ~ d'2*5/2 ~ d'2 ~ d'4 \finalis
r4 c'2*4/2 d'2*3/2 c'2 f'4 e'2*3/2 f'4 ~ \divisioMinima
f'2 ~ f'2*3/2 d'2*6/2 c'2 d'2*4/2 ~ d'4 ~ \divisioMaior
d'4 ~ d'2 e'4 ~ e'2 d'2*4/2 ~ \divisioMinima
d'4 ~ d'2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2 c'4 \divisioMaxima
f'2 ~ f'2*3/2 e'2*4/2 f'2*4/2 \divisioMinima
d'2*3/2 ~ d'2*3/2 c'2*7/4 ~ c'2*3/2 bes2*3/2 d'2 ~ d'4 \divisioMaior
f'2 ~ f'2*3/2 e'2*4/2 f'2*3/2 ~ f'2*3/2 ~ f'4 d'2 ~ d'2*3/4 ~ d'2*3/2 c'2*7/4 a2*3/2 d'2 ~ d'4 \divisioMinima
f'2*3/2 e'2 f'2*3/4 ~ f'2*3/2 ~ f'2*3/2 \divisioMinima
r4 f'2*3/2 ~ f'2*3/2 d'2*3/2 \divisioMinima
r4 f'2*3/2 ~ f'2*3/2 e'2*3/2 \divisioMinima
f'2*3/2 d'2*5/2 ~ d'2 ~ d'4 \finalis
}

tenorMusic = {
r4 bes2*4/2 a2*3/2 ~ a2 ~ a4 \divisioMaior
g2*3/2 d'2*7/4 bes2*3/2 a2*3/2 \divisioMinima
f2*3/2 ~ f2*7/4 ~ f2*3/2 ~ f2*3/2 \divisioMaior
a4 ~ a2*3/2 bes2*3/2 a2*3/2 ~ \divisioMinima
a4 ~ a2*3/2 bes2*3/2 g2*3/2 \divisioMinima
f2*3/2 g2*5/2 e2 f4 \finalis
r4 r2*4/2 bes2*3/2 c'2 d'4 ~ d'2*3/2 ~ d'4 ~ \divisioMinima
d'2 c'2*3/2 bes2*6/2 a2 ~ a4 g2*3/2 f4 ~ \divisioMaior
f4 ~ f2 e4 a2 ~ a2*4/2 ~ \divisioMinima
a4 ~ a2 g2*3/2 e2*3/2 ~ e2 ~ e4 \divisioMaxima
r2 f2*3/2 g2*4/2 a2*4/2 ~ \divisioMinima
a2 f4 ~ f2*3/2 ~ f2*7/4 ~ f2*3/2 ~ f2*3/2 e2 f4 \divisioMaior
a2 d'2*3/2 ~ d'2*4/2 ~ d'2*3/2 bes2 a2 ~ a2 f2*3/4 ~ f2*3/2 ~ f2*7/4 ~ f2*3/2 e2 f4 \divisioMinima
d'2*3/2 ~ d'2*7/4 bes2*3/2 c'2*3/2 \divisioMinima
a4 ~ a2*3/2 bes2*3/2 a2*3/2 ~ \divisioMinima
a4 ~ a2*3/2 bes2*3/2 g2*3/2 \divisioMinima
f2*3/2 g2*5/2 e2 f4 \finalis
}

bassMusic = {
r2*8/2 g2 f4 \divisioMaior
d2*3/2 ~ d2*7/4 ~ d2*3/2 ~ d2*3/2 \divisioMinima
r2*3/2 e2*7/4 d2*3/2 f2*3/2 \divisioMaior
e4 d2*3/2 ~ d2*3/2 f2*3/2 \divisioMinima
e4 d2*3/2 ~ d2*3/2 ~ d2*3/2 ~ \divisioMinima
d2*3/2 bes,2*5/2 d2 ~ d4 \finalis
r4 a2*4/2 ~ a2*3/2 ~ a2 d'4 r2*4/2 \divisioMinima
r2 a2*3/2 bes2*6/2 r2 f4 ~ f2*3/2 ~ f4 \divisioMaior
r4 bes,2 c4 ~ c2 d2*4/2 ~ \divisioMinima
d4 c2 bes,2*3/2 ~ bes,2*3/2 a,2 ~ a,4 \divisioMaxima
d2 ~ d2*3/2 ~ d2*4/2 ~ d2*4/2 \divisioMinima
c2 ~ c4 bes,2*3/2 a,2*7/4 d2*3/2 ~ d2*3/2 ~ d2 ~ d4 ~ \divisioMaior
d2 ~ d2*3/2 ~ d2*4/2 ~ d2*3/2 ~ d2 ~ d2 c2 ~ c2*3/4 bes,2*3/2 a,2*7/4 d2*3/2 ~ d2 ~ d4 ~ \divisioMinima
d2*3/2 ~ d2*7/4 ~ d2*3/2 f2*3/2 \divisioMinima
e4 d2*3/2 ~ d2*3/2 f2*3/2 \divisioMinima
e4 d2*3/2 ~ d2*3/2 ~ d2*3/2 ~ \divisioMinima
d2*3/2 bes,2*5/2 d2 ~ d4 \finalis
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
        "IV"
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
