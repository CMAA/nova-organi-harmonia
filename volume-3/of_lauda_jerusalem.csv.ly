\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.165
%(volume.page)

global = {
 \key d \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Lauda Jerusalem" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Lauda Jerusalem"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Lauda Jerusalem" }
    \line {}
  }
}

chantText = \lyricmode {
Lau -- _ _ _ _ da _ 
\set stanza = " * " 
Je -- rú -- sa -- lem _ _ _ Dó -- mi -- num: _ _ _ 
quó -- ni -- am con -- for -- tá -- vit _ _ 
se -- ras por -- tá -- _ rum tu -- á -- rum, _ 
be -- ne -- dí -- xit fí -- li -- is tu -- _ is 
\set stanza = " &dagger; " in te, _ _ 
al -- le -- lú -- ia, 
al -- le -- _ _ _ _ _ _ _ _ _ _ _ lú -- ia. _ _ 
Extra T.P. &dagger; in te. _ _ _ _ _ }

chantMusic = {
\tieDown   ees'4 ( ees'4) ~ ees'4 ( c'4) ees'4 ( g'4 f'4) ~ f'4 ( d'4.) ees'4 ( f'4 ees'4 d'4) ees'4 ( ees'4 ees'4) c'4 ( d'4 c'4) \divisioMaior
 c'4 ( f'4 ees'4) d'4 ( ees'4 f'4 g'4) f'4 f'4. g'4 ( bes'4 a'4) bes'4 ( c''4 bes'4) ~ bes'4 ( a'4) \divisioMinima
 f'4 ( bes'4) g'4 ( f'4) f'4 ( ees'4.) f'4 ( g'4 f'4) g'4 ( ees'4) ~ ees'4 ( d'4) \divisioMaxima
 f'4 ( bes'4) bes'4 a'4 ( bes'4) g'4 ( bes'4) f'4 ( g'4) g'4 ( bes'4 c''4 bes'4 g'4 f'4) g'4 bes'4 ( a'4 g'4) a'4 ( f'4) \divisioMaior
 g'4 ( a'\prall bes'4 g'4) g'4 ( f'4) f'4 f'4 ( ees'4) g'4 ( f'4) f'4 f'4 f'4 ( g'4 a'\prall bes'4) bes'4 ( bes'4) ~ bes'4 ( g'4 f'4) \divisioMaxima
 c'4 ( f'4) f'4 ( ees'4) ees'4 ( f'\prall g'4 f'4 g'4) g'4 ( f'4) \divisioMinima
 f'4 ( bes'4) g'4 ( f'4) f'4 f'4 ( ees'4) g'4 ( f'4) f'4  f'4 ( \once \tweak #'font-size #-4 a' ) a'4. g'4 ( bes'4 a'4 f'4) g'4 ( d'4) \divisioMaxima
 f'4 f'4 ( a'4 f'4 g'4) d'4 ( \once \tweak #'font-size #-4 f' ) f'4 \divisioMaior
 g'4 ( bes'4) a'4 ( f'4) g'4 bes'4 ( bes'4 bes'4) d''4 ( c''4 bes'4) f'4 ( g'4) ~ g'4 ( f'4.) a'4 ( g'4 f'4) d'4 ( f'4) ~ f'4 ( d'4) \divisioMinima
 f'4 ( g'4 d'4) ees'4 ( f'4) ~ f'4 ( ees'4.) g'4 ( f'4 ees'4 f'4) d'4 d'4 ( f'4 ees'4) f'4 ( ees'4) ~ ees'4 ( d'4) \finalis
  f'4 ( \once \tweak #'font-size #-4 a' ) a'4. g'4 ( bes'4 a'4 f'4) g'4 ( d'4) f'4 ( ees'4) f'4 ( ees'4) ~ ees'4 ( d'4) \finalis

}

altoMusic = {
c'2 ~ c'2 ~ c'2 bes2 ~ bes2*3/4 ~ bes2*4/2 aes2*3/2 bes2*3/2 \divisioMaior
c'2*3/2 ~ c'2*4/2 ~ c'4 d'2*3/4 ~ d'2*3/2 ~ d'2 f'2*3/2 ~ \divisioMinima
f'2 d'2 bes2*5/4 ~ bes2*4/2 ~ bes2*3/2 \divisioMaxima
f'2*3/2 ees'2 d'2 ~ d'2 ~ d'2 ~ d'2*5/2 ~ d'2*3/2 ~ d'2 ~ \divisioMaior
d'2*4/2 c'2*3/2 bes2 c'2 ~ c'2 d'2*4/2 ~ d'2 ~ d'2 c'4 ~ \divisioMaxima
c'2 bes2 ~ bes2*5/2 ~ bes2 \divisioMinima
d'2 ~ d'2*3/2 c'2 ees'2 d'4 f'2 ~ f'2*3/4 d'2*4/2 ~ d'2 \divisioMaxima
c'4 ~ c'2*4/2 bes2 c'4 ~ \divisioMaior
c'2 ~ c'2*3/2 f'2*3/2 ~ f'2*4/2 d'2*7/4 ~ d'2*4/2 c'2*3/2 \divisioMinima
bes2*4/2 c'2*7/4 ~ c'2*4/2 bes4 ~ bes2*4/2 ~ bes2*3/2 f'2 ~ f'2*3/4 d'2*4/2 ~ d'2 bes2*3/2 ~ bes2*3/2 \finalis
}

tenorMusic = {
c'2 bes2 aes2 g2 ~ g2*3/4 ~ g2*4/2 f2*3/2 ~ f2*3/2 \divisioMaior
r2*3/2 g2*4/2 a4 bes2*3/4 ~ bes2*3/2 ~ bes2 c'2*3/2 \divisioMinima
bes2 a2 g2*5/4 f2*4/2 ~ f2*3/2 \divisioMaxima
d'2*3/2 c'2 bes2 ~ bes2 ~ bes2 a2*5/2 g2*3/2 c'2 \divisioMaior
bes2*4/2 a2*3/2 g2 a2 ~ a2 bes2*4/2 ~ bes2 c'2 ~ c'4 \divisioMaxima
r2*4/2 ees2*5/2 d2 \divisioMinima
f2 bes2*3/2 ~ bes2 ~ bes2 a4 ~ a2 c'2*3/4 ~ c'2*4/2 bes2 \divisioMaxima
a4 ~ a2*4/2 g2 a4 \divisioMaior
g2 f2*3/2 ~ f2*3/2 bes2*4/2 a2*7/4 g2*4/2 f2*3/2 ~ \divisioMinima
f2*4/2 g2*7/4 ees2*4/2 f4 ~ f2*4/2 g2*3/2 a2 c'2*3/4 ~ c'2*4/2 bes2 g2*3/2 ~ g2*3/2 \finalis
}

bassMusic = {
r2*8/2 f2*3/4 ees2*4/2 ~ ees2*3/2 f2*3/2 \divisioMaior
r2*19/4 a2*3/2 g2 f2*3/2 \divisioMinima
d2 ~ d2 ees2*5/4 d2*4/2 bes,2*3/2 \divisioMaxima
bes2*3/2 ~ bes2 ~ bes2 a2 g2 ~ g2*5/2 ~ g2*3/2 ~ g2 ~ \divisioMaior
g2*4/2 ~ g2*3/2 ~ g2 ~ g2 a2 g2*4/2 ~ g2 ~ g2 a4 \divisioMaxima
r2 g,2 ~ g,2*5/2 bes,2 ~ \divisioMinima
bes,2 ~ bes,2*3/2 c2 ~ c2 d4 ~ d2 ~ d2*3/4 g2*4/2 ~ g2 \divisioMaxima
r4 g2*4/2 ~ g2 f4 ~ \divisioMaior
f2 ~ f2*3/2 d2*3/2 ~ d2*4/2 ~ d2*7/4 ~ d2*4/2 ~ d2*3/2 ~ \divisioMinima
d2*4/2 c2*7/4 bes,2*4/2 ~ bes,4 g,2*4/2 ~ g,2*3/2 \finalis
y2*0/2 d2 ~ d2*3/4 g2*4/2 ~ g2 ~ g2*3/2 g,2*3/2 \finalis
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
