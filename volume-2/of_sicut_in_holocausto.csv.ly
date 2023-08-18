\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.164
%(volume.page)

global = {
 \key f \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Sicut in holocausto" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Sicut in holocausto"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Sicut in holocausto" }
    \line {}
  }
}

chantText = \lyricmode {
Sic -- ut 
\set stanza = " * " in ho -- lo -- cáu -- _ sto a -- rí -- e -- tum et tau -- ró -- _ rum, 
et sic -- ut in míl -- li -- _ bus a -- gnó -- rum pín -- gui -- um: 
sic fi -- _ at sa -- cri -- fí -- ci -- um no -- _ strum 
in con -- spé -- ctu tu -- o hó -- _ di -- e, 
ut plá -- _ ce -- at ti -- bi: 
qui -- a non _ est con -- fú -- si -- o 
con -- fi -- dén -- ti -- bus _ in te Dó -- mi -- ne. _ _ _ _ }

chantMusic = {
\tieDown    f'4 ( g'\prall a'4 bes'4) a'4  a'4  a'4 ( bes'4) a'4 a'4 ( g'4) ~ g'4 ( f'4 g'4) g'4 ( f'4) f'4 g'4 ( f'4 g'4)  a'4 ( bes'4 a'4) a'4 \divisioMinima \forceBreak

 a'4 ( \once \tweak #'font-size #-4 c'' ) c''4 ( \tiny b' a' 4) c''4. b'4 ( c''4 a'4 b'4) a'4 \divisioMaior
 a'4 a'4 ( c''\prall d''4 e''4) d''4 d''4 d''4 ( e''4 d''4) c''4 ( c''4) d''4 ( c''4) c''4 \divisioMinima \forceBreak

 c''4 c''4 ( d''4 c''4) c''4 c''4 ( \once \tweak #'font-size #-4 b' ) b'4 ( c''\prall d''4 c''4 b'4 a'4 b'4) b'4 ( a'4) \divisioMaxima
 a'4 ( f'4 a'4) a'4 ( b'\prall c''4) ~ c''4 ( b'4 a'4 b'4) b'4 ( a'4) \divisioMinima \forceBreak

 a'4 c''4 c''4 b'4 ( c''\prall d''4 c''4 b'4 a'4 b'4) b'4 ( a'4) a'4 ( g'4) b'4 ( a'4 g'4 a'4) g'4 \divisioMaior
 g'4 g'4 ( \once \tweak #'font-size #-4 d'' ) d''4 ( e''4 d''4) c''4 c''4 ( d''4 c''4) c''4 \divisioMinima \forceBreak

 c''4 ( a'4) c''4 ( c''4) d''4 ( c''4) c''4 \divisioMaior
 a'4 ( f'4 a'4) a'4 ( b'\prall c''4 b'4) c''4 ( d''4 c''4) a'4 g'4 ( a'4 g'4) f'4 ( g'4 a'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMaxima
 f'4 g'4 ( a'4 \forceBreak
) a'4 ( b'\prall c''4 b'4) c''4 ( d''4 c''4) a'4 g'4 ( \once \tweak #'font-size #-4 a' ) f'4 f'4 ( g'4 a'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMaior
 f'4 g'4 ( a'4) a'4 g'4 a'4 ( b'\prall c''4 b'4) c''4 ( d''4 c''4 \forceBreak
) a'4 g'4 ( a'4) \divisioMinima
 f'4 f'4 ( g'4 a'4 g'4 f'4 g'4) f'4 ( g'\prall a'4 g'4) a'4 ( c''4 a'4) \divisioMinima
 f'4 ( g'\prall a'4 g'4) a'4 ( c''4 a'4 a'4) f'4 ( g'4 f'4) \finalis

}

altoMusic = {
c'2 ~ c'2 ~ c'2 d'2*4/2 e'2*4/2 d'2*3/2 c'2*3/2 ~ c'2*4/2 \divisioMinima
d'2 e'2*3/2 f'2*3/4 g'2*4/2 e'4 ~ \divisioMaior
e'4 ~ e'2*4/2 a'2 f'2*3/2 g'2 ~ g'2 ~ g'4 ~ \divisioMinima
g'4 e'2*4/2 g'2 ~ g'2*4/2 ~ g'2*3/2 e'2 \divisioMaxima
f'2*3/2 ~ f'2 ~ f'2*5/2 e'2 \divisioMinima
f'2 e'4 d'2*4/2 ~ d'2*3/2 c'2 d'2 e'2*4/2 d'4 ~ \divisioMaior
d'4 ~ d'2 g'2*4/2 ~ g'2*3/2 e'4 ~ \divisioMinima
e'2 a'2*4/2 g'4 \divisioMaior
f'2*3/2 ~ f'2*4/2 e'2*4/2 c'2*3/2 d'2 e'2*4/2 c'2 \divisioMaxima
r4 c'2 f'2*4/2 e'2*4/2 ~ e'2 ~ e'4 d'2*6/2 ~ d'2 ~ \divisioMaior
d'4 e'2 ~ e'2 d'2*4/2 c'2*4/2 e'2 \divisioMinima
d'4 c'2 ~ c'2*4/2 a2*4/2 c'2*3/2 \divisioMinima
d'2*4/2 c'2*4/2 bes2 a4 \finalis
}

tenorMusic = {
a2 f2 ~ f2 ~ f2*4/2 c'2*4/2 a2*3/2 g2*3/2 f2*4/2 \divisioMinima
a2 ~ a2*3/2 ~ a2*3/4 d'2*4/2 c'4 ~ \divisioMaior
c'4 a2*4/2 ~ a2 ~ a2*3/2 g2 b2 c'4 ~ \divisioMinima
c'4 ~ c'2*4/2 d'2 e'2*4/2 d'2*3/2 c'2 ~ \divisioMaxima
c'2*3/2 a2 ~ a2*5/2 ~ a2 \divisioMinima
f2 ~ f4 g2*4/2 ~ g2*3/2 ~ g2 ~ g2 ~ g2*4/2 ~ g4 ~ \divisioMaior
g4 b2 ~ b2*4/2 c'2*3/2 ~ c'4 ~ \divisioMinima
c'2 ~ c'2*4/2 ~ c'4 ~ \divisioMaior
c'2*3/2 a2*4/2 ~ a2*4/2 ~ a2*3/2 ~ a2 c'2*4/2 a2 \divisioMaxima
r4 g2 f2*4/2 a2*4/2 ~ a2 ~ a4 bes2*6/2 a2*3/2 ~ a2 ~ a2 e2*4/2 ~ e2*4/2 a2 ~ \divisioMinima
a4 ~ a2 f2*4/2 ~ f2*4/2 e2*3/2 \divisioMinima
f2*4/2 ~ f2*4/2 c2 ~ c4 \finalis
}

bassMusic = {
f2 ~ f2 r2 bes,2*4/2 c2*4/2 d2*3/2 e2*3/2 f2*4/2 ~ \divisioMinima
f2 c2*3/2 d2*3/4 e2*4/2 a4 ~ \divisioMaior
a4 g2*4/2 f2 d2*3/2 e2 ~ e2 ~ e4 ~ \divisioMinima
e4 a2*4/2 g2 e2*4/2 ~ e2*3/2 a2 \divisioMaxima
f2*3/2 e2 d2*5/2 c2 \divisioMinima
d2 ~ d4 g2*4/2 g,2*3/2 a,2 b,2 c2*4/2 b,4 ~ \divisioMaior
b,4 ~ b,2 e2*4/2 ~ e2*3/2 a4 \divisioMinima
g2 f2*4/2 e4 ~ \divisioMaior
e2*3/2 d2*4/2 c2*4/2 e2*3/2 d2 c2*4/2 f2 \divisioMaxima
r4 e2 d2*4/2 a,2*4/2 c2 d4 ~ d2*6/2 ~ d2*3/2 ~ d2 c2 b,2*4/2 a,2*4/2 c2 \divisioMinima
d4 a,2 ~ a,2*4/2 d2*4/2 c2*3/2 \divisioMinima
bes,2*4/2 f,2*4/2 ~ f,2 ~ f,4 \finalis
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
