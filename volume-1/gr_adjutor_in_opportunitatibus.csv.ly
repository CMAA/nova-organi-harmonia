\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.132
%(volume.page)

global = {
 \key d \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Adjutor in opportunitatibus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Adjutor in opportunitatibus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Adjutor in opportunitatibus" }
    \line {}
  }
}

chantText = \lyricmode {
Ad -- jú -- _ _ tor 
\set stanza = " * " in op -- por -- tu -- ni -- _ tá -- _ ti -- bus, 
in tri -- bu -- la -- ti -- ó -- _ _ _ ne: 
spe -- rent in te, _ 
qui no -- vé -- runt te: _ _ 
quó -- ni -- am non _ _ _ _ _ _ _ de -- re -- lín -- quis quæ -- _ rén -- tes te, _ _ 
Dó -- _ _ _ _ mi -- ne. _ _ _ _ ℣ 
Quó -- ni -- am non _ _ _ _ _ _ _ _ _ _ _ _ _ in fi -- nem ob -- lí -- vi -- o _ e -- rit _ páu -- pe -- ris: 
pa -- ti -- én -- ti -- a páu -- _ pe -- rum 
non per -- í -- bit in æ -- tér -- _ _ _ _ num: 
ex -- súr -- ge, _ Dó -- mi -- ne, _ non præ -- vá -- le -- _ at _ 
\set stanza = " * " 
ho -- _ _ _ _ _ _ _ _ mo. _ _ _ _ }

chantMusic = {
\tieDown   f'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 ( bes'4 f'4) g'4 ( bes'4 g'4 f'4) g'4 ( bes'4 g'4) a'4 ( bes'4) bes'4 \divisioMinima
 bes'4 a'4 ( bes'4 c''4) c''4 ( \once \tweak #'font-size #-4 d'' ) bes'4 ( a'4) bes'4 ( bes'4) ~ bes'4 ( g'4 c''4 \forceBreak
) c''4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( g'4 a'4 f'4) f'4 \divisioMaior
 f'4 ( \once \tweak #'font-size #-4 c' ) f'4 ( g'4 f'4) f'4 ( c'4) f'4 g'4 ( bes'4) a'4 ( a'4 bes'4 a'4 f'4 g'4) bes'4 ( g'4) ~ g'4 ( ees'4 f'4) bes'4 ( bes'4 g'4 a'4 f'4) f'4 \divisioMaxima \forceBreak

 bes'4 ( bes'4 c''4) bes'4 bes'4 ( bes'4 bes'4) g'4. f'4 ( g'4 f'4 d'4) \divisioMaior
 d'4 ( ees'4) d'4 c'4 ( ees'4 g'4) g'4 bes'4 ( g'4 bes'4 f'4 ees'4) f'4 ( ees'4) ~ ees'4 ( c'4) \divisioMaxima \forceBreak

 c'4 ( bes4) f'4 g'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( bes'4) ~ bes'4 ( g'4 f'4 g'4) bes'4 ( bes'4) g'4 bes'4 ( bes'4) ~ bes'4 ( g'4) a'4 ( f'4) g'4 ( ees'4) ~ ees'4 ( d'4) d'4 ( ees'4) d'4 d'4 ( ees'4 g'4) g'4 ( f'4) \divisioMinima \forceBreak

 g'4 ( f'4) ~ f'4 ( ees'4) g'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 ( a'4) bes'4 ( bes'4) ~ bes'4 ( f'4) a'4 ( g'4 f'4) g'4 \divisioMaior
 d'4 ( ees'4 f'4 g'4) a'4 ( bes'4 f'4 g'4) ees'4 ( f'4) a'4 ( g'4) a'4 ( g'4 f'4 g'4) ees'4 ( ees'4 d'4 ees'4 \forceBreak
) ees'4 ( d'4 ees'4) f'4 ( ees'4 f'4) \divisioMinima
 f'4. bes'4 ( bes'4 g'4) f'4 ( g'4 f'4) ~ f'4 ( d'4) \finalis
 d'4 ( c'4) f'4 g'4 ( \once \tweak #'font-size #-4 a' ) a'4 ( bes'4 c''4) a'4 ( bes'4 a'4 bes'4 \forceBreak
) g'4 ( bes'4 a'4 bes'4.) g'4 ( a'4 g'4 f'4 a'4) \divisioMinima
 a'4 ( d''4) ees''4 ( c''4 a'4.) c''4 ( d''4 bes'4 g'4.) bes'4 ( a'4 bes'4 g'4 f'4) bes'4 ( f'4) a'4 ( bes'4.) f'4 ( g'4) bes'4 ( bes'4) ~ bes'4 ( g'4 f'4 \forceBreak
 ees'4) ~ ees'4 ( c'4) c'4 c'4 ( ees'4 g'4) g'4 ( f'4) \divisioMinima
 f'4 ( ees'4) ees'4 ( g'4 bes'4) bes'4 ( a'4) bes'4 ( bes'4) ~ bes'4 ( f'4) \divisioMinima
 f'4 ( ees'4) f'4 ( ees'4) ~ ees'4 ( c'4) ees'4 ( f'4 \once \tweak #'font-size #-4 g' ) d'4 ( f'4 ees'4 f'4) ees'4 ( d'4) \divisioMaxima \forceBreak

 c'4 d'4 f'4 g'4 f'4 g'4 ( bes'4 a'4 bes'\prall c''4) d''4 ( \once \tweak #'font-size #-4 bes' ) bes'4 ( bes'4 a'4 bes'4) bes'4 ( a'4) \divisioMaior
 a'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 bes'4 ( bes'4) bes'4 ( a'4 bes'4) g'4 ( a'4 \forceBreak
) f'4 ( bes'4 g'4) a'4. f'4 ( g'4 a'\prall bes'4) ~ bes'4 ( g'4 a'4) f'4 ( g'4 a'\prall bes'4) ~ bes'4 ( g'4 a'4) f'4 \divisioMaxima
 f'4 bes'4 ( bes'4) c''4 ( bes'4) ~ bes'4 ( f'4 \forceBreak
) bes'4 ( bes'4) bes'4 ( d''4 c''4) c''4 ( bes'4) ~ bes'4 ( f'4) \divisioMinima
 bes'4 bes'4 ( a'4) bes'4 ( a'4) bes'4 ( bes'4) ~ bes'4 ( g'4) g'4. f'4 ( g'4 f'4 d'4) \divisioMaior
 ees'4 ( c'4) ees'4 ( ees'4 c'4) d'4 ( ees'4) f'4 ( g'4 \forceBreak
) bes'4 ( bes'4) ~ bes'4 ( a'4) \divisioMinima
 g'4 ( bes'4 a'4 g'4) f'4 ( a'4 g'4 f'4) g'4 ( ees'4 d'4 ees'4) c'4 ( d'\prall ees'4) f'4 ( ees'4 f'4) \divisioMinima
 f'4. bes'4 ( bes'4 g'4) f'4 ( g'4 f'4) ~ f'4 ( d'4) \finalis

}

altoMusic = {
r2 f'2*3/2 ~ f'2*4/2 g'2*6/2 ~ \divisioMinima
g'4 ~ g'2*3/2 f'2*4/2 d'2 ~ d'2*3/2 g'4 ~ g'2*3/2 f'2 c'2 ~ c'4 ~ \divisioMaior
c'2*5/2 ~ c'2*3/2 d'2 ~ d'2*4/2 ~ d'2*3/2 ees'2*4/2 f'2*3/2 ~ f'2 ~ f'4 \divisioMaxima
d'2*4/2 ~ d'2*3/2 ~ d'2*3/4 ~ d'2 ~ d'2 \divisioMaior
bes2*3/2 c'4 ~ c'2*3/2 bes2*4/2 ~ bes2 c'2 ~ c'4 \divisioMaxima
r2 f'2*3/2 ~ f'4 d'2*5/2 ~ d'2*3/2 ~ d'2 c'2*3/2 ~ c'2 bes2*3/2 ~ bes2*3/2 ~ bes2*3/2 d'2 ~ \divisioMinima
d'4 c'2*3/2 ees'2 f'2*5/2 ~ f'4 d'2*3/2 ~ d'4 ~ \divisioMaior
d'2*4/2 bes2*3/2 ~ bes4 ees'2 d'2 ~ d'2*4/2 c'2*4/2 bes2*3/2 ~ bes2*3/2 \divisioMinima
c'2*3/4 bes2*3/2 ~ bes2 a2 bes4 \finalis
r2 f'2*6/2 ~ f'2*4/2 ~ f'2*15/4 ~ f'2 ~ \divisioMinima
f'2 g'2*7/4 ~ g'2*3/2 ~ g'2*3/4 d'2*5/2 f'2*9/4 ~ f'2 ~ f'2 ees'2*3/2 c'2*3/2 ~ c'2 bes2 ~ bes2 \divisioMinima
d'2 ees'4 ~ ees'2 ~ ees'2 f'2 ~ f'2 \divisioMinima
bes2*3/2 ~ bes2*4/2 ~ bes2 ~ bes2*4/2 ~ bes2 \divisioMaxima
r2 f'2*3/2 ~ f'2 ~ f'2*3/2 ~ f'2 d'2*4/2 f'2 ~ \divisioMaior
f'2*3/2 d'2 ~ d'2*5/2 ~ d'2*3/2 ~ d'2*3/4 f'2*3/2 ~ f'2*3/2 ~ f'4 ~ f'2*3/2 ees'2*4/2 c'4 \divisioMaxima
r4 d'2*3/2 ~ d'2*3/2 ~ d'2 g'2*3/2 ~ g'4 f'2*3/2 ~ \divisioMinima
f'4 ~ f'2 d'2 ~ d'2 ~ d'2 ~ d'2*3/4 c'2 bes2 ~ \divisioMaior
bes2*5/2 ~ bes2 c'2 f'2 ~ f'2 \divisioMinima
d'2*4/2 c'2*4/2 bes2*4/2 ~ bes2*3/2 ~ bes2*3/2 ~ \divisioMinima
bes2*3/4 ~ bes2*3/2 ~ bes2 a2 bes4 \finalis
}

tenorMusic = {
r2 d'2*3/2 ~ d'2*4/2 ~ d'2*6/2 ~ \divisioMinima
d'4 ~ d'2*3/2 ~ d'2*4/2 g2 ~ g2*3/2 ~ g4 c'2*3/2 ~ c'2 bes2 a4 \divisioMaior
d2*5/2 ~ d2*3/2 f2 g2*4/2 a2*3/2 bes2*4/2 ~ bes2*3/2 f2 a4 \divisioMaxima
g2*4/2 ~ g2*3/2 ~ g2*3/4 a2 bes2 \divisioMaior
f2*3/2 ees4 ~ ees2*3/2 d2*4/2 g2 ~ g2 ees4 \divisioMaxima
f2*3/2 d'2 c'4 ~ c'2*5/2 bes2*3/2 g2 ~ g2*3/2 a2 f2*3/2 ~ f2*3/2 g2*3/2 bes2 ~ \divisioMinima
bes4 g2*3/2 c'2 ~ c'2 bes2 d'2 c'2*3/2 bes4 ~ \divisioMaior
bes2*4/2 ~ bes2*3/2 ees4 ~ ees2 f2 g2*4/2 ~ g2*4/2 ~ g2*3/2 f2*3/2 \divisioMinima
d2*3/4 ~ d2*3/2 ees2 ~ ees2 f4 \finalis
r2*5/2 d'2*3/2 ~ d'2*4/2 ~ d'2*15/4 c'2 \divisioMinima
d'2 c'2*7/4 bes2*9/4 ~ bes2*5/2 ~ bes2*9/4 a2 g2 ~ g2*3/2 ~ g2*3/2 ees2 ~ ees2 d2 \divisioMinima
g2 ~ g4 bes2 c'2 ~ c'2 bes2 \divisioMinima
g2*3/2 ~ g2*4/2 ~ g2 f2 g2 f2 \divisioMaxima
r2 a2*3/2 bes2 c'2*3/2 a2 bes2*4/2 c'2 \divisioMaior
d'2*3/2 c'2 bes2*5/2 a2*3/2 ~ a2*3/4 bes2*3/2 d'2*3/2 c'4 bes2*3/2 ~ bes2*4/2 a4 \divisioMaxima
r4 bes2*3/2 ~ bes2*3/2 ~ bes2 ~ bes2*3/2 c'4 d'2*3/2 ~ \divisioMinima
d'4 c'2 ~ c'2 bes2 g2 ~ g2*3/4 a2 bes2 ~ \divisioMaior
bes2 g2*5/2 ~ g2 f2 c'2 \divisioMinima
bes2*4/2 a2*4/2 g2*4/2 ~ g2*3/2 ~ g2*3/2 \divisioMinima
f2*3/4 ~ f2*3/2 ees2 ~ ees2 f4 \finalis
}

bassMusic = {
r2 bes2*3/2 a2*4/2 g2*6/2 ~ \divisioMinima
g4 d'2*3/2 r2*6/2 f2*3/2 ees4 ~ ees2*3/2 d2 f2 ~ f4 \divisioMaior
r2*5/2 a,2*3/2 d2 bes,2*4/2 ~ bes,2*3/2 c2*4/2 d2*5/2 ~ d4 \divisioMaxima
g,2*4/2 a,2*3/2 bes,2*3/4 ~ bes,2 ~ bes,2 \divisioMaior
d2*3/2 ~ d4 c2*3/2 g,2*4/2 ~ g,2 c2 ~ c4 \divisioMaxima
d2*3/2 ~ d2 ~ d4 g2*5/2 ~ g2*3/2 f2 ees2*3/2 d2 ~ d2*3/2 bes,2*3/2 ~ bes,2*3/2 ~ bes,2 ~ \divisioMinima
bes,4 c2*3/2 ~ c2 d2 ~ d2 ~ d2 g2*3/2 ~ g4 \divisioMaior
r2*4/2 d2*3/2 ~ d4 c2 ~ c2 bes,2*4/2 c2*4/2 ~ c2*3/2 d2*3/2 \divisioMinima
a,2*3/4 g,2*3/2 ~ g,2 bes,2 ~ bes,4 \finalis
r2*8/2 c'2*4/2 bes2*15/4 a2 \divisioMinima
r2*10/2 g2*5/2 d2*9/4 ~ d2 ~ d2 c2*3/2 bes,2*3/2 ~ bes,2 g,2 bes,2 ~ \divisioMinima
bes,2 c2*3/2 ~ c2 d2 ~ d2 ~ \divisioMinima
d2*3/2 c2*4/2 g,2 ~ g,2 ~ g,2 bes,2 \divisioMaxima
d2 ~ d2*3/2 ~ d2 f2*3/2 ~ f2 g2*4/2 f2 ~ \divisioMaior
f2*3/2 g2 ~ g2*5/2 ~ g2*3/2 f2*3/4 d2*3/2 ~ d2*3/2 ~ d4 ~ d2*3/2 c2*4/2 f4 \divisioMaxima
r2*4/2 a2*3/2 g2 ees2*3/2 ~ ees4 d2*3/2 ~ \divisioMinima
d4 ~ d2 g2 ~ g2 f2 ees2*3/4 d2 ~ d2 \divisioMaior
c2 ~ c2*5/2 ees2 d2 ~ d2 \divisioMinima
g2*4/2 ~ g2*4/2 ~ g2*4/2 ees2*3/2 d2*3/2 ~ \divisioMinima
d2*3/4 g,2*3/2 ~ g,2 bes,2 ~ bes,4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Gradual"
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
