\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.224
%(volume.page)

global = {
 \key d \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Exsurge... non praevaleat" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Exsurge... non praevaleat"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Exsurge... non praevaleat" }
    \line {}
  }
}

chantText = \lyricmode {
Ex -- _ _ súr -- ge _ _ 
\set stanza = " * " Dó -- mi -- ne, _ _ _ 
non præ -- vá -- _ le -- at _ ho -- _ _ _ _ _ _ _ _ mo: 
ju -- di -- cén -- tur _ gen -- _ tes _ _ _ 
in con -- spé -- ctu _ _ _ _ _ tu -- o. _ _ _ _ _ _ _ _ _ _ _ _ ℣. 
In con -- ver -- tén -- _ do in -- i -- mí -- cum me -- um re -- trór _ _ _ sum, _ 
in -- fir -- ma -- bún -- tur, et per -- í -- bunt _ _ _ _ _ _ _ _ 
a fá -- ci -- e _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
\set stanza = " * " 
tu -- _ _ _ _ _ _ _ a _ _ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   ees'4. ~ ees'4 ( ees'4 ees'4) ~ ees'4 ( bes4) c'4 ( d'\prall ees'4 d'4) ees'4 ( ees'4) ~ ees'4 ( c'4) ees'4 ( ees'4 ees'4) \divisioMinima
 d'4 ( ees'4 f'\prall g'4 f'4) g'4 ( f'4)  f'4 ( g'4. \forceBreak
) d'4 ( ees'4 f'\prall g'4 aes'4 f'4) ees'4 ( ees'4) c'4 ( d'4 c'4) \divisioMaior
 f'4 g'4 ( a'4 g'4) a'4 ( bes'4 a'4) bes'4 ( c''4) bes'4 ( c''4 bes'4 g'4) g'4 ( f'4) a'4 ( g'4 f'4) \divisioMinima
 f'4 ( c'4) ees'4 ( d'4 ees'4. \forceBreak
) c'4 ( d'4 ees'4 f'4 g'4.) bes'4 ( a'4 g'4) bes'4 ( f'4 ees'4) ~ ees'4 ( c'4) \divisioMinima
 ees'4 ( f'4 d'4) ees'4 ( f'4 ees'4 d'4) ees'4 ( d'4 c'4 d'\prall ees'4 d'4 ees'4) d'4 ( c'4) \divisioMaxima \forceBreak

 f'4 g'4 ( a'4 g'4) a'4 ( bes'4 a'4 bes'\prall c''4 bes'4 a'4 g'4) g'4 ( bes'4) ~ bes'4 ( g'4) g'4 ( bes'4) ~ bes'4 ( \once \tweak #'font-size #-4 f' )  f'4 ( g'4.) d'4 ( ees'4 f'\prall g'4 aes'4 f'4) ees'4 ( ees'4) c'4 ( d'4 c'4) \divisioMaior \forceBreak

 f'4 g'4 ( a'4 g'4) a'4 ( bes'4 a'4 bes'\prall c''4 bes'4 a'4 g'4) g'4. f'4 bes'4 ( bes'4) ~ bes'4 ( bes'4) ~ bes'4 ( bes'4) ~ bes'4 ( f'4) ~ f'4 ( ees'4) \divisioMinima
 ees'4 ( g'4 a'\prall bes'4) a'4 ( f'4. \forceBreak
) a'4 ( g'4 f'4) g'4 ( g'4 ees'4) g'4 ( g'4) \divisioMinima
 f'4 bes'4 ( bes'4) ~ bes'4 ( bes'4) ~ bes'4 ( bes'4) ~ bes'4 ( g'4 f'4 ees'4 d'4)  ees'4 ( g'4.) aes'4 ( f'4 ees'4) f'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( d'4) \finalis \forceBreak

 d'4 ( d'4 ees'4) c'4 ( f'4) f'4 g'4 ( f'4) g'4 ( a'\prall bes'4 a'4 bes'4) bes'4 ( a'4) bes'4 bes'4 a'4 ( bes'4) bes'4 bes'4 ( a'4) a'4 \divisioMinima
 g'4 ( c''4 \forceBreak
) c''4 ( bes'4 a'4 g'4 a'\prall bes'4 c''4 bes'4 a'4 g'4) bes'4 ( g'4) bes'4 ( c''4) d''4 ( c''4 d''4 bes'4 a'4 g'4) g'4 ( bes'4 g'4) ~ g'4 ( f'4) \divisioMaxima
 f'4 ( \once \tweak #'font-size #-4 c' ) f'4 g'4 ( bes'4) bes'4 bes'4 \divisioMinima \forceBreak

 bes'4 a'4 ( f'4) g'4 ( bes'4 a'4) a'4 ( bes'4 c''4) a'4 ( c''4 bes'4 a'4 g'4) bes'4 ( a'4 g'4) \divisioMinima
 bes'4 ( bes'4) c''4 ( a'4) bes'4 ( g'4 f'4) bes'4 ( g'4) a'4 ( g'4) ~ g'4 ( f'4) \divisioMaxima
 bes'4 ( bes'4 f'4) g'4 ( bes'4) bes'4 \forceBreak
 bes'4 ( bes'4) ~ bes'4 ( bes'4) ~ bes'4 ( g'4) a'4 ( bes'4 g'4 f'4) \divisioMinima
 bes'4 ( bes'4) ~ bes'4 ( bes'4) ~ bes'4 ( g'4) a'4 ( bes'4 g'4 f'4) \divisioMinima
 bes'4 ( bes'4) c''4 ( g'4) bes'4 ( bes'4 c''4) bes'4 ( c''4) d''4 ( bes'4 \forceBreak
) ~ bes'4 ( bes'4 g'4) a'4 ( bes'4 g'4 f'4.) bes'4 ( f'4) a'4 ( bes'4.) f'4 ( g'4) bes'4 ( bes'4) ~ bes'4 ( g'4 f'4 ees'4) ~ ees'4 ( c'4) \divisioMaior
 ees'4 ( c'4) ees'4 ( ees'4 c'4) d'4 ( ees'4) f'4 ( g'4) bes'4 ( bes'4) ~ bes'4 ( f'4) ~ f'4 ( ees'4) \divisioMinima \forceBreak

 ees'4 ( g'4 a'\prall bes'4) a'4 ( f'4.) a'4 ( g'4 f'4) g'4 ( g'4 ees'4) g'4 ( g'4) \divisioMinima
 f'4 bes'4 ( bes'4) ~ bes'4 ( bes'4) ~ bes'4 ( bes'4) ~ bes'4 ( g'4 f'4 ees'4 d'4)  ees'4 ( g'4.) aes'4 ( f'4 ees'4) f'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( d'4) \finalis

}

altoMusic = {
g2*13/4 ~ g2*4/2 aes2 ~ aes2 bes2*3/2 ~ \divisioMinima
bes2*5/2 ~ bes2 ~ bes2*5/4 ~ bes2*3/2 aes2*3/2 ~ aes2 g2 ~ g4 \divisioMaior
r4 d'2*3/2 ~ d'2*3/2 ees'2 f'2*4/2 d'2 ~ d'2*3/2 \divisioMinima
c'2 ~ c'2*7/4 ~ c'2*11/4 bes2*3/2 d'2 c'2*3/2 \divisioMinima
bes2*3/2 ~ bes2*4/2 aes2 c'2 bes2*3/2 g2 \divisioMaxima
f'2*4/2 ~ f'2 ~ f'2*4/2 ~ f'2 ~ f'4 ees'2*4/2 d'2*3/2 ~ d'2*5/4 ~ d'2*3/2 ees'2*3/2 bes2 r2*3/2 \divisioMaior
f'2*4/2 d'2 ~ d'2*6/2 c'2*5/4 d'2 c'2 bes2*3/2 ~ bes2*3/2 ~ \divisioMinima
bes2*4/2 c'2*5/4 bes2*3/2 ~ bes2*3/2 ~ bes2 \divisioMinima
r4 bes2 ees'2 d'2 ~ d'2 bes2*3/2 ~ bes2*5/4 aes2*3/2 c'2 ees'2 bes2 ~ bes4 \finalis
r2*3/2 c'2*3/2 d'2 ~ d'2 ~ d'2*3/2 f'2 ~ f'2 ~ f'2*3/2 ~ f'2*3/2 \divisioMinima
d'2 ~ d'2*3/2 ~ d'2*3/2 g'2*4/2 f'2*4/2 ~ f'2 ~ f'2*4/2 d'2 c'2 ~ c'4 ~ \divisioMaxima
c'2*3/2 ees'2 f'2 ~ \divisioMinima
f'4 ~ f'2 ~ f'2*3/2 ~ f'2*3/2 d'2*5/2 ~ d'2*3/2 ~ \divisioMinima
d'2 ~ d'2 ~ d'2*3/2 f'2*3/2 d'2*3/2 ~ \divisioMaxima
d'2*3/2 ~ d'2*3/2 ees'2 f'2 ~ f'2 ~ f'2*3/2 ~ f'4 \divisioMinima
d'2 ~ d'2 ~ d'2 ~ d'2*4/2 \divisioMinima
f'2*4/2 ~ f'2*3/2 ~ f'2 ~ f'2 ~ f'2*6/2 ~ f'2*3/4 ~ f'2 ~ f'2*5/4 ~ f'2 d'2 bes2*3/2 g2*3/2 \divisioMaior
c'2 ~ c'2*3/2 ~ c'2 ~ c'2 bes2*3/2 ~ bes2*3/2 \divisioMinima
ees'2*4/2 f'2*5/4 ~ f'2*3/2 ~ f'2 ees'4 ~ ees'2 ~ \divisioMinima
ees'4 f'2 ~ f'2 ees'2 d'2*3/2 bes2 ~ bes2*5/4 aes2*3/2 c'2 ~ c'2 bes2 ~ bes4 \finalis
}

tenorMusic = {
r2*13/4 ees2*4/2 ~ ees2 f2 ees2*3/2 \divisioMinima
f2*5/2 ees2 d2*5/4 ees2*3/2 ~ ees2*3/2 f2 ~ f2 ees4 \divisioMaior
d4 ~ d2*3/2 g2*3/2 ~ g2 f2*4/2 a2 f2*3/2 ~ \divisioMinima
f2 g2*7/4 ~ g2*11/4 f2*3/2 g2 ~ g2*3/2 ~ \divisioMinima
g2*3/2 c2*4/2 ~ c2 f2 ~ f2*3/2 ees2 \divisioMaxima
r4 a2*3/2 d'2 ~ d'2*4/2 ~ d'2 c'4 bes2*4/2 ~ bes2*3/2 ~ bes2*5/4 ~ bes2*3/2 c'2*3/2 g2 ~ g2*3/2 \divisioMaior
r4 f2*3/2 ~ f2 g2*6/2 ~ g2*5/4 ~ g2*4/2 d2*3/2 ees2*3/2 \divisioMinima
g2*4/2 f2*5/4 ~ f2*3/2 ees2*3/2 ~ ees2 ~ \divisioMinima
ees4 f2 ~ f2 ~ f2 ~ f2 g2*3/2 ees2*5/4 c2*3/2 ~ c2 d2 ~ d2 g4 \finalis
bes2*3/2 ~ bes2*3/2 ~ bes2 ~ bes2 ~ bes2*3/2 ~ bes2 c'2 d'2*3/2 c'2*3/2 \divisioMinima
bes2 a2*3/2 bes2*3/2 ~ bes2*4/2 ~ bes2 g2 a2 bes2*4/2 ~ bes2 ~ bes2 a4 ~ \divisioMaxima
a2*3/2 bes2 ~ bes2 ~ \divisioMinima
bes4 c'2 d'2*3/2 ~ d'2*3/2 ~ d'2*5/2 c'2*3/2 \divisioMinima
bes2 a2 g2*3/2 f2*3/2 a2*3/2 \divisioMaxima
g2*3/2 ~ g2*3/2 ~ g2 f2 c'2 bes2*4/2 ~ \divisioMinima
bes2 c'2 d'2 ~ d'2*4/2 ~ \divisioMinima
d'2*4/2 ~ d'2*3/2 a2 bes2 ~ bes2*6/2 a2*3/4 g2 f2*9/4 ~ f2 ees2*3/2 ~ ees2*3/2 \divisioMaior
g2 ~ g2*3/2 f2 ees2 f2*3/2 g2*3/2 ~ \divisioMinima
g2*4/2 f2*5/4 c'2*3/2 ~ c'2*3/2 bes2 ~ \divisioMinima
bes4 ~ bes2 g2 ~ g2 ~ g2*3/2 ~ g2 c2*5/4 ~ c2*3/2 ~ c2 d2 ~ d2 g4 \finalis
}

bassMusic = {
c,2*3/4 d,2*3/2 ees,2 ~ ees,2*4/2 f,2 ~ f,2 g,2*3/2 ~ \divisioMinima
g,2*5/2 ~ g,2 ~ g,2*5/4 c2*3/2 ~ c2*3/2 ~ c2 ~ c2 ~ c4 \divisioMaior
r4 bes,2*3/2 ~ bes,2*3/2 c2 d2*4/2 ~ d2 ~ d2*3/2 ~ \divisioMinima
d2 c2*7/4 ees2*11/4 d2*3/2 bes,2 c2*3/2 \divisioMinima
g,2*3/2 ~ g,2*4/2 f,2 ~ f,2 g,2*3/2 c2 \divisioMaxima
d4 ~ d2*3/2 ~ d2 f2*4/2 g2 ~ g4 ~ g2*4/2 ~ g2*3/2 a2*5/4 bes2*3/2 f2*3/2 g2 ees2*3/2 \divisioMaior
d4 ~ d2*3/2 c2 bes,2*6/2 a,2*5/4 ~ a,2*4/2 g,2*3/2 ~ g,2*3/2 \divisioMinima
c2*4/2 d2*5/4 ~ d2*3/2 ~ d2*3/2 c2 ~ \divisioMinima
c4 d2 c2 bes,2 a,2 g,2*3/2 ~ g,2*5/4 f,2*3/2 aes,2 ~ aes,2 g,2 ~ g,4 \finalis
r2*3/2 r2*3/2 r2 a2 g2*3/2 d2 ~ d2 ~ d2*3/2 f2*3/2 \divisioMinima
g2 ~ g2*3/2 ~ g2*3/2 ees2*4/2 d2 ~ d2 ~ d2 ~ d2*4/2 ees2 f2 ~ f4 \divisioMaxima
d2*3/2 c2 d2 ~ \divisioMinima
d4 ~ d2 ~ d2*3/2 f2*3/2 g2*5/2 ~ g2*3/2 ~ \divisioMinima
g2 ~ g2 ~ g2*3/2 d2*3/2 ~ d2*3/2 \divisioMaxima
g,2*3/2 bes,2*3/2 c2 d2 ~ d2 ~ d2*4/2 \divisioMinima
g2 ~ g2 ~ g2 bes2*4/2 \divisioMinima
a2*4/2 g2*3/2 ~ g2 ~ g2 d2*6/2 ~ d2*3/4 ~ d2 ~ d2*9/4 g,2 ~ g,2*3/2 c2*3/2 \divisioMaior
bes,2 c2*3/2 ~ c2 ~ c2 d2*3/2 g2*3/2 \divisioMinima
c2*4/2 d2*5/4 ~ d2*3/2 ees2*3/2 ~ ees2 ~ \divisioMinima
ees4 d2 ~ d2 c2 bes,2*3/2 g,2 ~ g,2*5/4 f,2*3/2 aes,2 ~ aes,2 g,2 ~ g,4 \finalis
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
