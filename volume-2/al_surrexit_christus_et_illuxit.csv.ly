\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.56
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Surrexit Christus et illuxit" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Surrexit Christus et illuxit"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Surrexit Christus et illuxit" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ _ lú -- _ ia, 
\set stanza = " * " 
al -- le -- _ _ lú -- _ ia. 
_ _ _ _ _ _ 
_ _ _ _ _ _ ℣. 
Sur -- ré -- _ _ _ xit _ Chri -- stus, 
et _ _ _ il -- lú -- xit _ no -- bis, 
quos re -- dé -- _ _ _ _ _ _ mit 
sán -- _ _ _ gui -- ne 
\set stanza = " * " su o. _ _ _ _ 
_ _ _ _ _ _ }

chantMusic = {
\tieDown   c'4 ( \once \tweak #'font-size #-4 d' ) d'4 ( e'4) f'4 ( e'4) ~ e'4 ( d'4) g'4 ( e'4) f'4 ( g'4 f'4 e'4 e'4) d'4 \divisioMaior
 c'4 ( \once \tweak #'font-size #-4 d' ) d'4 ( e'4) f'4 ( e'4) ~ e'4 ( d'4) g'4 ( e'4 \forceBreak
) f'4 ( g'4 f'4 e'4 e'4) d'4 \divisioMaior
 f'4 ( g'\prall a'4 g'4) ~ g'4 ( e'4) g'4 ( f'4 e'4 d'4.) a'4 ( g'4) ~ g'4 ( e'4) g'4 ( f'4 e'4 d'4) \divisioMaior
 c'4 ( f'4 e'4 \forceBreak
) f'4 ( g'4 f'4 e'4 d'4.) c'4 ( e'4) g'4 ( f'4) ~ f'4 ( f'4 e'4 d'4) e'4 ( e'4 d'4) \finalis
 c'4 ( \once \tweak #'font-size #-4 d' ) d'4 ( e'4 f'4 e'4 d'4) ~ d'4 ( c'4) e'4 ( f'4 g'4) ~ g'4 ( f'4) e'4 ( d'4 \forceBreak
) f'4 ( f'4 e'4) d'4 ( e'4 d'4) d'4 \divisioMaior
  d'4 ( a'4 a'4) bes'4 ( a'4 g'4) a'4 ( g'4 e'4) f'4 ( e'4 d'4) c'4 e'4 ( f'4 g'4) g'4 ( f'4 e'4 d'4) f'4 ( g'4 f'4 e'4 f'4 \forceBreak
) d'4 ( e'4 f'4) e'4 ( d'4) \divisioMaxima
 a'4 g'4 ( a'4) c''4 ( d''4) c''4 ( d''4 c''4.) a'4 ( b'4 a'4) g'4 ( b'4.) g'4 ( c''4) b'4 ( c''4 a'4) b'4 ( b'4 a'4) a'4 \divisioMaior \forceBreak

 d'4 ( f'4) ~ f'4 ( e'4) f'4 ( f'4 e'4) g'4 ( f'4 e'4 f'4) d'4 ( e'4 f'4) e'4 ( d'4) \divisioMinima
 f'4 ( g'\prall a'4 g'4) g'4 ( e'4) g'4 ( f'4 e'4 d'4.) a'4 ( g'4) ~ g'4 ( e'4 \forceBreak
) g'4 ( f'4 e'4 d'4) \divisioMaior
 c'4 ( f'4 e'4) f'4 ( g'4 f'4 e'4 d'4.) c'4 ( e'4) g'4 ( f'4) ~ f'4 ( f'4 e'4 d'4) e'4 ( e'4 d'4) \finalis

}

altoMusic = {
g2 a2*3/2 ~ a2*3/2 c'2 ~ c'2*3/2 ~ c'2 a4 \divisioMaior
g2 a2*3/2 ~ a2*3/2 ~ a2 ~ a2*3/2 ~ a2 ~ a4 \divisioMaior
c'2*3/2 ~ c'2*3/2 a2*11/4 c'2*3/2 ~ c'2*3/2 r4 \divisioMaior
c'2*3/2 a2*4/2 ~ a2*3/4 c'2 ~ c'2 ~ c'2*4/2 a2 ~ a4 \finalis
r2*9/2 c'2 ~ c'2*5/2 a2*3/2 ~ a2*3/2 ~ a4 c'2*3/2 bes2*3/2 c'2*3/2 a2*4/2 ~ a2*3/2 ~ a2*4/2 ~ a2*5/2 ~ a2*3/2 ~ a2 \divisioMaxima
e'4 ~ e'2 ~ e'2 f'2*7/4 ~ f'2*3/2 g'2*5/4 ~ g'2 ~ g'2*3/2 e'2*3/2 ~ e'4 \divisioMaior
r4 c'2*3/2 ~ c'2*3/2 a2 ~ a2 ~ a2*3/2 ~ a2 \divisioMinima
c'2*4/2 ~ c'2 a2*3/2 ~ a2*5/4 c'2*3/2 ~ c'2*4/2 ~ \divisioMaior
c'2*3/2 a2*4/2 ~ a2*3/4 c'2 ~ c'2 a2*4/2 ~ a2 ~ a4 \finalis
}

tenorMusic = {
g2 ~ g2*3/2 f2*3/2 e2 a2*3/2 g2 f4 \divisioMaior
g2 ~ g2*3/2 f2*3/2 e2 d2*3/2 g2 f4 ~ \divisioMaior
f2*3/2 e2*3/2 f2*11/4 e2*3/2 a2*3/2 ~ a4 \divisioMaior
g2*3/2 ~ g2*4/2 f2*3/4 e2 d2 a2*4/2 g2 f4 \finalis
a2 ~ a2*4/2 ~ a2*3/2 ~ a2 ~ a2*5/2 ~ a2*3/2 g2*3/2 f4 ~ f2*3/2 ~ f2*3/2 e2*3/2 d2*4/2 ~ d2*3/2 e2*4/2 d2*5/2 g2*3/2 f2 \divisioMaxima
a4 b2 a2 ~ a2*7/4 c'2*3/2 b2*5/4 e'2 d'2*3/2 ~ d'2*3/2 c'4 \divisioMaior
a2*4/2 ~ a2*3/2 ~ a2 g2 ~ g2*3/2 f2 ~ \divisioMinima
f2*4/2 a2 ~ a2*3/2 f2*5/4 e2*3/2 a2*3/2 ~ a4 ~ \divisioMaior
a2*3/2 ~ a2*4/2 f2*3/4 e2 a2 ~ a2*4/2 g2 f4 \finalis
}

bassMusic = {
e2 d2*3/2 ~ d2*3/2 e2 ~ e2*3/2 ~ e2 f4 \divisioMaior
e2 d2*3/2 ~ d2*3/2 c2 d2*3/2 ~ d2 ~ d4 \divisioMaior
a,2*3/2 c2*3/2 d2*11/4 e2*3/2 ~ e2*3/2 f4 \divisioMaior
e2*3/2 d2*4/2 ~ d2*3/4 a,2 ~ a,2 ~ a,2*4/2 d2 ~ d4 \finalis
r2 g2*4/2 f2*3/2 ~ f2 e2*5/2 d2*3/2 g2*3/2 r4 a,2*3/2 g,2*3/2 c2*3/2 d2*4/2 c2*3/2 ~ c2*4/2 d2*5/2 ~ d2*3/2 ~ d2 \divisioMaxima
c4 ~ c2 ~ c2 d2*7/4 ~ d2*3/2 e2*5/4 ~ e2 ~ e2*3/2 a2*3/2 ~ a4 ~ \divisioMaior
a2*4/2 d2*3/2 c2 ~ c2 d2*3/2 ~ d2 \divisioMinima
a,2*4/2 ~ a,2 d2*3/2 ~ d2*5/4 e2*3/2 ~ e2*3/2 f4 \divisioMaior
r2*3/2 d2*4/2 c2*3/4 a,2 ~ a,2 d2*4/2 ~ d2 ~ d4 \finalis
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
        "I"
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
