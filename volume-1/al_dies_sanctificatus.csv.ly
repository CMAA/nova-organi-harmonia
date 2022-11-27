\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.62
%(volume.page)

global = {
 \key g \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Dies sanctificatus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Dies sanctificatus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Dies sanctificatus" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- ia, _ _ 
\set stanza = " * " al -- le -- lú -- ia. _ _ _ _ _ _ _ ℣. 
Di -- _ _ _ es _ _ san -- cti -- fi -- cá -- tus il -- lú -- xit no -- _ _ _ _ _ _ bis: 
ve -- _ _ _ _ _ ní -- te gen -- tes, et a -- do -- rá -- te Dó -- mi -- num: 
qui -- a hó -- di -- _ e _ _ de -- scén -- dit lux ma -- _ _ _ _ _ _ gna 
\set stanza = " * " 
su -- per ter -- _ ram. _ }

chantMusic = {
\tieDown  f'4 g'4 bes'4 ( \once \tweak #'font-size #-4 c'' ) c''4 ( bes'4) c''4 ( a'4) ~ a'4 ( g'4) \divisioMinima
 f'4 g'4 bes'4 ( \once \tweak #'font-size #-4 c'' ) c''4 ( bes'4) c''4 ( a'4) ~ a'4 ( g'4) \divisioMinima
 bes'4. c''4 d''4 c''4 f'4 ( g'4) bes'4 ( g'4 \forceBreak
) bes'4. a'4 ( bes'4 f'4) bes'4 ( bes'4) ~ bes'4 ( g'4 a'\prall bes'4 g'4) \finalis
 g'4 ( f'4) g'4 ( a'\prall bes'4 c''4.) d''4 ( c''4) ~ c''4 ( bes'4 c''4) c''4. bes'4 ( bes'4) g'4 ( a'4 g'4 \forceBreak
) g'4 ( \once \tweak #'font-size #-4 a' ) g'4 g'4 g'4 ( a'4) g'4 \divisioMinima
 g'4 g'4 ( a'4) g'4 g'4 bes'4 ( bes'4) c''4 ( d''4 bes'4 g'4) c''4 ( bes'4 a'4 f'4 g'4.) bes'4 ( g'4 bes'4) ~ bes'4 ( g'4) a'4 ( f'4) f'4 \divisioMaxima \forceBreak

 g'4 ( g'4 f'4) g'4 ( g'4 f'4) g'4 ( d'4) \divisioMinima
 f'4 ( g'4) bes'4 ( bes'4 g'4 f'4) bes'4 ( bes'4 bes'4) bes'4 ( c''4) bes'4 bes'4 ( \once \tweak #'font-size #-4 c'' ) bes'4 \divisioMinima
 bes'4 bes'4 bes'4 bes'4 \forceBreak
 c''4 ( bes'4 a'4 bes'4) g'4 g'4 ( a'4 g'4) g'4 \divisioMaxima
 g'4 g'4 g'4 ( bes'4 c''4) d''4 ( c''4) ~ c''4 ( bes'4 c''4) c''4. bes'4 ( bes'4) g'4 ( a'4 g'4) \divisioMinima \forceBreak

 g'4 g'4 ( \once \tweak #'font-size #-4 a' ) g'4 g'4 g'4 bes'4 ( bes'4) c''4 ( d''4 bes'4 g'4) c''4 ( bes'4 a'4 f'4 g'4.) bes'4 ( g'4 bes'4) ~ bes'4 ( g'4) a'4 ( f'4) f'4 \divisioMaior \forceBreak

 bes'4 ( bes'4) bes'4 ( \once \tweak #'font-size #-4 c'' ) c''4 ( bes'4) d''4 ( c''4 d''4) d''4 ( d''4 c''4 bes'4 a'4 f'4.) g'4 ( a'\prall bes'4 g'4) \finalis

}

altoMusic = {
d'2 ~ d'2 ~ d'2*3/2 ~ d'2 ~ d'4 \divisioMinima
c'2 d'2 f'2 ~ f'2*3/2 d'4 \divisioMinima
g'2*3/4 f'2*3/2 ~ f'2*4/2 d'2*3/4 ~ d'2*3/2 ees'2 ees2*3/2 d'2 \finalis
r2 g'2*3/2 ~ g'2*5/4 ~ g'2*4/2 ~ g'2*7/4 ~ g'2*3/2 f'2*4/2 d'2 ~ d'4 ~ \divisioMinima
d'4 ees2*4/2 d'2*6/2 ~ d'2*11/4 ees2 f'2*3/2 d'2 ~ d'4 \divisioMaxima
bes2*3/2 a2*3/2 g2 \divisioMinima
c'2 bes2*4/2 d'2*3/2 ees'2*3/2 f'2*3/2 ~ \divisioMinima
f'2*4/2 ~ f'2 ~ f'2 ~ f'4 d'2*3/2 ~ d'4 ~ \divisioMaxima
d'2*3/2 ~ d'2*3/2 ees2*4/2 f'2*3/4 ~ f'2 d'2*3/2 ~ \divisioMinima
d'4 ees2*5/2 d'2 ~ d'2*4/2 ~ d'2*11/4 ees2 f'2*3/2 ~ f'2 ~ f'4 \divisioMaior
d'2 f'2 ~ f'2 ~ f'2*3/2 ~ f'2*4/2 ~ f'2*5/4 d'2*3/2 ~ d'4 \finalis
}

tenorMusic = {
bes2 ~ bes2 ~ bes2*3/2 c'2 bes4 \divisioMinima
c'2 bes2 ~ bes2 c'2*3/2 bes4 ~ \divisioMinima
bes2*3/4 ~ bes2*3/2 c'2*4/2 ~ c'2*3/4 bes2*3/2 ~ bes2 c'2*3/2 ~ c'4 bes4 \finalis
d'2 ~ d'2*3/2 ~ d'2*5/4 ~ d'2*4/2 ~ d'2*7/4 c'2*3/2 ~ c'2*4/2 ~ c'2 bes4 \divisioMinima
g4 ~ g2*4/2 ~ g2 ~ g2*4/2 ~ g2*11/4 ~ g2 f2*3/2 g2 a4 \divisioMaxima
d2*3/2 ~ d2*3/2 ~ d2 ~ \divisioMinima
d2 ~ d2*4/2 g2*3/2 ~ g2*3/2 f2*3/2 \divisioMinima
bes2*4/2 d'2 c'2 ~ c'4 ~ c'2*3/2 bes4 \divisioMaxima
r2*3/2 g2*3/2 ~ g2*4/2 ~ g2*3/4 f2 g2*3/2 ~ \divisioMinima
g4 ~ g2*5/2 ~ g2 a2*4/2 bes2*11/4 ~ bes2 ~ bes2*3/2 c'2 d'4 \divisioMaior
g2 f2 g2 a2*3/2 bes2*4/2 c'2*5/4 ~ c'2*3/2 bes4 \finalis
}

bassMusic = {
r2 a2 g2*3/2 ~ g2 ~ g4 \divisioMinima
a2 g2 d2 ~ d2*3/2 g4 \divisioMinima
ees2*3/4 d2*3/2 ~ d2*4/2 g2*3/4 ~ g2*3/2 c2 ~ c2*3/2 g2 \finalis
r2 bes2*3/2 a2*5/4 g2*4/2 f2*7/4 ees2*3/2 d2*4/2 g2 ~ g4 \divisioMinima
r4 c2*4/2 g,2 a2*4/2 bes,2*11/4 c2 d2*3/2 ~ d2 ~ d4 \divisioMaxima
g,2*3/2 ~ g,2*3/2 ~ g,2 \divisioMinima
a2 ~ a2*4/2 g,2*3/2 c2*3/2 d2*3/2 ~ \divisioMinima
d2*4/2 ~ d2 ~ d2 g4 ~ g2*3/2 ~ g4 \divisioMaxima
bes,2*3/2 ~ bes,2*3/2 c2*4/2 d2*3/4 ~ d2 g2*3/2 ~ \divisioMinima
g4 c2*5/2 bes,2 ~ bes,2*4/2 ~ bes,2*11/4 c2 d2*3/2 ~ d2 ~ d4 \divisioMaior
r2 d2 ~ d2 ~ d2*3/2 ~ d2*4/2 ~ d2*5/4 g2*3/2 ~ g4 \finalis
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
        "II"
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
