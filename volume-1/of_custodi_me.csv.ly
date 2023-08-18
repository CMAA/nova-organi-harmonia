\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.333
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Custodi me" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Custodi me"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Custodi me" }
    \line {}
  }
}

chantText = \lyricmode {
Cu -- stó -- di me, _ _ 
\set stanza = " * " Dó -- _ _ _ mi -- ne, 
de ma -- nu _ pec -- ca -- tó -- ris: 
et ab ho -- mí -- _ ni -- bus in -- í -- _ _ quis _ é -- ri -- pe _ me, 
Dó -- _ _ _ _ _ _ _ _ mi -- ne. }

chantMusic = {
\tieDown   d'4 d'4 c'4 ( d'4) f'4 ( f'4) ~ f'4 ( g'4 f'4 d'4) f'4 ( f'4) \divisioMinima
  c'4 ( f'4) a'4 ( a'4 g'4) a'4 ( bes'4 g'4 f'4)  g'4 ( a'4 b'\prall c''4 b'4 a'4 \forceBreak
) a'4 ( b'4 a'4) a'4 \divisioMaior
 f'4 ( g'4) f'4 ( a'4 b'\prall c''4) c''4 ( b'4) c''4 ( d''4 c''4) a'4 f'4 ( d'4) d'4 ( f'4 e'4 d'4) d'4 \divisioMaxima
 f'4 f'4 f'4 \forceBreak
  a'4 ( f'4) a'4 ( bes'4 g'4) f'4 ( e'4) f'4 f'4  f'4 ( a'4) bes'4 ( a'4 f'4) g'4 ( f'4 d'4) c'4 f'4 ( f'4 d'4) \divisioMinima
 f'4 f'4  a'4 ( f'4) a'4 ( bes'4 g'4) f'4 \divisioMaior \forceBreak

  f'4 ( a'4) bes'4 ( a'4 f'4) g'4 ( f'4 d'4) c'4 ( f'4) ~ f'4 ( d'4) c'4 ( f'4) \divisioMinima
  f'4 ( a'4) bes'4 ( a'4 f'4) g'4 ( f'4 d'4) d'4 ( e'\prall f'4 d'4) d'4 \finalis

}

altoMusic = {
r2*4/2 a2 bes2*4/2 a2 c'2 d'2*3/2 ~ d'2*4/2 e'2*6/2 f'2*3/2 e'4 \divisioMaior
f'2 ~ f'2*4/2 g'2 f'2*4/2 ~ f'4 r4 a2*4/2 ~ a4 \divisioMaxima
r2 f'4 ~ f'2 ~ f'2*3/2 ~ f'4 r2 d'4 ~ d'2 ~ d'2*3/2 ~ d'2 ~ d'4 g4 a2*3/2 \divisioMinima
f'2 ~ f'2 ~ f'2*3/2 ~ f'4 d'2 ~ d'2*3/2 c'2*3/2 ~ c'4 bes2*3/2 c'2 d'2 ~ d'2*3/2 ~ d'2 ~ d'4 a2*4/2 ~ a4 \finalis
}

tenorMusic = {
r4 f4 e2 d2 r2*4/2 r2 f2 ~ f2*3/2 ~ f2*4/2 a2*6/2 ~ a2*3/2 ~ a4 ~ \divisioMaior
a2 c'2*4/2 g2 a2*4/2 bes2 g2*4/2 f4 \divisioMaxima
d'2*3/2 c'2 bes2*3/2 a2*3/2 ~ a4 ~ a2 g2*3/2 a2*3/2 e4 f2*3/2 \divisioMinima
a2 c'2 bes2*3/2 a4 ~ a2 g2*3/2 ~ g2*4/2 ~ g2*3/2 f2 ~ f2 g2*3/2 bes2*3/2 g2*4/2 f4 \finalis
}

bassMusic = {
d4 ~ d4 ~ d2 ~ d2 ~ d2*4/2 ~ d2 a,2 bes,2*3/2 d2*4/2 c2*6/2 d2*3/2 c4 \divisioMaior
d2 ~ d2*4/2 e2 d2*4/2 ~ d2 ~ d2*4/2 ~ d4 ~ \divisioMaxima
d2*3/2 ~ d2 ~ d2*3/2 ~ d2*3/2 c4 bes,2 ~ bes,2*3/2 d2*3/2 ~ d4 ~ d2*3/2 ~ \divisioMinima
d2 ~ d2 ~ d2*3/2 ~ d4 bes,2 ~ bes,2*3/2 a,2*4/2 g,2*3/2 a,2 bes,2 ~ bes,2*3/2 ~ bes,2*3/2 d2*4/2 ~ d4 \finalis
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
