\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.279
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Confitebor tibi, Domine, in toto" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Confitebor tibi, Domine, in toto"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Confitebor tibi, Domine, in toto" }
    \line {}
  }
}

chantText = \lyricmode {
Con -- fi -- té -- bor 
\set stanza = " * " ti -- _ _ bi, Dó -- mi -- ne, 
in to -- to cor -- _ de _ me -- o: 
re -- trí -- bu -- e _ ser -- vo tu -- o: 
vi -- vam, et cu -- stó -- di -- am ser -- mó -- nes tu -- os: 
vi -- ví -- _ fi -- ca me _ 
se -- cún -- _ dum ver -- _ _ _ _ bum tu -- um, _ Dó -- mi -- ne. }

chantMusic = {
\tieDown   c'4 d'4  d'4 ( a'4 bes'4) a'4 \divisioMinima
  a'4 c''4 ( c''4 a'4) bes'4 ( c''4) g'4 ( f'4 g'4)  a'4 ( c''4 b'4 a'4) a'4 ( b'4 a'4) a'4 \divisioMaior \forceBreak

 f'4 a'4 ( c''4 a'4 b'\prall c''4) g'4 ( a'4 f'4 d'4 f'4) d'4 f'4 ( f'4 f'4) f'4 ( g'4 f'4) ~ f'4 ( e'4) d'4 ( e'4 f'4 e'4 d'4 e'4) e'4 ( d'4) \divisioMaxima \forceBreak

 d'4 d'4 ( f'4 g'4) a'4 ( g'4 a'4)  a'4 ( bes'4 g'4) a'4 ( f'4 d'4 f'4) d'4 ( f'4) g'4 ( a'4 g'4) a'4 g'4 ( f'4) \divisioMaxima
 a'4 ( c''4 b'4 a'4) a'4 ( b'4 a'4) \divisioMinima \forceBreak

 f'4 ( a'4) a'4 a'4 ( c''4 b'4 a'4) a'4 ( g'4 a'4) a'4 ( g'4 g'4) \divisioMinima
 f'4 ( g'4) f'4 ( g'4 a'4)  a'4 ( c''4 a'4 g'4 a'\prall bes'4 a'4 g'4) f'4 ( g'4 a'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMaxima \forceBreak

 f'4 f'4 ( a'4) c''4 ( a'4 c''4) g'4 f'4 ( g'4 f'4) d'4 ( f'4) ~ f'4 ( f'4 f'4) \divisioMaior
 d'4 d'4 ( e'\prall f'4 e'4 d'4) e'4 ( d'4 c'4) d'4 ( c'4) \divisioMinima \forceBreak

 f'4 a'4 ( c''4 a'4) g'4 ( a'4 g'4) f'4 ( g'4 f'4 d'4) f'4 ( f'4 f'4) f'4 f'4 f'4 ( g'4 f'4) ~ f'4 ( e'4) d'4 d'4 ( e'4 f'4 e'4 d'4 e'4) e'4 ( d'4) \finalis

}

altoMusic = {
r4 d'4 ~ d'2*4/2 f'4 c'2*5/2 ~ c'2*3/2 e'2*4/2 f'2*3/2 e'4 \divisioMaior
r4 e'2 ~ e'2*3/2 d'2*5/2 ~ d'4 ~ d'2*3/2 c'2 ~ c'2*3/2 ~ c'2 bes2*4/2 a2 ~ \divisioMaxima
a4 ~ a2*3/2 ~ a2*3/2 f'2*3/2 ~ f'2 d'2 ~ d'2 ~ d'2*3/2 ~ d'2*3/2 \divisioMaxima
e'2*4/2 ~ e'2 ~ e'4 \divisioMinima
f'2 e'4 ~ e'2*4/2 ~ e'2*3/2 ~ e'2*3/2 \divisioMinima
d'2 c'2*3/2 ~ c'2*3/2 d'2 ~ d'2*3/2 ~ d'2 e'2*4/2 d'2 \divisioMaxima
f'4 ~ f'2 e'2*4/2 r2*3/2 d'2 c'2*3/2 ~ \divisioMaior
c'4 a2*5/2 ~ a2*3/2 b2 \divisioMinima
f'4 ~ f'2*3/2 ~ f'2*3/2 ~ f'2*3/2 d'4 ~ d'2*4/2 e'4 d'2 c'2*3/2 r4 bes2 ~ bes2*4/2 a2 \finalis
}

tenorMusic = {
g2 f2*4/2 ~ f4 f'2*5/2 a2*3/2 ~ a2*4/2 c'2*3/2 ~ c'4 \divisioMaior
a2*3/2 ~ a2*3/2 ~ a2*5/2 g4 a2*3/2 ~ a2 g2*3/2 f2 g2*4/2 ~ g4 f4 ~ \divisioMaxima
f4 ~ f4 e2 ~ e2*3/2 d2*3/2 c'2 bes2 a2 e2*3/2 f2*3/2 \divisioMaxima
r2*4/2 d'2 c'4 ~ \divisioMinima
c'2 a4 ~ a2*4/2 b2*3/2 c'2*3/2 \divisioMinima
a2 ~ a2*3/2 f2*3/2 ~ f2 g2*3/2 a2 ~ a2*4/2 ~ a2 \divisioMaxima
r4 d'2 e'2*3/2 d'4 c'2*3/2 bes2 a2*3/2 \divisioMaior
r4 f2*5/2 ~ f2*3/2 e2 \divisioMinima
r4 c'2*3/2 bes2*3/2 a2*4/2 ~ a2*5/2 ~ a2 ~ a2*3/2 f4 ~ f2 g2*4/2 ~ g4 f4 \finalis
}

bassMusic = {
e2 d2*4/2 ~ d4 a,2*5/2 ~ a,2*3/2 c2*4/2 d2*3/2 a4 ~ \divisioMaior
a2*3/2 c2*3/2 d2*5/2 ~ d4 c2*3/2 a,2 ~ a,2*3/2 ~ a,2 g,2*4/2 d2 \divisioMaxima
r4 d4 ~ d2 c2*3/2 d2*3/2 ~ d2 ~ d2 ~ d2 ~ d2*3/2 ~ d2*3/2 \divisioMaxima
a2*4/2 f2 a4 ~ \divisioMinima
a2 ~ a4 c2*4/2 ~ c2*3/2 ~ c2*3/2 ~ \divisioMinima
c2 a,2*3/2 ~ a,2*3/2 bes,2 ~ bes,2*3/2 ~ bes,2 c2*4/2 d2 \divisioMaxima
r2*3/2 a2*4/2 ~ a2*3/2 ~ a2 ~ a2*3/2 ~ \divisioMaior
a4 r2*5/2 d2*3/2 e2 \divisioMinima
d2*4/2 ~ d2*3/2 ~ d2*4/2 c2*5/2 bes,2 a,2*3/2 ~ a,4 g,2 ~ g,2*4/2 d2 \finalis
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
