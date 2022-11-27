\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.124
%(volume.page)

global = {
 \key f \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Dicit Dominus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Dicit Dominus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Dicit Dominus" }
    \line {}
  }
}

chantText = \lyricmode {
Di -- cit Dó -- mi -- _ nus: 
\set stanza = " * " 
im -- plé -- te hý -- dri -- as a -- _ qua 
et fer -- te ar -- chi -- tri -- clí -- no. 
Cum gu -- stás -- set ar -- chi -- tri -- clí -- nus 
a -- quam vi -- num fa -- ctam, 
di -- _ cit spon -- so: 
Ser -- vá -- sti vi -- num bo -- num us -- _ que ad -- huc. 
Hoc si -- gnum fe -- cit Je -- sus pri -- mum co -- ram di -- scí -- pu -- lis su -- is. }

chantMusic = {
\tieDown   f'4 ( a'4) a'4  a'4 ( bes'4 a'4 g'4) a'4 ( g'4) ~ g'4 ( f'4 g'4) f'4 ( g'4) \divisioMaior
 d'4 ( \once \tweak #'font-size #-4 f' ) f'4 d'4 ( f'4) f'4 f'4 ( f'4 f'4) d'4 ( f'4 \forceBreak
) f'4 ( f'4) g'4 ( f'4) f'4 \divisioMaior
 f'4 g'4 ( \once \tweak #'font-size #-4 a' ) a'4 a'4 ( \once \tweak #'font-size #-4 g' ) a'4 a'4 ( b'\prall c''4) g'4 ( a'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMaxima
 f'4 g'4 ( a'4 g'4 \forceBreak
) a'4 ( c''4 b'4 c''4)  a'4 ( a'4 bes'4) g'4 ( \once \tweak #'font-size #-4 a' ) f'4 g'4 ( a'4 g'4 a'4) g'4 ( a'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMaior
 a'4 g'4 ( a'4 g'4) a'4 ( g'4) f'4 ( g'4 \forceBreak
) g'4 ( a'4 g'4) g'4 \divisioMaior
  bes'4 ( bes'4) g'4 ( bes'4 c''4) bes'4 ( \once \tweak #'font-size #-4 a' ) f'4 ( g'4 \once \tweak #'font-size #-4 f' ) f'4 \divisioMaxima
 a'4 ( \once \tweak #'font-size #-4 g' ) c''4 ( e''4 d''4) c''4 c''4 ( e''4 d''4) c''4 b'4 ( a'4 b'\prall c''4 \forceBreak
) a'4 ( g'4) \divisioMinima
 g'4 ( a'4) c''4 ( e''4 d''4) c''4 a'4 ( c''4) c''4 ( g'4) \divisioMaxima
 c''4 c''4 b'4 a'4 g'4 g'4 f'4 ( a'4) f'4 ( g'4) g'4 \divisioMinima \forceBreak

 a'4 b'4 c''4 b'4 ( a'4) g'4 ( f'4) g'4 ( a'4) f'4 f'4 \finalis

}

altoMusic = {
f'2*3/2 ~ f'2*5/2 ~ f'2*4/2 ~ f'4 e'4 \divisioMaior
d'2 ~ d'2*4/2 ~ d'2*5/2 c'2*4/2 ~ c'4 ~ \divisioMaior
c'4 f'2*3/2 ~ f'2*3/2 e'2*3/2 ~ e'2 ~ e'2*3/2 d'2 \divisioMaxima
r4 c'2*3/2 ~ c'2*4/2 bes2*3/2 c'2*3/2 d'2*4/2 c'2 ~ c'2*3/2 a2 \divisioMaior
c'2*4/2 ~ c'2 ~ c'2 ~ c'2*3/2 ~ c'4 d'2*3/2 f'2 ~ f'2 c'2*3/2 ~ c'4 \divisioMaxima
e'2 g'2*4/2 ~ g'2*4/2 e'2*4/2 d'2 \divisioMinima
e'2 g'2*4/2 e'2 d'2 \divisioMaxima
g'4 ~ g'2 e'2 ~ e'4 d'2 ~ d'2 ~ d'4 \divisioMinima
e'2*3/2 ~ e'2 r2 e'2 c'2 \finalis
}

tenorMusic = {
d'2*3/2 c'2*4/2 ~ c'2*3/2 d'2 c'2 ~ \divisioMaior
c'2 bes4 b'2*3/2 b2*5/2 ~ b2*4/2 a4 ~ \divisioMaior
a4 ~ a2*3/2 ~ a2*3/2 c'2*3/2 b2 a2*3/2 ~ a2 \divisioMaxima
f4 ~ f2*3/2 e2*4/2 f2*3/2 ~ f2*3/2 ~ f2*4/2 ~ f2 e2*3/2 f2 ~ \divisioMaior
f4 e2*3/2 f2 ~ f2 ~ f2*3/2 e4 g2*3/2 f2 bes2 b2*3/2 a4 ~ \divisioMaxima
a2 g2*4/2 c'2*4/2 ~ c'2*4/2 b2 \divisioMinima
c'2 ~ c'2*4/2 ~ c'2 ~ c'4 b4 \divisioMaxima
g4 a2 b2 c'4 ~ c'2 ~ c'2 b4 \divisioMinima
a2*3/2 g2 a2 ~ a2 g4 a4 \finalis
}

bassMusic = {
r2*3/2 a2*4/2 c'2*3/2 ~ c'2 ~ c'2 \divisioMaior
r2*3/2 a2*3/2 g2*5/2 f2*4/2 ~ f4 ~ \divisioMaior
f4 e2*3/2 d2*3/2 c2*3/2 ~ c2 ~ c2*3/2 d2 \divisioMaxima
r4 a,2*3/2 ~ a,2*4/2 g,2*3/2 a,2*3/2 bes,2*4/2 c2 ~ c2*3/2 d2 \divisioMaior
a,2*4/2 ~ a,2 d2 c2*3/2 ~ c4 r2*3/2 d2 ~ d2 f2*3/2 ~ f4 \divisioMaxima
c2 e2*4/2 ~ e2*4/2 a2*4/2 ~ a2 ~ \divisioMinima
a2 e2*4/2 f2 g2 \divisioMaxima
e4 ~ e2 ~ e2 ~ e4 a2 c'2 r4 \divisioMinima
r2*3/2 e2 d2 c2 f2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Communion"
        "VI"
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
