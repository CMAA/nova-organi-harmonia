\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.212
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Miserere... ad te" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Miserere... ad te"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Miserere... ad te" }
    \line {}
  }
}

chantText = \lyricmode {
Mi -- se -- ré -- re mi -- hi 
\set stanza = " * " Dó -- mi -- ne, 
quó -- ni -- _ am ad te cla -- má -- _ vi to -- ta _ di -- e: 
qui -- _ a tu Dó -- mi -- ne su -- á -- vis ac mi -- tis es, 
et co -- pi -- ó -- _ _ _ sus in mi -- se -- ri -- cór -- di -- a 
ó -- _ mni -- bus in -- vo -- cán -- ti -- _ _ _ bus te. Ps. 
In -- clí -- na Dó -- mi -- ne au -- rem tu -- am et ex -- áu -- di me: 
\set stanza = " * " 
quó -- ni -- am in -- ops et pau -- per sum e -- go. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   f'4 bes'4 ( bes'4.) g'4 ( f'4) g'4 ( ees'4) f'4 g'4  bes'4 ( bes'4 c''4) bes'4 bes'4 \divisioMaior
 bes'4 bes'4 ( bes'4) ~ bes'4 ( f'4) f'4 f'4 ( \once \tweak #'font-size #-4 g'  \forceBreak
) g'4 g'4 g'4 ( f'4) g'4 ( f'4 ees'4 f'4) f'4 ( ees'4) \divisioMinima
 ees'4 ( g'4 bes'4) bes'4 ( bes'4) ~ bes'4 ( g'4 f'4) f'4 ( g'4 f'4) f'4 \divisioMaxima
 f'4 ( g'4) bes'4 ( a'4 bes'4 \forceBreak
) bes'4 bes'4 bes'4 g'4 ( bes'4 c''4 bes'4 a'4 bes'4) bes'4 ( a'4) \divisioMinima
 bes'4 a'4 ( bes'4 c''4) c''4 ( a'4) a'4 ( c''4) bes'4 ( a'4) a'4 a'4 \divisioMaior
 a'4 a'4 c''4 \forceBreak
 ees''4 ( c''4) ees''4 ( ees''4) ~ ees''4 ( c''4) ~ c''4 ( bes'4 c''4) c''4 ( bes'4) \divisioMinima
 bes'4 ( \once \tweak #'font-size #-4 a' ) bes'4 c''4 d''4 ( ees''4) c''4 ( c''4 bes'4 c''4) a'4 ( bes'4 c''4 bes'4 a'4 bes'4) bes'4 ( a'4) \divisioMaior \forceBreak

 a'4 ( bes'4) c''4 ( bes'4) bes'4 ( bes'4 bes'4) g'4 f'4 ( g'4) ees'4 ( f'4) f'4 ( bes'4) bes'4 ( bes'4 a'4) bes'4 ( a'4 g'4) a'4 ( g'4) a'4 ( f'4 f'4) f'4 ( g'4 f'4) f'4 \finalis \forceBreak

 f'4 g'4 ( f'4) f'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 ( a'4) bes'4 ( c''4) c''4 bes'4 ( c''4) bes'4 bes'4 \divisioMaxima \forceBreak

 bes'4 ( g'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) f'4 ( g'4) bes'4 ( a'4) g'4 f'4 \finalis
  f'4 g'4 ( f'4) f'4 ( bes'4 \forceBreak
) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 bes'4 ( a'4) bes'4 ( c''4) c''4 bes'4 ( c''4) bes'4 \divisioMaxima
 bes'4 ( g'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 \forceBreak
 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 ( a'4) bes'4 ( c''4) c''4 bes'4 ( c''4) bes'4 \divisioMaxima
 bes'4 ( g'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) f'4 ( g'4) bes'4 ( a'4) g'4 f'4 \finalis

}

altoMusic = {
f'4 ~ f'2*5/4 ~ f'2 ees'2 ~ ees'2 f'2*5/2 \divisioMaior
d'4 ees'2 f'2 ~ f'4 d'2 ~ d'2 c'2 bes2*4/2 c'2 \divisioMinima
f'4 ees'2 d'2 ees'2*3/2 c'2*3/2 ~ c'4 \divisioMaxima
d'2 ~ d'2*3/2 ~ d'2 g'4 ~ g'2 ~ g'2*4/2 f'2*3/2 ~ f'2*3/2 ~ f'2 d'2 ~ d'2*3/2 ~ d'4 ~ \divisioMaior
d'4 f'2 g'2 ~ g'2*3/2 d'2*4/2 f'2 ~ \divisioMinima
f'2 ~ f'2 g'2 ~ g'2*4/2 ~ g'2*6/2 f'2 ~ \divisioMaior
f'2 ~ f'2 d'2*4/2 r2 ees'2 d'2 ~ d'2*3/2 ~ d'2*5/2 ~ d'2*3/2 c'2*3/2 ~ c'4 \finalis
r4 d'2 ~ d'2 ~ d'2*5/2 g'4 ~ g'2 ~ g'2*3/2 f'2*3/2 ~ f'4 \divisioMaxima
d'2 ees'2 d'2*4/2 ~ d'2*3/2 c'2 ees'2 c'2 r4 d'2 ~ d'2 ~ d'2 ees'4 f'2*3/2 ~ \divisioMinima
f'2 ees'2 g'2*3/2 f'2 ~ f'4 \divisioMaxima
d'2 ees'2 d'2*4/2 ~ d'2*3/2 \divisioMinima
f'2 ees'2*3/2 ~ ees'2 d'4 ~ \divisioMaxima
d'2 ees'2*3/2 d'2*3/2 ~ d'2*3/2 c'2 ees'2 c'2 \finalis
}

tenorMusic = {
r4 bes2*5/4 ~ bes2 ~ bes2 ~ bes2 ~ bes2*5/2 ~ \divisioMaior
bes4 ~ bes2 ~ bes2*3/2 a2 g2 ~ g2 ~ g2*4/2 ~ g2 ~ \divisioMinima
g4 ees2 g2 bes2*3/2 ~ bes2*3/2 a4 \divisioMaxima
bes2 ~ bes2*3/2 ~ bes2 d'4 ~ d'2 ees'2*4/2 c'2 ~ \divisioMinima
c'4 bes2*3/2 a2 ~ a2 g2*3/2 f4 ~ \divisioMaior
f4 ~ f2 c'2 bes2*3/2 a2*4/2 bes2 \divisioMinima
d'2 ~ d'2 bes2 ees'2*4/2 d'2*6/2 ~ d'2 \divisioMaior
c'2 bes2 ~ bes2*4/2 ~ bes2 ~ bes2 a2 g2*3/2 f2*5/2 bes2*3/2 ~ bes2*3/2 a4 \finalis
r4 bes2 ~ bes2 ~ bes2*6/2 ~ bes2 g2*3/2 bes2*3/2 ~ bes4 \divisioMaxima
g2 ~ g2 ~ g2*4/2 f2*3/2 a2 g2 bes4 a4 r4 bes2 ~ bes2 ~ bes2*3/2 ~ bes2*5/2 ~ bes2 ~ bes2*3/2 ~ bes2 ~ bes4 ~ \divisioMaxima
bes2 c'2 bes2*4/2 g2*3/2 ~ \divisioMinima
g2 ~ g2*3/2 ~ g2 ~ g4 ~ \divisioMaxima
g2 ~ g2*3/2 ~ g2*3/2 f2*3/2 a2 g2 bes4 a4 \finalis
}

bassMusic = {
r4 d2*5/4 ees2 ~ ees2 c2 d2*5/2 \divisioMaior
g4 ~ g2 d2*3/2 ~ d2 bes,2 a,2 g,2*4/2 c2 ~ \divisioMinima
c4 ~ c2 bes,2 c2*3/2 f2*3/2 ~ f4 \divisioMaxima
r2 a2*3/2 g2 ~ g4 c2 ees2*4/2 f2 ~ \divisioMinima
f4 d2*3/2 ~ d2 f2 g2*3/2 d4 ~ \divisioMaior
d4 ~ d2 c2 ~ c2*3/2 f2*4/2 d2 ~ \divisioMinima
d2 g2 f2 ees2*4/2 g2*6/2 d2 ~ \divisioMaior
d2 ~ d2 g2*4/2 d2 c2 bes,2 ~ bes,2*3/2 d2*5/2 ~ d2*3/2 f2*3/2 ~ f4 \finalis
bes4 ~ bes2 a2 g2*6/2 ees2 ~ ees2*3/2 ~ ees2*3/2 d4 \divisioMaxima
g,2 c2 g,2*4/2 d2*3/2 ~ d2 c2 f2 bes4 ~ bes2 a2 g2*3/2 d2*3/2 ~ \divisioMinima
d2 c2 ees2*3/2 ~ ees2 d4 \divisioMaxima
g2 ~ g2 ~ g2*4/2 ~ g2*3/2 \divisioMinima
d2 c2*3/2 g2 r4 \divisioMaxima
g,2 c2*3/2 g,2*3/2 d2*3/2 ~ d2 c2 f2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Introit"
        "VIII."
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
