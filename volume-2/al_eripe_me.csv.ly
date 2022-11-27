\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.174
%(volume.page)

global = {
 \key a \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Eripe me" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Eripe me"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Eripe me" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ _ _ _ lú -- ia, _ 
\set stanza = " * " 
al -- le -- _ _ _ _ lú -- ia. _ 
_ _ _ _ _ _ _ ℣. 
E -- ri -- pe _ _ _ _ me de in -- i -- mí -- cis me -- is, 
De -- _ _ us me -- _ _ us: _ 
et ab in -- sur -- gén -- _ _ _ _ _ 
_ _ _ _ _ _ _ ti -- bus in me _ 
\set stanza = " * " 
lí -- be -- _ _ _ _ ra me. _ 
_ _ _ _ _ _ _ }

chantMusic = {
\tieDown   g'4 ( \once \tweak #'font-size #-4 a' ) a'4 c''4 ( a'4 b'4) c''4 ( b'4 g'4 a'4.) c''4 ( a'4) b'4 ( a'4) g'4 ( \once \tweak #'font-size #-4 a' ) a'4 c''4 ( b'4 a'4) \divisioMaior
 g'4 ( \once \tweak #'font-size #-4 a' ) a'4 \forceBreak
 c''4 ( a'4 b'4) c''4 ( b'4 g'4 a'4.) c''4 ( a'4) b'4 ( a'4) g'4 ( \once \tweak #'font-size #-4 a' ) a'4 c''4 ( b'4 a'4) \divisioMaior
 a'4 d''4 ( c''4 b'4 a'4.) b'4 c''4 ( b'4 a'4) ~ a'4 ( g'4) \divisioMinima \forceBreak

 a'4 d''4 ( c''4 b'4 a'4.) g'4 c''4 ( c''4) ~ c''4 ( b'4 a'4) b'4 ( b'4 a'4) \finalis
 g'4 ( a'4) a'4 a'4 ( b'4) c''4 ( a'4) b'4 ( g'4.) a'4 ( b'4 c''4 b'4 a'4) g'4 ( \once \tweak #'font-size #-4 a' ) a'4 \divisioMinima \forceBreak

 a'4 ( b'4) g'4 a'4 a'4 a'4 ( \once \tweak #'font-size #-4 d'' ) d''4 ( d''4 c''4 a'4 g'4) a'4 \divisioMaior
 d''4 ( c''4) d''4 ( c''4) d''4 ( c''4 a'4 g'4) a'4 c''4 ( b'4) c''4 ( b'4 \forceBreak
) c''4 ( b'4 a'4 g'4) a'4 c''4 ( b'4 a'4) \divisioMaxima
 a'4 a'4 c''4 ( \once \tweak #'font-size #-4 b' ) c''4 ( \once \tweak #'font-size #-4 d'' ) d''4. c''4 ( d''4 c''4) a'4 ( b'\prall c''4 b'4 c''4) a'4 ( b'4 a'4) ~ a'4 ( g'4. \forceBreak
) a'4 ( b'4 c''4 b'4 a'4 g'4 a'4) \divisioMaior
 a'4 ( b'4 c''4 d''4.) c''4 ( d''4 c''4) a'4 ( b'\prall c''4 b'4 c''4) a'4 ( b'4 a'4) ~ a'4 ( g'4.) a'4 ( b'4 c''4 b'4 a'4 g'4 a'4) \divisioMinima \forceBreak

 a'4 ( b'4 c''4 d''4) a'4 ( g'4) g'4 ( e'4) g'4 ( \once \tweak #'font-size #-4 a' ) a'4 c''4 ( b'4 a'4) \divisioMaior
 g'4 ( a'4) a'4 c''4 ( a'4 b'4) c''4 ( b'4 g'4 a'4.) c''4 ( a'4) b'4 ( a'4) g'4 ( \once \tweak #'font-size #-4 a' ) a'4 c''4 ( b'4 a'4) \divisioMaior \forceBreak

 a'4 d''4 ( c''4 b'4 a'4.) b'4 c''4 ( b'4 a'4) ~ a'4 ( g'4) \divisioMinima
 a'4 d''4 ( c''4 b'4 a'4.) g'4 c''4 ( c''4) ~ c''4 ( b'4 a'4) b'4 ( b'4 a'4) \finalis

}

altoMusic = {
e'2*3/2 ~ e'2*3/2 ~ e'2*3/2 ~ e'2*3/4 g'2*4/2 e'2*3/2 ~ e'2 ~ e'4 \divisioMaior
d'2*3/2 e'2*3/2 ~ e'2*3/2 ~ e'2*3/4 d'2*4/2 ~ d'2*3/2 ~ d'2 c'4 ~ \divisioMaior
c'4 d'2*3/2 e'2*5/4 ~ e'2 ~ e'2*3/2 \divisioMinima
r4 e'2*3/2 d'2*5/4 c'2 d'2*3/2 ~ d'2 c'4 \finalis
e'2*3/2 ~ e'2*4/2 ~ e'2*5/4 ~ e'2 ~ e'2*3/2 d'2 e'4 ~ \divisioMinima
e'2 ~ e'2 ~ e'4 f'2 a'2*3/2 e'2 ~ e'4 \divisioMaior
a'2 g'2 f'2 ~ f'2*3/2 g'2 ~ g'2 ~ g'2 d'2*3/2 e'2 ~ e'4 ~ \divisioMaxima
e'2 g'2 ~ g'2 ~ g'2*3/4 ~ g'2*3/2 f'2 ~ f'2*3/2 e'2 d'2*7/4 e'2*4/2 ~ e'2 ~ e'4 \divisioMaior
a'2*9/4 g'2*3/2 f'2 ~ f'2*3/2 e'2 ~ e'2*7/4 ~ e'2 ~ e'2 ~ e'2 ~ e'4 \divisioMinima
d'2*4/2 ~ d'2 ~ d'2 ~ d'2*3/2 ~ d'2 c'4 \divisioMaior
e'2*3/2 f'2*3/2 e'2*3/2 ~ e'2*3/4 d'2*4/2 ~ d'2*3/2 ~ d'2 c'4 ~ \divisioMaior
c'4 d'2*3/2 e'2*5/4 ~ e'2 ~ e'2*4/2 ~ e'2*3/2 d'2*5/4 c'2 d'2*3/2 ~ d'2 c'4 \finalis
}

tenorMusic = {
c'2*3/2 ~ c'2*3/2 d'2*3/2 c'2*3/4 e'2*4/2 d'2*3/2 ~ d'2 c'4 \divisioMaior
b2*3/2 a2*3/2 g2*3/2 e2*3/4 g2*4/2 e2*3/2 ~ e2 ~ e4 ~ \divisioMaior
e4 g2*3/2 e2*5/4 a2 b2*3/2 ~ \divisioMinima
b4 a2*3/2 e2*5/4 ~ e2 f2*3/2 e2 ~ e4 \finalis
c'2*3/2 ~ c'2*4/2 d'2*5/4 c'2 a2*3/2 b2 c'4 ~ \divisioMinima
c'2 ~ c'2 ~ c'4 d'2 e'2*3/2 d'2 c'4 \divisioMaior
a2 ~ a2 ~ a2 d'2*3/2 c'2 e'2 d'2 ~ d'2*3/2 ~ d'2 c'4 ~ \divisioMaxima
c'2 d'2 ~ d'2 ~ d'2*3/4 e'2*3/2 ~ e'2 d'2*3/2 c'2 b2*7/4 d'2*4/2 b2 c'4 ~ \divisioMaior
c'2*9/4 a2*3/2 c'2 ~ c'2*3/2 ~ c'2 b2*7/4 g2 ~ g2 b2 a4 \divisioMinima
f2*4/2 g2 e2 f2*3/2 e2 ~ e4 ~ \divisioMaior
e2*3/2 a2*3/2 g2*3/2 e2*3/4 g2*4/2 e2*3/2 ~ e2 ~ e4 ~ \divisioMaior
e4 g2*3/2 e2*5/4 a2 b2*3/2 ~ \divisioMinima
b4 a2*3/2 e2*5/4 ~ e2 f2*3/2 e2 ~ e4 \finalis
}

bassMusic = {
r2*3/2 a2*3/2 ~ a2*3/2 ~ a2*3/4 e2*4/2 ~ e2*3/2 a2 ~ a4 ~ \divisioMaior
a2*3/2 ~ a2*3/2 e2*3/2 c2*3/4 g,2*4/2 b,2*3/2 a,2 ~ a,4 ~ \divisioMaior
a,4 b,2*3/2 c2*5/4 ~ c2 e2*3/2 ~ \divisioMinima
e4 c2*3/2 b,2*5/4 a,2 ~ a,2*3/2 ~ a,2 ~ a,4 \finalis
r2*3/2 a2*4/2 ~ a2*5/4 ~ a2 ~ a2*3/2 ~ a2 ~ a4 \divisioMinima
r2 b2 a4 d'2 a2*3/2 ~ a2 ~ a4 \divisioMaior
f2 e2 d2 ~ d2*3/2 e2 ~ e2 g2 b2*3/2 a2 ~ a4 \divisioMaxima
r2 g2 a2 b2*3/4 e'2*3/2 r2*21/4 a2*4/2 ~ a2 ~ a4 \divisioMaior
f2*9/4 e2*3/2 ~ e2 d2*3/2 e2 ~ e2*7/4 ~ e2 d2 ~ d2 c4 ~ \divisioMinima
c2*4/2 b,2 ~ b,2 a,2*3/2 ~ a,2 ~ a,4 \divisioMaior
c2*3/2 d2*3/2 e2*3/2 c2*3/4 g,2*4/2 b,2*3/2 a,2 ~ a,4 ~ \divisioMaior
a,4 b,2*3/2 c2*5/4 ~ c2 e2*3/2 ~ \divisioMinima
e4 c2*3/2 b,2*5/4 a,2 ~ a,2*3/2 ~ a,2 ~ a,4 \finalis
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
