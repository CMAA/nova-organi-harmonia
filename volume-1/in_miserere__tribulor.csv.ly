\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.294
%(volume.page)

global = {
 \key ees \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Miserere... tribulor" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Miserere... tribulor"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Miserere... tribulor" }
    \line {}
  }
}

chantText = \lyricmode {
Mi -- se -- re -- ré mi -- hi 
\set stanza = " * " Dó -- mi -- ne, 
quó -- ni -- _ am trí -- bu -- _ lor: 
lí -- be -- ra _ _ me, 
et é -- ri -- pe me de má -- ni -- bus in -- i -- mi -- có -- rum me -- ó -- _ rum, 
et a per -- se -- quén -- ti -- bus me: 
Dó -- mi -- ne, non con -- fún -- dar, 
quó -- ni -- _ am in -- vo -- cá -- vi te. Ps. 
In te Dó -- mi -- ne spe -- rá -- vi, non con -- fún -- dar in æ -- tér -- num: 
\set stanza = " * " 
in ju -- stí -- ti -- a tu -- a lí -- be -- ra me. 
Mi -- se -- ré -- re. }

chantMusic = {
\tieDown   g'4 bes'4 ( bes'4) g'4 ( g'4 f'4) g'4 ( ees'4) f'4 g'4  bes'4 ( bes'4 c''4) bes'4 bes'4 \divisioMaior
 bes'4 bes'4 ( bes'4) ~ bes'4 ( g'4) g'4 \forceBreak
 g'4 ( bes'4 a'4 g'4) a'4 ( g'4) ~ g'4 ( f'4 g'4) g'4 ( f'4) \divisioMaxima
 ees'4 ( f'4) g'4 ( f'4 g'4) bes'4 ( g'4) bes'4 ( bes'4) ~ bes'4 ( c''4) bes'4 \divisioMaior
 bes'4 bes'4 bes'4 ( d''4 c''4) bes'4 \forceBreak
 bes'4 ( bes'4 bes'4) \divisioMinima
 g'4 bes'4 bes'4 ( bes'4 bes'4) g'4 ( bes'4) g'4 bes'4 ( a'4) bes'4 bes'4 ( d''4 c''4) bes'4 g'4 ( bes'4 a'4) bes'4 ( bes'4) ~ bes'4 ( g'4 a'4) g'4 ( g'4 f'4) \divisioMaior \forceBreak

 g'4 ees'4 f'4 g'4 bes'4 ( bes'4) bes'4 bes'4 ( c''4 bes'4 bes'4) g'4 \divisioMaxima
 g'4 f'4 f'4 ( ees'4) bes'4 bes'4 bes'4 ( d''4 c''4) bes'4 \divisioMaior \forceBreak

 bes'4 bes'4 ( bes'4) ~ bes'4 ( g'4) g'4 g'4 ( a'4) f'4 ( g'4) g'4 ( bes'4 g'4 f'4 g'4) ees'4 ( f'4 ees'4) ees'4 \finalis
 ees'4 g'4 bes'4 bes'4 bes'4 bes'4 \forceBreak
 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 c''4 c''4 bes'4 \divisioMaxima
 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \forceBreak
 c''4 a'4 bes'4 g'4 \finalis
 g'4 bes'4 ( bes'4) g'4 ( g'4 f'4) g'4 ( ees'4) \finalis

}

altoMusic = {
r4 d'2 ~ d'2*3/2 ees'2*4/2 f'2*4/2 ~ f'4 ~ \divisioMaior
f'4 ees'2 d'2*3/2 ees'2*5/2 c'2*4/2 ~ c'2 \divisioMaxima
ees'2*5/2 d'2 g'2 f'2*3/2 ~ \divisioMaior
f'4 ~ f'4 ees'2*4/2 d'2*4/2 ~ d'4 c'2*3/2 f'2*3/2 ees'2*3/2 ~ ees'2*4/2 f'2*3/2 d'2 ees'2*3/2 c'2 ~ c'4 \divisioMaior
ees;2*4/2 f'2*3/2 d'2*4/2 ~ d'4 ~ \divisioMaxima
d'2 r4 ees'4 ~ ees'2 f'2*4/2 ~ \divisioMaior
f'4 ees'2 d'2*3/2 ~ d'2*4/2 ees'2*5/2 bes2*3/2 ~ bes4 \finalis
r2 f'2*4/2 ~ f'2*4/2 ees'2*4/2 d'2 ~ \divisioMaxima
d'2 g'2*3/2 f'2 ees'2 d'2 \finalis
r4 d'2 ~ d'2*3/2 ees'2 \finalis
}

tenorMusic = {
bes4 ~ bes2 ~ bes2*3/2 ~ bes2*4/2 ~ bes2*4/2 ~ bes4 ~ \divisioMaior
bes4 ~ bes2 ~ bes2*3/2 ~ bes2*5/2 ~ bes2*4/2 ~ bes4 a4 \divisioMaxima
bes2*5/2 ~ bes2 ~ bes2 ~ bes2*3/2 ~ \divisioMaior
bes4 f4 g2*4/2 ~ g2*4/2 ~ g4 ~ g2*3/2 ~ g2*3/2 ~ g2*3/2 bes2*4/2 ~ bes2*3/2 ~ bes2 ~ bes2*3/2 ~ bes2 a4 \divisioMaior
bes2*4/2 ~ bes2*3/2 ~ bes2*4/2 ~ bes4 ~ \divisioMaxima
bes2 ~ bes2 ~ bes2 ~ bes2*4/2 ~ \divisioMaior
bes4 ~ bes2 ~ bes2*3/2 ~ bes2*4/2 ~ bes2*5/2 f2*3/2 g4 \finalis
ees'2 ~ ees'2*4/2 d'2*4/2 c'2*4/2 g2 \divisioMaxima
bes2 ~ bes2*3/2 ~ bes2 ~ bes2 ~ bes2 ~ \finalis
bes4 ~ bes2 ~ bes2*3/2 ~ bes2 \finalis
}

bassMusic = {
g4 ~ g2 f2*3/2 ees2*4/2 ~ ees2*4/2 d4 \divisioMaior
g4 ~ g2 ~ g2*3/2 c2*5/2 ees2*4/2 f2 \divisioMaxima
g2*5/2 ~ g2 ees2 d2*3/2 ~ \divisioMaior
d4 ~ d4 c2*4/2 g2*4/2 f4 ees2*3/2 d2*3/2 c2*3/2 ~ c2*4/2 d2*3/2 g2 c2*3/2 f2 ~ f4 \divisioMaior
ees2*4/2 d2*3/2 g2*4/2 ~ g4 \divisioMaxima
r2 g2 ~ g2 d2*4/2 \divisioMaior
g4 ~ g2 ~ g2*3/2 bes,2*4/2 c2*5/2 ees2*3/2 ~ ees4 \finalis
r2*6/2 r2*10/2 \divisioMaxima
g2 ees2*3/2 d2 c2 g2 ~ \finalis
g4 ~ g2 f2*3/2 ees2 \finalis
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
