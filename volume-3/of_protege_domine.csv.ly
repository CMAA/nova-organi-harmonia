\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.345
%(volume.page)

global = {
 \key g \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Protege Domine" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Protege Domine"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Protege Domine" }
    \line {}
  }
}

chantText = \lyricmode {
Pró -- _ _ te -- ge, 
\set stanza = " * " Dó -- _ mi -- ne, _ _ _ ple -- bem tu -- am 
per si -- _ _ gnum _ san -- _ _ ctæ Cru -- _ cis, 
ab ó -- _ _ _ mni -- bus in -- sí -- di -- is _ in -- i -- mi -- có -- rum ó -- mni -- um: 
ut ti -- _ bi gra -- tam ex -- hi -- be -- á -- _ _ _ _ _ mus _ ser -- _ _ _ vi -- tú -- _ tem, 
et ac -- ce -- ptá -- _ bi -- le ti -- bi fi -- _ at 
sa -- _ _ cri -- fí -- ci -- um no -- strum, 
al -- le -- _ _ lú -- ia. }

chantMusic = {
\tieDown   g'4 ( g'4) ~ g'4 ( f'4 d'4.) f'4 ( g'4 a'4 g'4) f'4 ( g'4) g'4 \divisioMinima
 f'4 ( g'4) bes'4 ( a'4 bes'4) a'4 ( g'4) a'4 bes'4 ( a'4 f'4.) a'4 ( f'4 g'4) a'4 ( bes'4 g'4) \divisioMinima
 a'4 ( g'4) f'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4 g'4) g'4 \divisioMaior
 g'4 a'4 ( bes'4 c''4) ~ c''4 ( bes'4) c''4 ( bes'4 g'4 a'4) a'4 bes'4 ( bes'4 a'4) \divisioMinima
 f'4 ( a'4 c''4 bes'4 a'4 g'4.) bes'4 ( a'4 g'4) a'4 ( g'4) f'4 ( g'4) g'4 ( a'4) ~ a'4 ( g'4) g'4 \divisioMaior
 g'4 ( f'4) g'4 ( g'4 f'4) g'4 ( bes'4 a'4 f'4.) a'4 ( bes'4) c''4 ( \once \tweak #'font-size #-4 bes' ) g'4 ( a'4) a'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 ( a'4) a'4 bes'4 ( bes'4 a'4) \divisioMinima
 f'4 a'4 ( g'4) bes'4 ( c''4 bes'4) a'4 ( g'4) a'4 ( bes'4 a'4) g'4 ( a'4 g'4) f'4 ( g'4) g'4 \divisioMaxima
 g'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( g'4 f'4 d'4.) f'4 ( g'4 a'4 g'4) f'4 ( g'4) g'4 ( a'4 g'4) g'4 \divisioMinima
 g'4 a'4 bes'4 ( c''4) c''4 d''4 ( bes'4 c''4) ~ c''4 ( bes'4 g'4.) a'4 ( bes'4 c''4) d''4 ( bes'4 c''4) ~ c''4 ( bes'4 g'4 a'4) a'4 bes'4 ( bes'4 a'4) \divisioMinima
 f'4 ( a'4) c''4 ( bes'4 a'4 g'4.) bes'4 ( a'4 g'4) a'4 ( g'4) f'4 ( g'4) g'4 ( a'4) ~ a'4 ( g'4) g'4 \divisioMaxima
 g'4 ( f'4) g'4 g'4 ( f'4) g'4 ( bes'4 a'4 f'4.) a'4 ( bes'4 c''4) bes'4 ( a'4) g'4 ( a'4) g'4 ( f'4) g'4 ( a'4) g'4 a'4 ( a'4 g'4) g'4 \divisioMaior
 c''4 ( c''4) ~ c''4 ( bes'4 g'4.) a'4 ( bes'4 a'4) f'4 a'4 ( bes'4 c''4 bes'4 a'4 g'4) a'4 ( g'4) f'4 ( g'4) g'4 ( f'4 g'\prall a'4 bes'4) a'4 ( g'4) \divisioMaxima
 g'4 ( \once \tweak #'font-size #-4 f' ) f'4 g'4 ( f'4 a'4) ~ a'4 ( g'4 f'4 g'4) g'4 ( f'4 g'\prall a'4 bes'4) a'4 ( g'4) \finalis

}

altoMusic = {
d'2 ~ d'2*7/4 ~ d'2*4/2 ~ d'2 ~ d'4 ~ \divisioMinima
d'2 ees'2*6/2 f'2*7/4 ~ f'2*3/2 d'2*3/2 ~ \divisioMinima
d'2*4/2 ~ d'2*3/2 ~ d'4 ~ \divisioMaior
d'4 f'2 ~ f'2*3/2 ~ f'2*5/2 ~ f'2*3/2 ~ \divisioMinima
f'2*3/2 ~ f'2*7/4 ~ f'2*3/2 d'2*5/2 ~ d'2*3/2 ~ d'4 ~ \divisioMaior
d'2 c'2*3/2 d'2*9/4 f'2*7/2 ~ f'2*3/2 ~ f'2*5/2 ~ f'2*4/2 ~ f'2 ~ f'2*3/2 ~ f'2 d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'4 ~ \divisioMaxima
d'2 ~ d'2*9/4 c'2*6/2 ~ c'2*3/2 bes4 \divisioMinima
d'2 ~ d'2 g'4 ~ g'2 f'2*9/4 ~ f'2*3/2 ~ f'2 ~ f'2 ~ f'2*4/2 ~ f'2*3/2 ~ \divisioMinima
f'2 ~ f'2*9/4 ~ f'2*3/2 ~ f'2 d'2*3/2 ~ d'2*3/2 ~ d'4 ~ \divisioMaxima
d'2*3/2 ~ d'2 ~ d'2*9/4 f'2*5/2 ~ f'2 c'2*5/2 ~ c'2*3/2 ~ c'4 \divisioMaior
f'2 d'2*7/4 f'2*4/2 ~ f'2*6/2 ~ f'2*4/2 d'2*5/2 ~ d'2 ~ \divisioMaxima
d'2*3/2 ~ d'2 ~ d'2*5/2 ~ d'2*5/2 ~ d'2 \finalis
}

tenorMusic = {
r2 bes2*7/4 a2*4/2 c'2 bes4 ~ \divisioMinima
bes2 ~ bes2*6/2 ~ bes2*7/4 c'2*3/2 ~ c'2*3/2 \divisioMinima
a2*4/2 c'2*3/2 bes4 ~ \divisioMaior
bes4 ~ bes2 a2*3/2 g2*5/2 f2*3/2 \divisioMinima
d'2*3/2 c'2*7/4 bes2*3/2 c'2*5/2 ~ c'2*3/2 bes4 ~ \divisioMaior
bes2 a2*3/2 bes2*9/4 c'2*7/2 ~ c'2*3/2 bes2*5/2 d'2*3/2 ~ \divisioMinima
d'4 c'2 bes2*3/2 c'2 ~ c'2*3/2 ~ c'2*3/2 a2 bes4 \divisioMaxima
a2 g2*9/4 d2*6/2 ~ d2*3/2 ~ d4 \divisioMinima
bes2 g2 ~ g4 ~ g2 ~ g2*9/4 f2*3/2 bes2 a2 g2*4/2 d'2*3/2 \divisioMinima
a2 bes2*9/4 d'2*3/2 c'2 ~ c'2*3/2 ~ c'2*3/2 bes4 ~ \divisioMaxima
bes2*3/2 ~ bes2 ~ bes2*9/4 c'2*5/2 bes2 a2*5/2 g2*3/2 f4 \divisioMaior
a2 bes2*7/4 d'2*4/2 c'2*6/2 bes2*4/2 a2*5/2 bes2 ~ \divisioMaxima
bes2*3/2 ~ bes2 ~ bes2*5/2 c'2*5/2 bes2 \finalis
}

bassMusic = {
g2 ~ g2*7/4 ~ g2*4/2 ~ g2 ~ g4 \divisioMinima
bes,2 c2*6/2 d2*7/4 ~ d2*3/2 g2*3/2 ~ \divisioMinima
g2*4/2 ~ g2*3/2 ~ g4 ~ \divisioMaior
g4 d2 ~ d2*3/2 ~ d2*5/2 ~ d2*3/2 ~ \divisioMinima
d2*3/2 ~ d2*7/4 ~ d2*3/2 ~ d2*5/2 g2*3/2 ~ g4 ~ \divisioMaior
g2 ~ g2*3/2 ~ g2*9/4 f2*7/2 d2*3/2 ~ d2*5/2 ~ d2*3/2 ~ \divisioMinima
d4 ~ d2 ~ d2*3/2 f2 ~ f2*3/2 g2*3/2 ~ g2 ~ g4 \divisioMaxima
bes,2 ~ bes,2*9/4 a,2*6/2 g,2*3/2 ~ g,4 \divisioMinima
g2 f2 ~ f4 ees2 d2*9/4 ~ d2*3/2 ~ d2 ~ d2 ~ d2*4/2 ~ d2*3/2 ~ \divisioMinima
d2 ~ d2*9/4 ~ d2*3/2 ~ d2 ~ d2*3/2 g2*3/2 ~ g4 \divisioMaxima
r2*3/2 a2 g2*9/4 f2*5/2 ~ f2 ~ f2*5/2 ~ f2*3/2 ~ f4 ~ \divisioMaior
f2 g2*7/4 d2*4/2 ~ d2*6/2 ~ d2*4/2 ~ d2*5/2 g2 \divisioMaxima
r2*3/2 a2 g2*5/2 ~ g2*5/2 ~ g2 \finalis
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
