\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.112
%(volume.page)

global = {
 \key ees \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Ego dixi" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Ego dixi"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Ego dixi" }
    \line {}
  }
}

chantText = \lyricmode {
E -- go 
\set stanza = " * " di -- xi: _ Dó -- mi -- ne, _ _ _ _ _ 
mi -- se -- ré -- _ _ re me -- i: _ _ _ 
sa -- na á -- ni -- mam _ _ me -- _ _ am, _ _ _ _ _ 
quó -- ni -- am pec -- cá -- vi ti -- _ bi. _ _ _ _ _ 
_ _ _ _ ℣. 
Be -- á -- _ _ tus qui in -- tél -- li -- git _ _ _ 
su -- per e -- gé -- _ _ _ _ _ num _ _ et páu -- _ pe -- rem: _ _ _ 
in di -- e ma -- _ _ _ la _ _ _ _ _ 
li -- be -- rá -- bit e -- _ um 
\set stanza = " * " Dó -- mi -- nus. _ _ _ }

chantMusic = {
\tieDown   ees'4 ( ees'4 f'4) ees'4  ees'4  ees'4 ( d'4) f'4 ( g'\prall aes'4) f'4 ( ees'4) f'4 ( ees'4) ees'4 ( f'4) \divisioMinima
 c'4 ees'4 ( ees'4) f'4 ( d'4) ees'4 ( f'4 c'4) d'4 ( c'4) ~ c'4 ( bes4) \divisioMaior \forceBreak

 ees'4 ees'4 ( c'4 ees'4) ees'4 ( c'4 ees'4) d'4 ( ees'4 c'4) d'4 ( bes4) c'4 ees'4 ( f'4) f'4 ( g'4 f'4.) bes'4 ( bes'4 g'4) bes'4 ( f'4) ~ f'4 ( ees'4) \divisioMaxima
 ees'4 f'4 \forceBreak
 g'4 f'4 ( ees'4) f'4 ( ees'4.) f'4 ( g'4) bes'4 ( bes'4 g'4 f'4) g'4 ( f'4) g'4 ( ees'4) ~ ees'4 ( f'4 ees'4) ees'4 ( f'4) \divisioMinima
 c'4 ees'4 ( ees'4) f'4 ( d'4) ees'4 ( f'4 c'4) d'4 ( c'4) ~ c'4 ( bes4) \divisioMaxima \forceBreak

 ees'4 ees'4 ( c'4) ees'4 f'4 ( g'4 f'4) g'4  g'4 ( f'4 aes'4 g'4 f'4) f'4 ( ees'4) g'4 ( f'4 g'4) g'4 ( ees'4) \divisioMinima
 f'4 ( g'4) bes'4 ( bes'4 g'4 f'4.) g'4 ( a'\prall bes'4 \forceBreak
) c''4 ( bes'4 bes'4) g'4 ( a'4 g'4) \divisioMaior
 ees'4 ( f'4) g'4 bes'4 ( bes'4) c''4 ( d''4 a'4 bes'4 g'4.)  f'4 ( aes'4 g'4 ees'4) \finalis
  ees'4 ees'4 ( g'4) bes'4 ( bes'4) c''4 ( d''4 bes'4) bes'4 \divisioMinima \forceBreak

 bes'4 ( a'4) c''4 ( d''\prall ees''4) c''4 ( bes'4) bes'4 bes'4 ( bes'4) c''4 ( bes'4.) d''4 ( c''4 bes'4 a'4) bes'4 ( g'4) \divisioMaior
 bes'4 ( bes'4) bes'4 bes'4 c''4 ( bes'4) c''4 ( d''4 bes'4.) c''4 ( bes'4 \forceBreak
) c''4 ( d''4 c''4 d''4.) bes'4 ( c''4) d''4 ( c''4 d''4) d''4 ( bes'4) d''4 ( ees''4 c''4) bes'4 ( bes'4 g'4) \divisioMinima
 g'4 bes'4 ( g'4) bes'4 ( bes'4 bes'4) bes'4 bes'4 ( g'4 a'\prall bes'4 c''4. \forceBreak
) bes'4 ( c''4) d''4 ( bes'4 bes'4) c''4 ( c''4 bes'4) \divisioMaxima
 bes'4 ( bes'4) bes'4 bes'4 ( c''4) c''4 ( bes'4 a'4 f'4.) g'4 ( bes'4 a'4 f'4) g'4 ( bes'4) \divisioMinima
 a'4 ( c''4 d''4 bes'4 g'4 \forceBreak
) g'4 ( bes'4 g'4 f'4) g'4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( bes'4 a'4 g'4) bes'4 ( f'4) ~ f'4 ( ees'4) \divisioMaxima
 ees'4 f'4 ( g'4) g'4 g'4 g'4 bes'4 ( a'4 g'4 a'4) f'4 ( g'4)  \forceBreak
 bes'4 ( g'4) bes'4 ( c''4) c''4 ( d''4 bes'4 a'4) bes'4 ( c''4) \divisioMinima
 f'4 ( g'4 bes'4) ~ bes'4 ( d''4 c''4 bes'4 a'4 g'4 a'\prall bes'4 g'4) \finalis

}

altoMusic = {
g2*4/2 aes4 bes2 c'2*3/2 ~ c'2*4/2 ~ c'2 ~ \divisioMinima
c'4 ~ c'2*6/2 ~ c'4 r2*4/2 \divisioMaior
r2*4/2 aes2*3/2 bes2*3/2 ~ bes2 c'4 ~ c'2 ees'2*7/4 d'2*4/2 c'2*3/2 \divisioMaxima
bes2 ~ bes4 ~ bes2 ~ bes2*5/4 ~ bes2 ees'2*4/2 d'2*3/2 ~ d'2*4/2 c'2*3/2 ~ c'2*4/2 g2 ~ g2 ~ g2*3/2 ~ \divisioMaxima
g4 ~ g2*3/2 bes2 ~ bes4 g4 c'2 ~ c'2*3/2 ~ c'2 ~ c'2*3/2 bes2 \divisioMinima
ees'2 f'2*3/2 ~ f'2*3/4 ees'2*3/2 d'2*3/2 ~ d'2 ~ d'4 \divisioMaior
ees'2*3/2 f'2*4/2 ~ f'2 ees'2*3/4 c'2*3/2 bes4 r4 ees'4 g'4 ~ g'2 f'2*3/2 ~ f'4 ~ \divisioMinima
f'2 g'2*3/2 ~ g'2*3/2 ~ g'2*9/4 ~ g'2*4/2 ~ g'2 \divisioMaior
r2 g'2 ~ g'2 ~ g'2*7/4 ~ g'2 ~ g'2*9/4 f'2 ~ f'2*3/2 ees'2*5/2 d'2*3/2 ~ \divisioMinima
d'4 f'2 ees'2*4/2 d'2*4/2 g'2*3/4 ~ g'2 ~ g'2*3/2 f'2 ~ f'4 \divisioMaxima
g'2 ~ g'4 ~ g'2 f'2 ~ f'2*5/4 d'2*4/2 ~ d'2 \divisioMinima
f'2 ~ f'2*3/2 ~ f'2 d'2*3/2 ees'2*3/2 d'2*5/2 c'2*3/2 \divisioMaxima
ees'4 ~ ees'2 d'2*3/2 ~ d'2*4/2 ~ d'2 ~ d'2 ~ d'2 g'2 f'2 ees'2 \divisioMinima
d'2 ~ d'2*4/2 c'2 ~ c'2*3/2 bes4 \finalis
}

tenorMusic = {
ees2*4/2 ~ ees4 f2 ~ f2*3/2 aes2 g2 f2 ~ \divisioMinima
f4 g2*6/2 ~ g2 f2*3/2 \divisioMaior
g4 ~ g2*3/2 f2*3/2 ~ f2*3/2 ees2*3/2 g2 bes2*7/4 ~ bes2*4/2 g2*3/2 ~ \divisioMaxima
g2 r4 g2 ~ g2*5/4 ees2 g2*4/2 bes2*3/2 g2*4/2 aes2 ~ \divisioMinima
aes4 g2*4/2 ~ g2 ees2 d2*3/2 \divisioMaxima
r4 ees2*3/2 ~ ees2 d2 ees2 f2*3/2 g2 ~ g2*3/2 ~ g2 \divisioMinima
bes2 g2*9/4 ~ g2*3/2 ~ g2*3/2 c'2 bes4 ~ \divisioMaior
bes2*3/2 ~ bes2*4/2 f2 bes2*3/4 aes2*3/2 g4 r4 ees'2*4/2 ~ ees'2*3/2 d'4 \divisioMinima
f'2 ~ f'2*3/2 ees'2*3/2 d'2*9/4 ees'2 c'2 d'2 ~ \divisioMaior
d'2*4/2 ~ d'2 bes2*7/4 ~ bes2 g2*9/4 ~ g2 ~ g2*3/2 ~ g2*5/2 ~ g2*4/2 ~ g2 ~ g2*4/2 ~ g2*4/2 ~ g2*3/4 d'2 ees'2*3/2 ~ ees'2 d'4 ~ \divisioMaxima
d'2 f'4 ees'2 d'2 c'2*5/4 ~ c'2*4/2 bes2 \divisioMinima
f2 bes2*3/2 ~ bes2 ~ bes2*3/2 g2*3/2 ~ g2*5/2 ~ g2*3/2 \divisioMaxima
r2*6/2 c'2*4/2 bes2 g2 ~ g2 ~ g2 ~ g2 ~ g2 \divisioMinima
bes2 g2*4/2 ees2 d2*3/2 ~ d4 \finalis
}

bassMusic = {
c2*4/2 ~ c4 bes,2 aes,2*3/2 ~ aes,2*4/2 ~ aes,2 ~ \divisioMinima
aes,4 c2*6/2 ees2 d2*3/2 ~ \divisioMaior
d4 c2*3/2 ~ c2*3/2 ~ c2*3/2 ~ c2*3/2 ~ c2 bes,2*7/4 ~ bes,2*4/2 c2*3/2 \divisioMaxima
r2 ees4 ~ ees2 d2*5/4 ~ d2 c2*4/2 bes,2*3/2 c2*4/2 ~ c2*3/2 ~ c2*4/2 ~ c2 ~ c2 g,2*3/2 \divisioMaxima
c4 ~ c2*3/2 bes,2 ~ bes,2 aes,2 ~ aes,2*3/2 c2 ees2*3/2 ~ ees2 ~ \divisioMinima
ees2 d2*9/4 c2*3/2 g,2*3/2 ~ g,2 ~ g,4 \divisioMaior
c2*3/2 d2*4/2 ~ d2 ees2*3/4 ~ ees2*3/2 ~ ees4 r2*9/2 \divisioMinima
d'2 c'2*3/2 ~ c'2*3/2 g2*9/4 ~ g2*4/2 ~ g2 ~ \divisioMaior
g2*4/2 f2 ~ f2*7/4 ees2 ~ ees2*9/4 d2 bes,2*3/2 c2*5/2 g,2*3/2 ~ \divisioMinima
g,4 d2 c2*4/2 f2*4/2 ees2*3/4 g2 ~ g2*3/2 bes2 ~ bes4 \divisioMaxima
g2 ~ g4 ~ g2 d2 ~ d2*5/4 g2*4/2 ~ g2 \divisioMinima
d2 ~ d2*3/2 ees2 ~ ees2*3/2 c2*3/2 bes,2*5/2 c2*3/2 \divisioMaxima
r4 c'2 bes2 g4 ~ g2*4/2 ~ g2 ~ g2 f2 ees2 d2 c2 \divisioMinima
bes,2 ~ bes,2*4/2 c2 g,2*3/2 ~ g,4 \finalis
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
