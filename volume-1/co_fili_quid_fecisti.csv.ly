\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.118
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Fili quid fecisti" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Fili quid fecisti"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Fili quid fecisti" }
    \line {}
  }
}

chantText = \lyricmode {
Fi -- li, 
\set stanza = " * " quid fe -- cí -- sti no -- bis sic? 
e -- _ go _ et Pa -- ter tu -- _ us do -- lén -- _ tes quæ -- re -- bá -- mus te. 
Et quid est quod me quæ -- re -- bá -- _ tis? 
ne -- sci -- e -- bá -- _ tis qui -- a in his quæ Pa -- tris me -- i sunt, o -- pór -- tet me es -- se? }

chantMusic = {
\tieDown   f'4 ( d'4 f'4) f'4 \divisioMinima
 f'4 f'4 ( e'4) g'4 ( a'4) a'4 a'4 ( f'4 g'4) g'4 e'4 ( f'4 d'4) \divisioMaior
 d'4 f'4 ( f'4) d'4 f'4 ( f'4) f'4 ( \once \tweak #'font-size #-4 d'  \forceBreak
) f'4 ( a'4) g'4  a'4 ( bes'4 a'4) ~ a'4 ( g'4) g'4 \divisioMinima
 g'4 f'4 ( e'4) f'4 ( \tiny e' d' 4) e'4 ( d'4) f'4 g'4 ( a'4) a'4 ( g'4 a'4) f'4 ( g'4 f'4) f'4 \divisioMaxima \forceBreak

 f'4  a'4 ( bes'4 a'4) a'4 g'4  a'4 ( bes'4 a'4) g'4 f'4 f'4 ( f'4) g'4 ( f'4) f'4 \divisioMaior
 f'4 a'4 g'4 g'4 c''4 ( c''4 \forceBreak
)  a'4 ( bes'4 a'4) \divisioMinima
 f'4 f'4 g'4 ( a'4) a'4 g'4 g'4 ( c''4) c''4 ( c''4 c''4) g'4 g'4 ( a'4 b'\prall c''4 b'4 a'4) a'4 ( g'4 a'4) \divisioMinima \forceBreak

 a'4 ( b'4) d'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) f'4 ( e'4 d'4) d'4 ( e'4 d'4) d'4 \finalis

}

altoMusic = {
a2*3/2 ~ a4 ~ \divisioMinima
a4 c'2 ~ c'2*3/2 ~ c'2*4/2 a2*3/2 ~ \divisioMaior
a2*4/2 ~ a2 d'2 ~ d'2*3/2 ~ d'2 e'2*3/2 c'4 ~ \divisioMinima
c'4 a2*5/2 ~ a2*3/2 ~ a2 e'2*3/2 c'2*3/2 ~ c'4 ~ \divisioMaxima
c'4 ~ c'2*3/2 d'2 ~ d'2*3/2 e'2 ~ e'2 d'2 ~ d'4 \divisioMaior
f'2*3/2 ~ f'4 e'2 f'2*3/2 ~ \divisioMinima
f'2 ~ f'2 e'2 ~ e'2 ~ e'2*3/2 g'4 ~ g'2*3/2 ~ g'2*3/2 e'2*3/2 ~ \divisioMinima
e'2 d'2 e'2 r2*3/2 a2*3/2 ~ a4 \finalis
}

tenorMusic = {
g2*3/2 f4 ~ \divisioMinima
f4 g2 ~ g2*3/2 f2*3/2 e4 ~ e2 f4 ~ \divisioMaior
f4 ~ f2*3/2 ~ f2 a2 ~ a2*3/2 g2 e2*4/2 ~ \divisioMinima
e4 f2 g2*3/2 f2*3/2 e2 c'2*3/2 bes2*3/2 a4 \divisioMaxima
r4 f2*3/2 ~ f2 g2*3/2 a2 ~ a2 ~ a2 ~ a4 \divisioMaior
c'2*3/2 ~ c'2*3/2 d'2*3/2 ~ \divisioMinima
d'2 c'2 ~ c'2 ~ c'2 ~ c'2*3/2 b4 c'2*3/2 d'2*3/2 c'2*3/2 \divisioMinima
a2 b2 c'2 a2*3/2 g2*3/2 f4 \finalis
}

bassMusic = {
d2*3/2 ~ d4 ~ \divisioMinima
d4 c2 a,2*3/2 ~ a,2*3/2 ~ a,4 d2 ~ d4 \divisioMaior
r4 e2*3/2 d2 c2 bes,2*3/2 ~ bes,2 c2*4/2 ~ \divisioMinima
c4 d2*5/2 ~ d2*3/2 c2 ~ c2*3/2 f2*3/2 ~ f4 \divisioMaxima
a,4 ~ a,2*3/2 bes,2 ~ bes,2*3/2 c2 d2 e2 d4 ~ \divisioMaior
d2*3/2 a2*3/2 d'2*3/2 \divisioMinima
r2 r2*4/2 b2 a2*3/2 ~ a4 e2*3/2 ~ e2*3/2 a2*3/2 \divisioMinima
c2 ~ c2 ~ c2 d2*3/2 ~ d2*3/2 ~ d4 \finalis
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
        "1"
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
