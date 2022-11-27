\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.79
%(volume.page)

global = {
 \key d \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Speciosus. V/. Eructavit" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Speciosus. V/. Eructavit"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Speciosus. V/. Eructavit" }
    \line {}
  }
}

chantText = \lyricmode {
Spe -- ci -- ó -- sus 
\set stanza = " * " for -- _ _ _ _ _ ma _ _ _ _ _ _ præ fí -- _ li -- is _ hó -- _ mi -- num: _ _ _ 
dif -- fú -- _ sa _ _ _ est grá -- ti -- a _ _ _ _ _ 
in lá -- _ bi -- _ is _ tu -- _ _ _ _ _ _ _ is. _ _ _ ℣. 
E -- ruc -- tá -- vit cor me -- _ _ _ _ _ _ _ um _ _ 
ver -- _ _ _ bum bo -- num: _ _ 
di -- co e -- _ _ go 
ó -- _ pe -- ra me -- _ _ a re -- gi: _ _ _ 
lin -- gua me -- a cá -- la -- _ _ _ mus scri -- bæ _ _ _ _ _ 
ve -- ló -- _ ci -- _ ter 
\set stanza = " * " scri -- bén -- _ _ _ _ _ _ _ tis. _ _ _ }

chantMusic = {
\tieDown   f'4 g'4 ( bes'4 a'4) bes'4 bes'4 \divisioMinima
 bes'4 ( bes'4) ~ bes'4 ( bes'4) ~ bes'4 ( g'4 a'\prall bes'4) c''4 ( bes'4.) d''4 ( c''4) d''4 ( c''4 a'4) c''4 ( a'4) bes'4 ( c''4) d''4 ( bes'4) \divisioMinima \forceBreak

 bes'4 ( bes'4) ~ bes'4 ( c''4 bes'4) c''4 ( bes'4) ~ bes'4 ( a'4) \divisioMinima
 g'4 ( bes'4 a'4) bes'4 ( c''4 bes'4) ~ bes'4 ( g'4) bes'4 ( c''4 a'4) bes'4 ( c''4 g'4) ~ g'4 ( f'4) \divisioMinima
 g'4 ( bes'4 a'4) bes'4 ( g'4 c''4) bes'4 ( a'4 \forceBreak
) a'4. f'4 ( a'4) c''4 ( bes'4 bes'4) g'4 ( a'4 g'4) \divisioMaxima
 g'4 bes'4 ( g'4) a'4 ( bes'4 a'4) a'4 ( f'4) g'4 bes'4 ( bes'4) ~ bes'4 ( g'4 f'4) ~ f'4 ( d'4) ees'4 ( f'4) \divisioMinima \forceBreak

 f'4 ( a'4) a'4 g'4 ( a'4 g'4 f'4 g'4) bes'4 ( bes'4) g'4 bes'4 ( bes'4) ~ bes'4 ( a'4 g'4) bes'4 ( f'4) ~ f'4 ( ees'4) \divisioMaior
 g'4 bes'4 ( g'4) a'4 ( bes'4 c''4 g'4 f'4 \forceBreak
) g'4 ( f'4) ~ f'4 ( d'4) f'4 ( g'4 f'4) g'4 bes'4 ( bes'4)  g'4 ( f'4) g'4 ( aes'4 f'4 ees'4) f'4 ( g'4 ees'4 d'4) \divisioMinima
 f'4 ( g'4) bes'4 ( bes'4 g'4 f'4) g'4 ( g'4) f'4 ( g'4) aes'4 ( f'4) d'4. \forceBreak
 f'4 ( f'4 d'4) f'4 ( ees'4) f'4 ( d'4) \finalis
 f'4 f'4 f'4 ( g'4 a'\prall bes'4 a'4 bes'4) bes'4 ( a'4) a'4 ( bes'4 c''\prall d''4 c''4 d''4) d''4 ( c''4) bes'4 ( bes'4 g'4) c''4 ( a'4) bes'4 ( c''4 bes'4) \divisioMinima \forceBreak

 bes'4 ( bes'4) ~ bes'4 ( g'4 f'4) bes'4 ( a'4) bes'4 ( c''4) c''4 ( bes'4) c''4 ( bes'4) ~ bes'4 ( a'4) \divisioMaior
 a'4 ( bes'4) c''4 ( d''4 c''4) d''4 ( bes'4) ~ bes'4 ( a'4) a'4 bes'4 ( g'4 a'\prall bes'4 a'4 \forceBreak
) a'4. f'4 a'4 c''4 ( bes'4 bes'4) g'4 ( a'4 g'4) \divisioMaxima
 g'4 g'4 ( c''4) c''4 ( c''4 bes'4 a'4) c''4 ( d''4 bes'4) ~ bes'4 ( a'4 bes'4) bes'4 ( a'4) \divisioMaior
 bes'4. g'4 ( bes'4 a'4) a'4 a'4 \forceBreak
 a'4 ( bes'4) c''4 ( d''4 c''4) d''4 ( bes'4) bes'4 a'4 a'4 \divisioMinima
 bes'4 ( g'4 a'\prall bes'4 a'4) a'4. f'4 ( a'4) c''4 ( bes'4 bes'4) g'4 ( a'4 g'4) \divisioMaxima
 g'4 g'4 g'4 g'4 \forceBreak
 g'4 ( a'4 g'4 a'4) a'4 ( f'4) g'4 bes'4 ( bes'4) ~ bes'4 ( g'4 f'4) ~ f'4 ( d'4) ees'4 ( f'4) \divisioMinima
 f'4 ( a'4) g'4 ( a'4 g'4 f'4) g'4 bes'4 ( bes'4) g'4 bes'4 ( bes'4) ~ bes'4 ( a'4 g'4) bes'4 ( f'4) ~ f'4 ( ees'4) \divisioMaior \forceBreak

 g'4 bes'4 ( g'4) a'4 ( bes'4 c''4 g'4 f'4) g'4 ( f'4) ~ f'4 ( d'4) f'4 ( g'4 f'4 g'4) \divisioMinima
 bes'4 ( bes'4)  g'4 ( f'4) g'4 ( aes'4 f'4 ees'4) f'4 ( g'4 ees'4 d'4) \divisioMinima \forceBreak

 f'4 ( g'4 bes'4) ~ bes'4 ( g'4 f'4) g'4 ( g'4) f'4 ( g'4) aes'4 ( f'4) d'4. f'4 ( f'4 d'4) f'4 ( ees'4) f'4 ( d'4) \finalis

}

altoMusic = {
d'2*4/2 ~ d'2 \divisioMinima
g'2 f'2 ~ f'2*4/2 ~ f'2*5/4 a'2 ~ a'2 ~ a'4 d'2 ~ d'2 ~ d'2 \divisioMinima
g'2 f'2*4/2 ~ f'2*3/2 \divisioMinima
d'2*3/2 ~ d'2 ees'2*3/2 f'2*3/2 ~ f'2 d'2*3/2 ~ \divisioMinima
d'2*3/2 ees'2*3/2 f'2 ~ f'2*3/4 ~ f'2 d'2*3/2 ~ d'2*3/2 ~ \divisioMaxima
d'4 f'2 ~ f'2*3/2 d'2*3/2 ~ d'2 ~ d'2 ~ d'2*3/2 ~ d'2 \divisioMinima
c'2*3/2 d'2*5/2 ~ d'2*3/2 ees'2 f'2*4/2 ~ f'4 ~ f'4 ees'4 ~ \divisioMaior
ees'4 ~ ees'2*4/2 f'2*4/2 d'2*3/2 c'2*4/2 bes2*4/2 bes'2*4/2 ~ bes'2*4/2 \divisioMinima
c'2 d'2*4/2 ~ d'2*4/2 ~ d'2*7/4 c'2*3/2 bes2 a4 bes4 \finalis
d'2 ~ d'2*3/2 ~ d'2*3/2 f'2 ~ f'2*3/2 ~ f'2*3/2 ~ f'2 d'2*3/2 ees'2 d'2*3/2 ~ \divisioMinima
d'2 ees'2*3/2 f'2*4/2 g'2*3/2 f'2*3/2 ~ \divisioMaior
f'2 ~ f'2*4/2 d'2*4/2 ees'2*5/2 f'2*3/4 ~ f'2 d'2*3/2 ~ d'2*3/2 \divisioMaxima
ees'4 ~ ees'2 f'2*4/2 ~ f'2 ~ f'2*4/2 ~ f'2 \divisioMaior
d'2*3/4 ~ d'2*3/2 ~ d'2 f'2*6/2 ~ f'2*3/2 ~ f'4 \divisioMinima
d'4 g'2*4/2 ~ g'2*3/4 f'2 g'2*3/2 d'2*3/2 \divisioMaxima
bes2*4/2 c'2*4/2 d'2*3/2 ees'2 bes2 ~ bes2 ~ bes2*3/2 \divisioMinima
c'2 d'2*5/2 bes2*3/2 ees'2 d'2*4/2 c'2*3/2 \divisioMaior
ees'4 d'2*4/2 ~ d'2*4/2 ~ d'2*3/2 ~ d'2*4/2 ~ \divisioMinima
d'2 ees'4 ~ ees'2*5/2 bes2*4/2 \divisioMinima
c'2 bes2*4/2 ~ bes2*4/2 ~ bes2 ~ bes2*3/4 ~ bes2*3/2 a2 ~ a4 bes4 \finalis
}

tenorMusic = {
bes4 ~ bes2*3/2 ~ bes2 ~ \divisioMinima
bes2 ~ bes2 ~ bes2*4/2 d'2*5/4 ~ d'2 c'2*3/2 a2 ~ a2 bes2 ~ \divisioMinima
bes2 ~ bes2*4/2 c'2*3/2 ~ \divisioMinima
c'2*3/2 bes2 ~ bes2*3/2 ~ bes2*3/2 g2 a2*3/2 \divisioMinima
g2*3/2 ~ g2*3/2 f2 d'2*3/4 c'2 ~ c'2*3/2 bes2*3/2 ~ \divisioMaxima
bes4 ~ bes2 f2*3/2 ~ f2*3/2 ~ f2 g2 a2*3/2 bes2 \divisioMinima
d2*3/2 ~ d2*5/2 g2*3/2 ~ g2 f2 bes2 ~ bes2*3/2 ~ \divisioMaior
bes4 ~ bes2*4/2 ~ bes2*4/2 a2*3/2 d2*4/2 ~ d2*4/2 ees2*4/2 g2*4/2 \divisioMinima
a2 g2*4/2 ~ g2*4/2 f2*7/4 ~ f2*3/2 g2 ~ g2 \finalis
bes2 ~ bes2*3/2 ~ bes2*3/2 c'2 ~ c'2*3/2 bes2*3/2 a2 g2*3/2 a2 g2*3/2 ~ \divisioMinima
g2 ~ g2*3/2 f2*4/2 ees2*6/2 \divisioMaior
c'2 a2*4/2 g2*3/2 bes4 ~ bes2*5/2 c'2*7/4 a2*3/2 bes2*3/2 \divisioMaxima
r4 g2 f2*4/2 a2 bes2*4/2 c'2 ~ \divisioMaior
c'2*3/4 bes2*3/2 c'2 ~ c'2 bes2*4/2 c'2*3/2 d'4 ~ \divisioMinima
d'4 ~ d'2*4/2 ~ d'2*3/4 ~ d'2 ~ d'2*3/2 bes2*3/2 \divisioMaxima
g2*4/2 ~ g2*4/2 ~ g2*3/2 ~ g2 f2 ~ f2 g2*3/2 \divisioMinima
a2 ~ a2*5/2 f2*3/2 g2 ~ g2*4/2 ~ g2*3/2 ~ \divisioMaior
g4 ~ g2*4/2 a2*4/2 bes2*3/2 ~ bes2*4/2 ~ \divisioMinima
bes2 ~ bes4 aes2*5/2 bes2*4/2 \divisioMinima
a2 g2*4/2 ~ g2*4/2 f2 a2*3/4 g2*3/2 ~ g2 ~ g2 \finalis
}

bassMusic = {
r4 a2*3/2 g2 \divisioMinima
ees2 ~ ees2 d2*4/2 ~ d2*5/4 f2 ~ f2*3/2 ~ f2 g2 ~ g2 \divisioMinima
ees2 d2*4/2 ~ d2*3/2 \divisioMinima
g2*3/2 ~ g2 c2*3/2 d2*3/2 ~ d2 ~ d2*3/2 \divisioMinima
bes,2*3/2 c2*3/2 d2 ~ d2*3/4 ~ d2 g2*3/2 ~ g2*3/2 ~ \divisioMaxima
g4 d2 ~ d2*3/2 c2*3/2 bes,2 ~ bes,2 ~ bes,2*3/2 ~ bes,2 \divisioMinima
a,2*3/2 bes,2*5/2 ~ bes,2*3/2 c2 d2 ~ d2 g2*3/2 ~ \divisioMaior
g4 c2*4/2 d2*4/2 ~ d2*3/2 a,2*4/2 ~ a,2*4/2 g,2*4/2 a,2*4/2 \divisioMinima
g,2 a,2*4/2 bes,2*4/2 c2*7/4 d2*3/2 g,2 ~ g,2 \finalis
r2 a2*3/2 g2*3/2 f2 d2*3/2 ~ d2*3/2 f2 g2*3/2 ~ g2 ~ g2*3/2 \divisioMinima
f2 ees2*3/2 d2*4/2 ees2*3/2 f2*3/2 ~ \divisioMaior
f2 ~ f2*4/2 g2*3/2 ~ g4 c2*5/2 d2*7/4 g2*3/2 ~ g2*3/2 \divisioMaxima
c4 ~ c2 d2*4/2 ~ d2 ~ d2*4/2 ~ d2 \divisioMaior
g2*3/4 ~ g2*3/2 f2 d2 ~ d2*4/2 f2*3/2 ~ f4 \divisioMinima
g4 bes2*4/2 d'2*7/4 g2*3/2 ~ g2*3/2 \divisioMaxima
g,2*4/2 a,2*4/2 bes,2*3/2 c2 d2 ~ d2 g2*3/2 \divisioMinima
f2 d2*5/2 ~ d2*3/2 c2 bes,2*4/2 c2*3/2 ~ \divisioMaior
c4 bes,2*8/2 ~ bes,2*3/2 a,2*4/2 \divisioMinima
g,2*3/2 f,2*5/2 g,2*4/2 ~ \divisioMinima
g,2 ~ g,2*4/2 bes,2*4/2 c2 ~ c2*3/4 d2*3/2 c2 g,2 \finalis
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
