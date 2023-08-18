\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.69
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Ascendit Deus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Ascendit Deus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Ascendit Deus" }
    \line {}
  }
}

chantText = \lyricmode {
A -- scén -- dit 
\set stanza = " * " De -- _ _ us 
in _ ju -- _ bi -- la -- ti -- ó -- _ _ _ _ ne. _ 
Dó -- _ mi -- _ _ _ nus in vo -- _ _ ce tu -- bæ, 
al -- _ _ _ _ le -- _ _ _ _ _ _ _ lú -- ia. _ _ _ _ }

chantMusic = {
\tieDown   d'4 ( c'4 d'4) d'4 ( e'\prall f'4) g'4 ( a'4) \divisioMinima
 a'4 ( b'\prall c''4) d''4 ( b'4) c''4 ( a'4 g'4 a'\prall b'4 a'4 b'4) b'4 ( a'4) \divisioMaior
 d'4 ( a'4) b'4 ( a'4) a'4 ( c''4 a'4) ~ a'4 ( g'4 \forceBreak
) g'4 ( a'4 g'4 a'4) g'4 ( f'4 g'4) f'4 ( g'4) c''4 ( b'4) c''4 ( c''4) ~ c''4 ( g'4) c''4 ( b'4 a'4) ~ a'4 ( g'4) g'4 ( a'4 g'4) ~ g'4 ( f'4) \divisioMaxima
 d'4 ( a'4) b'4 ( a'4 \forceBreak
) a'4 c''4 ( c''4 a'4) c''4 ( g'4) ~ g'4 ( f'4 g'4) g'4 ( f'4) \divisioMinima
 a'4 ( \once \tweak #'font-size #-4 g' ) a'4 ( g'4) c''4 ( a'4) ~ a'4 ( f'4 g'4) f'4 ( d'4 f'4) f'4 ( g'4 f'4) f'4 ( g'4 f'4) \divisioMaior
 f'4 ( f'4) ~ f'4 ( d'4) f'4 ( f'4 \forceBreak
)  a'4 ( bes'4 a'4 g'4 f'4) ~ f'4 ( \once \tweak #'font-size #-4 e' ) g'4 ( a'4 g'4 f'4) g'4 ( e'4) f'4 ( d'4) \divisioMinima
 f'4 ( g'4 e'4) f'4 ( a'4 g'4 f'4) ~ f'4 ( d'4.) g'4 ( f'4) g'4 ( f'4 f'4 \forceBreak
) d'4 ( \once \tweak #'font-size #-4 c' ) d'4 f'4 ( f'4) ~ f'4 ( d'4) f'4 ( f'4 f'4) d'4 ( e'4 d'4) \finalis

}

altoMusic = {
r2*5/2 f'4 ~ f'2 \divisioMinima
e'2*3/2 ~ e'2 ~ e'2 d'2 e'2*3/2 ~ e'2 \divisioMaior
d'2*4/2 e'2 d'2*3/2 c'2*4/2 ~ c'2*3/2 ~ c'2 f'2 ~ f'2 g'2 e'2 d'2*3/2 e'2 d'2 ~ d'4 ~ \divisioMaxima
d'2 f'2 ~ f'4 g'2 e'2 ~ e'2*4/2 d'2 ~ \divisioMinima
d'2 c'2*3/2 ~ c'2*4/2 a2*3/2 bes2*3/2 a2*3/2 ~ \divisioMaior
a2 bes2 c'2 bes2*4/2 c'2*3/2 ~ c'2*4/2 a2 ~ a2 \divisioMinima
c'2*6/2 d'2*7/4 ~ d'2 a2*3/2 ~ a2*3/2 c'2 bes2 a2*3/2 ~ a2 ~ a4 \finalis
}

tenorMusic = {
a2*3/2 ~ a2*3/2 ~ a2 ~ \divisioMinima
a2*3/2 ~ a2 ~ a2 b2 d'2*3/2 c'2 \divisioMaior
f2*4/2 e2 ~ e2*3/2 ~ e2*4/2 d2*3/2 e2 d2 a2 g2 a2 b2*3/2 c'2 d'2 ~ d'4 \divisioMaxima
a2 ~ a2 c'4 ~ c'2 ~ c'2 a2*4/2 ~ a2 \divisioMinima
f2 e2*3/2 f2*4/2 ~ f2*3/2 ~ f2*3/2 ~ f2*3/2 ~ \divisioMaior
f2 ~ f2 ~ f2 ~ f2*4/2 g2*3/2 e2*4/2 ~ e2 d2 \divisioMinima
a2*6/2 ~ a2*7/4 e2 d2*3/2 e2*3/2 d2 ~ d2 ~ d2*3/2 g2 f4 \finalis
}

bassMusic = {
f2*3/2 e2*3/2 d2 \divisioMinima
c2*3/2 b,2 a,2 ~ a,2 ~ a,2*3/2 ~ a,2 \divisioMaior
d2*4/2 c2 b,2*3/2 a,2*4/2 ~ a,2*3/2 ~ a,2 d2 ~ d2 e2 a2 ~ a2*3/2 ~ a2 d'2 r4 \divisioMaxima
f2 d2 ~ d4 e2 c2 d2*4/2 ~ d2 \divisioMinima
c2 ~ c2*3/2 f2*4/2 e2*3/2 d2*3/2 ~ d2*3/2 \divisioMaior
f,2 g,2 a,2 d2*4/2 c2*3/2 ~ c2*4/2 ~ c2 d2 \divisioMinima
r2*6/2 d2*7/4 ~ d2 ~ d2*3/2 a,2*3/2 ~ a,2 g,2 d,2*3/2 ~ d,2 ~ d,4 \finalis
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
