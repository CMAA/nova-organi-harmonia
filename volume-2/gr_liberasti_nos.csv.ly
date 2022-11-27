\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.256
%(volume.page)

global = {
 \key d \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Liberasti nos" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Liberasti nos"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Liberasti nos" }
    \line {}
  }
}

chantText = \lyricmode {
Li -- be -- rá -- sti nos, 
\set stanza = " * " Dó -- mi -- ne, _ _ _ 
ex af -- fli -- gén -- ti -- bus _ nos: _ _ _ 
et e -- os qui nos o -- dé -- _ _ runt, 
con -- fu -- _ _ _ dí -- sti. _ _ _ _ _ ℣. 
In De -- _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ o 
lau -- dá -- bi -- mur to -- _ ta _ di -- _ _ e, _ _ _ _ 
et nó -- mi -- ni tu -- o _ _ _ 
con -- fi -- té -- bi -- _ mur 
\set stanza = " * " in sǽ -- cu -- _ la. 
_ _ _ _ _ }

chantMusic = {
\tieDown   e'4 g'4 ( g'4) g'4 ( a'4) g'4 ( a'4 b'4) g'4 ( fis'4 g'4) \divisioMinima
 c''4 ( b'4 c''4 a'4) g'4 ( a'4) a'4 ( e'4.) a'4 ( c''4 b'4) c''4 ( d''4 b'4) ~ b'4 ( a'4) \divisioMaior \forceBreak

 a'4 a'4 ( c''4 b'4) c''4 d''4 d''4 a'4 d''4 ( b'4) c''4 ( b'4 c''4 a'4) a'4 ( fis'4.) g'4 ( a'4 g'4) a'4 ( e'4) ~ e'4 ( d'4) \divisioMaxima
 d'4 e'4 ( g'4) g'4 ( e'4 g'4) e'4 \forceBreak
 g'4 ( fis'4) g'4 ( a'4) a'4 ( a'4 g'4 a'4 e'4.) fis'4 ( g'4) a'4 ( g'4 a'4) g'4 ( fis'4) \divisioMaior
 a'4 ( c''4 b'4) d''4 ( b'4) ~ b'4 ( a'4) ~ a'4 ( fis'4) g'4. e'4 ( g'4 fis'4) d'4 ( e'4 d'4) d'4 ( fis'4 a'4) \divisioMinima \forceBreak

 d'4 ( fis'4) a'4 ( a'4 g'4 e'4.) d'4 ( fis'4 e'4) fis'4 ( e'4) ~ e'4 ( d'4) \finalis
 d'4 ( a'4) a'4. g'4 ( a'4 b'4 g'4 e'4) a'4 ( g'4 fis'4 d'4 e'4.) g'4 ( g'4 e'4) fis'4 ( e'4 d'4) e'4 ( d'4 c'4 d'4) \divisioMinima \forceBreak

 g'4 ( g'4) ~ g'4 ( g'4) ~ g'4 ( d'4) e'4 ( g'4 e'4 c'4) e'4 ( g'4 e'4 c'4 d'4) \divisioMinima
 g'4 ( g'4 a'4) c''4 ( c''4) ~ c''4 ( a'4 g'4 fis'4) a'4 ( b'4 a'4 g'4 fis'4) g'4 ( a'4) a'4 \divisioMaior \forceBreak

 b'4 ( c''4 \once \tweak #'font-size #-4 d'' ) d''4 c''4 c''4 ( b'4) c''4 ( b'4) c''4 ( e''4 d''4) d''4 ( c''4) ~ c''4 ( a'4) \divisioMinima
 a'4 ( c''4 a'4) c''4 ( c''4 a'4 g'4) a'4 ( b'\prall c''4 b'4) c''4 ( c''4 \forceBreak
) ~ c''4 ( b'4 a'4) b'4 ( g'4) a'4 ( g'4 fis'4) g'4 ( fis'4) \divisioMaxima
 d'4 g'4 ( g'4) e'4 d'4 a'4 ( g'4 a'4) a'4 ( a'4 fis'4.) g'4 ( a'4 g'4) a'4 ( e'4) ~ e'4 ( d'4) \divisioMaior \forceBreak

 d'4 e'4 g'4 ( a'4 g'4) e'4 ( a'4 g'4) a'4 ( b'4) a'4 \divisioMinima
 d'4 ( e'4) g'4 ( a'4 g'4) e'4 ( a'4 g'4) a'4 ( b'4) a'4 \divisioMaior \forceBreak

 d'4 ( a'4) c''4 ( a'4 b'\prall c''4 a'4) c''4 ( c''4 a'4) g'4 ( g'4 e'4.) d'4 ( fis'4 e'4 d'4) \finalis

}

altoMusic = {
e'4 ~ e'2 ~ e'2 d'2*3/2 ~ d'2*3/2 \divisioMinima
e'2*4/2 ~ e'2 ~ e'2*5/4 g'2*3/2 ~ g'2 fis'2*3/2 ~ \divisioMaior
fis'4 e'2*3/2 ~ e'2 d'2 ~ d'2 e'2*4/2 d'2*5/4 ~ d'2*4/2 a2 ~ a4 \divisioMaxima
r4 b2 c'2*4/2 d'2 ~ d'2 e'2*3/2 ~ e'2*5/4 d'2 ~ d'2*3/2 ~ d'2 \divisioMaior
e'2*4/2 d'2 ~ d'2*3/2 ~ d'2*3/4 c'2*3/2 a2*3/2 ~ a2*3/2 \divisioMinima
d'2 b2*3/2 ~ b2*3/4 ~ b2 c'2 a2 ~ a4 \finalis
d'2 ~ d'2*3/4 ~ d'2*5/2 ~ d'2*4/2 ~ d'2*3/4 ~ d'2*3/2 ~ d'2 ~ d'4 c'2 ~ c'4 a4 \divisioMinima
b2 e'2 d'2 c'2*4/2 ~ c'2*3/2 ~ c'4 d'4 ~ \divisioMinima
d'2*3/2 c'2 e'2*4/2 d'2*5/2 ~ d'2 ~ d'4 ~ \divisioMaior
d'2*3/2 e'2 ~ e'2 ~ e'2 g'2*4/2 e'2*3/2 ~ \divisioMinima
e'2*3/2 ~ e'2 ~ e'2 ~ e'2 ~ e'2 a'2 g'2*3/2 ~ g'2 r2*5/2 \divisioMaxima
d'4 ~ d'2 e'4 d'4 ~ d'2*3/2 ~ d'2*7/4 ~ d'2*4/2 r2*3/2 \divisioMaior
b2 ~ b2*3/2 e'2*3/2 ~ e'2*3/2 \divisioMinima
d'2 ~ d'2*3/2 c'2*3/2 d'2 c'4 \divisioMaior
d'2 e'2*3/2 ~ e'2 ~ e'2*3/2 c'2 ~ c'2*3/4 a2*3/2 ~ a4 \finalis
}

tenorMusic = {
r2*3/2 c'2 ~ c'2*3/2 b2*3/2 \divisioMinima
a2*4/2 b2 c'2*5/4 ~ c'2*3/2 a2 d'2*3/2 ~ \divisioMaior
d'4 ~ d'2*3/2 c'2 a2 ~ a2 g2*4/2 a2*5/4 ~ a2*4/2 g2 fis4 \divisioMaxima
r4 g2 ~ g2*4/2 ~ g2 ~ g2 ~ g2*3/2 e2*5/4 a2 fis2*3/2 b2 \divisioMaior
a2*4/2 fis2 ~ fis2*3/2 e2*3/4 ~ e2*3/2 a2*3/2 d2*3/2 ~ \divisioMinima
d2 e2*3/2 ~ e2*3/4 fis2 g2 ~ g2 fis4 \finalis
r2 fis2*3/4 e2*5/2 fis2*4/2 g2*3/4 b2*3/2 a2*3/2 g2*3/2 fis4 \divisioMinima
e2 ~ e2 g2 ~ g2*4/2 ~ g2*4/2 ~ g4 \divisioMinima
e2*3/2 ~ e2 ~ e2*4/2 fis2*5/2 e2 fis4 \divisioMaior
g2*3/2 ~ g2 ~ g2 a2 g2*4/2 a2*3/2 \divisioMinima
c'2*3/2 ~ c'2 b2 c'2 d'2 e'2 ~ e'2*3/2 ~ e'2 ~ e'2*3/2 d'2 \divisioMaxima
r4 b2 ~ b2 a2*3/2 ~ a2*7/4 b2*4/2 a2*3/2 \divisioMaior
g2 ~ g2*3/2 ~ g2*3/2 e2*3/2 \divisioMinima
fis2 e2*3/2 ~ e2*3/2 ~ e2 ~ e4 \divisioMaior
fis2 a2*3/2 ~ a2 ~ a2*3/2 e2 g2*3/4 ~ g2*3/2 fis4 \finalis
}

bassMusic = {
r2*5/2 g2*3/2 ~ g2*3/2 \divisioMinima
c2*4/2 ~ c2 ~ c2*5/4 e2*3/2 ~ e2 d2*3/2 ~ \divisioMaior
d4 a2*3/2 ~ a2 g2 fis2 e2*4/2 fis2*5/4 e2*4/2 d2 ~ d4 \divisioMaxima
r4 g,2 a,2*4/2 b,2 e2 c2*3/2 ~ c2*5/4 d2 ~ d2*3/2 b,2 \divisioMaior
c2*4/2 d2 b,2*3/2 ~ b,2*3/4 a,2*3/2 g,2*3/2 fis,2*3/2 \divisioMinima
b,2 e,2*3/2 g,2*3/4 ~ g,2 a,2 d2 ~ d4 ~ \finalis
d2 ~ d2*3/4 ~ d2*5/2 ~ d2*4/2 ~ d2*3/4 ~ d2*3/2 ~ d2*3/2 ~ d2*3/2 ~ d4 ~ \divisioMinima
d2 c2 b,2 ~ b,2*4/2 a,2*4/2 b,4 ~ \divisioMinima
b,2*3/2 a,2 c2*4/2 d2*5/2 ~ d2 ~ d4 \divisioMaior
r2*3/2 e2 d2 c2 e2*4/2 a2*3/2 \divisioMinima
r2*3/2 a2 ~ a2 ~ a2 ~ a2 ~ a2 e'2*3/2 d'2 c'2*3/2 b2 \divisioMaxima
r4 g2 ~ g2 ~ g2*3/2 fis2*7/4 e2*4/2 fis2*3/2 ~ \divisioMaior
fis2 e2*3/2 c2*3/2 ~ c2*3/2 \divisioMinima
b,2 ~ b,2*3/2 ~ b,2*3/2 a,2 ~ a,4 \divisioMaior
d2 c2*3/2 b,2 a,2*3/2 ~ a,2 ~ a,2*3/4 d2*3/2 ~ d4 \finalis
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
        "VII"
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
