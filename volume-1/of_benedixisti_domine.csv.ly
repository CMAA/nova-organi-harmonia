\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.17
%(volume.page)

global = {
 \key e \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Benedixisti Domine" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Benedixisti Domine"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Benedixisti Domine" }
    \line {}
  }
}

chantText = \lyricmode {
Be -- ne -- dí -- xí -- _ _ _ sti, 
\set stanza = " * " Dó -- mi -- _ ne, ter -- _ _ _ _ ram _ tu -- am: 
a -- ver -- tí -- _ sti cap -- ti -- vi -- tá -- tem _ Ja -- cob: _ _ _ _ 
re -- mi -- sí -- sti in -- i -- qui -- tá -- tem ple -- _ _ _ _ bis tu -- æ. }

chantMusic = {
\tieDown  e'4 e'4 e'4 e'4 ( g'4 e'4) g'4 ( a'4 g'4) f'4 ( f'4 d'4) f'\prall ( g'4 f'4 e'4) e'4 \divisioMinima
 e'4 ( f'4 g'4)  f'4 ( a'4 g'4) a'4 ( bes'4) a'4 \divisioMinima \forceBreak

 c''4 ( a'4) c''4 ( g'4 f'4) ~ f'4 ( d'4.) f'4 ( g'4) a'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( \once \tweak #'font-size #-4 d' ) d'4 ( g'4 f'4 e'4) e'4 \divisioMaxima
 d'4 g'4  a'4 ( g'4) a'4 ( bes'4 a'4) \divisioMinima \forceBreak

 a'4 a'4 a'4 a'4 c''4 ( a'4) ~ a'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( a'4 g'4) d'4 ( g'4) a'4 ( f'4 d'4) g'4. ~ g'4 ( g'4) a'4 ( c''4 a'4) ~ a'4 ( g'4) \divisioMaxima
 d'4 ( g'4) g'4 a'4 ( b'4 a'4 \forceBreak
 g'4 a'\prall b'4 c''4) c''4 \divisioMinima
 c''4 c''4 b'4 ( a'4) c''4 ( d''4 c''4) b'4 ( \once \tweak #'font-size #-4 g' ) a'4. g'4 ( a'4 g'4 f'4) g'4 ( a'4.) g'4 ( a'4 g'4 f'4) g'4 ( a'4) g'4 e'4 ( g'4 f'4 f'4) f'4 ( e'4) \finalis

}

altoMusic = {
r2*3/2 c'2*6/2 ~ c'2*4/2 b2*3/2 c'4 \divisioMinima
e'2*3/2 c'2*3/2 f'2*3/2 \divisioMinima
c'2*4/2 ~ c'2*11/4 ~ c'2*4/2 a2*3/2 b2*4/2 c'4 \divisioMaxima
d'2 ~ d'4 ~ d'2*4/2 \divisioMinima
c'2*3/2 ~ c'2 ~ c'2*3/2 ~ c'2*3/2 d'2 ~ d'2*3/2 b2*3/4 c'2*4/2 d'2 ~ d'4 ~ \divisioMaxima
d'2*3/2 e'2*3/2 d'2*4/2 c'4 \divisioMinima
e'2*4/2 f'2*3/2 g'2 c'2*3/4 ~ c'2*4/2 ~ c'2*5/4 ~ c'2*4/2 ~ c'2*3/2 ~ c'2 ~ c'2 ~ c'2 \finalis
}

tenorMusic = {
r2*3/2 a2*6/2 ~ a2*4/2 ~ a2*3/2 ~ a4 ~ \divisioMinima
a2*3/2 ~ a2*3/2 f2*3/2 ~ \divisioMinima
f2*4/2 ~ f2*11/4 e2*4/2 f2*3/2 ~ f2*4/2 g4 \divisioMaxima
r2 e4 f2*4/2 ~ \divisioMinima
f2*3/2 ~ f2 ~ f2*3/2 e2*3/2 f2 ~ f2*3/2 d2*3/4 e2*4/2 d2 g4 ~ \divisioMaxima
g2*3/2 ~ g2*3/2 e2*4/2 ~ e4 \divisioMinima
a2*4/2 ~ a2*3/2 g2 f2*3/4 ~ f2*4/2 e2*5/4 f2*4/2 ~ f2*3/2 c2 d2 a2 \finalis
}

bassMusic = {
r2*9/2 d2*4/2 ~ d2*3/2 a4 \divisioMinima
c2*3/2 d2*3/2 ~ d2*3/2 \divisioMinima
a,2*4/2 d2*11/4 c2*4/2 d2*3/2 ~ d2*4/2 c4 \divisioMaxima
d2 ~ d4 ~ d2*7/2 e2 d2*3/2 ~ d2*3/2 ~ d2 c2*3/2 ~ c2*3/4 ~ c2*4/2 b,2 ~ b,4 \divisioMaxima
r2*3/2 c2*3/2 b,2*4/2 a,4 ~ \divisioMinima
a,2*4/2 e2*3/2 ~ e2 ~ e2*3/4 d2*4/2 ~ d2*5/4 ~ d2*4/2 a,2*3/2 ~ a,2 ~ a,2 ~ a,2 \finalis
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
