\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.148
%(volume.page)

global = {
 \key e \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Sperent in te" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Sperent in te"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Sperent in te" }
    \line {}
  }
}

chantText = \lyricmode {
Spe -- _ rent in te 
\set stanza = " * " o -- mnes, _ qui no -- vé -- runt _ _ no -- _ men tu -- _ um, Dó -- mi -- ne: 
quó -- ni -- am non de -- _ re -- lín -- quis _ quæ -- rén -- _ tes _ _ te: 
psál -- _ li -- te Dó -- mi -- no, 
qui há -- _ bi -- tat _ in Si -- on: 
quó -- ni -- am non _ est o -- blí -- _ tus o -- ra -- ti -- ó -- _ nem páu -- pe -- rum. }

chantMusic = {
\tieDown   g'4 ( a'4) c''4 ( b'4 c''4) b'4 b'4 ( \once \tweak #'font-size #-4 c'' ) b'4 \divisioMinima
 b'4 ( d''4 c''4) b'4 c''4 ( c''4 c''4) a'4 g'4 ( a'4 g'4) a'4 a'4 ( b'4) c''4 ( a'4) ~ a'4 ( g'4) \divisioMinima \forceBreak

 g'4 ( a'4) c''4 ( b'4 c''4) c''4 c''4 ( a'4) d''4 ( c''4) c''4 b'4 b'4 ( d''4 c''4 b'4) b'4 \divisioMaxima
 g'4 a'4 ( b'4 a'4) a'4 ( b'4) g'4 ( a'4 c''4 \forceBreak
) c''4 ( c''4) ~ c''4 ( b'4 a'4) g'4 ( a'4 g'4 f'4) g'4 ( a'4) g'4 ( a'4 g'4) ~ g'4 ( f'4) \divisioMinima
 g'4 g'4 ( a'4) c''4 ( b'4 c''4) g'4 a'4 ( b'\prall c''4 b'4 a'4) b'4 ( a'4 g'4 a'4 \forceBreak
) a'4 ( g'4) \divisioMaxima
 g'4 ( a'4) c''4 ( \once \tweak #'font-size #-4 b' ) c''4 ( c''4 c''4) a'4 c''4 ( a'4 b'\prall c''4) g'4 ( a'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMaior
 g'4 g'4 ( a'4) b'4 ( a'4 b'\prall c''4 b'4 a'4 g'4) g'4 \forceBreak
 g'4 ( a'4) b'4 ( a'4 b'\prall c''4 b'4 a'4 g'4) \divisioMinima
 g'4 ( a'4 b'\prall c''4 b'4 a'4) f'4 ( g'4 f'4) f'4 ( f'4 f'4) \divisioMaxima
 e'4 ( d'4) g'4 g'4 g'4 ( a'4) b'4 ( a'4 b'4) g'4 ( a'4) f'4 \forceBreak
 e'4 ( f'4 g'4) a'4 ( g'4 a'4) f'4 ( d'4 f'4) \divisioMinima
 c'4 d'4 f'4 f'4 ( e'4 g'4) a'4 ( a'4 c''4) g'4 ( a'4) e'4 e'4 ( g'4 f'4 e'4) e'4 \finalis

}

altoMusic = {
e'2 ~ e'2*4/2 ~ e'2 ~ e'4 ~ \divisioMinima
e'2*4/2 ~ e'2*4/2 ~ e'2*3/2 ~ e'4 ~ e'2*3/2 d'2 ~ d'4 ~ \divisioMinima
d'2 g'2*4/2 f'2 e'2 ~ e'2 ~ e'2*4/2 ~ e'4 ~ \divisioMaxima
e'4 ~ e'2*3/2 ~ e'2 d'2*3/2 c'2 ~ c'2*3/2 ~ c'2 ~ c'2 ~ c'2 ~ c'2 ~ c'2*4/2 ~ c'2 ~ c'2*4/2 f'2 ~ f'2*3/2 e'2*4/2 d'2 \divisioMaxima
c'2*4/2 ~ c'2*4/2 ~ c'2*4/2 ~ c'2*5/2 a2 ~ \divisioMaior
a4 b2 e'2*3/2 ~ e'2*3/2 ~ e'2 d'2*5/2 c'2*3/2 b4 \divisioMinima
e'2*3/2 ~ e'2*3/2 ~ e'2*3/2 d'2*3/2 \divisioMaxima
b2*4/2 ~ b2 e'2*3/2 d'2*3/2 ~ d'2*3/2 c'2*3/2 ~ c'2*3/2 ~ \divisioMinima
c'2*3/2 ~ c'2*3/2 ~ c'2*3/2 ~ c'2 ~ c'4 b2*4/2 c'4 \finalis
}

tenorMusic = {
c'2 a2*4/2 ~ a2 g4 ~ \divisioMinima
g2*4/2 a2*4/2 b2*3/2 c'4 ~ c'2*3/2 ~ c'2 b4 ~ \divisioMinima
b2 a2*4/2 ~ a2 ~ a2 ~ a2 g2*4/2 ~ g4 \divisioMaxima
r4 a2*3/2 e2 ~ e2*3/2 ~ e2 f2*3/2 ~ f2 d2 e2 ~ e2 f2*3/2 ~ \divisioMinima
f4 e2 g2*4/2 f2 ~ f2*3/2 a2*4/2 d2 \divisioMaxima
e2*4/2 ~ e2*4/2 f2*4/2 e2*5/2 f2 ~ \divisioMaior
f4 e2 g2*3/2 a2*3/2 e2 g2*5/2 ~ g2*3/2 ~ g4 \divisioMinima
b2*3/2 a2*3/2 ~ a2*3/2 ~ a2*3/2 \divisioMaxima
g2*4/2 ~ g2 ~ g2*3/2 a2*3/2 g2*3/2 e2*3/2 d2*3/2 \divisioMinima
f2*3/2 g2*3/2 e2*3/2 ~ e2 ~ e4 d2*4/2 a4 \finalis
}

bassMusic = {
r2*6/2 e2 ~ e4 ~ \divisioMinima
e2*4/2 c2*4/2 ~ c2*3/2 ~ c4 f2*3/2 g2 ~ g4 \divisioMinima
e2 ~ e2*4/2 d2 a,2 ~ a,4 e4 ~ e2*4/2 ~ e4 \divisioMaxima
r4 c2*3/2 ~ c2 b,2*3/2 a,2 ~ a,2*3/2 c2 ~ c2 ~ c2 a,2 ~ a,2*3/2 ~ \divisioMinima
a,4 c2 e2*4/2 ~ e2 d2*3/2 c2*4/2 b,2 \divisioMaxima
c2*4/2 a,2*4/2 ~ a,2*4/2 c2*5/2 d2*3/2 ~ d2 ~ d2*3/2 c2*3/2 ~ c2 b,2*5/2 e2*3/2 ~ e4 \divisioMinima
d2*3/2 c2*3/2 d2*3/2 ~ d2*3/2 \divisioMaxima
r2*4/2 e2 d2*3/2 c2*3/2 b,2*3/2 ~ b,2*3/2 a,2*3/2 ~ \divisioMinima
a,2*3/2 c2*3/2 ~ c2*3/2 b,2 a,4 ~ a,2*4/2 ~ a,4 \finalis
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
