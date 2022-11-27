\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.153
%(volume.page)

global = {
 \key e \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Pro omnibus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Pro omnibus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Pro omnibus" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- _ _ ia, 
\set stanza = " * " 
al -- le -- lú -- _ _ ia. 
_ _ _ _ _ _ _ _ _ ℣. 
Pro ó -- mni -- bus _ _ mór -- tu -- us est Chri -- stus: 
ut et qui vi -- _ vunt, 
jam non si -- bi vi -- _ vant, 
sed e -- i qui pro i -- psis mór -- tu -- us est, 
\set stanza = " * " 
et re -- sur -- ré -- _ _ xit. 
_ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   g'4 ( a'4) g'4 g'4 ( e'4) f'4 ( e'4 d'4) e'4 ( \tiny d' c' 4) c'4 \divisioMaior
  g'4 ( a'4) g'4 g'4 ( e'4) f'4 ( e'4 d'4) e'4 ( \tiny d' c' 4) c'4 \divisioMaior
 e'4 ( f'4 e'4) g'4 ( a'4 g'4) a'4 ( b'4 g'4.) a'4 ( b'\prall c''4 b'4 a'4 g'4) \divisioMinima
 e'4 ( g'4 f'4 e'4 c'4) d'4 ( d'4 e'4.) g'4 ( f'4) a'4 ( g'4) ~ g'4 ( e'4) \finalis
 e'4 ( d'4) f'4 e'4 d'4 ( e'4 f'4 e'4) d'4 ( e'4 d'4) ~ d'4 ( c'4) \divisioMinima
 e'4 ( g'4) g'4 f'4 g'4 ( a'4 g'4) e'4 ( f'4 g'4) g'4 \divisioMaxima
 g'4 g'4 ( a'4) a'4 ( g'4) f'4 ( e'4 d'4) g'4 ( f'4 e'4) e'4 \divisioMaior
 g'4 a'4 ( b'4) b'4 a'4 ( b'4) c''4 ( b'4 a'4) b'4 ( a'4 g'4) g'4 \divisioMaxima
 c''4 ( b'4) c''4 a'4 g'4 ( a'4) g'4 e'4 ( f'\prall g'4 a'4) g'4 a'4 ( g'4) f'4 e'4 d'4 ( g'4) \divisioMaior
 g'4 g'4 ( a'4) g'4 g'4 ( e'4) f'4 ( e'4 d'4) e'4 ( d'4 c'4) c'4 \divisioMaior
 e'4 ( f'4 e'4) g'4 ( a'4 g'4) a'4 ( b'4 g'4.) a'4 ( b'\prall c''4 b'4 a'4 g'4) \divisioMinima
 e'4 ( g'4 f'4 e'4 c'4) d'4 ( d'4 e'4.) g'4 ( f'4) a'4 ( g'4) ~ g'4 ( e'4) \finalis

}

altoMusic = {
e'2*3/2 d'2 c'2*3/2 b2*3/2 c'4 ~ c'2*3/2 d'2 ~ d'2*3/2 a2*3/2 c'4 ~ \divisioMaior
c'2*3/2 d'2*3/2 ~ d'2*7/4 c'2*6/2 ~ \divisioMinima
c'2*4/2 ~ c'4 ~ c'2*7/4 ~ c'2*3/2 ~ c'2 ~ c'4 \finalis
a2 ~ a2 ~ a2*4/2 ~ a2*4/2 c'4 ~ \divisioMinima
c'2 ~ c'2 ~ c'2*3/2 ~ c'2*3/2 b4 \divisioMaxima
d'4 c'2 ~ c'2 a2*3/2 c'2*3/2 ~ c'4 \divisioMaior
d'2*3/2 e'2*3/2 ~ e'2*3/2 ~ e'2*3/2 ~ e'4 ~ \divisioMaxima
e'2 ~ e'2 d'2*3/2 c'2*4/2 d'4 c'2 a2 ~ a2 \divisioMaior
c'4 ~ c'2*3/2 ~ c'2 a2*3/2 ~ a2*3/2 c'4 ~ \divisioMaior
c'2*3/2 ~ c'2*5/2 d'2*3/4 c'2*4/2 d'2 \divisioMinima
c'2*3/2 ~ c'4 ~ c'4 a2 ~ a2*3/4 ~ a2*3/2 c'2*3/2 \finalis
}

tenorMusic = {
c'2*3/2 b2 a2*3/2 g2*3/2 a4 ~ a2*3/2 b2 a2*3/2 g2*3/2 ~ g4 ~ \divisioMaior
g2*3/2 d2*3/2 g2*7/4 ~ g2*6/2 \divisioMinima
a2*5/2 g2*7/4 f2*3/2 g2 a4 ~ \finalis
a2 g2 f2*4/2 g2 ~ g2*3/2 \divisioMinima
a2 ~ a2 e2*3/2 c2*3/2 d4 ~ \divisioMaxima
d4 ~ d2 e2 f2*3/2 e2*3/2 g4 ~ \divisioMaior
g2*3/2 ~ g2*3/2 a2*3/2 ~ a2*3/2 b4 \divisioMaxima
g2 ~ g2 ~ g2*3/2 ~ g2*4/2 ~ g4 e2 f2 e2 ~ \divisioMaior
e4 ~ e2*3/2 ~ e2 d2*3/2 g2*3/2 ~ g4 ~ \divisioMaior
g2*3/2 ~ g2*5/2 d2*3/4 e2*4/2 g2 ~ \divisioMinima
g2*3/2 ~ g2 f2 ~ f2*3/4 ~ f2*3/2 a2*3/2 \finalis
}

bassMusic = {
r2*12/2 g2*3/2 ~ g2 d2*3/2 ~ d2*3/2 e4 \divisioMaior
c2*3/2 b,2*3/2 ~ b,2*7/4 a,2*6/2 ~ \divisioMinima
a,2*5/2 ~ a,2*7/4 ~ a,2*3/2 ~ a,2 ~ a,4 \finalis
d2 ~ d2 ~ d2*4/2 ~ d2 e2*3/2 \divisioMinima
r2 a,2 ~ a,2*3/2 ~ a,2*3/2 g,4 \divisioMaxima
b,4 c2 ~ c2 d2*3/2 c2*3/2 ~ c4 \divisioMaior
b,2*3/2 c2*3/2 ~ c2*3/2 e2*3/2 ~ e4 ~ \divisioMaxima
e2 c2 b,2*3/2 a,2*4/2 b,4 c2 d2 ~ d2 \divisioMaior
c4 b,2*3/2 a,2 d2*3/2 ~ d2*3/2 e4 \divisioMaior
c2*3/2 b,2*5/2 ~ b,2*3/4 a,2*4/2 b,2 \divisioMinima
c2*3/2 e2 f2 e2*3/4 d2*3/2 a,2*3/2 \finalis
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
