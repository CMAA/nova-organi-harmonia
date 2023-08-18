\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.191
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Precatus est" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Precatus est"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Precatus est" }
    \line {}
  }
}

chantText = \lyricmode {
Pre -- cá -- tus est 
\set stanza = " * " Mó -- y -- ses _ 
in con -- spé -- ctu Dó -- _ mi -- ni De -- i su -- i, 
et di -- _ _ _ _ _ _ _ xit. 
Pre -- cá -- _ tus est Mó -- y -- ses _ _ 
in con -- spé -- ctu Dó -- _ mi -- ni De -- i su -- i, 
et di -- _ _ _ xit: 
Qua -- _ re, Dó -- mi -- ne, i -- rá -- _ _ _ _ _ sce -- ris 
in pó -- _ pu -- lo tu -- o? 
Par -- _ _ ce i -- ræ á -- ni -- mæ tu -- _ æ: _ 
me -- mén -- to A -- bra -- ham, I -- sa -- ac et _ _ _ Ja -- cob, _ _ _ 
qui -- bus ju -- rá -- sti da -- re ter -- ram _ flu -- én -- tem lac et _ _ _ _ mel. 
Et pla -- cá -- tus fa -- ctus est Dó -- mi -- nus 
de _ _ ma -- li -- gni -- tá -- te, _ _ 
quam di -- xit fá -- ce -- _ re 
pó -- pu -- lo _ _ _ _ _ _ _ su -- o. }

chantMusic = {
\tieDown   f'4 g'4 ( bes'4 f'4) ees'4 ( f'\prall g'4 f'4 g'4) g'4 ( f'4) \divisioMinima
 g'4 bes'4 bes'4 ( c''4 bes'4) ~ bes'4 ( a'4 f'4 g'4) \divisioMaior \forceBreak

 c'4 c'4 ees'4 ( f'4) ees'4 ( f'4) g'4 ( f'4) g'4 ( a'\prall bes'4 a'4 g'4) f'4 ( a'\prall bes'4 a'4 g'4 a'4) a'4 ( g'4) \divisioMinima
 g'4 f'4 ( ees'4) f'4 ( g'4 a'4 g'4 f'4 g'4 \forceBreak
) g'4 ( f'4) \divisioMaior
 f'4 f'4 bes'4 ( bes'4 f'4) g'4 ( g'4) ees'4 ( g'4) bes'4 ( f'4 ees'4) ~ ees'4 ( c'4) d'4 ( ees'4) f'4 ( g'4 f'4) f'4 \divisioMaxima \forceBreak

 f'4 g'4 ( bes'4 f'4) g'4 ( f'4) ees'4 ( f'\prall g'4 f'4 g'4) g'4 ( f'4) \divisioMinima
 g'4 bes'4 bes'4 ( a'4) bes'4 ( c''4 bes'4) ~ bes'4 ( a'4 f'4 g'4) \divisioMaior
 c'4 c'4 \forceBreak
 ees'4 ( f'4) ees'4 ( f'4) g'4 ( f'4) g'4 ( a'\prall bes'4 a'4 g'4) f'4 ( a'\prall bes'4 a'4 g'4 a'4) a'4 ( g'4) \divisioMinima
 g'4 f'4 ( ees'4) f'4 ( g'4 a'4 g'4 f'4 g'4) f'4 ( c'4) \divisioMaior \forceBreak

 c'4 c'4 ees'4 ( ees'4 c'4) d'4 ( ees'4) f'4 ( g'4 f'4) f'4 \divisioMaxima
 f'4 ( bes'4) ~ bes'4 ( c''4) bes'4 ( c''4) bes'4 c''4 ( bes'4 g'4) f'4 ( g'4 f'4) \divisioMinima \forceBreak

 f'4 f'4 bes'4 ( bes'4) ~ bes'4 ( bes'4) ~ bes'4 ( g'4) ~ g'4 ( f'4) ~ f'4 ( ees'4 f'\prall g'4 a'4 g'4 f'4) g'4 ( f'4) f'4 \divisioMaior
 ees'4 f'4 ( g'4 f'4) g'4 ( a'4) g'4 g'4 \forceBreak
 f'4 ( ees'4 f'\prall g'4 f'4 g'4) g'4 ( f'4) \divisioMaxima
 ees'4 ( f'4) g'4 bes'4 ( bes'4 bes'4) ~ bes'4 ( \once \tweak #'font-size #-4 c'' ) a'4 bes'4 f'4 ( g'4 f'4) \divisioMinima
 bes'4 ( bes'4 c''4) g'4 f'4 ( g'4 f'4 \forceBreak
) g'4 ( g'4 f'4 a'4 g'4 f'4) g'4 ( f'4 ees'4) f'4 ( g'4 a'4 g'4 f'4 g'4) ~ g'4 ( f'4) \divisioMaxima
 f'4 f'4 ( c''4 d''4) c''4 c''4 c''4 c''4 ( d''\prall ees''4 d''4 c''4) \divisioMinima \forceBreak

 bes'4 ( c''4) a'4 ( bes'4) c''4 ( c''4 bes'4) \divisioMinima
 bes'4. ~ bes'4 ( bes'4) ~ bes'4 ( bes'4) ~ bes'4 ( a'4) bes'4 ( c''4) ees''4 ( d''4 c''4) bes'4 ( c''4) ~ c''4 ( f'4) g'4 ( a'4 g'4) \divisioMaior
 ees'4 f'4 g'4 \forceBreak
 g'4 ( c''4) bes'4 bes'4 ( a'4) g'4 bes'4 bes'4 ( bes'4) ~ bes'4 ( bes'4 bes'4) \divisioMinima
 f'4 g'4 f'4 ( \once \tweak #'font-size #-4 ees' ) f'4 f'4 ( g'\prall a'4 g'4) a'4 ( g'4) bes'4 ( bes'4 g'4 \forceBreak
) bes'4 ( bes'4 g'4 ees'4 f'\prall g'4 f'4 ees'4) f'4 ( g'4) f'4 \divisioMaxima
 ees'4 g'4 bes'4 bes'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( c''4 d''4) c''4 bes'4 ( c''4 bes'4 g'4) \divisioMinima \forceBreak

 bes'4 ( c''\prall d''4 c''4) c''4 ( bes'4 c''\prall d''4 c''4 d''4) d''4 ( c''4) \divisioMaior
 c''4. bes'4 ( bes'4 bes'4) ~ bes'4 ( c''4) f'4 g'4 a'4 a'4 c''4. bes'4 ( bes'4 bes'4) ~ bes'4 ( c''4) \divisioMaior \forceBreak

 g'4 ( \once \tweak #'font-size #-4 f' ) bes'4 ( c''\prall d''4 c''4) d''4 c''4 ( d''4 bes'4 bes'4) bes'4. g'4 ( bes'4 c''4 bes'4 a'4 bes'4) bes'4 ( a'4) \divisioMaior
 c''4 ( bes'4) bes'4 c''4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( bes'4 bes'4 \forceBreak
) ~ bes'4 ( a'4 f'4) g'4 ( bes'4 g'4) bes'4 ( g'4 ees'4) \divisioMinima
 f'4 ( g'4) bes'4 ( bes'4 a'4 g'4 a'\prall bes'4 a'4 g'4) f'4 ( g'4 a'4 g'4 f'4 g'4) g'4 ( f'4) \finalis

}

altoMusic = {
r4 d'2*3/2 ees'2 ~ ees'2*3/2 c'2 \divisioMinima
d'2 f'2 ~ f'2*4/2 d'4 \divisioMaior
r4 c'4 ~ c'2*4/2 d'2 ~ d'2 ~ d'2*3/2 ~ d'2 ~ d'2*4/2 ~ d'2 ~ \divisioMinima
d'4 c'2 d'2 ~ d'2*4/2 ~ d'2 \divisioMaior
c'2 bes2*3/2 ~ bes2 ees'2 d'2 c'2*3/2 ~ c'2 ~ c'2*3/2 ~ c'4 \divisioMaxima
r4 d'2*3/2 ~ d'2 ees'2 ~ ees'2*3/2 d'2 \divisioMinima
ees'2 f'2*4/2 ~ f'2*4/2 d'4 \divisioMaior
r4 c'4 ~ c'2*4/2 d'2*4/2 ~ d'2*3/2 ~ d'2 ~ d'2*4/2 ~ d'2 ~ \divisioMinima
d'4 c'2 d'2 ~ d'2*4/2 c'2 ~ \divisioMaior
c'4 r4 g2*3/2 bes2 ~ bes2*3/2 a4 \divisioMaxima
r4 d'2*3/2 f'2 g'4 ~ g'2*3/2 r2*3/2 \divisioMinima
d'2 ~ d'2 f'2*3/2 ees'2 r2 ees'2*3/2 ~ ees'2*3/2 c'2 ~ c'4 \divisioMaior
ees'4 ~ ees'2*3/2 d'2 ~ d'2 bes2*3/2 ~ bes2*3/2 ~ bes2 ~ \divisioMaxima
bes2*3/2 ~ bes2*3/2 d'2*4/2 ~ d'2 f'4 ~ \divisioMinima
f'2 ees'2 d'2*3/2 ~ d'2*6/2 ees'2 ~ ees'4 c'2 d'2*4/2 c'2 \divisioMaxima
r4 f'2*4/2 ~ f'2 ees'2*5/2 \divisioMinima
d'2*4/2 f'2*3/2 \divisioMinima
d'2*3/4 ~ d'2 g'2 f'2 ~ f'2 ees'2*3/2 f'2 ~ f'2 d'2*3/2 \divisioMaior
ees'2*3/2 d'2*3/2 f'2*3/2 ees'4 ~ ees'2 f'2*3/2 ~ \divisioMinima
f'4 ees'4 ~ ees'2 c'4 ~ c'2 f'2 ~ f'2 ~ f'2*3/2 ees'2*3/2 ~ ees'2 ~ ees'2 ~ ees'4 c'2 ~ c'4 \divisioMaxima
ees'2 d'4 g'2 f'2*4/2 ees'2*4/2 \divisioMinima
d'2 ~ d'2 g'2*3/2 f'2*3/2 ees'2 \divisioMaior
c'2*3/4 d'2*3/2 ees'2 f'2 ~ f'2 g'2*3/4 ~ g'2*3/2 ~ g'2 ~ \divisioMaior
g'4 \tiny f' \normalsize4 f'2 ~ f'2*3/2 g'2*4/2 f'2*3/4 g'2*6/2 f'2 \divisioMaior
d'2*4/2 ees'2*3/2 f'2*3/2 ~ f'2 ~ f'4 d'2*3/2 ees'2*3/2 ~ \divisioMinima
ees'2 ~ ees'2*3/2 d'2 c'2*3/2 ~ c'2 d'2 ~ d'2 c'2 \finalis
}

tenorMusic = {
r4 bes2*3/2 ~ bes2 ~ bes2*3/2 a2 \divisioMinima
bes2 ~ bes2 c'2*4/2 bes4 \divisioMaior
g2 ~ g2*4/2 ~ g2 ~ g2 ~ g2*3/2 a2 f2*4/2 g2 \divisioMinima
bes4 g2 a2 bes2*4/2 a2 \divisioMaior
f2 ~ f2*3/2 ees2 g2 ~ g2 ~ g2*3/2 bes2 ~ bes2*3/2 a4 \divisioMaxima
r4 bes2*3/2 ~ bes2 ~ bes2 ~ bes2*3/2 ~ bes2 ~ \divisioMinima
bes2 ~ bes2*4/2 c'2*4/2 bes4 \divisioMaior
g2 ~ g2*4/2 ~ g2*4/2 ~ g2*3/2 a2 f2*4/2 g2 \divisioMinima
bes4 g2 a2 d2*4/2 f2 ~ \divisioMaior
f2 ees2*3/2 c2 ~ c2*3/2 ~ c4 \divisioMaxima
r4 bes2*3/2 ~ bes2 ~ bes4 ees'2*3/2 c'2 d'4 \divisioMinima
bes4 ~ bes4 ~ bes2 ~ bes2*3/2 ~ bes2 ~ bes2*5/2 ~ bes2*3/2 ~ bes2 a4 \divisioMaior
g4 ~ g2*3/2 ~ g2 ~ g2 ~ g2*3/2 ees2*3/2 d2 \divisioMaxima
g2*3/2 f2*3/2 g2*4/2 a2*3/2 \divisioMinima
g2 ~ g2 a2*3/2 bes2*6/2 c'2*3/2 ~ c'2 bes2*4/2 ~ bes4 a4 \divisioMaxima
r4 a2*4/2 g2 ~ g2*5/2 \divisioMinima
bes2*4/2 ~ bes2*3/2 ~ \divisioMinima
bes2*3/4 g2 ~ g2 bes2 g2 ~ g2*3/2 bes2 a2 g2*3/2 ~ \divisioMaior
g2*3/2 ~ g2*3/2 ~ g2*3/2 ~ g4 ~ g2 f2*3/2 \divisioMinima
bes2 ~ bes2 ~ bes4 a2 c'2 ~ c'2 g2*3/2 ~ g2*3/2 ~ g2 bes2*3/2 ~ bes2 a4 \divisioMaxima
g2 ~ g4 ~ g2 ~ g2*4/2 ~ g2*4/2 ~ \divisioMinima
g2 ~ g2 ~ g2*3/2 ~ g2*3/2 ~ g2 ~ \divisioMaior
g2*3/4 ~ g2*3/2 bes2 c'2 ~ c'4 d'4 ees'2*3/4 d'2*3/2 c'2 \divisioMaior
bes2 ~ bes2 ~ bes2*3/2 g2*4/2 bes2*3/4 ees'2*6/2 c'2 \divisioMaior
bes2*4/2 ~ bes2*3/2 ~ bes2*3/2 c'2*3/2 bes2*3/2 g2*3/2 ~ \divisioMinima
g2 ~ g2*3/2 ~ g2 ees2*3/2 f2 ~ f2 bes2 ~ bes4 a4 \finalis
}

bassMusic = {
r2*4/2 g2 ees2*3/2 f2 \divisioMinima
bes,2 d2 ~ d2*4/2 g4 \divisioMaior
ees2 c2*4/2 ~ c2 bes,2 g,2*3/2 d2 ~ d2*4/2 bes,2 ~ \divisioMinima
bes,4 c2 ~ c2 bes,2*4/2 d2 ~ \divisioMaior
d2 ~ d2*3/2 ees2 c2 bes,2 c2*3/2 ~ c2 f2*3/2 ~ f4 \divisioMaxima
r2*4/2 a2 g2 ees2*3/2 bes,2 \divisioMinima
c2 d2*4/2 ~ d2*4/2 g4 \divisioMaior
ees2 c2*4/2 bes,2*4/2 g,2*3/2 d2 ~ d2*4/2 bes,2 ~ \divisioMinima
bes,4 c2 ~ c2 bes,2*4/2 a,2 ~ \divisioMaior
a,2 c2*3/2 g,2 f,2*3/2 ~ f,4 \divisioMaxima
r4 bes,2*3/2 d2 ees4 ~ ees2*3/2 bes2 ~ bes4 ~ \divisioMinima
bes4 a4 g2 d2*3/2 ees2 d2*5/2 c2*3/2 f2 ~ f4 \divisioMaior
r4 c2*3/2 ~ c2 bes,2 g,2*3/2 ~ g,2*3/2 bes,2 \divisioMaxima
c2*3/2 d2*3/2 bes,2*4/2 d2*3/2 ~ \divisioMinima
d2 c2 ~ c2*3/2 bes,2*6/2 ~ bes,2*3/2 a,2 bes,2*4/2 f2 \divisioMaxima
r4 f2*4/2 c2 ~ c2*5/2 \divisioMinima
g2*4/2 d2*3/2 \divisioMinima
g2*3/4 f2 ees2 d2 ~ d2 c2*3/2 d2 ~ d2 bes,2*3/2 \divisioMaior
c2*3/2 g,2*3/2 d2*3/2 ~ d4 c2 d2*3/2 ~ \divisioMinima
d2 c2 f4 ~ f2 ~ f2 d2 ~ d2*3/2 ~ d2*3/2 c2 ~ c2*3/2 f2 ~ f4 \divisioMaxima
r2 f4 ees2 d2*4/2 c2*4/2 \divisioMinima
r2 f2 ees2*3/2 bes,2*3/2 c2 \divisioMaior
ees2*3/4 g2*3/2 ~ g2 a2 f2 ees2*3/4 ~ ees2*3/2 ~ ees2 ~ \divisioMaior
ees2 d2 bes,2*3/2 ees2*4/2 d2*3/4 c2*6/2 f2 \divisioMaior
g2*4/2 c2*3/2 d2*3/2 ~ d2*3/2 ees2*3/2 ~ ees2*3/2 \divisioMinima
d2 c2*3/2 bes,2 ~ bes,2*3/2 a,2 bes,2 ~ bes,2 f2 \finalis
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
