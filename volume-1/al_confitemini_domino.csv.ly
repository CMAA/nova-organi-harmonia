\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.345
%(volume.page)

global = {
 \key a,  \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Confitemini" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Confitemini"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Confitemini" }
    \line {}
  }
}

chantText = \lyricmode {
Al le _ _ _ lú _ ia. _ _ _ 
Al le _ _ _ lú _ ia. _ _ _ 
Al le _ _ _ lú _ ia. _ _ _ 
℣. Con -- fi -- té -- mi -- ni _ Dó -- _ mi -- no, _ _ 
quó -- _ ni -- am bo -- nus: _ _ 
quó -- _ _ ni -- am in sǽ -- cu -- lum _ _ 
mi -- se -- ri -- cór -- di -- a 
\set stanza = " * " e -- _ _ _ _ _ jus. _ _ _ }

chantMusic = {
\tieDown   c'4 ees'4 ( ees'4) f'4 ( g'4 ees'4) ~ ees'4 ( ees'4) f'4 ( ees'4) ees'4 ( ees'4) f'4 ( g'4 ees'4) ees'4 ( ees'4 f'4.) ees'4 ( aes'4 f'4) g'4 ( f'4) ~ f'4 ( ees'4) \finalis \forceBreak

 d'4 f'4 ( f'4) g'4 ( a'4 f'4) ~ f'4 ( f'4) g'4 ( f'4) f'4 ( f'4) g'4 ( a'4 f'4) f'4 ( f'4 g'4.) f'4 ( bes'4 g'4) a'4 ( g'4) ~ g'4 ( f'4) \finalis \forceBreak

 e'4 g'4 ( g'4) a'4 ( b'4 g'4) ~ g'4 ( g'4) a'4 ( g'4) g'4 ( g'4) a'4 ( b'4 g'4) g'4 ( g'4 a'4.) g'4 ( c''4 a'4) b'4 ( a'4) ~ a'4 ( g'4) \finalis \forceBreak

  g'4 g'4 c''4 c''4 c''4 ( c''4) ~ c''4 ( a'4 g'4)  b'4 ( g'4) a'4 ( c''4 b'4 c''4) b'4 ( a'4) c''4 ( c''4 a'4.) b'4 ( c''4 d''4 a'4) ~ a'4 ( g'4) \divisioMaior \forceBreak

 g'4 ( b'4) d''4 ( c''4) c''4 c''4 ( c''4 c''4) a'4 ( d''4) d''4 ( c''4) d''4 ( c''4) ~ c''4 ( b'4) \divisioMaxima
 b'4 ( g'4 b'4 a'4 g'4) b'4 ( g'4 a'4 b'\prall c''4) ~ c''4 ( d''4) c''4 c''4 \forceBreak
 a'4 ( b'\prall c''4) c''4 a'4 ( b'\prall c''4) b'4 c''4 ( d''4 a'4) ~ a'4 ( g'4) \divisioMaior
 a'4 ( f'4) g'4 a'4 a'4 ( b'\prall c''4) a'4 ( g'4) g'4 \divisioMinima \forceBreak

 a'4 ( f'4) g'4 ( a'4) c''4 ( c''4) ~ c''4 ( g'4) c''4 ( c''4) ~ c''4 ( d''4) b'4. g'4 ( c''4 a'4) b'4 ( a'4) ~ a'4 ( g'4) \finalis

}

altoMusic = {
r2 ees4 ees'2*3/2 ~ ees'2*4/2 c'2*5/2 ~ c'2*7/4 ~ c'2 des'2 bes2 ~ bes4 \finalis
r4 f'4 ~ f'4 ~ f'2*3/2 ~ f'2*3/2 ~ f'4 d'2*5/2 ~ d'2*7/4 ~ d'2 ees'2 c'2 ~ c'4 \finalis
r4 g'4 ~ g'4 ~ g'2*3/2 ~ g'2*4/2 e'2*5/2 ~ e'2*7/4 ~ e'2 f'2 d'2 ~ d'4 g'2 f'2 g'2 e'2*3/2 g'2 ~ g'2*4/2 f'2 g'2*9/4 ~ g'2 d'2 ~ d'4 \divisioMaior
g'2 ~ g'2*3/2 ~ g'2*3/2 f'2 g'2*3/2 ~ g'2*3/2 ~ \divisioMaxima
g'2*4/2 ~ g'4 e'2 ~ e'2 ~ e'2*3/2 ~ e'2 f'2*3/2 ~ f'4 ~ f'2*3/2 ~ f'4 ~ f'2 e'2*3/2 ~ \divisioMaior
e'2*4/2 ~ e'2*3/2 d'2 ~ d'4 \divisioMinima
c'2*4/2 ~ c'2 g'2 f'2 e'2 d'2*3/4 c'2 ~ c'2 ~ c'2 b4 \finalis
}

tenorMusic = {
r4 g2 aes2*3/2 g2*4/2 ~ g2*5/2 ~ g2*7/4 f2 aes2 ~ aes2 g4 \finalis
r4 a2 bes2*3/2 a2*4/2 ~ a2*5/2 ~ a2*7/4 g2 bes2 ~ bes2 a4 \finalis
r4 b2 c'2*3/2 b2*4/2 ~ b2*5/2 ~ b2*7/4 a2 c'2 ~ c'2 b4 c'2 ~ c'2 ~ c'2 ~ c'2*3/2 d'2 c'2*4/2 ~ c'2 ~ c'2*9/4 d'2 c'2 b4 \divisioMaior
d'2 b2*3/2 c'2*3/2 ~ c'2 ~ c'2*3/2 d'2*3/2 ~ \divisioMaxima
d'2*5/2 g2 ~ g2 ~ g2*3/2 ~ g2 f2*3/2 g4 a2*3/2 d'4 c'2 b2*3/2 \divisioMaior
a2*4/2 g2*3/2 e2 d4 \divisioMinima
f2*4/2 e2 g2 ~ g2 ~ g2 ~ g2*3/4 ~ g2 f2 d2 ~ d4 \finalis
}

bassMusic = {
c4 ~ c2 ~ c2*3/2 ~ c2*4/2 bes,2*5/2 aes,2*7/4 ~ aes,2 bes,2 ees2 ~ ees4 \finalis
d4 ~ d2 ~ d2*3/2 ~ d2*4/2 c2*5/2 bes,2*7/4 ~ bes,2 c2 f2 ~ f4 \finalis
e4 ~ e2 ~ e2*3/2 ~ e2*4/2 d2*5/2 c2*7/4 ~ c2 d2 g2 ~ g4 e2 d2 e2 a2*3/2 e2 ~ e2*4/2 d2 e2*9/4 ~ e2 g2 ~ g4 \divisioMaior
e2 ~ e2*3/2 ~ e2*3/2 d2 e2*3/2 g2*3/2 \divisioMaxima
e2*5/2 d2 c2 b,2*3/2 a,2 d2*3/2 ~ d4 ~ d2*3/2 ~ d4 ~ d2 e2*3/2 \divisioMaior
c2*4/2 ~ c2*3/2 b,2 ~ b,4 \divisioMinima
a,2*4/2 ~ a,2 e2 d2 c2 e2*3/4 ~ e2 d2 g,2 ~ g,4 \finalis
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
        "\Vbar"
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
