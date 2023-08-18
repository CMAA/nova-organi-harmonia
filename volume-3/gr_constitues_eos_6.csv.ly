\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.6
%(volume.page)

global = {
 \key c \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Constitues eos" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Constitues eos"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Constitues eos" }
    \line {}
  }
}

chantText = \lyricmode {
Con -- stí -- tu -- es e -- os 
\set stanza = " * " prín -- ci -- pes _ _ _ _ _ _ 
su -- per o -- mnem ter -- ram: _ _ _ _ 
mé -- _ mo -- res e -- runt nó -- mi -- nis tu -- i, Dó -- mi -- ne. _ _ _ _ ℣. 
Pro pá -- _ _ _ _ _ _ _ _ tri -- bus tu -- _ _ _ is _ 
na -- ti sunt ti -- bi fí -- _ _ _ li -- i: 
pro -- ptér -- e -- _ a _ pó -- pu -- li _ _ con -- fi -- te -- bún -- tur 
\set stanza = " * " ti -- bi. _ _ _ _ }

chantMusic = {
\tieDown   c'4 ees'4 ( ees'4) ees'4 ( g'4 ees'4 g'4) g'4 f'4 ( f'4) f'4 ( ees'4) \divisioMinima
 g'4  aes'4 g'4 ( f'4.) g'4 ( aes'4 g'4 ees'4.) f'4 ( g'4 ees'4 c'4.) d'4. c'4 ( d'4 bes4) ees'4 ( f'4) g'4 ( f'4) ~ f'4 ( ees'4) \divisioMaior
 bes'4 ( bes'4 c''4) bes'4 ( g'4) bes'4 ( \once \tweak #'font-size #-4 c'' ) bes'4  bes'4 ( g'4 aes'4) g'4 ( f'4 aes'4 g'4 f'4) c''4. bes'4 ( c''4 bes'4 ees'4.) f'4 ( g'4) bes'4 ( aes'4) ~ aes'4 ( g'4) \divisioMaxima
  bes'4 ( g'4) aes'4 ( bes'\prall c''4)  bes'4 ( c''4 bes'4 aes'4 g'4 aes'4) g'4  f'4 ( g'4 aes'4 bes'4) aes'4 ( g'4) \divisioMinima
  bes'4 ( g'4 aes'4) f'4 ( ees'4) ees'4 g'4 ( f'4) bes'4 ( bes'4)  bes'4 ( g'4 aes'4) f'4 ( ees'4) ees'4 ( g'4 f'4) \divisioMinima
 bes'4 ( c''4 a'4 bes'4 g'4.) ees'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( ees'4) \finalis
  ees'4 ( g'4) bes'4 ( bes'4 a'4 g'4) bes'4 ( a'4 f'4) g'4 ( g'4)  ees'4 ( f'4 g'4 aes'4 g'4 f'4) g'4 ( f'4 ees'4 f'4) \divisioMinima
 g'4 ( bes'4) c''4 ( bes'4) c''4 ( bes'4) c''4 ( d''4 bes'4) aes'4 ( bes'4) bes'4 \divisioMinima
 c''4 ( bes'4) ees''4 ( ees''4 bes'4) c''4 ( bes'4) ees''4 ( ees''4 c''4 bes'4) bes'4. a'4 ( bes'4 a'4 g'4) \divisioMaior
 bes'4 ( c''4 d''\prall ees''4) c''4 ( bes'4) bes'4 g'4 ( bes'4 bes'4 f'4) g'4 \divisioMinima
  g'4 ( aes'4 g'4 f'4.) g'4 ( aes'4 g'4 ees'4.) g'4 ( f'4 ees'4) f'4 ( ees'4) c'4 ( ees'4) ees'4 \divisioMaxima
 ees'4 ( f'4) f'4 ( g'4) bes'4 ( g'4) a'4 ( f'4) f'4 ( g'4) bes'4 ( c''4 bes'4) \divisioMinima
 bes'4 a'4 ( bes'4)  g'4 ( bes'4 f'4 ees'4.) bes'4 ( g'4) aes'4 ( g'4) \divisioMinima
 ees'4 f'4 ( g'4) g'4 g'4 bes'4 ( g'4 \once \tweak #'font-size #-4 a' )  f'4 ( g'4 a'\prall bes'4) bes'4 ( f'4) \divisioMinima
  bes'4 ( g'4 aes'4 f'4 ees'4.) f'4 ( g'4) bes'4 ( g'4 g'4) ees'4 ( f'4 ees'4) \finalis

}

altoMusic = {
r4 g2 a2*5/2 ~ a2 ~ a2 \divisioMinima
b2*9/4 ~ b2*9/4 ~ b2*9/4 cis'2*9/4 a2*3/2 ~ a2 ~ a4 \divisioMaior
d'2*5/2 cis'2*3/2 d'2*3/2 ~ d'2*5/2 ~ d'2*3/4 ~ d'2*3/2 ~ d'2*9/4 ~ d'2 ~ d'4 ~ d'2 ~ d'2*3/2 ~ d'2*7/2 ~ d'2*4/2 ~ d'2 ~ d'2*6/2 ~ d'2 cis'2 ~ cis'2*5/2 d'2*3/2 \divisioMinima
e'2*11/4 d'2*4/2 a2 ~ a4 d'2 ~ d'2*4/2 e'2*3/2 d'2 b2*6/2 cis'2*4/2 ~ \divisioMinima
cis'2*6/2 fis'2*5/2 e'4 ~ \divisioMinima
e'2 fis'2*3/2 e'2 fis'2*4/2 cis'2*11/4 \divisioMaior
fis'2*6/2 e'2 d'2*4/2 b2*9/4 ~ b2*9/4 ~ b2*5/2 ~ b2 ~ b4 \divisioMaxima
d'2 ~ d'2*6/2 e'2*5/2 ~ \divisioMinima
e'4 ~ e'2 d'2*9/4 ~ d'2*4/2 ~ \divisioMinima
d'4 ~ d'2*3/2 ~ d'4 e'2*3/2 ~ e'2*4/2 ~ e'2 d'2*11/4 ~ d'2 cis'2*3/2 a2*3/2 \finalis
}

tenorMusic = {
r4 d2 ~ d2*5/2 cis2 d2 ~ \divisioMinima
d2*9/4 e2*9/4 fis2*9/4 e2*9/4 ~ e2*3/2 ~ e2 fis4 \divisioMaior
a2*5/2 ~ a2*3/2 ~ a2*3/2 b2*5/2 g2*3/4 a2*15/4 ~ a2 ~ a4 ~ a2 ~ a2*3/2 ~ a2*7/2 b2*4/2 ~ b2 a2*6/2 b2 a2 ~ a2*5/2 ~ a2*3/2 ~ \divisioMinima
a2*11/4 ~ a2*4/2 g2 fis4 b2 a2*4/2 ~ a2*3/2 ~ a2 g2*6/2 a2*4/2 ~ \divisioMinima
a2*6/2 ~ a2*5/2 ~ a4 ~ \divisioMinima
a2 ~ a2*3/2 ~ a2 ~ a2*4/2 ~ a2*11/4 ~ \divisioMaior
a2*6/2 ~ a2 ~ a2*4/2 ~ a2*9/4 g2*9/4 fis2*5/2 e2 fis4 \divisioMaxima
b2 a2*6/2 ~ a2*5/2 \divisioMinima
cis'4 b2 a2*9/4 fis2*4/2 ~ \divisioMinima
fis4 ~ fis2*3/2 a4 ~ a2*3/2 b2*4/2 a2 ~ a2*11/4 b2 a2*3/2 fis2*3/2 \finalis
}

bassMusic = {
r4 e,2 fis,2*5/2 ~ fis,2 ~ fis,2 \divisioMinima
g,2*9/4 ~ g,2*9/4 ~ g,2*9/4 a,2*9/4 b,2*3/2 cis2 d4 \divisioMaior
fis2*5/2 ~ fis2*3/2 ~ fis2*3/2 g2*5/2 e2*3/4 fis2*15/4 e2 d4 fis2 e2*3/2 fis2*7/2 g2*4/2 b2 fis2*6/2 g2 a2 a,2*5/2 b,2*3/2 \divisioMinima
cis2*11/4 d2*4/2 ~ d2 ~ d4 b,2 ~ b,2*4/2 cis2*3/2 d2 g2*6/2 r2*4/2 \divisioMinima
fis2*6/2 d2*5/2 cis4 ~ \divisioMinima
cis2 b,2*3/2 cis2 d2*4/2 fis2*11/4 \divisioMaior
d2*6/2 cis2 b,2*4/2 e2*9/4 ~ e2*9/4 b,2*5/2 ~ b,2 ~ b,4 ~ \divisioMaxima
b,2 ~ b,2*6/2 cis2*5/2 ~ \divisioMinima
cis4 ~ cis2 d2*9/4 ~ d2*4/2 ~ \divisioMinima
d4 b,2*3/2 ~ b,4 cis2*3/2 ~ cis2*4/2 ~ cis2 b,2*11/4 g,2 a,2*3/2 d2*3/2 \finalis
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
