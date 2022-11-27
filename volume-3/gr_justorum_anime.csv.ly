\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.38
%(volume.page)

global = {
 \key c \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Justorum anime" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Justorum anime"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Justorum anime" }
    \line {}
  }
}

chantText = \lyricmode {
Ju -- stó -- rum 
\set stanza = " * " á -- ni -- _ mæ _ _ _ _ _ 
in ma -- _ nu De -- _ _ _ _ i sunt _ _ _ 
et non tan -- _ _ get _ il -- los _ _ _ _ _ _ _ _ _ 
tor -- mén -- tum ma -- lí -- ti -- _ æ. _ ℣. 
Vi -- si sunt _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
ó -- cu -- lis in -- si -- pi -- én -- ti -- um _ mo -- ri: _ _ _ 
il -- li au -- _ _ _ _ _ tem _ _ _ 
\set stanza = " * " 
sunt in pa -- _ ce. _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   c'4 ees'4 ( ees'4) ees'4 ( g'4)   g'4 ( aes'4 g'4 f'4) g'4 ( f'4) ~ f'4 ( ees'4 f'4) ees'4. d'4 ( f'4 g'4.) ees'4 ( f'4) g'4 ( ees'4 d'4 c'4) d'4 ( ees'4 f'4) ~ f'4 ( ees'4) \divisioMaior
 ees'4  ees'4 ( f'4) aes'4 ( g'4) aes'4  aes'4 ( aes'4) ~ aes'4 ( aes'4) ~ aes'4 ( f'4 ees'4) f'4 ( aes'4) bes'4 ( aes'4 g'4 aes'4) aes'4  aes'4. g'4 ( aes'4 bes'4) g'4 ( aes'4 f'4.) g'4 ( aes'4 g'4 aes'4 f'4) \divisioMaxima
 ees'4 ees'4 g'4 ( ees'4) f'4 ( g'4) bes'4 ( bes'4) bes'4 ( g'4) bes'4 ( f'4) ees'4 ees'4. c'4 ( ees'4 f'4.) ees'4 ( g'4) bes'4 ( f'4 ees'4) ~ ees'4 ( c'4) \divisioMinima
 ees'4 ( ees'4) f'4 ( d'4) ees'4 ( f'4 c'4) d'4 ( c'4) ~ c'4 ( bes4) \divisioMaior
 ees'4 g'4 ( ees'4 g'4)  g'4 ( aes'4 g'4 f'4) f'4 f'4 ( g'4 bes'4) bes'4 ( bes'4) ~ bes'4 ( g'4)  g'4. f'4 ( aes'4 g'4 ees'4) \finalis
  ees'4 g'4  g'4 ( bes'4) c''4 ( bes'4) c''4 ( bes'4.) c''4 ( g'4 ees'4.) g'4 ( bes'4) c''4 ( g'4 ees'4) g'4 ( bes'4 g'4 aes'4) \divisioMinima
 g'4 ( bes'4) c''4 ( bes'4) c''4 ( bes'4.) c''4 ( g'4 ees'4) f'4 ( ees'4) ~ ees'4 ( ees'4 ees'4) g'4 ( bes'4) c''4 ( d''4 bes'4) \divisioMaior
 bes'4 ( c''4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 ( a'4) c''4 ( d''4) c''4 ( bes'4) bes'4 ( a'4) c''4 ( bes'4.) d''4 ( c''4 bes'4 a'4) bes'4 ( g'4) \divisioMaxima
 bes'4 ( bes'4) bes'4 c''4 ( bes'4) c''4 ( d''4 bes'4.) c''4 ( bes'4) c''4 ( d''4 c''4 d''4.) bes'4 ( c''4) d''4 ( c''4 d''4) d''4 ( bes'4) d''4 ( ees''4 c''4) bes'4 ( bes'4) g'4 ( a'4 g'4) \divisioMaior
 ees'4 ( f'4 g'4) g'4 g'4 ( bes'4 a'4 g'4) bes'4 ( bes'4 bes'4) bes'4 ( bes'4 g'4) \divisioMinima
  aes'4 ( g'4) aes'4 ( f'4 ees'4.) g'4 ( aes'4 f'4 ees'4.) g'4 ( f'4) bes'4. ~ bes'4 ( bes'4) ~ bes'4 ( g'4 g'4) ees'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( ees'4) \finalis

}

altoMusic = {
c'4 ~ c'2 ~ c'2 ~ c'2*5/2 bes2*13/4 ~ bes2*5/4 ~ bes2 ~ bes2*4/2 ~ bes2 ~ bes2*3/2 ~ \divisioMaior
bes4 c'2*5/2 ees'2 ~ ees'2 c'2*3/2 ~ c'2 ~ c'2*4/2 ~ c'4 ees'2*9/4 c'2*7/4 ~ c'2*5/2 \divisioMaxima
ees'2 ~ ees'2*4/2 f'2 g'2 f'2 ees'4 c'2*5/4 ~ c'4 ~ c'2*3/4 ~ c'2 bes2 c'2 ~ c'4 \divisioMinima
bes2 ~ bes2*6/2 r2*3/2 \divisioMaior
c'4 ~ c'2*3/2 ~ c'2*4/2  b2 bes2 ~ bes2*4/2 ~ bes2*3/4 ~ bes2*3/2 ~ bes4 ees'2 d'2 ~ d'2 ~ d'2*5/4 c'2*7/4 ees'2 ~ ees'2*3/2 ~ ees'2*4/2 ~ \divisioMinima
ees'2 ~ ees'2*3/2 ~ ees'2*3/4 ~ ees'2 ~ ees'4 c'2 r2*3/2 d'2*5/2 \divisioMaior
f'2*3/2 g'2*4/2 f'2 ees'2*4/2 f'2 ~ f'2 ees'2*5/4 d'2*4/2 ~ d'2 \divisioMaxima
f'2*3/2 ~ f'2*4/2 g'2*3/4 ~ g'2 ~ g'2*3/2 f'2*3/4 ~ f'2*5/2 ees'2*5/2 f'2 d'2*3/2 \divisioMaior
ees'2*4/2 ~ ees'2*4/2 f'2*3/2 g'2*3/2 c'2*4/2 bes2*3/4 ~ bes2*3/2 ~ bes2*3/4 ~ bes2 f'2*3/4 ees'2 d'2*3/2 c'2*4/2 bes2 ~ bes4 \finalis
}

tenorMusic = {
c'4 ~ c'2 bes2 aes2*5/2 g2*13/4 ~ g2*5/4 ~ g2 ees2*4/2 f2 g2*3/2 \divisioMaior
ees4 ~ ees2*5/2 ~ ees2 aes2 ~ aes2*3/2 ~ aes2 ~ aes2*4/2 ~ aes4 bes2*9/4 ~ bes2*7/4 a2*5/2 \divisioMaxima
g2 bes2*4/2 ~ bes2 ~ bes2 ~ bes2 c'4 bes2*5/4 c4 d2*3/4 ees2 f2 g2*3/2 ~ \divisioMinima
g2 f2*6/2 ~ f2*3/2 \divisioMaior
ees4 ~ ees2*3/2 ~ ees2*4/2 ~ ees2 d2 f2 ees2 ~ ees2*3/4 ~ ees2*3/2 g4 c'2 bes2 a2 g2*5/4 ~ g2*7/4 ~ g2 ~ g2*3/2 c'2*4/2 \divisioMinima
bes2 aes2*3/2 g2*3/4 bes2*3/2 ~ bes2 ~ bes2*3/2 ~ bes2*5/2 ~ \divisioMaior
bes2*3/2 ~ bes2*4/2 ~ bes2 ~ bes2*4/2 ~ bes2 f2 g2*5/4 ~ g2*4/2 ~ g2 \divisioMaxima
f2*3/2 bes2*4/2 ~ bes2*3/4 g2 ~ g2*3/2 a2*3/4 bes2*5/2 ~ bes2*5/2 ~ bes2 ~ bes2*3/2 \divisioMaior
c'2*4/2 bes2*4/2 ~ bes2*3/2 ~ bes2*3/2 ~ bes2*4/2 g2*3/4 ~ g2*3/2 aes2*3/4 bes2 ~ bes2*3/4 ~ bes2 ~ bes2*3/2 ~ bes2*4/2 ~ bes2 g4 \finalis
}

bassMusic = {
r2*33/4 g,2*5/4 c2 ~ c2*4/2 bes,2 g,2*3/2 ~ \divisioMaior
g,4 aes,2*5/2 c2 ~ c2 f2*3/2 aes2 g2*4/2 f4 ees2*9/4 f2*7/4 ~ f2*5/2 \divisioMaxima
c2 ~ c2*4/2 d2 ees2 d2 c4 ~ c2*5/4 ~ c4 ~ c2*3/4 ~ c2 d2 ees2*3/2 ~ \divisioMinima
ees2 ~ ees2*6/2 d2*3/2 \divisioMaior
c4 bes,2*3/2 aes,2*4/2 g,2 ~ g,2 ~ g,2 ~ g,2 ees,2*3/4 ~ ees,2*3/2 ~ ees,4 r2*17/4 ees2*7/4 d2 c2*3/2 ~ c2*4/2 ~ \divisioMinima
c2 ~ c2*3/2 ~ c2*3/4 ~ c2*3/2 f2 g2*3/2 ~ g2*5/2 \divisioMaior
d2*3/2 ees2*4/2 d2 c2*4/2 d2 ~ d2 ees2*5/4 f2*4/2 g2 \divisioMaxima
d2*3/2 ~ d2*4/2 ees2*3/4 ~ ees2 d2*3/2 ~ d2*3/4 ~ d2*5/2 c2*5/2 d2 g2*3/2 \divisioMaior
c2*4/2 ~ c2*4/2 d2*3/2 ees2*3/2 f2*4/2 g2*3/4 ees2*3/2 ~ ees2*3/4 ~ ees2 d2*3/4 c2 bes,2*3/2 c2*4/2 d2 ees4 \finalis
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
