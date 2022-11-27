\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.304
%(volume.page)

global = {
 \key f \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Coeperunt omnes turbae" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Coeperunt omnes turbae"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Coeperunt omnes turbae" }
    \line {}
  }
}

chantText = \lyricmode {
Cœ -- pé -- runt 
\set stanza = " * " o -- mnes tur -- bæ de -- scen -- dén -- ti -- um _ 
gau -- dén -- tes lau -- dá -- re De -- um vo -- ce mag -- na, 
su -- per ó -- _ mni -- bus 
quas ví -- de -- rant vir -- tú -- ti -- bus, di -- cén -- tes: 
<<Be -- ne -- dí -- ctus qui ve -- nit Rex, in nó -- mi -- ne Dó -- mi -- ni; 
pax in ter -- ra, et gló -- ri -- a in ex -- cél -- sis>>. }

chantMusic = {
\tieDown   ees'4 ees'4 ( f'4) f'4  f'4 f'4 aes'4 f'4 ( ees'4 f'4) ees'4 f'4 ( aes'4) aes'4 aes'4 ( g'4) f'4 ( ees'4) f'4 ( f'4 ees'4) \divisioMaior \forceBreak

 aes'4 bes'4 ( aes'4 bes'\prall c''4 bes'4) c''4 ( bes'4) c''4 bes'4 bes'4 ( g'4) aes'4 aes'4 ( g'4) aes'4 ( bes'4) g'4 ( aes'4) f'4 ( g'4) f'4 \divisioMaxima \forceBreak

 c''4 bes'4 c''4 ( bes'4) c''4 ees''4 ( d''4 ees''4) c''4 ( bes'4 c''\prall d''4 c''4 d''4) d''4 ( c''4) \divisioMaior
 c''4 ( bes'4) c''4 bes'4 ( aes'4) aes'4 bes'4 aes'4 aes'4 ( g'4 \forceBreak
) bes'4 ( c''4) aes'4 ( g'4) f'4 ( g'4) f'4 \divisioMaxima
 aes'4 ( g'4) f'4 ( ees'4) f'4 aes'4 ( g'4) aes'4 bes'4 ( g'4) aes'4 ( \once \tweak #'font-size #-4 g' ) f'4 \divisioMinima
 ees'4 f'4 aes'4 aes'4 ( f'4 \forceBreak
) g'4 f'4 ( ees'4) ees'4 \divisioMaior
 ees'4 f'4 aes'4 bes'4 ( g'4) bes'4 bes'4 ( c''4) aes'4 ( g'4) f'4 ( ees'4) f'4 aes'4 ( g'4) aes'4 ( \once \tweak #'font-size #-4 g' ) f'4 \finalis

}

altoMusic = {
c'4 ~ c'2*3/2 ~ c'2*3/2 bes2*4/2 c'2 ~ c'4 ees'2 ~ ees'2 bes2 ~ bes4 \divisioMaior
ees'4 d'2*5/2 ees'2*3/2 ~ ees'4 ~ ees'2*3/2 ~ ees'2 ~ ees'2*4/2 c'2 ~ c'4 \divisioMaxima
ees'2 ~ ees'2*3/2 g'2*3/2 ~ g'2*3/2 ~ g'2*3/2 ~ g'2 \divisioMaior
f'2 ees'4 c'2*4/2 ees'4 ~ ees'2 ~ ees'2 ~ ees'2 c'2 ~ c'4 \divisioMaxima
ees'2 ~ ees'2*3/2 c'2*3/2 ees'2 ~ ees'2 c'2 ~ c'2 ~ c'2 ees'4 bes2 ~ bes4 \divisioMaior
c'2 ~ c'4 ees'2*3/2 f'2 ees'2 ~ ees'2*3/2 ~ ees'2 c'2 ~ c'4 \finalis
}

tenorMusic = {
aes4 ~ aes2*3/2 ~ aes2*3/2 g2*4/2 f2 ees4 ~ ees2 aes2 ~ aes2 g4 \divisioMaior
aes4 f2*5/2 g2*3/2 ~ g4 bes2*3/2 c'2 bes2*4/2 ~ bes2 aes4 ~ \divisioMaxima
aes2 g2*3/2 c'2*3/2 d'2*3/2 ~ d'2*3/2 ees'2 \divisioMaior
aes2 g4 f2*4/2 ees4 aes2 ~ aes2 bes2 ~ bes2 aes4 ~ \divisioMaxima
aes2 bes2*3/2 aes2*3/2 g2 bes2 aes2 ~ aes2 ~ aes2 bes4 aes2 g4 \divisioMaior
aes2 f4 g2*3/2 ~ g2 aes2 bes2*3/2 ~ bes2 ~ bes2 aes4 \finalis
}

bassMusic = {
r4 g2*3/2 f2*3/2 ~ f2*4/2 ~ f2 c4 ~ c2 ~ c2 ees2 ~ ees4 \divisioMaior
c4 ~ c2*5/2 ~ c2*3/2 ees4 ~ ees2*3/2 ~ ees2 ~ ees2*4/2 f2 ~ f4 \divisioMaxima
c2 ~ c2*3/2 ~ c2*3/2 g2*3/2 f2*3/2 ees2 ~ \divisioMaior
ees2 ~ ees4 f2*4/2 c4 ~ c2 ~ c2 ~ c2 f2 ~ f4 \divisioMaxima
c2 g2*3/2 f2*3/2 ees2 ~ ees2 aes2 g2 f2 ees4 ~ ees2 ~ ees4 \divisioMaior
aes2 ees4 ~ ees2*3/2 d2 c2 g2*3/2 ees2 f2 ~ f4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Antiphon"
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
