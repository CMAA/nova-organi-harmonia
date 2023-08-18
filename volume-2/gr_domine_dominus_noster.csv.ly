\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.173
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Domine Dominus noster" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Domine Dominus noster"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Domine Dominus noster" }
    \line {}
  }
}

chantText = \lyricmode {
Do -- mi -- ne 
\set stanza = " * " Dó -- mi -- nus no -- ster, _ _ _ _ _ 
quam ad -- mi -- rá -- bi -- _ le est no -- men tu -- um 
in u -- ni -- vér -- sa ter -- ra! _ _ _ _ _ ℣. 
Quó -- ni -- am e -- le -- vá -- ta est _ _ _ _ _ _ _ 
ma -- gni -- fi -- cén -- ti -- a _ _ tu -- a 
\set stanza = " * " 
su -- per cœ -- _ los. _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   f'4 ( f'4 g'4) f'4 f'4 \divisioMinima
 g'4 ( a'4 g'4 a'4) g'4 ( f'4) f'4 ( f'4 a'4 g'4) f'4 f'4 ( f'4) ~ f'4 ( d'4 c'4) d'4 ( f'4 f'4 \forceBreak
) a'4 ( g'4) a'4 ( g'4) ~ g'4 ( f'4) \divisioMaxima
  a'4 ( bes'4 a'4) a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( c''4) c''4  d''4 ( c''4) ~ c''4 ( a'4 bes'4) bes'4 ( a'4) f'4 ( a'4) \divisioMinima
 a'4 \forceBreak
 g'4 ( f'4 g'\prall a'4 g'4 f'4 g'4) g'4 ( a'4 g'4) g'4 \divisioMaior
 a'4 a'4 ( g'4) g'4 ( c''4) c''4  c''4 ( a'4 bes'\prall c''4 bes'4 g'4 a'\prall bes'4 a'4 g'4 \forceBreak
) f'4 ( g'4 f'4) f'4 ( a'4 c''4) \divisioMinima
 f'4 ( a'4) c''4 ( c''4 b'4 g'4.) f'4 ( a'4 g'4) a'4 ( g'4) ~ g'4 ( f'4) \finalis
  f'4 f'4 f'4 f'4 a'4 ( g'4 \forceBreak
) g'4 ( c''4) c''4 c''4 ( d''4 c''4.) d''4 ( c''4) e''4 ( c''4 a'4) \divisioMinima
 c''4 ( b'4) d''4 ( e''4 c''4.) e''4 ( d''4 c''4) e''4 ( d''4 c''4) ~ c''4 ( b'4 a'4) \divisioMaior \forceBreak

 a'4 a'4 ( g'4) c''4 c''4 b'4 ( c''4) a'4 ( g'4.) a'4 ( c''4 g'4) a'4 ( g'4) f'4 ( g'4 a'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMaior
 f'4 ( g'4) a'4 \forceBreak
 a'4 ( c''4 b'4 a'4) c''4 ( c''4 c''4) c''4 ( c''4 a'4) \divisioMinima
  bes'4 ( a'4) bes'4 ( g'4 f'4.) a'4 ( bes'4 g'4 f'4.) a'4 ( g'4) c''4. ~ c''4 ( c''4) ~ c''4 ( a'4 a'4) f'4 ( a'4 g'4) a'4 ( g'4) ~ g'4 ( f'4) \finalis

}

altoMusic = {
e'2 ~ e'2 c'4 ~ \divisioMinima
c'2*4/2 ~ c'2 d'2*4/2 ~ d'4 ~ d'2 ~ d'2 c'4 <c' d'>2*3/2 <c' e'>2*3/2 c'2*3/2 ~ c'2*3/2 ~ c'2 e'2 ~ e'2 f'2 e'2 d'2 ~ d'2 ~ \divisioMinima
d'4 ~ d'2*3/2 c'2*4/2 ~ c'2*3/2 ~ c'4 ~ \divisioMaior
c'4 ~ c'2 ~ c'2 ~ c'4 f'2*3/2 ~ f'2 d'2*5/2 c'2*3/2 ~ c'4 e'2 \divisioMinima
f'2 g'2*3/2 f'2*3/4 ~ f'2 c'2 ~ c'2*3/2 r2*3/2 f'4 ~ f'2 ~ f'2*3/2 e'2*7/4 ~ e'2 ~ e'2*3/2 ~ \divisioMinima
e'2 a'2*7/4 e'2*3/2 f'2*3/2 g'2 e'4 \divisioMaior
r2 g'4 ~ g'2 ~ g'2 ~ g'2*5/4 f'2*3/2 e'2 d'2 ~ d'2*4/2 ~ d'2 \divisioMaior
c'2*3/2 e'2*4/2 f'2*3/2 e'2*3/2 d'2*4/2 c'2*3/4 bes2*3/2 c'2*3/4 ~ c'2 e'2*3/4 ~ e'2 f'2*3/2 d'2 ~ d'2 c'2 ~ c'4 \finalis
}

tenorMusic = {
a2 bes2 a4 \divisioMinima
g2*4/2 a2 ~ a2*4/2 ~ a4 ~ a2 bes2*3/2 r2*6/2 a2*3/2 f2*3/2 g2 ~ g2 a2 ~ a2 g2 f2 ~ f2 ~ \divisioMinima
f4 d2*3/2 f2*4/2 ~ f2*3/2 e4 ~ \divisioMaior
e4 f2 g2 a4 ~ a2*3/2 f2 g2*5/2 c'2*3/2 a4 ~ a2 ~ \divisioMinima
a2 g2*3/2 c'2*3/4 ~ c'2 ~ c'2 a2*3/2 r2*6/2 c'2*3/2 ~ c'2*7/4 ~ c'2 ~ c'2*3/2 \divisioMinima
a2 ~ a2*7/4 ~ a2*3/2 ~ a2*3/2 d'2 c'4 \divisioMaior
r4 c'2 ~ c'2 g2 c'2*5/4 ~ c'2*3/2 ~ c'2 ~ c'2 bes2*4/2 a2 ~ \divisioMaior
a2*3/2 ~ a2*4/2 ~ a2*3/2 ~ a2*3/2 f2*4/2 ~ f2*3/4 ~ f2*3/2 ~ f2*3/4 e2 g2*3/4 a2 ~ a2*3/2 ~ a2 bes2 ~ bes2 a4 \finalis
}

bassMusic = {
f2 ~ f2 ~ f4 \divisioMinima
e2*4/2 ~ e2 d2*4/2 c4 bes,2 ~ bes,2*3/2 a,2*3/2 c2*3/2 f2*3/2 r2*3/2 e2 c2 ~ c2 d2 ~ d2 ~ d2 c2 \divisioMinima
bes,4 b,2*3/2 a,2*4/2 c2*3/2 ~ c4 ~ \divisioMaior
c4 f2 e2 ~ e4 d2*3/2 ~ d2 bes,2*5/2 a,2*3/2 ~ a,4 c2 \divisioMinima
d2 e2*3/2 ~ e2*3/4 d2 e2 f2*3/2 r2*25/4 b2 a2*3/2 \divisioMinima
g2 f2*7/4 c2*3/2 d2*3/2 e2 a4 \divisioMaior
r4 f2 ~ f4 e4 ~ e2 ~ e2*5/4 d2*3/2 c2 d2 ~ d2*4/2 ~ d2 \divisioMaior
f2*3/2 c2*4/2 d2*3/2 a,2*3/2 d2*4/2 a,2*3/4 g,2*3/2 a,2*3/4 c2 ~ c2*3/4 ~ c2 d2*3/2 c2 bes,2 f2 ~ f4 \finalis
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
