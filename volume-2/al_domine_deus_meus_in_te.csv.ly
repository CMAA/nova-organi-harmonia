\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.130
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Domine Deus meus in te" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Domine Deus meus in te"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Domine Deus meus in te" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ lú -- _ ia, 
\set stanza = " * " 
al -- le -- _ lú -- _ ia. 
_ _ _ _ _ _ 
_ _ _ _ _ ℣. 
Dó -- mi -- ne _ _ De -- _ _ us me -- us, 
in te spe -- rá -- _ _ _ vi: 
sal -- _ _ vum me fac 
ex ó -- _ mni -- _ _ _ bus per -- _ _ se -- quén -- ti -- bus me, 
\set stanza = " * " 
et lí -- be -- ra _ _ me. _ _ _ _ _ _ 
_ _ _ _ _ }

chantMusic = {
\tieDown   d'4 ( \once \tweak #'font-size #-4 c' ) c'4 e'4 ( g'4 f'4 e'4 c'4 d'4) d'4 ( c'4) f'4 ( g'4 a'4 g'4 f'4 g'4) g'4 \divisioMaior
 d'4 ( \once \tweak #'font-size #-4 c' ) c'4 e'4 ( g'4 f'4 e'4 c'4 d'4 \forceBreak
) d'4 ( c'4) f'4 ( g'4 a'4 g'4 f'4 g'4) g'4 \divisioMaior
 a'4 ( g'4) a'4 ( g'4 f'4.) g'4 ( f'4) g'4 ( f'4 d'4) f'4 ( f'4 d'4) e'4. d'4 ( e'4 c'4) \divisioMaior \forceBreak

 e'4 g'4 ( g'4 a'4 g'4 f'4) g'4 ( f'4 e'4) f'4 ( f'4 d'4.) e'4 ( d'4 c'4) d'4 ( e'\prall f'4 d'4) \finalis
 a'4 g'4 ( a'4 g'4 f'4) e'4. c'4 ( e'4) g'4 ( f'4 e'4 \forceBreak
 c'4 d'\prall e'4 d'4 c'4 d'4) \divisioMinima
 d'4 f'4 ( f'4 e'4) g'4 ( g'4 a'4) f'4 ( e'4 d'4) c'4 ( d'4 e'\prall f'4 d'4) d'4 \divisioMaior
 d'4 ( e'4) g'4 ( a'4) g'4 ( a'4 \forceBreak
) a'4 ( b'\prall c''4) d''4 ( b'4) c''4 ( a'4 g'4.) a'4 ( b'\prall c''4 a'4) a'4 \divisioMaxima
 a'4 ( g'4) a'4 ( g'4 f'4) e'4 ( \once \tweak #'font-size #-4 d' ) f'4 ( g'4 a'4) f'4 ( e'4 d'4) c'4 ( d'4 e'\prall f'4 d'4) \divisioMaior \forceBreak

 d'4 ( e'4) g'4 ( a'4 g'4.) a'4 ( g'4 a'4) a'4 ( b'\prall c''4) d''4 ( b'4) c''4 ( a'4 g'4.) a'4 ( b'\prall c''4 a'4) a'4 \divisioMinima
 a'4 ( g'4) a'4 ( g'4 f'4) e'4 ( \once \tweak #'font-size #-4 d' ) f'4 g'4 ( a'4 \forceBreak
) f'4 ( e'4 d'4) c'4 ( d'4 e'\prall f'4 d'4) d'4 \divisioMaxima
 d'4 ( e'4) g'4 ( a'4) g'4 ( a'4) a'4 ( b'\prall c''4 d''4 b'4) c''4 ( a'4 g'4.) a'4 ( b'\prall c''4 a'4) a'4 \divisioMinima \forceBreak

 a'4 ( g'4) a'4 ( g'4 f'4.) g'4 ( f'4) g'4 ( f'4 d'4) f'4 ( f'4 d'4) e'4. d'4 ( e'4 c'4) \divisioMaior
 e'4 g'4 ( g'4 a'4 g'4 f'4) g'4 ( f'4 e'4) f'4 ( f'4 d'4.) e'4 ( d'4 c'4) d'4 ( e'\prall f'4 d'4) \finalis

}

altoMusic = {
r2 c'4 ~ c'2*4/2 ~ c'4 r2 c'4 ~ c'2 ~ c'2*4/2 ~ c'4 \divisioMaior
a2*3/2 c'2*4/2 ~ c'4 d'4 g2 c'2 ~ c'2*4/2 ~ c'4 ~ \divisioMaior
c'2 ~ c'2*7/4 ~ c'2 d'2 ~ d'4 a2*3/2 c'2*3/4 ~ c'2 ~ c'4 ~ \divisioMaior
c'4 ~ c'2 ~ c'2*3/2 d'2*3/2 ~ d'2 ~ d'2*3/4 c'2 ~ c'4 a2*3/2 ~ a4 ~ \finalis
a4 b2*4/2 c'2*7/4 ~ c'2*3/2 a2*5/2 ~ a4 ~ \divisioMinima
a4 c'2*3/2 ~ c'2*3/2 ~ c'2*3/2 a2*3/2 ~ a2 ~ a4 \divisioMaior
d'4 e'4 ~ e'2 g'2 ~ g'2*3/2 f'2 e'2*7/4 d'2*4/2 c'4 ~ \divisioMaxima
c'2*5/2 ~ c'2 ~ c'2*3/2 ~ c'2*3/2 a2*4/2 ~ a4 \divisioMaior
r2 c'2*7/4 g'2*3/2 f'2*3/2 ~ f'2 e'2*7/4 ~ e'2*4/2 ~ e'4 \divisioMinima
f'2*4/2 ~ f'4 r2*3/2 d'2 c'2*3/2 a2*5/2 ~ a4 ~ \divisioMaxima
a2 c'2 ~ c'2 e'2*3/2 ~ e'2 ~ e'2*7/4 d'2*4/2 c'4 ~ \divisioMinima
c'2 ~ c'2*7/4 d'2 ~ d'2*3/2 ~ d'2*3/2 c'2*3/4 ~ c'2 ~ c'4 ~ \divisioMaior
c'4 ~ c'2*5/2 bes2*3/2 a2*7/4 ~ a2*3/2 ~ a2*3/2 ~ a4 \finalis
}

tenorMusic = {
a2*3/2 g2*6/2 a2 ~ a2 f2*4/2 e4 \divisioMaior
f2*3/2 g2*6/2 e2 f2 ~ f2*4/2 e4 \divisioMaior
f2 ~ f2*7/4 ~ f2 bes,2*3/2 f2*3/2 g2*3/4 f2 e4 ~ \divisioMaior
e4 ~ e2 c'2*3/2 bes2*3/2 a2*7/4 g2*3/2 ~ g2*3/2 f4 \finalis
r4 r2*4/2 r2*3/4 g2 ~ g2*3/2 ~ g2*5/2 f4 ~ \divisioMinima
f4 g2*3/2 e2*3/2 f2*3/2 e2*3/2 g2 f4 \divisioMaior
g2 c'2 ~ c'2 a2*3/2 ~ a2 ~ a2*7/4 f2*4/2 e4 \divisioMaxima
f2*5/2 g2 a2*3/2 g2*3/2 ~ g2*4/2 f4 \divisioMaior
a2 g2*7/4 c'2*3/2 a2*3/2 ~ a2 ~ a2*7/4 d'2*4/2 c'4 \divisioMinima
d'2*5/2 c'2*3/2 bes2 a2*3/2 g2*5/2 f4 ~ \divisioMaxima
f2 ~ f2 e2 a2*3/2 ~ a2 ~ a2*7/4 f2*4/2 e4 ~ \divisioMinima
e2 f2*7/4 ~ f2 bes2*3/2 a2*3/2 g2*3/4 f2 e4 ~ \divisioMaior
e4 ~ e2*5/2 d2*3/2 ~ d2*7/4 g2*3/2 ~ g2*3/2 f4 \finalis
}

bassMusic = {
f2*3/2 c2*6/2 f2 d2 ~ d2*4/2 c4 \divisioMaior
r2*3/2 c2*6/2 ~ c2 a,2 d2*4/2 c4 \divisioMaior
r2 f,2*7/4 a,2*5/2 d2*3/2 c2*3/4 ~ c2 ~ c4 ~ \divisioMaior
c4 a,2 ~ a,2*3/2 d2*3/2 ~ d2*7/4 ~ d2*3/2 ~ d2*3/2 ~ d4 \finalis
a4 ~ a2*4/2 ~ a2*3/4 e2 c2*3/2 d2*5/2 ~ d4 ~ \divisioMinima
d4 c2*3/2 ~ c2*3/2 a,2*3/2 ~ a,2*3/2 ~ a,2 d4 \divisioMaior
c2 ~ c2 e2 d2*3/2 ~ d2 a,2*7/4 ~ a,2*4/2 ~ a,4 ~ \divisioMaxima
a,2*5/2 ~ a,2 ~ a,2*3/2 c2*3/2 d2*4/2 ~ d4 \divisioMaior
f2 ~ f2*7/4 e2*3/2 ~ e2*3/2 d2 a2*7/4 ~ a2*4/2 ~ a4 \divisioMinima
r2*19/2 \divisioMaxima
d2 c2 ~ c2 ~ c2*3/2 b,2 a,2*7/4 ~ a,2*4/2 ~ a,4 \divisioMinima
c2 a,2*7/4 bes,2 ~ bes,2*3/2 ~ bes,2*3/2 c2*3/4 ~ c2 ~ c4 ~ \divisioMaior
c4 a,2*5/2 d2*3/2 ~ d2*7/4 ~ d2*3/2 ~ d2*3/2 ~ d4 \finalis
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
