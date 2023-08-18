\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.272
%(volume.page)

global = {
 \key g \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Dominus regit me" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Dominus regit me"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Dominus regit me" }
    \line {}
  }
}

chantText = \lyricmode {
Do -- mi -- nus 
\set stanza = " * " re -- git me, 
et ni -- hil mi -- hi dé -- e -- rit: 
in lo -- _ co pá -- _ scu -- æ 
i -- _ bi me col -- lo -- cá -- vit: 
su -- per a -- quam re -- fe -- cti -- ó -- nis _ 
e -- du -- cá -- _ _ vit _ me. }

chantMusic = {
\tieDown   bes'4 a'4 ( bes'4) g'4 ( a'\prall bes'4 a'4 f'4)  bes'4 ( c''4 bes'4 a'4) bes'4 ( c''\prall d''4 c''4 d''4) d''4 ( c''4) \divisioMaior
 c''4 d''4 c''4 bes'4 ( a'4) g'4 \forceBreak
 bes'4 ( a'4 bes'4) g'4 ( a'4 g'4 f'4 g'4) f'4 ( g'4 a'4 g'4) \divisioMaxima
 f'4 ( g'4) g'4 ( bes'4) ~ bes'4 ( c''4) bes'4 bes'4 ( a'4) bes'4 ( c''4) g'4 ( a'\prall bes'4 a'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMaior \forceBreak

 bes'4 ( a'4) bes'4 ( c''4) c''4 bes'4 ( bes'4 a'4 g'4) bes'4 ( g'4 a'\prall bes'4) bes'4 a'4 ( bes'4) bes'4 \divisioMaxima
 bes'4 ( a'4) bes'4 c''4 ( d''4) c''4 ( d''4 c''4) bes'4 bes'4 ( a'4) g'4 \forceBreak
 g'4 f'4 ( g'4 a'4) ~ a'4 ( g'4) \divisioMaior
 bes'4 ( a'4) bes'4 ( c''4) c''4. a'4 ( c''4 bes'4 a'4 g'4.) f'4 ( g'4) f'4 ( e'4 f'\prall g'4 f'4) g'4 ( a'4) g'4 \finalis

}

altoMusic = {
d'4 ~ d'2 ~ d'2 f'2*3/2 ~ f'2*4/2 ~ f'2*5/2 ~ f'2 ~ \divisioMaior
f'4 ~ f'2 ~ f'2*3/2 d'2*3/2 ~ d'2*5/2 c'2*3/2 d'4 ~ \divisioMaxima
d'2 ~ d'4 ~ d'2*4/2 f'2*4/2 d'2 ~ d'2*5/2 ~ d'2 ~ \divisioMaior
d'2 f'2 ~ f'4 d'2*4/2 ees'2*4/2 f'4 ~ f'2 ~ f'4 ~ \divisioMaxima
f'2*3/2 ~ f'2 ~ f'2*4/2 ~ f'2*3/2 d'4 ~ d'2 ~ d'2*3/2 \divisioMaior
f'2*4/2 ~ f'2*3/4 ~ f'2*4/2 d'2*3/4 ~ d'2 c'2*3/2 e'2 d'2 ~ d'4 \finalis
}

tenorMusic = {
r4 a2 bes2 c'2*3/2 ~ c'2*4/2 bes2*5/2 a2 ~ \divisioMaior
a4 bes2 c'2*3/2 ~ c'2*3/2 bes2*5/2 a2*3/2 bes4 ~ \divisioMaxima
bes2 ~ bes4 ~ bes2*4/2 c'2*4/2 ~ c'2 bes2*5/2 a2 \divisioMaior
g2 ~ g2 a4 bes2*4/2 ~ bes2*4/2 ~ bes4 c'2 bes4 \divisioMaxima
d'2*3/2 c'2 bes2*4/2 c'2*3/2 ~ c'4 a2 bes2*3/2 ~ \divisioMaior
bes2*4/2 a2*3/4 c'2*4/2 ~ c'2*3/4 bes2 g2*3/2 c'2 ~ c'2 bes4 \finalis
}

bassMusic = {
g4 ~ g2 ~ g2 f2*3/2 d2*4/2 ~ d2*5/2 f2 ~ \divisioMaior
f4 d2 ~ d2*3/2 g2*3/2 ~ g2*5/2 ~ g2*3/2 ~ g4 \divisioMaxima
r2 a4 g2*4/2 f2*4/2 g2 ~ g2*5/2 d2 \divisioMaior
r2 d2 ~ d4 g2*4/2 c2*4/2 d4 ~ d2 ~ d4 ~ \divisioMaxima
d2*3/2 ~ d2 ~ d2*4/2 ~ d2*3/2 g4 ~ g2 ~ g2*3/2 \divisioMaior
d2*4/2 ~ d2*3/4 ~ d2*4/2 g2*3/4 ~ g2 c2*3/2 ~ c2 g2 ~ g4 \finalis
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
        "II"
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
