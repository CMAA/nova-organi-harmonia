\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.337
%(volume.page)

global = {
 \key g \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Dixit Jesus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Dixit Jesus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Dixit Jesus" }
    \line {}
  }
}

chantText = \lyricmode {
Di -- xit Je -- sus ma -- tri su -- æ: 
\set stanza = " * " Mú -- li -- er, ec -- ce fí -- li -- us tu -- us: 
de ín -- de di -- xit dis -- cí -- pu -- lo: Ec -- ce ma -- ter tu -- a. 
Et ex il -- la ho -- ra ac -- cé -- pit e -- am dis -- cí -- pu -- lus in su -- a. T.P. 
Al -- le -- lú -- _ ia. }

chantMusic = {
\tieDown   g'4 ( g'4) g'4 ( a'4) a'4 a'4 ( g'4 f'4) a'4 a'4 ( b'4) g'4 g'4 \divisioMinima
 g'4 a'4 ( b'4) b'4 b'4 ( a'4 b'\prall c''4) a'4 ( g'4) a'4 ( b'4) a'4 a'4 g'4 g'4 \divisioMaxima
 g'4 g'4 ( \once \tweak #'font-size #-4 a' ) g'4 g'4 g'4 ( e'4) f'4 ( g'4) f'4 e'4 ( f'4 e'4 d'4 e'4) e'4 ( d'4) \divisioMinima
 f'4 ( f'4 d'4) e'4 ( f'4) g'4 ( a'4) a'4 g'4 g'4 \divisioMaxima
 g'4 g'4 a'4 g'4 f'4 ( g'\prall a'4) a'4 a'4 a'4 g'4 a'4 ( c''4) c''4 ( b'4 a'4) a'4 a'4 a'4 ( g'4) a'4 a'4 ( b'4) g'4 g'4 \divisioMaxima
 g'4 g'4 ( a'4 f'4 g'4) g'4 ( a'4) c''4 ( a'4 b'4) a'4 ( g'4) \finalis

}

altoMusic = {
e'2 ~ e'2*3/2 f'2*3/2 e'4 d'2 ~ d'2 \divisioMinima
g'2*4/2 ~ g'2*4/2 d'2 ~ d'2*4/2 ~ d'2 \divisioMaxima
r4 c'2*4/2 b2 d'2 a4 ~ a2*5/2 ~ a2 \divisioMinima
c'2*3/2 ~ c'2 ~ c'2*3/2 b2 \divisioMaxima
e'2 ~ e'2 f'2*5/2 e'2 f'2 g'2*4/2 f'4 e'2*3/2 d'2 ~ d'2 \divisioMaxima
r2*7/2 d'2*3/2 ~ d'2 \finalis
}

tenorMusic = {
c'2 ~ c'2*3/2 ~ c'2*3/2 ~ c'4 ~ c'2 b2 ~ \divisioMinima
b2*4/2 c'2*4/2 ~ c'2 ~ c'2*4/2 b2 \divisioMaxima
g4 ~ g2*4/2 ~ g2 a2 ~ a4 g2*5/2 f2 ~ \divisioMinima
f2*3/2 d2 ~ d2*3/2 ~ d2 \divisioMaxima
c'2 ~ c'2 ~ c'2*5/2 ~ c'2 ~ c'2 ~ c'2*4/2 ~ c'4 ~ c'2*3/2 ~ c'2 b2 \divisioMaxima
r4 c'2*4/2 ~ c'2 ~ c'2*3/2 b2 \finalis
}

bassMusic = {
r2 c2*3/2 f2*3/2 ~ f4 g2 ~ g2 \divisioMinima
e2*4/2 ~ e2*4/2 f2 g2*4/2 ~ g2 \divisioMaxima
r4 e2*4/2 ~ e2 d2 ~ d4 ~ d2*5/2 ~ d2 \divisioMinima
a,2*3/2 ~ a,2 g,2*3/2 ~ g,2 \divisioMaxima
r2 b2 a2*5/2 ~ a2 d2 e2*4/2 f4 ~ f2*3/2 g2 ~ g2 \divisioMaxima
r4 e2*4/2 f2 g2*3/2 ~ g2 \finalis
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
        "8"
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
