\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.253
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Qui confidunt" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Qui confidunt"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Qui confidunt" }
    \line {}
  }
}

chantText = \lyricmode {
Qui con -- fí -- _ dunt _ 
\set stanza = " * " in Dó -- _ mi -- no, _ _ 
sic -- ut mons Si -- on: _ _ _ _ _ _ _ _ 
non com -- mo -- vé -- _ _ _ _ _ bi -- tur in æ -- tér -- _ _ num, _ _ _ _ _ 
qui há -- bi -- tat _ in Je -- rú -- _ sa -- lem. _ _ _ ℣. 
Mon -- _ _ _ _ _ _ _ _ _ tes _ 
in cir -- cú -- i -- tu e -- _ _ jus _ _ _ _ _ 
et Dó -- mi -- nus _ _ _ _ 
in cir -- cú -- _ i -- tu pó -- pu -- li su -- i, _ _ _ _ _ _ _ 
ex _ hoc nunc _ _ _ 
et us -- _ que 
\set stanza = " * " in sǽ -- cu -- lum. _ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   f'4 f'4 f'4 g'4 ( a'4 g'4) f'4 g'4 ( g'4 f'4) \divisioMinima
 ees'4 ( f'4) f'4 ( bes'4) ~ bes'4 ( c''4) g'4 f'4 ( ees'4) f'4 ( g'4) ~ g'4 ( f'4) \divisioMaior \forceBreak

 a'4 ( a'4 bes'4 g'4) bes'4 ( c''4) c''4 ( a'4 bes'4) g'4 ( bes'4 a'4 f'4) f'4 \divisioMinima
 ees'4 ( g'4) bes'4 ( a'4) bes'4 ( c''4 g'4) ~ g'4 ( f'4) g'4 ( f'4) bes'4 ( bes'4 g'4) bes'4 ( f'4) ~ f'4 ( ees'4) \divisioMaxima \forceBreak

 f'4 f'4 ( d'4 ees'4) c'4 ( f'4) f'4. ees'4 ( f'4 g'4) bes'4 ( bes'4 g'4) \divisioMinima
 bes'4 ( bes'4 g'4 f'4) g'4 ( bes'4 a'4) bes'4 ( g'4 a'\prall bes'4) g'4 ( a'4 g'4 f'4 g'4 \forceBreak
) g'4 ( f'4) \divisioMinima
 f'4 ( bes'4) bes'4 a'4 ( c''4) d''4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( g'4) ~ g'4 ( f'4) g'4 ( f'4) bes'4 ( bes'4 g'4) bes'4 ( f'4) ~ f'4 ( ees'4) \divisioMaxima
 ees'4 g'4 ( bes'4 \forceBreak
) a'4 ( f'4 g'4) f'4 ( ees'4) f'4 ( g'4) \divisioMinima
 f'4 ( \once \tweak #'font-size #-4 g' ) f'4 f'4 ( g'4) bes'4 ( a'4 bes'4) bes'4 ( g'4 a'\prall bes'4) bes'4 ( bes'4) ~ bes'4 ( a'4 g'4) a'4 ( g'4 f'4) g'4 ( f'4) \finalis \forceBreak

 c'4 ( f'4.) bes'4 ( g'4 f'4.) c'4 ( f'4.) g'4 ( bes'4 g'4) ~ g'4 ( f'4) \divisioMinima
 bes'4 ( bes'4) ~ bes'4 ( f'4) g'4 ( g'4 ees'4) f'4. c'4 ( f'4) g'4 ( f'4 g'4) f'4 ( g'4 f'4) g'4 ( g'4 f'4) \divisioMaior \forceBreak

 f'4 f'4 f'4 ( bes'4) bes'4 bes'4 a'4 ( c''4) d''4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( g'4) ~ g'4 ( f'4) g'4 ( f'4) bes'4 ( bes'4 g'4) bes'4 ( f'4) ~ f'4 ( ees'4) \divisioMaxima
 g'4 ( a'\prall bes'4) bes'4 \forceBreak
 bes'4 ( bes'4 bes'4) bes'4 ( g'4) bes'4 ( bes'4) d''4 ( c''4 bes'4) ~ bes'4 ( a'4 g'4 f'4) g'4 ( f'4) \divisioMaior
 f'4 ( g'4) ees'4 ( f'4) f'4 ( g'4) bes'4 ( a'4 bes'4) bes'4 f'4 f'4 ( g'4) g'4 g'4 \forceBreak
 g'4 g'4 ( ees'4) f'4 ( g'4 f'4) g'4 ( f'4) g'4 ( f'4) g'4 ( f'4) bes'4 ( bes'4 g'4) bes'4 ( f'4) ~ f'4 ( ees'4) \divisioMaxima
 f'4 g'4 ( bes'4 a'4 bes'4) bes'4 ( g'4 a'\prall bes'4) bes'4 ( bes'4) ~ bes'4 ( a'4 g'4 \forceBreak
) a'4 ( g'4 f'4) g'4 ( f'4) \divisioMaior
 f'4 g'4 ( f'4) g'4 ( a'\prall bes'4) f'4 ( g'4)  ees'4 ees'4 ( g'4 bes'4) bes'4 bes'4 ( a'4 bes'4 g'4 f'4) ~ f'4 ( f'4) g'4 ( f'4) ~ f'4 ( ees'4 f'4) \divisioMinima \forceBreak

 bes'4 ( bes'4 bes'4) c''4 ( bes'4 a'4 g'4) ~ g'4 ( f'4) g'4 ( bes'4 a'4 g'4 f'4) ~ f'4 ( g'4 ees'4) \divisioMinima
 g'4 ( a'\prall bes'4 a'4 g'4) a'4 ( g'4) ~ g'4 ( f'4) \finalis

}

altoMusic = {
r2 f'4 ~ f'2*3/2 ~ f'4 d'2*3/2 \divisioMinima
ees'2 d'4 ~ d'2*4/2 r2*3/2 c'2*3/2 \divisioMaior
d'2*4/2 f'2 ~ f'2*3/2 ~ f'2*4/2 ~ f'4 \divisioMinima
ees'2 f'2*4/2 ~ f'2*3/2 ~ f'2 d'2 ~ d'2 c'2*3/2 \divisioMaxima
bes4 ~ bes2*3/2 c'2 bes2*3/4 ~ bes2*3/2 d'2*3/2 ~ \divisioMinima
d'2*4/2 ~ d'2*3/2 ees'4 f'2*3/2 d'2*5/2 c'2 \divisioMinima
d'2*3/2 f'2*3/2 d'2*4/2 c'2*5/2 d'2 ~ d'2 c'2*3/2 \divisioMaxima
bes4 d'2 ~ d'2*3/2 ~ d'2 ~ d'2 \divisioMinima
c'2*3/2 d'2 ees'2*3/2 f'2*4/2 d'2 ~ d'2*3/2 c'2*3/2 ~ c'2 ~ \finalis
c'2*5/4 d'2*7/4 c'2*5/4 d'2 ~ d'2*3/2 \divisioMinima
f'2 ~ f'2 ees'2 ~ ees'4 c'2*3/4 ~ c'2*5/2 d'2*3/2 c'2*3/2 ~ \divisioMaior
c'2 d'2*4/2 f'2*3/2 d'2*4/2 ~ d'2*3/2 ~ d'2 ~ d'2 ~ d'2 c'2*3/2 \divisioMaxima
d'2*3/2 ~ d'4 ~ d'2*3/2 ees'2 f'2*4/2 ~ f'2*3/2 ~ f'2 d'2 ~ \divisioMaior
d'2*4/2 ~ d'2 ~ d'2*3/2 ~ d'2 c'2*4/2 ~ c'4 bes2*5/2 d'2 c'2 d'2 ~ d'2*4/2 c'2*3/2 \divisioMaxima
d'4 ~ d'2*4/2 ees'2*4/2 f'2 ~ f'2*3/2 ~ f'2 ~ f'4 d'2 \divisioMaior
c'4 bes2 c'2*3/2 bes2*3/2 ~ bes4 ees'2 ~ ees'4 f'2 ~ f'2*3/2 ~ f'4 r2*6/2 \divisioMinima
d'2*3/2 f'2*3/2 d'2*3/2 ~ d'2*4/2 ~ d'2*3/2 ees'4 ~ \divisioMinima
ees'2 f'2 d'2 c'2 ~ c'4 \finalis
}

tenorMusic = {
r2 d'2*5/2 bes2*3/2 ~ \divisioMinima
bes2*3/2 ~ bes2*4/2 ~ bes2*3/2 a2*3/2 \divisioMaior
g2*4/2 f2 a2*3/2 bes2*4/2 a4 \divisioMinima
bes2 ~ bes2 g2 a2*3/2 bes2 ~ bes2 ~ bes2 c'2*3/2 \divisioMaxima
r4 g2*3/2 a2 g2*3/4 ~ g2*3/2 ~ g2*3/2 \divisioMinima
a2*4/2 bes2*3/2 ~ bes4 ~ bes2*3/2 ~ bes2*5/2 a2 \divisioMinima
bes2*3/2 c'2*3/2 ~ c'2*4/2 a2*5/2 g2 ~ g2 ~ g2*3/2 \divisioMaxima
r4 d2 g2*3/2 ~ g2 ~ g2 \divisioMinima
a2*3/2 bes2 ~ bes2*3/2 ~ bes4 c'2*3/2 ~ c'2 bes2*3/2 ~ bes2*3/2 ~ bes4 a4 \finalis
r2*5/4 r2*7/4 a2*5/4 bes2 a2*3/2 \divisioMinima
f2 bes2 ~ bes2*3/2 ~ bes2*3/4 a2*5/2 bes2*3/2 ~ bes2*3/2 \divisioMaior
a2 bes2*4/2 c'2*3/2 ~ c'2*4/2 bes2*3/2 a2 g2 ~ g2 ~ g2*3/2 ~ \divisioMaxima
g2*3/2 a4 bes2*3/2 ~ bes2 ~ bes2 a2 c'2*3/2 bes2 a2 \divisioMaior
bes2*4/2 a2 g2*3/2 f2 d2*4/2 ~ d4 ees2*5/2 d2 ees2 d2 g2*4/2 ~ g2*3/2 \divisioMaxima
a4 g2*4/2 ~ g2*4/2 f2 g2*3/2 bes2*3/2 a2 ~ \divisioMaior
a4 f2 d2*3/2 ~ d2*3/2 ees4 ~ ees2 g4 f2 g2*3/2 a2*3/2 bes2*3/2 a4 \divisioMinima
r2*3/2 f2*3/2 a2*3/2 bes2*4/2 g2*3/2 ~ g4 \divisioMinima
bes2 ~ bes2 ~ bes2 ~ bes2 a4 \finalis
}

bassMusic = {
r2*7/2 r2*3/2 \divisioMinima
r2*3/2 a2*4/2 g2*3/2 a2*3/2 \divisioMaior
r2*4/2 d2 ~ d2*3/2 ~ d2*4/2 ~ d4 \divisioMinima
c2 d2 ~ d2 ~ d2*3/2 ~ d2 g2 bes2 r2*3/2 \divisioMaxima
g,4 ~ g,2*3/2 ~ g,2 ~ g,2*3/4 c2*3/2 bes,2*3/2 ~ \divisioMinima
bes,2*4/2 ~ bes,2*3/2 c4 d2*3/2 ees2*5/2 f2 \divisioMinima
r2*3/2 f2*3/2 g2*4/2 ~ g2*5/2 ~ g2 bes,2 c2*3/2 ~ \divisioMaxima
c4 g,2 ~ g,2*3/2 bes,2 ~ bes,2 ~ \divisioMinima
bes,2*3/2 ~ bes,2 c2*3/2 d2*4/2 g2 ~ g2*3/2 ees2*3/2 f2 \finalis
a2*5/4 g2*7/4 ~ g2*5/4 ~ g2 d2*3/2 ~ \divisioMinima
d2 ~ d2 ees2*3/2 f2*3/4 ~ f2*5/2 bes2*3/2 r2*3/2 \divisioMaior
r2 g2*4/2 f2*3/2 g2*4/2 ~ g2*3/2 ~ g2 ~ g2 bes,2 c2*3/2 \divisioMaxima
bes,2*3/2 ~ bes,4 ~ bes,2*3/2 c2 d2 ~ d2 ~ d2*3/2 ~ d2 ~ d2 \divisioMaior
bes,2*4/2 ~ bes,2 ~ bes,2*3/2 ~ bes,2 a,2*4/2 g,4 ~ g,2*5/2 bes,2 ~ bes,2 ~ bes,2 ~ bes,2*4/2 c2*3/2 \divisioMaxima
bes,4 ~ bes,2*4/2 c2*4/2 d2 ~ d2*3/2 ~ d2*3/2 ~ d2 ~ \divisioMaior
d4 ~ d2 a,2*3/2 g,2*3/2 ~ g,4 c2 ~ c4 d2 ~ d2*3/2 ~ d2*3/2 g2*3/2 ~ g4 ~ \divisioMinima
g2*3/2 d2*3/2 ~ d2*3/2 bes,2*4/2 c2*3/2 ~ c4 ~ \divisioMinima
c2 d2 ees2 f2 ~ f4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Tract"
        "VIII"
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
