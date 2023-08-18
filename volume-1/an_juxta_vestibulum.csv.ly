\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.154
%(volume.page)

global = {
 \key e \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Juxta vestibulum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Juxta vestibulum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Juxta vestibulum" }
    \line {}
  }
}

chantText = \lyricmode {
Jux -- ta ve -- stí -- bu -- lum 
\set stanza = " * " et al -- tá -- _ re 
plo -- rá -- _ bunt sa -- cer -- dó -- tes 
et le -- ví -- tæ mi -- ní -- stri Dó -- mi -- ni, 
et _ _ di -- cent: 
Par -- ce Dó -- mi -- ne, par -- ce pó -- pu -- lo tu -- _ o: _ 
et ne dís -- si -- pes o -- ra cla -- mán -- ti -- um ad te, Dó -- _ _ mi -- _ ne. }

chantMusic = {
\tieDown   f'4 ( f'4 g'4) f'4 f'4 g'4 ( a'4 g'4 a'4) g'4 ( f'4) f'4 \divisioMinima
 f'4 ( f'4 f'4) d'4 ( e'4 f'4 e'4 c'4) d'4 ( f'4) g'4 ( f'4 g'4) e'4 ( e'4 f'4) \divisioMaior \forceBreak

 d'4 ( g'4)  a'4 ( g'4) a'4 ( bes'4) a'4 a'4 a'4 ( \once \tweak #'font-size #-4 g' ) a'4 ( a'4 g'4 a'4) e'4 \divisioMaior
 f'4 g'4 ( a'4 g'4) a'4 ( g'4 f'4 g'\prall a'4 g'4 a'4) a'4 ( g'4 \forceBreak
)  a'4 ( bes'4) a'4 a'4 ( g'4) a'4 g'4 f'4 ( g'4 f'4 d'4) \divisioMaior
  f'4 ( g'4 a'4) bes'4 ( g'4) a'4 ( g'4) e'4 ( g'4 f'4 f'4) f'4 ( e'4) \divisioMaxima
  a'4 ( a'4 bes'4) a'4 ( f'4 \forceBreak
) a'4 ( b'4) a'4 g'4 \divisioMinima
 f'4 ( g'4) g'4 g'4 ( a'4) f'4 f'4 ( e'4) f'4 ( d'4) f'4 ( e'4 d'4 e'4) c'4. d'4 ( f'4 d'4) f'4. \divisioMaxima \forceBreak

 c'4 d'4 f'4 ( g'4 a'4 g'4) f'4 g'4 ( a'4 g'4) \divisioMinima
  a'4 ( bes'4) a'4 a'4 a'4 g'4 f'4 ( e'4) d'4 ( g'4) g'4 \divisioMinima \forceBreak

 g'4 ( a'4 g'4) a'4 ( f'4 d'4 e'\prall f'4) g'4 ( f'4 f'4) f'4. d'4 ( f'4 g'4 f'4 e'4 f'4) f'4 ( e'4) \finalis

}

altoMusic = {
c'2*5/2 e'2*4/2 r2*3/2 \divisioMinima
d'2*3/2 ~ d'2*5/2 ~ d'2 ~ d'2*3/2 c'2*3/2 \divisioMaior
d'2 ~ d'2 ~ d'2*3/2 ~ d'4 c'2 ~ c'2*4/2 ~ c'4 ~ \divisioMaior
c'4 d'2*3/2 ~ d'2*4/2 ~ d'2*3/2 ~ d'2 ~ d'2*3/2 ~ d'2 c'2*6/2 ~ c'2*3/2 d'2*4/2 c'2*4/2 ~ c'2 d'2*5/2 ~ d'2*4/2 \divisioMinima
c'2*3/2 ~ c'2*3/2 ~ c'2 a2*6/2 g2*3/4 a2*9/4 \divisioMaxima
c'2 ~ c'2*5/2 ~ c'2 ~ c'4 d'2*4/2 c'2 ~ c'2 d'2 ~ d'4 \divisioMinima
c'2*3/2 ~ c'2 bes2*3/2 c'2*3/2 a2*3/4 ~ a2*6/2 c'2 \finalis
}

tenorMusic = {
a2*5/2 c'2*4/2 ~ c'2*3/2 \divisioMinima
bes2*3/2 b2 a2*3/2 ~ a2 g2*3/2 a2*3/2 ~ \divisioMaior
a2 g2 f2*3/2 ~ f4 e2 ~ e2*4/2 a4 ~ \divisioMaior
a4 ~ a2*3/2 g2*4/2 f2*3/2 ~ f2 ~ f2*3/2 ~ f2 ~ f2*6/2 g2*3/2 ~ g2*4/2 ~ g2*4/2 a2 f2*5/2 ~ f2*4/2 ~ \divisioMinima
f2*3/2 e2*3/2 f2 ~ f2*6/2 e2*3/4 f2*9/4 \divisioMaxima
g2 f2*5/2 ~ f2 e4 f2*4/2 ~ f2 a2 ~ a2 g4 \divisioMinima
e2*3/2 f2 ~ f2*3/2 ~ f2*3/2 g2*3/4 f2*6/2 a2 \finalis
}

bassMusic = {
r2*9/2 a2*3/2 ~ \divisioMinima
a2*3/2 g2 ~ g2*3/2 f2 e2*3/2 a,2*3/2 \divisioMaior
bes,2 ~ bes,2 ~ bes,2*3/2 c4 ~ c2 a,2*4/2 ~ a,4 ~ \divisioMaior
a,4 bes,2*3/2 ~ bes,2*4/2 ~ bes,2*3/2 d2 c2*3/2 bes,2 a,2*6/2 ~ a,2*3/2 g,2*4/2 a,2*4/2 ~ a,2 d2*5/2 bes,2*4/2 \divisioMinima
a,2*3/2 ~ a,2*3/2 ~ a,2 d2*6/2 ~ d2*3/4 ~ d2*9/4 \divisioMaxima
e2 d2*5/2 c2 ~ c4 bes,2*4/2 a,2 ~ a,2 bes,2 ~ bes,4 \divisioMinima
c2*3/2 a,2 g,2*3/2 a,2*3/2 d2*3/4 ~ d2*6/2 a,2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Antiphon"
        "4"
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
