\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.212
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Benedicam Dominum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Benedicam Dominum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Benedicam Dominum" }
    \line {}
  }
}

chantText = \lyricmode {
Be -- ne -- dí -- cam Dó -- _ _ mi -- num, 
\set stanza = " * " 
qui mi -- hi trí -- bu -- it _ in -- tel -- lé -- _ _ _ _ ctum: 
pro -- vi -- dé -- bam De -- um 
in con -- spé -- ctu me -- _ _ _ o sem -- _ _ per: 
quó -- ni -- am _ a dex -- _ _ tris est mi -- hi, 
ne com -- mó -- _ _ _ _ _ _ _ _ _ ve -- ar. }

chantMusic = {
\tieDown   c'4 d'4  d'4 ( a'4 bes'4) a'4 ( \once \tweak #'font-size #-4 g' ) a'4 c''4 ( c''4) ~ c''4 ( a'4) a'4 ( g'4) a'4 \divisioMaior
 f'4 g'4 ( a'4 b'\prall c''4 a'4) a'4 a'4 a'4 ( g'4 a'4 \forceBreak
) f'4 ( g'4 a'4) ~ a'4 ( g'4) \divisioMinima
 f'4 g'4 ( a'4 \once \tweak #'font-size #-4 g' ) a'4 c''4 ( c''4) ~ c''4 ( g'4 f'4.) a'4 ( g'4) a'4 ( c''4 a'4 b'\prall c''4 a'4) a'4 \divisioMaxima
 f'4 g'4 a'4 c''4 \forceBreak
 c''4 ( d''4 c''4 a'4) a'4 \divisioMaior
 f'4 g'4 ( a'4) a'4 ( f'4 a'4) a'4 g'4 ( a'4) c''4 ( c''4) ~ c''4 ( g'4) ~ g'4 ( f'4) f'4  a'4 ( g'4) bes'4 ( a'4) ~ a'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( f'4) \divisioMaxima
 f'4 ( a'4 \forceBreak
) a'4 ( b'\prall c''4 b'4) b'4 ( c''4 a'4) b'4 ( g'4 f'4 g'4) \divisioMinima
 f'4 ( g'\prall a'4 g'4) a'4 ( f'4) g'4 ( f'4) a'4 ( c''4 a'4 b'\prall c''4) g'4 f'4 d'4 ( e'\prall f'4 e'4 d'4 e'4) d'4 ( c'4) \divisioMaior \forceBreak

 d'4 f'4 ( \once \tweak #'font-size #-4 e' ) f'4 ( d'4.) g'4 ( f'4) g'4 ( f'4) ~ f'4 ( d'4.) g'4 ( f'4) a'4 ( g'4 f'4) \divisioMinima
 f'4 ( f'4 f'4) g'4 ( f'4) g'4 ( f'4) ~ f'4 ( e'4) d'4 ( e'4 f'4 e'4 d'4 e'4) e'4 ( d'4) \finalis

}

altoMusic = {
r2 d'2*5/2 ~ d'4 c'2 ~ c'2 ~ c'2*3/2 ~ \divisioMaior
c'4 f'2*6/2 e'4 ~ e'2*5/2 ~ e'2*3/2 ~ \divisioMinima
e'4 ~ e'2*3/2 ~ e'4 ~ e'2 f'4 r2*5/4 d'2 e'2 ~ e'2*4/2 ~ e'4 \divisioMaxima
f'2 e'2 g'2*4/2 f'4 ~ \divisioMaior
f'4 g'2 f'2*4/2 e'2 f'2*3/2 r2*3/2 d'4 ~ d'2*3/2 f'2 \tiny f' \normalsize4 c'2 \divisioMaxima
f'2 e'2*4/2 g'2*3/2 f'2*4/2 ~ \divisioMinima
f'2*4/2 ~ f'2*4/2 ~ f'2 ~ f'2*3/2 d'2 a2*6/2 r2 \divisioMaior
a2*3/2 d'2*5/4 c'2*3/2 bes2*7/4 c'2*5/2 \divisioMinima
d'2*6/2 ~ d'2*3/2 a2*6/2 ~ a2 \finalis
}

tenorMusic = {
g2 f2*5/2 e4 ~ e2 f2 e2*3/2 \divisioMaior
a4 ~ a2*6/2 ~ a4 ~ a2*5/2 c'2*3/2 ~ \divisioMinima
c'4 ~ c'2*3/2 ~ c'4 ~ c'2 ~ c'2*7/4 b2 c'2 d'2*4/2 c'4 \divisioMaxima
a2 ~ a2 ~ a2*4/2 ~ a4 \divisioMaior
c'4 ~ c'2 ~ c'2*4/2 ~ c'2 ~ c'2*3/2 ~ c'2*3/2 bes4 ~ bes2*3/2 c'2*3/2 bes4 a4 \divisioMaxima
c'2 ~ c'2*4/2 a2*3/2 ~ a2 ~ a4 b4 \divisioMinima
c'2*4/2 ~ c'2*4/2 ~ c'2 ~ c'2*3/2 a2 f2*6/2 g2 \divisioMaior
f2*3/2 ~ f2*5/4 ~ f2*3/2 ~ f2*7/4 ~ f2*5/2 ~ \divisioMinima
f2*6/2 g2*3/2 ~ g2*6/2 f2 \finalis
}

bassMusic = {
e2 d2*5/2 ~ d4 a,2 ~ a,2 ~ a,2*3/2 ~ \divisioMaior
a,4 d2*6/2 ~ d4 c2*5/2 ~ c2*3/2 ~ \divisioMinima
c4 c'2*3/2 b4 a2 ~ a2*7/4 ~ a2 ~ a2 ~ a2*4/2 ~ a4 \divisioMaxima
d2 c2 e2*4/2 d4 ~ \divisioMaior
d4 e2 f2*4/2 c'2 a2*3/2 ~ a2*3/2 ~ a4 g2*3/2 f2*3/2 ~ f2 \divisioMaxima
a2 ~ a2*4/2 e2*3/2 d2 g4 ~ g4 \divisioMinima
a2*4/2 f2*4/2 e2 d2*3/2 ~ d2 ~ d2*6/2 e2 \divisioMaior
d2*3/2 bes,2*5/4 a,2*3/2 g,2*7/4 a,2*5/2 \divisioMinima
bes,2*6/2 ~ bes,2*3/2 d2*6/2 ~ d2 \finalis
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
