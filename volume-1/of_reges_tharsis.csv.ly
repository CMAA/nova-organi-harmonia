\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.102
%(volume.page)

global = {
 \key ees \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Reges Tharsis" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Reges Tharsis"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Reges Tharsis" }
    \line {}
  }
}

chantText = \lyricmode {
Re -- ges Thar -- sis _ 
\set stanza = " * " et ín -- _ su -- læ 
mú -- _ ne -- _ ra óf -- _ fe -- _ rent: 
re -- ges A -- _ ra -- _ bum _ et Sa -- ba _ _ _ _ 
do -- _ _ na ad -- dú -- _ _ cent: 
et ad -- o -- rá -- _ _ bunt e -- um _ 
o -- mnes re -- _ ges ter -- _ ræ, 
\set stanza = " * " 
o -- _ _ mnes _ gen -- _ _ tes _ 
sér -- _ vi -- _ _ ent _ e -- _ i. }

chantMusic = {
\tieDown   bes'4 g'4 ( bes'4) bes'4 bes'4 ( bes'4 bes'4) bes'4. ~ bes'4 ( bes'4 bes'4) \divisioMinima
 g'4 ( bes'4) bes'4 ( bes'4 bes'4) d''4 ( c''4 bes'4) bes'4 ( a'4 g'4) g'4 ( bes'4 a'4 g'4 bes'4) \divisioMaior \forceBreak

 ees'4 ( f'4 g'4) c''4 ( bes'4 a'4) bes'4 ( a'4) ~ a'4 ( g'4 a'4) a'4 ( g'4)  ees'4 ( g'4) aes'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( ees'4 f'4) f'4 ( ees'4) \divisioMaxima
 g'4 f'4 f'4 ( g'4 a'4) ~ a'4 ( g'4) f'4 ( g'4 \forceBreak
) bes'4 ( bes'4 g'4 f'4) g'4 ( f'4) ~ f'4 ( ees'4) \divisioMinima
 ees'4 ( f'4) g'4 bes'4 ( c''4 a'4) bes'4 ( g'4 f'4.) bes'4 ( c''4 a'4) bes'4 ( g'4 f'4) ~ f'4 ( ees'4) \divisioMaior
 g'4 ( bes'4) ~ bes'4 ( bes'4) ~ bes'4 ( c''4) c''4 bes'4 ( bes'4 bes'4) bes'4 ( c''4) d''4 ( c''4 bes'4 a'4 \forceBreak
) bes'4 ( a'4 g'4 a'4) a'4 ( g'4) \divisioMaxima
 bes'4 ( g'4) bes'4 bes'4 ( c''4) c''4. bes'4 ( c''4 bes'4) ~ bes'4 ( f'4) g'4 ( bes'4 a'4) bes'4 ( a'4) bes'4 ( c''4 a'4) bes'4 ( g'4 ees'4) \divisioMaior
 ees'4 ( g'4) g'4 ( f'4) g'4 \forceBreak
 bes'4 ( bes'4 bes'4) g'4 ( f'4) f'4 ( a'4 g'4 f'4) g'4 ( f'4) f'4 \divisioMaxima
 g'4 bes'4 ( c''4 bes'4) ~ bes'4 ( bes'4) f'4 ( g'4) a'4 ( g'4) g'4 bes'4 ( c''4 bes'4) ~ bes'4 ( bes'4) f'4 ( g'4 \forceBreak
) a'4 ( g'4) \divisioMaior
 g'4 ( bes'4) c''4 ( bes'4)  g'4 bes'4 ( bes'4 g'4) aes'4 ( f'4) ees'4 ( f'4) g'4 ( bes'4 g'4)  f'4 ( aes'4 g'4 f'4) g'4 ( ees'4) ees'4 \finalis

}

altoMusic = {
r4 d'2 ~ d'4 ~ d'2*3/2 ~ d'2*3/4 ~ d'2*3/2 ~ \divisioMinima
d'2 g'2*3/2 f'2*3/2 ~ f'2*3/2 d'2*4/2 ~ d'4 \divisioMaior
ees'2*3/2 f'2*4/2 ~ f'2*4/2 d'2 ees'2 ~ ees'2 ~ ees'2 bes2*4/2 ~ bes2 \divisioMaxima
d'2 ~ d'2 ~ d'2*3/2 ~ d'2 ~ d'2*5/2 bes2*3/2 \divisioMinima
ees'2*3/2 f'2*3/2 bes2*7/4 d'2*5/2 c'2*3/2 \divisioMaior
d'2 ~ d'2 ees'2*3/2 f'2*3/2 ~ f'2 ~ f'2*4/2 ~ f'2*4/2 d'2 ~ \divisioMaxima
d'2*3/2 ees'2 f'2*3/4 ~ f'2 ~ f'2*3/2 ~ f'2*3/2 d'2*5/2 ~ d'2*3/2 \divisioMaior
c'2 ~ c'2*3/2 d'2*5/2 f'2*4/2 ~ f'2 ~ f'4 \divisioMaxima
r4 d'2*3/2 ~ d'2 c'2 d'2 ~ d'4 ees'2*3/2 f'2 ~ f'2 d'2 \divisioMaior
g'2 f'2*3/2 ees'2*5/2 ~ ees'2 bes2*3/2 c'2*4/2 bes2 g4 \finalis
}

tenorMusic = {
r4 d'2 c'4 bes2*3/2 a2*3/4 g2*3/2 ~ \divisioMinima
g2 ~ g2*3/2 bes2*3/2 c'2*3/2 ~ c'2*4/2 bes4 ~ \divisioMaior
bes2*3/2 ~ bes2*4/2 c'2*4/2 ~ c'2 bes2 c'2 aes2 ~ aes2*4/2 g2 \divisioMaxima
a2 c'2 ~ c'2*3/2 a2 g2*5/2 ~ g2*3/2 ~ \divisioMinima
g2*3/2 f2*3/2 ~ f2*7/4 g2*5/2 ~ g2*3/2 ~ \divisioMaior
g2 ~ g2 ~ g2*3/2 f2*3/2 bes2 a2*4/2 c'2*4/2 ~ c'4 bes4 \divisioMaxima
g2*3/2 ~ g2 f2*3/4 bes2 d'2*3/2 c'2*3/2 ~ c'2*5/2 bes2*3/2 ~ \divisioMaior
bes2 a2*3/2 g2*5/2 a2*4/2 bes2 a4 \divisioMaxima
g2*4/2 ~ g2 ~ g2 ~ g2 bes4 ~ bes2*3/2 ~ bes2 c'2 bes2 ~ \divisioMaior
bes2 ~ bes2*3/2 ~ bes2*3/2 ees2*4/2 ~ ees2*3/2 ~ ees2*4/2 ~ ees2 ~ ees4 \finalis
}

bassMusic = {
g2*3/2 ~ g4 ~ g2*3/2 ~ g2*3/4 ~ g2*3/2 \divisioMinima
f2 ees2*3/2 d2*3/2 ~ d2*3/2 g2*4/2 ~ g4 \divisioMaior
c2*3/2 d2*4/2 ~ d2*4/2 g2 ~ g2 c2 ~ c2 ees2*4/2 ~ ees2 \divisioMaxima
d2 ~ d2 g2*3/2 ~ g2 ~ g2*5/2 r2*3/2 \divisioMinima
ees2*3/2 d2*3/2 ~ d2*7/4 bes,2*5/2 c2*3/2 \divisioMaior
r2 f2 ees2*3/2 d2*3/2 ~ d2 ~ d2*4/2 ~ d2*4/2 g2 \divisioMaxima
bes,2*3/2 c2 d2*3/4 ~ d2 ~ d2*3/2 ~ d2*3/2 g2*5/2 ~ g2*3/2 ~ \divisioMaior
g2 ~ g2*8/2 d2*4/2 ~ d2 ~ d4 \divisioMaxima
r2*4/2 g,2 a,2 bes,2 ~ bes,4 c2*3/2 d2 ~ d2 g2 \divisioMaior
ees2 d2*3/2 c2*3/2 ~ c2*4/2 g,2*3/2 aes,2*4/2 ees,2 ~ ees,4 \finalis
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
