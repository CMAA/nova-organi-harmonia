\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.266
%(volume.page)

global = {
 \key f \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Domine ad adjuvandum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Domine ad adjuvandum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Domine ad adjuvandum" }
    \line {}
  }
}

chantText = \lyricmode {
Do -- _ _ _ _ mi -- ne, 
\set stanza = " * " 
ad ad -- ju -- ván -- _ _ _ dum _ me _ fe -- _ stí -- na: 
con -- fun -- dán -- _ _ _ _ _ tur o -- _ _ _ _ _ mnes ad -- vér -- sum me, _ _ _ _ 
qui có -- gi -- tant ser -- vis tu -- is ma -- _ _ _ _ _ la. }

chantMusic = {
\tieDown    f'4 ( a'4 bes'4 a'4 g'4) a'4 ( g'4 f'4.) a'4 ( c''4) ~ c''4 ( c''4 c''4) d''4 ( c''4 a'4)  a'4 ( b'4 a'4) a'4 \divisioMaior
 a'4 ( g'4) f'4 g'4 ( a'4 g'4 \forceBreak
) a'4. g'4 ( a'4) c''4 ( c''4) ~ c''4 ( c''4 c''4) a'4 ( c''4 g'4) f'4 ( e'4 d'4 f'4) d'4 f'4 ( f'4 f'4) \divisioMinima
 f'4 ( g'4 f'4) ~ f'4 ( e'4) d'4 ( e'\prall f'4 e'4 d'4) d'4 ( e'\prall f'4) \divisioMaxima \forceBreak

 d'4 ( e'\prall f'4) g'4 ( a'4 \once \tweak #'font-size #-4 g' )  a'4 c''4 ( c''4 a'4 g'4) a'4 ( bes'4 g'4 f'4.) g'4 ( a'4) c''4 ( c''4 c''4) d''4 ( c''4 a'4) a'4 \divisioMinima
 f'4 a'4 ( c''4 a'4) g'4 ( a'4 g'4) f'4 ( g'4 f'4 d'4 \forceBreak
) f'4 ( f'4 f'4) g'4 ( f'4) f'4 \divisioMinima
 a'4 f'4 a'4 ( c''4) c''4. b'4 ( d''4 c''4 b'4) d''4 ( c''4 a'4.)  f'4 ( a'4 g'4) a'4 ( bes'4 g'4 f'4 g'4) \divisioMaior
 f'4 f'4 f'4 \forceBreak
 f'4 ( g'4 f'4 g'4) f'4 ( \once \tweak #'font-size #-4 d' ) f'4 ( g'\prall a'4 g'4) a'4 ( g'4) g'4 ( a'4 g'4) \divisioMinima
 a'4. f'4 ( a'4 c''4 a'4 g'4) a'4 ( g'4 f'4) g'4 ( f'4 d'4) f'4 ( f'4 f'4) ~ f'4 ( g'4 f'4) f'4 \finalis

}

altoMusic = {
f'2*5/2 ~ f'2*7/4 ~ f'2 g'2*3/2 f'2*3/2 e'2*3/2 ~ e'4 ~ \divisioMaior
e'2*3/2 ~ e'2*3/2 ~ e'2*3/4 d'2 c'2 ~ c'2*3/2 ~ c'2*3/2 ~ c'2*4/2 a4 ~ a2*3/2 \divisioMinima
d'2 c'2*3/2 a2*5/2 ~ a2*3/2 \divisioMaxima
d'2*3/2 e'2*3/2 ~ e'4 ~ e'2*4/2 d'2*3/2 ~ d'2*3/4 ~ d'2 ~ d'2*3/2 e'2*3/2 f'4 ~ \divisioMinima
f'4 e'2*3/2 ~ e'2*3/2 d'2*4/2 ~ d'2*3/2 ~ d'2 c'4 ~ \divisioMinima
c'4 ~ c'4 ~ c'2 ~ c'2*3/4 f'2*4/2 e'2 ~ e'2*3/4 f'2*3/2 d'2*4/2 ~ d'4 \divisioMaior
r4 d'2 ~ d'2*4/2 ~ d'2 ~ d'2*4/2 ~ d'2 ~ d'2*3/2 \divisioMinima
f'2*3/4 ~ f'2*5/2 e'2*3/2 d'2*3/2 ~ d'2*3/2 c'2*3/2 ~ c'4 \finalis
}

tenorMusic = {
f2*5/2 g2*7/4 a2 ~ a2*3/2 ~ a2*3/2 ~ a2*3/2 ~ a4 \divisioMaior
c'2*3/2 a2*3/2 g2*3/4 ~ g2 ~ g2 f2*3/2 e2*3/2 f2*4/2 g4 f2*3/2 ~ \divisioMinima
f2 g2*3/2 ~ g2*5/2 f2*3/2 \divisioMaxima
d'2*3/2 c'2*3/2 b4 a2*4/2 ~ a2*3/2 g2*3/4 e2 f2*3/2 g2*3/2 a4 \divisioMinima
'4 c'2*3/2 a2*3/2 ~ a2*4/2 ~ a2*3/2 g2 a4 ~ \divisioMinima
a4 g4 f2 e2*3/4 f2*4/2 a2 c'2*3/4 ~ c'2*3/2 ~ c'2*4/2 bes4 \divisioMaior
c'4 bes2 b2*4/2 a2 c'2*4/2 ~ c'2 bes2*3/2 \divisioMinima
d'2*3/4 a2*5/2 ~ a2*3/2 ~ a2*3/2 g2*3/2 bes2*3/2 a4 \finalis
}

bassMusic = {
d2*5/2 ~ d2*7/4 ~ d2 e2*3/2 d2*3/2 ~ d2*3/2 c4 ~ \divisioMaior
c2*3/2 ~ c2*3/2 ~ c2*3/4 b,2 a,2 ~ a,2*3/2 ~ a,2*3/2 ~ a,2*4/2 d4 ~ d2*3/2 \divisioMinima
bes,2 a,2*3/2 d2*5/2 ~ d2*3/2 ~ \divisioMaxima
d2*3/2 ~ d2*3/2 ~ d4 c2*4/2 bes,2*3/2 ~ bes,2*3/4 d2 ~ d2*3/2 ~ d2*3/2 ~ d4 ~ \divisioMinima
d4 c2*3/2 ~ c2*3/2 d2*4/2 bes,2*3/2 ~ bes,2 a,4 ~ \divisioMinima
a,4 ~ a,4 ~ a,2 ~ a,2*3/4 d2*4/2 c2 ~ c2*3/4 d2*3/2 g2*4/2 ~ g4 \divisioMaior
a4 ~ a2 g2*4/2 d2 ~ d2*4/2 g2 ~ g2*3/2 \divisioMinima
d2*3/4 ~ d2*5/2 c2*3/2 bes,2*3/2 ~ bes,2*3/2 f2*3/2 ~ f4 \finalis
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
