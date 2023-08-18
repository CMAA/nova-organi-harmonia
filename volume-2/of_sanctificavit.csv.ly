\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.232
%(volume.page)

global = {
 \key f \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Sanctificavit" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Sanctificavit"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Sanctificavit" }
    \line {}
  }
}

chantText = \lyricmode {
San -- cti -- fi -- cá -- vit _ 
\set stanza = " * " Mó -- y -- ses _ _ 
al -- tá -- re _ _ Dó -- mi -- no, 
óf -- fe -- rens su -- per il -- _ _ _ _ lud ho -- lo -- _ _ cáu -- sta, 
et ím -- mo -- lans ví -- cti -- mas: 
fe -- cit sa -- cri -- fí -- _ ci -- um ve -- sper -- tí -- num 
in o -- dó -- rem _ su -- a -- vi -- tá -- _ _ tis Dó -- mi -- no _ De -- o, 
in con -- spé -- _ _ _ ctu _ _ _ _ 
fi -- li -- ó -- rum Is -- ra -- el. _ _ _ _ }

chantMusic = {
\tieDown   f'4 ( g'4) f'4 g'4 ( a'4 g'4)  a'4 ( bes'4 a'4 g'4) a'4 ( g'4) a'4 ( g'4 f'4) \divisioMinima
 f'4 a'4 a'4 ( b'\prall c''4) d''4 ( c''4 c''4) a'4 ( b'4 a'4) \divisioMaior \forceBreak

 f'4 a'4 ( c''4) c''4. ~ c''4 ( c''4) ~ c''4 ( a'4) a'4 a'4 ( b'4 a'4) a'4 \divisioMaxima
 a'4 ( c''4) g'4 ( a'4) g'4 ( f'4 g'4) g'4 ( a'4 g'4 f'4) f'4 ( g'4 \forceBreak
)  a'4 ( g'4) ~ g'4 ( g'4) ~ g'4 ( g'4) ~ g'4 ( f'4) g'4 ( bes'4 a'4) a'4 \divisioMinima
 a'4 ( b'\prall c''4) g'4 c''4 ( c''4 a'4 g'4) ~ g'4 ( f'4 g'4) f'4 ( e'4 f'\prall g'4 a'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMaxima \forceBreak

 f'4 ( a'4 b'\prall c''4 d''4) c''4 ( d''4) c''4 ( b'4 a'4) c''4 ( c''4) c''4 ( d''4 e''4 d''4 c''4) c''4 ( d''4 c''4) c''4 \divisioMaior
 c''4 ( d''4) c''4 ( c''4 b'4) c''4 ( c''4 c''4 \forceBreak
) a'4 ( b'\prall c''4 b'4 g'4) a'4 c''4 ( c''4 c''4) c''4 ( d''4 c''4) c''4 c''4 ( d''4) c''4 ( \tiny b' a' 4) a'4 ( b'4 a'4) a'4 \divisioMaior
 a'4 a'4 ( f'4) a'4 ( c''4) c''4 \forceBreak
 d''4 ( c''4 c''4) c''4 c''4 a'4 a'4 ( g'4.) a'4 ( c''4 g'4) a'4 ( g'4 f'4 g'4) g'4 ( f'4) \divisioMinima
 a'4 ( b'\prall c''4) g'4 f'4 ( g'4) a'4 ( g'4 a'4) a'4 ( b'4 a'4) a'4 \divisioMaxima \forceBreak

 a'4 c''4 c''4 ( a'4) c''4 ( c''4 g'4) a'4. c''4 ( c''4 a'4 f'4) g'4 ( f'4) f'4 ( g'4 f'4 f'4) d'4 ( f'4) g'4 ( f'4) ~ f'4 ( g'4 d'4 c'4) d'4 ( e'4 d'4) \divisioMaior \forceBreak

 c'4 d'4 f'4 g'4 ( \once \tweak #'font-size #-4 f' ) f'4 g'4 ( a'4) a'4. g'4 ( a'4) c''4 ( c''4 a'4 g'4) ~ g'4 ( e'4.) f'4 ( g'4 e'4 f'\prall g'4 g'4 f'4) \finalis

}

altoMusic = {
r2*3/2 e'2*3/2 d'2*4/2 ~ d'2 ~ d'2*3/2 \divisioMinima
c'2 f'2*3/2 ~ f'2*3/2 e'2*3/2 \divisioMaior
f'4 ~ f'2 e'2*3/4 ~ e'2 d'2*3/2 ~ d'2*3/2 c'4 \divisioMaxima
e'2*4/2 d'2*3/2 c'2*4/2 ~ c'2 f'2 d'2 ~ d'2 ~ d'2 ~ d'2*3/2 ~ d'4 \divisioMinima
e'2*4/2 c'2*3/2 ~ c'2*4/2 d'2*4/2 e'2*4/2 c'2 \divisioMaxima
f'2*5/2 g'2 ~ g'2*3/2 e'2 a'2 ~ a'2*3/2 g'2*3/2 ~ g'4 ~ \divisioMaior
g'2 ~ g'2*3/2 f'2*3/2 e'2*6/2 ~ e'2*3/2 ~ e'2*4/2 d'2 f'2*3/2 e'2*3/2 ~ e'4 ~ \divisioMaior
e'4 c'2 f'2*3/2 g'2*4/2 f'2 ~ f'2*5/4 d'2*3/2 ~ d'2*4/2 c'2 \divisioMinima
e'2*4/2 d'2 ~ d'2*3/2 ~ d'2*3/2 c'4 \divisioMaxima
e'2 a'2 g'2*9/4 f'2*4/2 d'2 c'2 ~ c'2 d'2*3/2 bes2*5/2 a2 ~ a4 ~ \divisioMaior
a2 ~ a4 ~ a2 d'4 ~ d'2 c'2*7/4 ~ c'2*3/2 ~ c'2*7/4 ~ c'2 ~ c'2 bes2 a4 \finalis
}

tenorMusic = {
d'2*3/2 c'2*3/2 ~ c'2*4/2 bes2 a2*3/2 ~ \divisioMinima
a2 ~ a2*3/2 ~ a2*3/2 ~ a2*3/2 ~ \divisioMaior
a4 f2 a2*3/4 g2 f2*3/2 e2*3/2 ~ e4 \divisioMaxima
a2*4/2 ~ a2*3/2 g2*4/2 a2 c'2 ~ c'2 bes2 a2 e2*3/2 f4 \divisioMinima
e2*4/2 g2*3/2 a2*4/2 ~ a2*4/2 c'2*4/2 a2 \divisioMaxima
c'2*5/2 ~ c'2 d'2*3/2 c'2 ~ c'2 f'2*3/2 ~ f'2*3/2 e'4 ~ \divisioMaior
e'2 ~ e'2*3/2 d'2*3/2 ~ d'2*6/2 c'2*3/2 a2*4/2 ~ a2 ~ a2*3/2 ~ a2*3/2 ~ a4 ~ \divisioMaior
a4 ~ a2 c'2*3/2 a2*4/2 ~ a2 c'2*5/4 ~ c'2*3/2 bes2*4/2 a2 ~ \divisioMinima
a2*4/2 ~ a2 f2*3/2 e2*3/2 ~ e4 \divisioMaxima
a2 ~ a2 ~ a2*9/4 ~ a2*4/2 bes2 b2 a2 ~ a2*3/2 g2*5/2 ~ g2 f4 \divisioMaior
e2 d4 ~ d2 ~ d4 f2 ~ f2*7/4 ~ f2*3/2 e2*7/4 d2 c2 ~ c2 ~ c4 \finalis
}

bassMusic = {
r2*6/2 g2*4/2 ~ g2 d2*3/2 \divisioMinima
f2 e2*3/2 d2*3/2 c2*3/2 \divisioMaior
d4 ~ d2 a,2*3/4 ~ a,2 ~ a,2*3/2 ~ a,2*3/2 ~ a,4 \divisioMaxima
c2*4/2 d2*3/2 e2*4/2 f2 ~ f2 g2 ~ g2 d2 ~ d2*3/2 ~ d4 \divisioMinima
c2*4/2 e2*3/2 ~ e2*4/2 d2*4/2 c2*4/2 f2 \divisioMaxima
d2*5/2 e2 ~ e2*3/2 a2 f2 ~ f2*3/2 c'2*3/2 ~ c'4 \divisioMaior
b2 a2*3/2 ~ a2*3/2 ~ a2*6/2 ~ a2*3/2 g2*4/2 f2 d2*3/2 ~ d2*3/2 c4 ~ \divisioMaior
c4 f2 ~ f2*3/2 e2*4/2 d2 ~ d2*5/4 g2*3/2 ~ g2*4/2 a2 \divisioMinima
c2*4/2 d2 ~ d2*3/2 a,2*3/2 ~ a,4 \divisioMaxima
c2 f2 e2*9/4 d2*4/2 bes2 f2 ~ f2 ~ f2*3/2 d2*5/2 ~ d2 ~ d4 ~ \divisioMaior
d2 ~ d4 c2 bes,4 ~ bes,2 f,2*7/4 a,2*3/2 c2*7/4 ~ c2 ~ c2 f,2 ~ f,4 \finalis
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
        "V"
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
