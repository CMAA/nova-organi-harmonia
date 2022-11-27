\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.182
%(volume.page)

global = {
 \key e \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Amen dico vobis quod uni" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Amen dico vobis quod uni"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Amen dico vobis quod uni" }
    \line {}
  }
}

chantText = \lyricmode {
A -- men 
\set stanza = " * " di -- co vo -- _ bis: 
quod u -- ni ex mí -- ni -- mis me -- is fe -- cí -- stis, mi -- hi fe -- cí -- stis: 
ve -- ní -- te be -- ne -- dí -- cti Pa -- tris me -- i, 
pos -- si -- dé -- te præ -- pa -- rá -- tum vo -- bis re -- gnum 
ab in -- í -- ti -- o sǽ -- cu -- li. }

chantMusic = {
\tieDown   d'4 ( e'\prall f'4 e'4) f'4 ( g'4 f'4)  f'4 f'4 ( e'4) g'4 ( f'4) ~ f'4 ( e'4 d'4) d'4 ( e'\prall f'4) \divisioMaior
 f'4 ( d'4)  f'4 ( g'\prall a'4 bes'4) a'4 a'4 \forceBreak
 a'4 ( c''4) a'4 g'4 a'4 g'4 f'4 ( e'4) f'4 ( g'4) g'4 \divisioMinima
 a'4 f'4 f'4 ( e'4) d'4 ( e'4) d'4 \divisioMaxima
 f'4 g'4 ( a'4) a'4 ( f'4 \forceBreak
)  a'4 bes'4 c''4 a'4 c''4 ( d''4) c''4  a'4 ( bes'4) a'4 ( bes'4) \divisioMaior
 g'4 f'4  a'4 ( bes'4) a'4 ( bes'4) f'4 g'4 a'4 ( c''4) c''4 \forceBreak
 c''4 c''4 ( a'4)  bes'4 g'4 \divisioMaior
 g'4 g'4 ( e'4) g'4 ( a'4) g'4 ( a'4) g'4 e'4 e'4 ( g'4 f'4 f'4) f'4 ( e'4) \finalis

}

altoMusic = {
a2*4/2 ~ a2*3/2 ~ a4 ~ a2*3/2 ~ a2*4/2 ~ a2 ~ a4 ~ \divisioMaior
a2 d'2*6/2 ~ d'2*4/2 ~ d'2 ~ d'2 ~ d'2 ~ d'4 ~ \divisioMinima
d'2 c'2 a2 ~ a4 \divisioMaxima
r4 e'2 f'2 ~ f'2 e'2 f'2*3/2 ~ f'2 ~ f'2 \divisioMaior
d'2 ~ d'4 ~ d'2*5/2 c'2*3/2 d'4 ~ d'2 ~ d'2 ~ \divisioMaior
d'4 c'2 ~ c'2*5/2 ~ c'4 ~ c'2*4/2 ~ c'2 \finalis
}

tenorMusic = {
f2*4/2 ~ f2*3/2 ~ f4 g2*3/2 a2*4/2 g2 f4 ~ \divisioMaior
f2 ~ f2*6/2 ~ f2*4/2 g2 a2 g2 e4 \divisioMinima
f4 a4 ~ a2 g2 f4 \divisioMaxima
a4 ~ a2 ~ a2 ~ a2 g2 a2*3/2 bes2 d'2 \divisioMaior
a2 g4 f2*5/2 ~ f2*3/2 ~ f4 g2 ~ g2 \divisioMaior
f4 e2 ~ e2*5/2 f4 g2*4/2 a2 \finalis
}

bassMusic = {
r2*4/2 e2*3/2 d4 ~ d2*3/2 ~ d2*4/2 ~ d2 ~ d4 ~ \divisioMaior
d2 bes,2*6/2 d2*4/2 ~ d2 ~ d2 ~ d2 ~ d4 ~ \divisioMinima
d2 a,2 d2 ~ d4 ~ \divisioMaxima
d4 ~ d2 ~ d2 ~ d2 ~ d2 ~ d2*3/2 ~ d2 ~ d2 ~ \divisioMaior
d2 ~ d4 ~ d2*5/2 a,2*3/2 d4 ~ d2 bes,2 ~ \divisioMaior
bes,4 c2 a,2*5/2 ~ a,4 ~ a,2*4/2 ~ a,2 \finalis
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
