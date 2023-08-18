\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.281
%(volume.page)

global = {
 \key a \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Miserere... conculcavit" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Miserere... conculcavit"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Miserere... conculcavit" }
    \line {}
  }
}

chantText = \lyricmode {
Mi -- se -- ré -- re mi -- hi 
\set stanza = " * " Dó -- mi -- ne, 
quó -- ni -- am con -- cul -- cá -- vit me ho -- _ mo: 
to -- ta di -- e bel -- lans 
tri -- bu -- lá -- _ _ vit me. Ps. 
Con -- cul -- ca -- vé -- runt me in -- i -- mí -- ci me -- i to -- ta di -- e: 
\set stanza = " * " 
quó -- ni -- am mul -- ti bel -- lán -- tes ad -- vér -- sum me. 
Mi -- se -- ré -- re. }

chantMusic = {
\tieDown   e'4 ( f'4) d'4 ( g'4) a'4 g'4 ( b'4 a'4) b'4 g'4 ( b'4 a'4)  b'4 g'4 ( b'4 a'4) c''4 \divisioMaior
 c''4 c''4 ( b'4 c''4 a'4 \forceBreak
) c''4 ( b'4 c''4 a'4 g'4 a'4) \divisioMinima
 g'4 a'4 ( \once \tweak #'font-size #-4 b' ) b'4 ( b'4 c''4) a'4 ( \once \tweak #'font-size #-4 g' ) a'4 ( b'4) a'4. g'4 ( a'4 g'4) e'4 \divisioMaxima
 a'4 a'4 ( g'4 \forceBreak
) a'4 ( b'4 g'4 a'4) e'4 f'4 ( g'4 e'4 f'4) d'4 \divisioMaior
 f'4 ( e'4) f'4 ( g'4) g'4 ( a'4 f'4 g'4.) e'4 ( f'4 g'4) a'4 ( f'4 g'4) e'4 ( f'\prall g'4 f'4 e'4) e'4 \finalis \forceBreak

 g'4 a'4 ( c''4) c''4 c''4 c''4 c''4 c''4 c''4 c''4 c''4 c''4 c''4 d''4 c''4 b'4 ( a'4) c''4 ( c''4 c''4) \divisioMaxima \forceBreak

 b'4 ( g'4) a'4 ( c''4) c''4 c''4 c''4 c''4 c''4 c''4 ( c''4 b'4) a'4 ( g'4) a'4 b'4 g'4 ( a'4) \finalis
 e'4 ( f'4) d'4 ( a'4) a'4 g'4 ( b'4 a'4) \finalis

}

altoMusic = {
r2 d'2 ~ d'4 e'2*3/2 ~ e'4 d'2*3/2 ~ d'4 c'2*4/2 ~ \divisioMaior
c'4 ~ c'2*4/2 e'2*3/2 ~ e'2*3/2 ~ \divisioMinima
e'4 ~ e'2 ~ e'2*3/2 ~ e'2 ~ e'2 ~ e'2*3/4 b2*3/2 ~ b4 \divisioMaxima
e'4 ~ e'2 d'2*4/2 ~ d'4 c'2*4/2 a4 ~ \divisioMaior
a2*4/2 c'2*9/4 ~ c'2*3/2 ~ c'2*3/2 ~ c'2 b2*3/2 c'4 \finalis
d'4 e'2*3/2 ~ e'2*5/2 g'2*4/2 f'2 ~ f'2 e'2*3/2 \divisioMaxima
g'2 ~ g'2*6/2 ~ g'4 f'2*3/2 ~ f'2 e'2 ~ e'2 \finalis
r2 d'2 ~ d'4 e'2*3/2 \finalis
}

tenorMusic = {
g2 ~ g2 b4 ~ b2*3/2 a4 ~ a2*3/2 g4 ~ g2*4/2 \divisioMaior
f4 e2*4/2 a2*3/2 ~ a2*3/2 ~ \divisioMinima
a4 ~ a2 g2*3/2 ~ g2 ~ g2 a2*3/4 ~ a2*3/2 g4 ~ \divisioMaxima
g4 a2 ~ a2*4/2 g4 ~ g2*4/2 ~ g4 \divisioMaior
f2*4/2 ~ f2*9/4 g2*3/2 f2*3/2 g2 d2*3/2 a4 \finalis
r4 c'2*3/2 ~ c'2*5/2 ~ c'2*4/2 a2 d'2 c'2*3/2 \divisioMaxima
d'2 c'2*6/2 g4 a2*3/2 d'2 ~ d'2 c'2 \finalis
g2 ~ g2 b4 ~ b2*3/2 \finalis
}

bassMusic = {
c2 b,2 ~ b,4 c2*3/2 ~ c4 b,2*3/2 ~ b,4 a,2*4/2 ~ \divisioMaior
a,4 ~ a,2*4/2 ~ a,2*3/2 c2*3/2 ~ \divisioMinima
c4 e2 ~ e2*3/2 d2 c2 ~ c2*3/4 e2*3/2 ~ e4 \divisioMaxima
c4 ~ c2 b,2*4/2 ~ b,4 a,2*4/2 d4 ~ \divisioMaior
d2*4/2 a,2*9/4 ~ a,2*3/2 ~ a,2*3/2 ~ a,2 ~ a,2*3/2 ~ a,4 \finalis
b4 ~ b2*3/2 a2*5/2 e2*4/2 d2 ~ d2 a2*3/2 \divisioMaxima
e2 ~ e2*6/2 ~ e4 d2*3/2 ~ d2 a2 ~ a2 \finalis
c2 b,2 ~ b,4 c2*3/2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Introit"
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
