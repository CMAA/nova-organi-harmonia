\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.394
%(volume.page)

global = {
 \key ees \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Aquae multae" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Aquae multae"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Aquae multae" }
    \line {}
  }
}

chantText = \lyricmode {
A -- quæ mul -- _ tæ _ _ _ _ 
\set stanza = " * " 
non po -- tu -- é -- _ runt ex -- stín -- gue -- re ca -- ri -- tá -- _ _ _ _ _ _ _ tem, 
nec flú -- mi -- na _ _ 
ó -- bru -- ent il -- lam. _ _ _ _ _ _ _ _ ℣. 
De -- fé -- cit ca -- ro me -- _ _ _ _ _ _ a et cor me -- um: _ _ _ 
De -- us cor -- dis me -- _ _ _ _ _ i, _ _ _ 
et pars me -- _ _ _ _ a De -- _ _ _ us 
\set stanza = " * " 
in æ -- tér -- _ num. _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   ees'4 ( ees'4) ees'4 ees'4 ( f'4 ees'4) ~ ees'4 ( ees'4) ees'4 ( c'4.) ees'4 ( f'4 d'4) ees'4 ( f'4 c'4) d'4 ( c'4) ~ c'4 ( bes4) \divisioMaior
 ees'4 ees'4 g'4 bes'4 ( g'4) bes'4 ( bes'4 bes'4) bes'4 \divisioMinima
 bes'4 ( a'4) c''4 ( d''\prall ees''4) c''4 ( bes'4) bes'4 bes'4 bes'4 c''4 ( bes'4.) a'4 ( bes'4 a'4 g'4.) c''4 ( bes'4) ~ bes'4 ( bes'4) ~ bes'4 ( g'4 f'4) g'4 ( f'4) g'4 bes'4 ( bes'4) c''4 ( bes'4 a'4) bes'4 \divisioMaxima
 g'4 g'4 ( bes'4 c''4) bes'4 ( a'4) f'4. g'4 bes'4 ( bes'4) c''4 ( bes'4 a'4 g'4) \divisioMaior
 bes'4 bes'4 a'4 ( bes'4) g'4  g'4 ( f'4) g'4 ( aes'4 f'4 ees'4 f'\prall g'4 f'4 g'4) \divisioMinima
 bes'4 ( c''4 bes'4 g'4) a'4 ( bes'4 g'4.) a'4 ( bes'4 g'4 f'4) a'4 ( g'4 f'4) \divisioMinima
 ees'4 ( f'\prall g'4 f'4) g'4 ( bes'4 g'4 g'4) ees'4 ( f'4 ees'4) \finalis
 ees'4 g'4 ( f'4) f'4 ( bes'4) bes'4 bes'4 c''4 ( bes'4) ~ bes'4 ( g'4 bes'4.) ees'4 ( g'4) bes'4. ~ bes'4 ( c''4 bes'4) ~ bes'4 ( g'4 bes'4.) a'4 ( bes'4) c''4 ( bes'4 c''4) bes'4 ( bes'4) \divisioMinima
 g'4 ( bes'4 a'4) c''4 ( d''\prall ees''4) c''4 ( bes'4) bes'4 ( a'4) c''4 ( bes'4.) d''4 ( c''4 bes'4 a'4) bes'4 ( g'4) \divisioMaxima
 bes'4 ( bes'4) bes'4 bes'4 bes'4 c''4 ( bes'4) c''4 ( d''4 bes'4.) c''4 ( bes'4) c''4 ( d''4 c''4 d''4.) bes'4 ( c''4) d''4 ( c''4 d''4) d''4 ( bes'4) d''4 ( ees''4 c''4) bes'4 ( bes'4) g'4 ( a'4 g'4) \divisioMaxima
 bes'4 ( bes'4) bes'4 ( g'4 bes'4) bes'4 ( c''4) d''4 ( c''4 bes'4) ~ bes'4 ( g'4) bes'4 ( bes'4) ~ bes'4 ( c''4) bes'4 \divisioMinima
  g'4 ( aes'4 g'4 f'4.) g'4 ( aes'4 g'4 ees'4.) g'4 ( f'4 ees'4) f'4 ( ees'4) ees'4 \divisioMaior
 ees'4 g'4 ( bes'4) bes'4 ( c''4 bes'4 g'4) bes'4 ( bes'4 bes'4) bes'4 ( bes'4 g'4) \divisioMinima
  aes'4 ( g'4) aes'4 ( f'4 ees'4.) g'4 ( aes'4 f'4 ees'4.) g'4 ( f'4) bes'4. ~ bes'4 ( bes'4) ~ bes'4 ( g'4 g'4) ees'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( ees'4) \finalis

}

altoMusic = {
c'2*3/2 bes2*3/2 ~ bes2 ~ bes2*5/4 ~ bes2*3/2 ~ bes2*4/2 ~ bes2*3/2 ~ \divisioMaior
bes2*3/2 c'2 d'2*4/2 \divisioMinima
f'2 g'2*3/2 ~ g'2*5/2 d'2*5/4 ~ d'2*9/4 g'2 f'2 ees'2*3/2 ~ ees'2*3/2 f'2*6/2 \divisioMaxima
r4 d'4 ~ d'2*4/2 f'2*5/4 ees'2 d'2*4/2 ~ \divisioMaior
d'2*5/2 ees'4 ~ ees'2*4/2 ~ ees'2*5/2 \divisioMinima
d'2*4/2 ~ d'2*7/4 ~ d'2*4/2 ~ d'2*3/2 \divisioMinima
ees'2*4/2 d'2*4/2 bes2*3/2 \finalis
r4 c'2 d'2*5/2 ~ d'2*9/4 ees'2 ~ ees'2*3/4 g'2 f'2*13/4 ~ f'2*3/2 ~ f'2 \divisioMinima
d'2*3/2 g'2*3/2 f'2 ~ f'2*9/4 ~ f'2*4/2 d'2 ~ \divisioMaxima
d'2*3/2 ees'2 g'2 f'2*7/4 ~ f'2 ~ f'2*9/4 ~ f'2*5/2 ~ f'2 ees'2*3/2 d'2 ~ d'2*3/2 \divisioMaxima
f'2 ees'2*3/2 d'2*4/2 ~ d'2*3/2 ~ d'2 ees'2*3/2 ~ ees'2*9/4 ~ ees'2*9/4 bes2*3/2 ~ bes2 ~ bes4 ~ \divisioMaior
bes4 ees'2 ~ ees'2*4/2 d'2*3/2 ~ d'2*3/2 ees'2*11/4 c'2*9/4 ~ c'2 bes2*3/4 ~ bes2 ~ bes2*3/2 ~ bes2*4/2 ~ bes2*3/2 \finalis
}

tenorMusic = {
g2*3/2 ~ g2*3/2 f2 ees2*5/4 d2*3/2 c2*4/2 d2*3/2 \divisioMaior
bes2*3/2 ~ bes2 ~ bes2*4/2 \divisioMinima
c'2 ~ c'2*3/2 g2*5/2 ~ g2*5/4 ~ g2*9/4 ~ g2 ~ g2 ~ g2*3/2 bes2*3/2 ~ bes2*6/2 \divisioMaxima
r2 c'2*4/2 ~ c'2*5/4 bes2 ~ bes2*4/2 ~ \divisioMaior
bes2*5/2 ~ bes4 ~ bes2*4/2 ~ bes2*5/2 ~ \divisioMinima
bes2*4/2 c'2*7/4 bes2*4/2 a2*3/2 \divisioMinima
bes2*4/2 ~ bes2*4/2 g2*3/2 \finalis
r4 bes2 ~ bes2 ~ bes2*3/2 ~ bes2*13/4 ~ bes2*3/4 ~ bes2 ~ bes2*13/4 a2*3/2 bes2 ~ \divisioMinima
bes2*3/2 ~ bes2*3/2 ~ bes2 d'2*9/4 c'2*4/2 ~ c'4 bes4 ~ \divisioMaxima
bes2*3/2 ~ bes2 ~ bes2 ~ bes2*7/4 a2 bes2*9/4 d'2 c'2*3/2 bes2 g2*3/2 ~ g2 a2 bes4 ~ \divisioMaxima
bes2*5/2 ~ bes2*4/2 c'2*3/2 bes2 ~ bes2*3/2 c'2*9/4 bes2*9/4 ~ bes2*3/2 aes2 g4 ~ \divisioMaior
g4 ~ g2 ~ g2*4/2 ~ g2*3/2 f2*3/2 ees2*11/4 ~ ees2*9/4 ~ ees2 ~ ees2*3/4 c2 d2*3/2 ees2*4/2 f2 g4 \finalis
}

bassMusic = {
c2*3/2 g,2*3/2 ~ g,2 ~ g,2*5/4 ~ g,2*3/2 ~ g,2*4/2 ~ g,2*3/2 \divisioMaior
g2*3/2 ~ g2 ~ g2*4/2 \divisioMinima
f2 ees2*3/2 ~ ees2*5/2 g2*5/4 f2*9/4 ees2 d2 c2*3/2 ~ c2*3/2 d2*6/2 \divisioMaxima
g2 ~ g2*4/2 ~ g2*5/4 ~ g2 ~ g2*4/2 \divisioMaior
d2*5/2 ees4 f2*4/2 g2*5/2 ~ \divisioMinima
g2*4/2 ~ g2*7/4 ~ g2*4/2 d2*3/2 \divisioMinima
c2*4/2 bes,2*4/2 ees2*3/2 \finalis
r4 r2*4/2 a2*3/2 g2*13/4 ~ g2*3/4 ees2 d2*13/4 ~ d2*3/2 ~ d2 \divisioMinima
g2*3/2 ees2*3/2 d2 ~ d2*9/4 ~ d2*4/2 g2 \divisioMaxima
bes,2*3/2 c2 ees2 d2*7/4 ~ d2 ~ d2*9/4 ~ d2*5/2 ~ d2 c2*3/2 g2 ~ g2 ~ g4 ~ \divisioMaxima
g2*5/2 ~ g2*4/2 ~ g2*3/2 ~ g2 ~ g2*3/2 aes2*9/4 ees2*9/4 ~ ees2*3/2 ~ ees2 ~ ees4 ~ \divisioMaior
ees4 d2 c2*4/2 g,2*3/2 bes,2*3/2 c2*11/4 bes,2*9/4 aes,2 g,2*3/4 ~ g,2 ~ g,2*3/2 ~ g,2*4/2 bes,2 ees4 \finalis
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
        "5"
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
