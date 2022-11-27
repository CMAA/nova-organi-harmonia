\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.317
%(volume.page)

global = {
 \key e \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Confessio" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Confessio"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Confessio" }
    \line {}
  }
}

chantText = \lyricmode {
Con -- fés -- si -- o 
\set stanza = " * " et pul -- _ chri -- _ tú -- do _ _ 
in _ con -- spé -- _ _ ctu e -- _ _ _ jus: 
sán -- cti -- tas _ _ et ma -- gni -- fi -- cén -- ti -- _ a 
in san -- cti -- fi -- ca -- ti -- ó -- _ ne _ _ _ e -- _ _ _ jus. _ _ _ _ }

chantMusic = {
\tieDown   f'4 f'4  g'4 ( a'\prall bes'4 a'4) a'4 ( a'4 g'4) \divisioMinima
 g'4 ( f'4) a'4 c''4 ( c''4 a'4) g'4 ( a'4) b'4 ( g'4 a'4) e'4 e'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( e'4) \divisioMaior
 d'4 ( f'4) g'4 ( e'4 \once \tweak #'font-size #-4 f' ) f'4 f'4 ( f'4) g'4 ( f'4) g'4 ( f'4 f'4) d'4 ( g'4 f'4 e'4) \divisioMinima
 f'4 ( f'4 f'4) g'4 ( a'4 g'4 d'4.) f'4 ( f'4 f'4) g'4 ( a'4 g'4 a'4) a'4 \divisioMaxima
 a'4 g'4  g'4 ( bes'4 a'4 g'4) a'4 ( f'4) ~ f'4 ( e'4) \divisioMinima
 f'4 ( g'4) f'4 ( g'4 \once \tweak #'font-size #-4 e' ) f'4 ( g'4) a'4 ( g'4 f'4)  g'4 ( bes'4 a'4 g'4 a'4) e'4 ( f'4) g'4 ( f'4 g'4) f'4 ( g'4 f'4 d'4) \divisioMaior
 e'4 ( f'4) e'4 ( \once \tweak #'font-size #-4 d' ) e'4 ( f'4) e'4 ( d'4) e'4 ( f'4) e'4 ( d'4)  f'4 ( a'4 bes'4 a'4 g'4) a'4 ( g'4 e'4) g'4 ( a'4 g'4.) a'4 ( g'4) a'4 ( g'4 f'4) ~ f'4 ( d'4) \divisioMinima
 f'4 ( f'4) ~ f'4 ( d'4) f'4 ( f'4 f'4) g'4 ( a'4 g'4 a'4) a'4 ( g'4 f'4 e'4) f'4 ( e'4.) g'4 ( f'4) g'4 ( f'4) ~ f'4 ( e'4) \finalis

}

altoMusic = {
r4 c'4 d'2*4/2 ~ d'2*3/2 \divisioMinima
c'2*3/2 e'2*3/2 d'2*5/2 ~ d'4 c'2*4/2 ~ c'2*3/2 ~ \divisioMaior
c'2*6/2 ~ c'2 ~ c'2 ~ c'2*3/2 ~ c'2*3/2 ~ c'4 \divisioMinima
a2*3/2 ~ a2*9/4 ~ a2*3/2 c'2*4/2 ~ c'4 \divisioMaxima
d'2 ~ d'2*5/2 c'2*3/2 \divisioMinima
bes2 a2*5/2 e'2*3/2 d'2*5/2 c'2 ~ c'2*3/2 a2*4/2 ~ \divisioMaior
a2 ~ a2*6/2 ~ a2*4/2 d'2 ~ d'2*3/2 e'2*3/2 c'2*7/4 ~ c'2 ~ c'2 a2 ~ a4 ~ \divisioMinima
a2 ~ a2 ~ a2*3/2 c'2*4/2 ~ c'2*13/4 b2*3/2 c'2*3/2 \finalis
}

tenorMusic = {
r4 c'4 ~ c'2*4/2 bes2*3/2 \divisioMinima
c'2*3/2 ~ c'2*3/2 b2*5/2 a4 ~ a2*4/2 ~ a2*3/2 \divisioMaior
f2 e2*4/2 d2 c2 f2*3/2 g2*3/2 a4 \divisioMinima
f2*3/2 e2*9/4 d2*3/2 e2*4/2 f4 ~ \divisioMaxima
f2 g2*5/2 ~ g2*3/2 \divisioMinima
f2 ~ f2*5/2 ~ f2*3/2 ~ f2*5/2 ~ f2 e2*3/2 f2*4/2 ~ \divisioMaior
f2 g2*6/2 f2*4/2 ~ f2 g2*3/2 ~ g2*3/2 e2*7/4 ~ e2 g2 ~ g2 f4 \divisioMinima
a2 g2 f2*3/2 e2*4/2 ~ e2*13/4 d2*3/2 a2*3/2 \finalis
}

bassMusic = {
a4 ~ a4 g2*4/2 ~ g2*3/2 \divisioMinima
a2*3/2 ~ a2*3/2 ~ a2*5/2 ~ a4 ~ a2*4/2 a,2*3/2 ~ \divisioMaior
a,2*6/2 ~ a,2 ~ a,2 ~ a,2*3/2 ~ a,2*3/2 ~ a,4 \divisioMinima
d2*3/2 ~ d2*9/4 ~ d2*3/2 c2*4/2 f,4 \divisioMaxima
bes,2 ~ bes,2*5/2 c2*3/2 \divisioMinima
d2 ~ d2*5/2 c2*3/2 bes,2*5/2 a,2 ~ a,2*3/2 d2*4/2 ~ \divisioMaior
d2 ~ d2*6/2 ~ d2*4/2 bes,2 ~ bes,2*3/2 c2*3/2 ~ c2*7/4 a,2 ~ a,2 d2 ~ d4 ~ \divisioMinima
d2 ~ d2 ~ d2*3/2 c2*4/2 a,2*13/4 ~ a,2*3/2 ~ a,2*3/2 \finalis
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
