\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.251
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Ecce quam bonum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Ecce quam bonum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Ecce quam bonum" }
    \line {}
  }
}

chantText = \lyricmode {
Ec -- _ _ ce 
\set stanza = " * " quam bo -- num, et quam _ ju -- cún -- _ dum 
ha -- bi -- tá -- re _ _ fra -- tres 
in u -- _ _ num! _ _ _ _ ℣. 
Sic -- ut un -- guén -- tum _ _ _ _ _ _ _ _ 
in cá -- pi -- te, _ _ _ _ _ _ 
quod de -- scén -- _ _ dit in bar -- _ _ _ _ _ bam, 
bar -- _ bam 
\set stanza = " * " A -- a -- ron. _ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown    d'4 ( a'4 bes'4 a'4 g'4) f'4 ( a'4 g'4) a'4 ( bes'4) a'4 \divisioMinima
 f'4 ( \once \tweak #'font-size #-4 a' ) a'4 g'4 ( a'4 g'4 e'4) \divisioMinima
 f'4 g'4 ( a'4 g'4) a'4 ( \once \tweak #'font-size #-4 f'  \forceBreak
) g'4 ( a'4) g'4 ( e'4) f'4 ( g'4 f'4 g'4) d'4 \divisioMaior
 a'4 c''4 ( c''4) c''4 ( d''4 c''4) c''4 ( b'4) c''4 ( b'4 a'4 b'4) ~ b'4 ( c''4) g'4 ( a'\prall b'4 c''4) b'4 ( a'4) \divisioMaior \forceBreak

 f'4 ( a'4)  a'4 ( g'4) c''4 ( c''4 a'4 g'4.) a'4 ( bes'4 g'4.) e'4 ( f'4 d'4) f'4 ( a'4.) g'4 ( a'4 g'4 e'4) f'4 ( g'4.) f'4 ( g'4 f'4 d'4) \finalis
 d'4 d'4 d'4 ( \once \tweak #'font-size #-4 a' ) a'4 \forceBreak
 a'4 ( c''4 a'4 g'4 f'4.) e'4 ( g'4) a'4 ( g'4 a'4) f'4 ( g'4 f'4 d'4) \divisioMinima
 c'4 ( d'4) f'4 ( d'4.) c'4 ( d'4) f'4 ( f'4) g'4 ( a'4 b'\prall c''4 b'4 a'4) \divisioMaior \forceBreak

 a'4 a'4 a'4 a'4 ( c''4 a'4 g'4 a'4) c''4 ( c''4) ~ c''4 ( a'4) c''4 ( c''4) ~ c''4 ( b'4 a'4) c''4 ( g'4) ~ g'4 ( f'4) \divisioMaxima
 a'4 ( d''4) d''4 ( c''4) c''4 ( e''4 d''4 c''4) d''4 ( c''4 c''4) ~ c''4 ( \once \tweak #'font-size #-4 a'  \forceBreak
) b'4 ( a'4) \divisioMinima
 f'4  a'4. f'4 ( a'4 g'4) a'4 ( bes'4 g'4 f'4.) g'4 ( f'4) g'4 ( a'4 f'4 f'4) ~ f'4 ( d'4 e'\prall f'4 e'4 f'4) e'4 ( d'4) \divisioMaxima
 d'4 f'4 ( f'4 f'4) g'4 ( f'4)  \forceBreak
 f'4 a'4 ( g'4 a'4) a'4 ( a'4 f'4) \divisioMinima
 a'4 ( g'4) a'4 ( f'4 d'4) g'4 ( f'4 f'4) ~ f'4 ( e'4 c'4.) d'4 ( d'4 c'4) d'4 ( a4) \divisioMinima
 c'4 ( d'4) f'4 ( f'4 d'4 c'4 d'4) f'4 ( f'4) g'4 ( f'4 f'4) d'4 ( e'4 d'4) \finalis

}

altoMusic = {
d'2*5/2 ~ d'2*3/2 ~ d'2 ~ d'4 \divisioMinima
c'2 d'4 ~ d'2*3/2 c'4 ~ \divisioMinima
c'4 ~ c'2*3/2 ~ c'2 d'2 ~ d'2 bes2*4/2 a4 \divisioMaior
d'4 e'2 a'2*3/2 g'2 f'2*3/2 e'2*3/2 g'2 ~ g'2 e'2 \divisioMaior
f'2*4/2 g'2*3/2 ~ g'2*3/4 d'2*7/4 c'2*3/2 ~ c'2*5/4 ~ c'2*13/4 d'2*3/2 ~ d'4 \finalis
r4 d'4 ~ d'2*3/2 e'2*4/2 f'2*3/4 e'2*5/2 f'2*4/2 \divisioMinima
r2*9/4 c'4 d'4 ~ d'2 g'2*3/2 e'2*3/2 ~ \divisioMaior
e'4 f'2 e'2*5/2 a'2 g'2 f'2 e'2*4/2 d'2*3/2 ~ \divisioMaxima
d'2 a'2 g'2*4/2 f'2*3/2 ~ f'2 e'2 \divisioMinima
f'4 ~ f'2*3/4 ~ f'2*3/2 d'2*9/4 ~ d'2 ~ d'2*4/2 bes2*6/2 a2 \divisioMaxima
r4 c'2*5/2 ~ c'4 d'2*3/2 c'2*3/2 ~ \divisioMinima
c'2 ~ c'2 d'4 ~ d'2*3/2 c'2 ~ c'2*3/4 a2*3/2 ~ a2 \divisioMinima
g2 a2*5/2 bes2 ~ bes2*3/2 a2 ~ a4 \finalis
}

tenorMusic = {
f2*5/2 a2*3/2 g2 f4 ~ \divisioMinima
f2 ~ f4 bes2*3/2 g4 ~ \divisioMinima
g4 ~ g2*3/2 f2 bes2 a2 g2*4/2 f4 ~ \divisioMaior
f4 a2 ~ a2*3/2 ~ a2 ~ a2*3/2 ~ a2*3/2 b2 d'2 ~ d'4 c'4 ~ \divisioMaior
c'2*4/2 ~ c'2*9/4 bes2*7/4 a2*3/2 ~ a2*5/4 ~ a2*13/4 ~ a2*3/2 f4 \finalis
r2*39/4 \divisioMinima
a2 ~ a2*5/4 ~ a2 ~ a2 c'2*3/2 ~ c'2*3/2 ~ \divisioMaior
c'4 ~ c'2 a2*5/2 ~ a2 ~ a2 ~ a2 ~ a2*4/2 ~ a2*3/2 ~ \divisioMaxima
a2 ~ a2 ~ a2*4/2 ~ a2*3/2 d'2 c'2 ~ \divisioMinima
c'4 ~ c'2*3/4 ~ c'2*3/2 ~ c'2*9/4 bes2 a2*4/2 g2*6/2 f2 \divisioMaxima
r4 f2*6/2 ~ f2*3/2 ~ f2*3/2 ~ \divisioMinima
f2 ~ f2*3/2 a2*3/2 ~ a2*7/4 e2*3/2 d2 ~ \divisioMinima
d2 ~ d2*5/2 ~ d2 g2*3/2 ~ g2 f4 \finalis
}

bassMusic = {
d2*5/2 ~ d2*3/2 ~ d2 ~ d4 \divisioMinima
a,2 bes,4 ~ bes,2*3/2 c4 ~ \divisioMinima
c4 e2*3/2 f2 d2 ~ d2 ~ d2*4/2 ~ d4 ~ \divisioMaior
d4 c2 f2*3/2 e2 d2*3/2 c2*3/2 e2 ~ e2 a2 \divisioMaior
d2*4/2 e2*9/4 g2*7/4 ~ g2*3/2 f2*5/4 e2*13/4 d2*3/2 ~ d4 \finalis
r2*5/2 a2*4/2 ~ a2*3/4 c'2*5/2 d'2*4/2 \divisioMinima
r2 f2*5/4 e2 d2 e2*3/2 a2*3/2 ~ \divisioMaior
a4 ~ a2 g2*5/2 f2 e2 d2 c2*4/2 d2*3/2 \divisioMaxima
f2 ~ f2 e2*4/2 d2*3/2 ~ d2 a2 ~ \divisioMinima
a4 f2*3/4 d2*3/2 g2*9/4 ~ g2 d2*4/2 ~ d2*6/2 ~ d2 \divisioMaxima
r4 a,2*5/2 ~ a,4 bes,2*3/2 g,2*3/2 \divisioMinima
r2 e2*3/2 d2*3/2 a,2*7/4 ~ a,2*3/2 f,2 \divisioMinima
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
        "Gradual"
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
