\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.123
%(volume.page)

global = {
 \key c \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Jubilate Deo universa" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Jubilate Deo universa"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Jubilate Deo universa" }
    \line {}
  }
}

chantText = \lyricmode {
Ju -- bi -- lá -- te 
\set stanza = " * " De -- o _ 
u -- ni -- vér -- _ sa ter -- _ _ _ ra: 
ju -- bi -- lá -- _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ te _ De -- o _ 
u -- ni -- vér -- _ sa ter -- _ _ _ _ _ ra: _ _ _ 
psal -- mum dí -- _ ci -- te nó -- _ _ _ mi -- _ ni e -- _ _ _ _ _ jus: 
ve -- ní -- te, et au -- dí -- _ te, et _ nar -- rá -- bo vo -- bis, 
o -- _ _ _ _ mnes qui ti -- mé -- tis De -- um, 
quan -- ta fe -- cit Dó -- mi -- _ nus 
_ _ _ _ _ á -- ni -- mæ me -- _ æ, 
al -- le -- _ _ _ _ _ lú -- ia. }

chantMusic = {
\tieDown   bes'4 c'4  c'4 ( g'4 aes'4) g'4  g'4 ( bes'4 g'4) f'4 ( g'4 f'4) ~ f'4 ( ees'4) \divisioMaior
 f'4 ( g'4 f'4) g'4 ( f'4) g'4. f'4 bes'4 ( bes'4 bes'4 \forceBreak
) ees'4 ( f'4)  ees'4 ( g'4) bes'4 ( g'4 f'4) aes'4 ( f'4) g'4 ( aes'4) g'4 \divisioMaxima
 g'4 g'4 bes'4 ( g'4 bes'4 f'4 ees'4) ~ ees'4 ( c'4 bes'4) \divisioMinima
 c'4 ( c'4 bes'4) c'4 ( c'4) bes'4 ( c'4 \forceBreak
) ees'4 ( ees'4) f'4 g'4 ( g'4 f'4) g'4 ( g'4) \divisioMinima
 ees'4 ( f'4) g'4 ( g'4 g'4) f'4 ( g'4) bes'4 ( bes'4 bes'4) a'4 ( bes'4) c''4 ( c''4 bes'4) \divisioMinima
 c''4 ( bes'4) c''4 ( d''4 c''4 bes'4) ~ bes'4 ( a'4 g'4 c''4 \forceBreak
) c''4 ( bes'4) ~ bes'4 ( a'4 g'4) g'4 ( bes'4 g'4) f'4 ( g'4 f'4) ~ f'4 ( ees'4) \divisioMaior
 f'4 ( g'4 f'4) g'4 ( f'4) g'4. f'4 bes'4 ( bes'4 bes'4) ees'4 ( f'4) ees'4 ( g'4) bes'4 ( g'4 f'4) a'4 ( f'4) g'4 \forceBreak
 bes'4 ( bes'4 g'4) \divisioMinima
 bes'4 ( bes'4 g'4 f'4) g'4 ( a''\prall bes'4 a'4) bes'4 ( bes'4) ~ bes'4 ( a'4 g'4) bes'4 ( f'4) ~ f'4 ( ees'4) \divisioMaxima
 ees'4 ( g'4) g'4 ( \once \tweak #'font-size #-4 f'' ) g'4 ( f'4) bes'4 ( bes'4 bes'4) g'4 ( f'4) f'4 ( g'4 f'4 ees'4) \divisioMinima \forceBreak

 ees'4 ( f'4) g'4 ( ees'4) f'4 ( g'4 f'4.) bes'4 ( c''4 bes'4) bes'4 ( bes'4) ~ bes'4 ( a'4) g'4 ( f'4) f'4. ees'4 ( g'4) ~ g'4 ( f'4) g'4. f'4 ( g'4) bes'4 ( bes'4) ~ bes'4 ( \once \tweak #'font-size #-4 g'' ) g'4 ( g'4 f'4 g'4) \divisioMaxima \forceBreak

 bes'4 ( c''4) c''4 ( d''4 c''4 d''4) bes'4 ( g'4) \divisioMinima
 g'4 ( f'4) f'4 ( g'4) g'4 ( bes'4) c''4 ( bes'4 c''4) c''4 ( g'4) \divisioMinima
 bes'4 ( c''4) d''4 ( c''4 d''4) bes'4 ( g'4) g'4 ( bes'4) bes'4 ( bes'4 bes'4 \forceBreak
) g'4 ( g'4 f'4) f'4 ( ees'4 f'4) \divisioMaior
 ees'4 ( f'4) g'4 ( ees'4) f'4 ( g'4 f'4) bes'4 ( c''4 bes'4) ~ bes'4 ( bes'4) g'4 ( bes'4 f'4 ees'4 f'4) \divisioMinima
 ees'4 f'4 ( g'4 f'4) g'4 ( ees'4 f'4 \forceBreak
) ees'4 ( f'4 c'4) ees'4 ( g'4 f'4) f'4 \divisioMaxima
 g'4 ( bes'4) bes'4 ( bes'4 a'4) bes'4 ( a'4 g'4) g'4 ( f'4) f'4 ( d'4) ees'4 ( f'4 ees'4) ~ ees'4 ( f'4) f'4 ( c'4) \divisioMaior \forceBreak

 c'4 ( ees'4) f'4 ( ees'4 f'4 ees'4) ~ ees'4 ( ees'4) ~ ees'4 ( c'4) f'4 ( d'4 ees'4) \divisioMinima
 g'4 ( bes'4 f'4) ees'4 ( c'4 ees'4) ees'4 ees'4 ( ees'4 ees'4) f'4 ( ees'4 c'4) c'4 \divisioMaxima
 ees'4 ( \once \tweak #'font-size #-4 f'' ) d'4 ( c'4) ees'4 ( g'4. \forceBreak
) f'4 ( g'4 f'4) d'4 ( ees'4 f'4) g'4 ( ees'4) f'4 ( ees'4 d'4) c'4 ( d''\prall ees'4 d'4 ees'4) d'4 ( c'4) \finalis

}

altoMusic = {
r4 c'4 ~ c'2*4/2 bes2*5/2 g2*3/2 \divisioMaior
bes2*3/2 ~ bes2 c'2*5/4 bes2*3/2 ~ bes2 ~ bes2 ees'2*3/2 ~ ees'2 ~ ees'2*3/2 \divisioMaxima
c'2 bes2*4/2 ~ bes2*4/2 \divisioMinima
g2*3/2 f2*4/2 g2*3/2 bes2*3/2 ~ bes2 ~ \divisioMinima
bes2 ees'2*5/2 f'2*5/2 d'2*3/2 \divisioMinima
g'2 ~ g'2*3/2 d'2*3/2 ees'2 ~ ees'4 d'2*4/2 ~ d'2*5/2 c'2*3/2 \divisioMaior
d'2*5/2 ~ d'2*5/4 ~ d'2*3/2 ees'2 ~ ees'2 f'2*3/2 ~ f'2*3/2 d'2*3/2 ~ \divisioMinima
d'2*4/2 c'2*4/2 d'2 bes2*4/2 c'2*3/2 \divisioMaxima
bes2 d'2*4/2 ~ d'2*5/2 ~ d'2 c'2 \divisioMinima
bes2*4/2 ~ bes2*7/4 f'2*3/2 ees'2 d'2 ~ d'2 ~ d'2*5/4 c'2*3/2 d'2*3/4 c'2 bes2 d'2 c'2*3/2 d'4 ~ \divisioMaxima
d'2 f'2*4/2 ~ f'2 \divisioMinima
c'2 d'2 ~ d'2*5/2 ~ d'2 \divisioMinima
f'2 ~ f'2*3/2 ~ f'2 ees'2 ~ ees'2*3/2 d'2*3/2 c'2 bes4 ~ \divisioMaior
bes2*4/2 ~ bes2*3/2 f'2*3/2 ~ f'2 d'2 ~ d'2*3/2 \divisioMinima
r4 d'2*3/2 ees'2*3/2 bes2*3/2 ~ bes2*3/2 ~ bes4 \divisioMaxima
d'2 f'2*3/2 d'2*3/2 c'2 bes2*4/2 ~ bes2*3/2 c'2 ~ \divisioMaior
c'2 ~ c'2*4/2 ~ c'2*4/2 ~ c'2 ~ c'4 \divisioMinima
bes2*3/2 aes2*4/2 g2*3/2 ~ g2*3/2 ~ g4 \divisioMaxima
bes2*4/2 ~ bes2*5/4 ~ bes2*3/2 ~ bes2*3/2 ~ bes2 ~ bes2*3/2 aes2 ~ aes2*3/2 g2 \finalis
}

tenorMusic = {
r2 ees2*4/2 ~ ees2*5/2 ~ ees2*3/2 ~ \divisioMaior
ees2*3/2 d2 ~ d2*5/4 ~ d2*3/2 ees2 g2 ~ g2*3/2 c'2 bes2*3/2 \divisioMaxima
ees2 d2*4/2 ees2*4/2 ~ \divisioMinima
ees2*3/2 d2*4/2 c2*3/2 d2*3/2 ees2 ~ \divisioMinima
ees2 bes2*5/2 ~ bes2*5/2 ~ bes2*3/2 ~ \divisioMinima
bes2 c'2*3/2 ~ c'2*3/2 bes2 a4 bes2*4/2 ~ bes2*5/2 c'2*3/2 \divisioMaior
bes2*5/2 ~ bes2*5/4 ~ bes2*3/2 ~ bes2 ~ bes2 ~ bes2*3/2 c'2*3/2 ~ c'2*3/2 \divisioMinima
bes2*4/2 a2*4/2 g2 f2*4/2 g2*3/2 ~ \divisioMaxima
g2 bes2 a2 g2*5/2 ~ g2*4/2 ~ \divisioMinima
g2*4/2 ~ g2*7/4 f2*3/2 g2 ~ g2 a2 bes2*5/4 d2*3/2 ~ d2*3/4 ~ d2 ~ d2 g2 a2*3/2 bes4 \divisioMaxima
g2 f2*4/2 bes2 \divisioMinima
a2 ~ a2 g2 a2*3/2 g2 \divisioMinima
f2 a2*3/2 bes2 ~ bes2 ~ bes2*3/2 ~ bes2*3/2 ees2 d4 \divisioMaior
r2*7/2 d'2*3/2 c'2 bes2 ~ bes2*3/2 \divisioMinima
c'4 bes2*3/2 ~ bes2*3/2 ~ bes2*3/2 ~ bes2*3/2 ~ bes4 ~ \divisioMaxima
bes2 c'2*3/2 bes2*3/2 a2 g2*4/2 ~ g2*3/2 ~ g2 ~ \divisioMaior
g2 ~ g2*4/2 ~ g2 ees2 d2 c4 \divisioMinima
ees2*3/2 ~ ees2*3/2 f4 ~ f2*3/2 d2*3/2 ees4 ~ \divisioMaxima
ees2*4/2 ~ ees2*5/4 d2*3/2 f2*3/2 ees2 ~ ees2*3/2 ~ ees2 f2*3/2 ~ f4 ees4 \finalis
}

bassMusic = {
r2 c2*4/2 g,2*5/2 c2*3/2 \divisioMaior
bes,2*3/2 ~ bes,2 a,2*5/4 g,2*3/2 ~ g,2 ~ g,2 c2*3/2 ~ c2 ees2*3/2 \divisioMaxima
c2 g,2*4/2 ~ g,2*4/2 \divisioMinima
c2*3/2 ~ c2*4/2 ~ c2*3/2 g,2*3/2 ~ g,2 \divisioMinima
c2 ~ c2*5/2 d2*5/2 g2*3/2 \divisioMinima
ees2 ~ ees2*3/2 g2*3/2 ~ g2 ~ g4 ~ g2*4/2 bes2*5/2 r2*3/2 \divisioMaior
r2*5/2 a2*5/4 g2*3/2 ~ g2 c2 d2*3/2 ~ d2*3/2 g2*3/2 ~ \divisioMinima
g2*4/2 ~ g2*4/2 ~ g2 d2*4/2 c2*3/2 \divisioMaxima
ees2 bes,2 ~ bes,2 ~ bes,2*5/2 c2*4/2 \divisioMinima
ees2*4/2 d2*7/4 ~ d2*3/2 c2 bes,2 ~ bes,2 ~ bes,2*5/4 a,2*3/2 bes,2*3/4 a,2 g,2 ~ g,2 ~ g,2*3/2 ~ g,4 \divisioMaxima
r2 d2*4/2 ~ d2 ~ \divisioMinima
d2 c2 bes,2*5/2 ~ bes,2 \divisioMinima
d2 ~ d2*3/2 ~ d2 ees2 c2*3/2 bes,2*3/2 ~ bes,2 ~ bes,4 \divisioMaior
c2*4/2 d2*3/2 ~ d2*3/2 ~ d2 g2 bes2*3/2 ~ \divisioMinima
bes4 ~ bes2*3/2 ees2*3/2 d2*3/2 c2*3/2 d4 \divisioMaxima
g2 f2*3/2 g2*3/2 ~ g2 ~ g2*4/2 d2*3/2 c2 \divisioMaior
ees2 d2*4/2 c2*4/2 ~ c2 ~ c4 \divisioMinima
g,2*3/2 f,2*3/2 ~ f,4 c2*3/2 ~ c2*3/2 ~ c4 \divisioMaxima
g,2*4/2 c2*5/4 d2*3/2 ~ d2*3/2 ees2 g,2*3/2 f,2 ~ f,2*3/2 c2 \finalis
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
