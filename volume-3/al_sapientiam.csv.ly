\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.91
%(volume.page)

global = {
 \key f \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Sapientiam" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Sapientiam"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Sapientiam" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- _ ia, 
\set stanza = " * " al -- le -- lú -- _ ia. _ _ _ 
_ _ _ _ _ _ ℣. 
Sa -- pi -- én -- ti -- am _ _ _ _ _ _ _ _ _ i -- psó -- _ rum 
nar -- _ _ _ rent pó -- _ _ _ pu -- li, 
et lau -- _ _ _ dem _ e -- ó -- rum _ _ _ nún -- _ _ _ ti -- et 
\set stanza = " * " 
Ec -- clé -- _ si -- a. _ _ _ 
_ _ _ _ _ _ }

chantMusic = {
\tieDown   ees'4 f'4 g'4 ( f'4)  c''4 ( des''4) c''4 \divisioMinima
  ees'4 f'4 g'4 ( f'4)  c''4 ( des''4) c''4 \divisioMinima
 bes'4 ( c''4 bes'4 aes'4) c''4. aes'4 ( bes'4 aes'4 g'4) bes'4 ( aes'4 g'4 f'4) \divisioMaior
 ees'4 ( g'4) bes'4 ( bes'4 g'4 aes'4.) f'4 ( g'4 f'4 ees'4) \divisioMinima
 ees'4 aes'4 ( aes'4) g'4 ( bes'4) c''4 ( aes'4 g'4 ees'4 g'\prall aes'4 f'4) \finalis
 ees'4 f'4 f'4 ( c''4) c''4 c''4 ees''4 ( c''4 bes'4) c''4 ( bes'4 g'4) aes'4 ( bes'4) \divisioMinima
  g'4 ( bes'4) des''4 ( c''4 bes'4) c''4 ( aes'4 f'4 g'4) \divisioMinima
 bes'4 ( c''4 aes'4 g'4.) bes'4 ( c''4 aes'4) ~ aes'4 ( aes'4 f'4 aes'4 g'4 f'4)  aes'4 ( bes'\prall c''4 des''4) c''4 ( bes'4 aes'4 bes'\prall c''4 bes'4 aes'4) bes'4 ( c''4) bes'4 \divisioMaior
 aes'4 ( c''4) ~ c''4 ( bes'4) c''4 ( bes'4 aes'4) bes'4 ( aes'4 g'4) f'4 f'4 ( aes'4 g'4 aes'4.) g'4 ( aes'4) c''4 ( bes'4 g'4) aes'4 ( f'4) ees'4 ( f'4) f'4 \divisioMaxima
 ees'4 ( f'4) f'4 ( aes'4) ~ aes'4 ( f'4) aes'4 ( g'4 f'4) ~ f'4 ( g'4 aes'4 bes'4) bes'4 ( c''4) ~ c''4 ( bes'4) bes'4 bes'4 ( aes'4) aes'4 ( c''4) ~ c''4 ( bes'4) c''4 ( bes'4 aes'4) bes'4 ( aes'4 g'4) \divisioMinima
 f'4 ( aes'4 g'4 aes'4.) g'4 ( aes'4) c''4 ( bes'4 g'4) aes'4 ( f'4) ees'4 ( f'4) f'4 \divisioMaior
 ees'4 ( f'4) aes'4 ( g'4)  c''4 ( des''4) c''4 c''4 \divisioMinima
 bes'4 ( c''4 bes'4 aes'4) c''4. aes'4 ( bes'4 aes'4 g'4) bes'4 ( aes'4 g'4 f'4) \divisioMaior
 ees'4 ( g'4) bes'4 ( bes'4 g'4 aes'4.) f'4 ( g'4 f'4 ees'4) \divisioMinima
 ees'4 aes'4 ( aes'4) g'4 ( bes'4) c''4 ( aes'4 g'4 ees'4 g'\prall aes'4 f'4) \finalis

}

altoMusic = {
c'2 ~ c'2 f'2*3/2 c'2 ~ c'2 f'2*3/2 ~ \divisioMinima
f'2*4/2 ees'2*3/4 des'2*4/2 c'2*4/2 \divisioMaior
ees'2 ~ ees'2*9/4 c'2*3/2 ees'4 ~ \divisioMinima
ees'4 ~ ees'2 ~ ees'2 ~ ees'2 ~ ees'4 ~ ees'2 c'2 \finalis
r2 f'2 ~ f'2 ees'2*3/2 ~ ees'4 f'2 ~ f'2 ees'2 f'2*3/2 ~ f'2*3/2 ees'4 ~ \divisioMinima
ees'2*3/2 ~ ees'2*3/4 ~ ees'2*3/2 c'2*6/2 f'2*4/2 ees'2 ~ ees'2*5/2 ~ ees'2 ~ ees'4 \divisioMaior
c'4 ~ c'2*3/2 ~ c'2*3/2 ~ c'2*3/2 ~ c'4 des'2*3/2 ees'2*3/4 f'2 ees'2*3/2 c'2 bes2 c'4 \divisioMaxima
ees'2 ~ ees'4 des'2*3/2 c'2*3/2 d'2*5/2 ees'2*4/2 f'2*3/2 ees'2*3/2 f'2*3/2 ees'2*3/2 ~ \divisioMinima
ees'2*3/2 ~ ees'2*3/4 f'2 ees'2*3/2 c'2 bes2 c'4 ~ \divisioMaior
c'2 ~ c'2 f'2*4/2 ~ \divisioMinima
f'2*4/2 ees'2*3/4 des'2*4/2 c'2*4/2 \divisioMaior
ees'2 ~ ees'2*9/4 c'2*4/2 \divisioMinima
ees'4 ~ ees'2 ~ ees'2 ~ ees'2*3/2 ~ ees'2 c'2 \finalis
}

tenorMusic = {
c'2 bes2 aes2*3/2 ~ aes2 ~ aes2 ~ aes2*3/2 ~ \divisioMinima
aes2*4/2 ~ aes2*3/4 ~ aes2*4/2 ~ aes2*4/2 \divisioMaior
g2 c'2*9/4 bes2*4/2 ~ \divisioMinima
bes4 c'2 bes2 aes2 bes2*3/2 aes2 \finalis
c;2 c'2 ~ c'2 bes2*3/2 aes4 des'2 ~ des'2 c'2 ~ c'2*3/2 ~ c'2*3/2 ~ c'4 ~ \divisioMinima
c'2*3/2 bes2*3/4 aes2*3/2 ~ aes2*6/2 ~ aes2*4/2 g2 f2*5/2 g2 ~ g4 \divisioMaior
f4 g2*3/2 aes2*3/2 g2*3/2 aes4 ~ aes2*3/2 ~ aes2*3/4 ~ aes2 g2*3/2 f2 g2 aes4 \divisioMaxima
c'2 bes4 ~ bes2*3/2 r2*3/2 bes2*5/2 ~ bes2*4/2 c'2*3/2 ~ c'2*3/2 des'2*3/2 ees'2*3/2 \divisioMinima
bes2*3/2 aes2*3/4 ~ aes2 g2*3/2 ~ g2 ~ g2 aes4 ~ \divisioMaior
aes2 ~ aes2 ~ aes2*4/2 ~ \divisioMinima
aes2*4/2 ~ aes2*3/4 ~ aes2*4/2 ~ aes2*4/2 \divisioMaior
g2 c'2*9/4 bes2*4/2 ~ \divisioMinima
bes4 c'2 bes2 aes2*3/2 bes2 c'2 \finalis
}

bassMusic = {
r2*7/2 r2 g2 f2*3/2 \divisioMinima
des2*4/2 c2*3/4 bes,2*4/2 aes,2*4/2 \divisioMaior
c2 ~ c2*9/4 ~ c2*4/2 ~ \divisioMinima
c4 ~ c2 ~ c2 ~ c2 ~ c2*3/2 f2 \finalis
r2 bes2 aes2 g2*3/2 aes4 ~ aes2 bes2 r2 bes2*3/2 aes2*3/2 c'4 \divisioMinima
c2*3/2 ~ c2*3/4 ~ c2*3/2 f2*6/2 des2*4/2 ees2 ~ ees2*5/2 ~ ees2 ~ ees4 \divisioMaior
f4 ~ f2*3/2 ~ f2*3/2 ~ f2*3/2 ~ f4 bes,2*3/2 c2*3/4 des2 ees2*3/2 f2 ~ f2 ~ f4 \divisioMaxima
r2*6/2 aes2*3/2 ~ aes2*5/2 g2*4/2 f2*3/2 ees2*3/2 des2*3/2 c2*3/2 ~ \divisioMinima
c2*3/2 ~ c2*3/4 des2 ees2*3/2 f2 ~ f2 ~ f4 \divisioMaior
aes2 g2 f2*4/2 \divisioMinima
des2*4/2 c2*3/4 bes,2*4/2 aes,2*4/2 \divisioMaior
c2 ~ c2*9/4 ~ c2*4/2 ~ \divisioMinima
c4 ~ c2 ~ c2 ~ c2*3/2 ~ c2 f2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Alleluia"
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
