\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.205
%(volume.page)

global = {
 \key g \dorian
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
Con -- fi -- té -- mi -- ni _ _ _ 
\set stanza = " * " Dó -- _ mi -- no, _ _ _ 
quó -- _ ni -- am bo -- nus: _ _ _ _ _ 
quó -- ni -- am in sǽ -- _ cu -- lum _ _ 
mi -- se -- ri -- cór -- di -- a _ e -- jus. _ ℣. 
Quis lo -- qué -- _ _ _ _ _ _ _ _ _ tur po -- tén -- ti -- as Dó -- _ _ mi -- ni: _ _ _ _ 
au -- di -- tas fá -- _ ci -- et _ _ 
o -- _ mnes lau -- des _ e -- jus? _ ℣. 
Be -- á -- ti _ _ _ _ _ _ 
qui cu -- stó -- di -- _ unt 
ju -- dí -- _ _ _ _ ci -- um, _ _ _ _ 
et fá -- ci -- unt ju -- stí -- _ _ ti -- am _ 
in o -- mni tém -- _ po -- re. _ ℣. 
Me -- mén -- to _ _ _ _ _ _ _ _ _ _ no -- stri, Dó -- mi -- _ ne, 
in be -- ne -- plá -- ci -- to pó -- pu -- li tu -- _ _ i: _ _ _ _ 
ví -- si -- ta _ nos _ _ 
in sa -- _ _ lu -- tá -- ri 
\set stanza = " * " tu -- _ _ o. _ _ _ _ _ _ }

chantMusic = {
\tieDown   g'4 g'4 g'4 f'4 ( g'4 f'4 d'4) f'4 ( g'4 f'4) g'4 ( a'4 g'4.) f'4 ( g'4 f'4) g'4 ( a'4 g'4) \divisioMinima
 f'4 ( g'4) bes'4 ( a'4 bes'4 \forceBreak
) a'4 ( bes'4 a'4 g'4) f'4 ( g'\prall a'4 g'4.) a'4 ( bes'4 a'4) bes'4 ( a'4 g'4) a'4 ( g'4) \divisioMaior
 f'4 ( g'4) bes'4 ( bes'4 c''4) bes'4 bes'4 ( a'4 a'4) g'4 ( f'4 \forceBreak
) f'4 ( g'4) a'4 ( g'4) a'4 ( a'4 g'4) a'4 ( bes'4) c''4 ( g'4) ~ g'4 ( f'4) \divisioMaxima
 a'4 ( bes'4) g'4 g'4 g'4 g'4 ( f'4) g'4 ( a'\prall bes'4 c''4) bes'4 ( c''4) bes'4 ( a'4 \forceBreak
) bes'4 ( c''4) ~ c''4 ( bes'4) \divisioMaior
 f'4 ( g'4) f'4 ( bes'4) bes'4 bes'4 bes'4 a'4 ( bes'4) c''4 ( bes'4 c''4) g'4 g'4 a'4 ( a'4 g'4) \finalis \forceBreak

 f'4 g'4 g'4 ( bes'4) c''4 ( bes'4) ~ bes'4 ( g'4) a'4 bes'4 ( a'4) ~ a'4 ( g'4) bes'4 c''4 ( bes'4) ~ bes'4 ( a'4) c''4 d''4 ( c''4) ~ c''4 ( a'4) bes'4 c''4 ( a'4 bes'4 g'4) g'4 \divisioMinima \forceBreak

 g'4 bes'4 bes'4 ( a'4) g'4 g'4 bes'4 ( bes'4) ~ bes'4 ( bes'4 bes'4) g'4 ( a'4) g'4 ( f'4) a'4 ( a'4 g'4) a'4 ( bes'4) c''4 ( g'4) ~ g'4 ( f'4) \divisioMaxima
 f'4 a'4 ( bes'4) g'4 \forceBreak
 g'4 ( f'4) g'4 ( a'\prall bes'4 c''4) bes'4 ( c''4) bes'4 ( a'4) bes'4 ( c''4) ~ c''4 ( bes'4) \divisioMaior
 bes'4 ( c''4 bes'4) ~ bes'4 ( \once \tweak #'font-size #-4 a' ) g'4 ( f'4) bes'4 a'4 ( bes'4) c''4 ( bes'4 c''4) g'4 g'4 \forceBreak
 a'4 ( a'4 g'4) \finalis
 bes'4 ( c''4) c''4 ( d''4 c''4) c''4 ( d''4 c''4 bes'4) c''4 ( bes'4) ~ bes'4 ( bes'4) ~ bes'4 ( a'4 f'4) g'4 ( f'4) g'4 ( a'\prall bes'4 a'4 g'4) a'4 ( g'4) \divisioMaior
 bes'4 bes'4 \forceBreak
 bes'4 ( c''4 d''4) d''4 ( c''4 bes'4 a'4) bes'4 ( a'4 g'4 a'4) a'4 ( g'4) \divisioMaior
 g'4 ( c''4) d''4 ( c''4) ~ c''4 ( g'4) bes'4 ( bes'4 g'4) d''4 ( c''4 bes'4) ~ bes'4 ( a'4 g'4 a'4) g'4 ( a'4) g'4 ( f'4) a'4 ( a'4 g'4 \forceBreak
) a'4 ( bes'4) c''4 ( g'4) ~ g'4 ( f'4) \divisioMaxima
 f'4 a'4 ( bes'4) g'4 g'4 g'4 g'4 ( f'4) g'4 ( a'\prall bes'4 c''4) bes'4 ( c''4) bes'4 ( a'4) bes'4 ( c''4) ~ c''4 ( bes'4) \divisioMaior \forceBreak

 f'4 ( g'4) f'4 ( bes'4) bes'4 a'4 ( bes'4) c''4 ( bes'4 c''4) g'4 ( f'4) g'4 a'4 ( a'4 g'4) \finalis
 bes'4 ( c''4) d''4 ( c''4)  c''4 ( d''4 c''4) d''4 ( ees''4 c''4 bes'4.) d''4 ( c''4) d''4 ( ees''4 c''4 bes'4) \divisioMinima \forceBreak

 d''4 ( d''4 c''4) d''4 ( c''4 bes'4.) d''4 ( d''4 c''4) d''4 ( c''4 bes'4.) d''4 ( c''4) d''4 ( c''4) ~ c''4 ( g'4) g'4 ( f'4) bes'4 \divisioMinima
 bes'4 ( c''4 d''4) d''4 ( c''4 bes'4 a'4) bes'4 ( a'4 g'4 a'4) a'4 ( g'4) \divisioMaior \forceBreak

 g'4 ( \once \tweak #'font-size #-4 f' ) g'4 bes'4 ( a'4) bes'4 g'4 g'4 g'4 ( a'4) g'4 g'4 g'4 bes'4 ( bes'4) ~ bes'4 ( bes'4 bes'4) g'4 ( f'4) a'4 ( a'4 g'4 \forceBreak
) a'4 ( bes'4) c''4 ( g'4) ~ g'4 ( f'4) \divisioMaxima
 a'4 ( bes'4) g'4 g'4 ( f'4) g'4 ( a'\prall bes'4 c''4)  bes'4 ( a'4 c''4.) d''4 ( ees''4 c''4) ~ c''4 ( bes'4) \divisioMaior
 bes'4 bes'4 \forceBreak
 c''4 ( bes'4) ~ bes'4 ( a'4) g'4 ( f'4) g'4 ( a'4 g'4) a'4  c''4 ( bes'4) c''4 ( bes'4 g'4 a'4) \divisioMinima
 bes'4 ( d''4 c''4 d''4 bes'4 a'4 g'4) g'4 ( f'4) g'4 bes'4 ( bes'4 \forceBreak
) c''4 ( d''4 c''4 a'4 bes'4) \divisioMinima
 a'4 ( bes'4) d''4 ( c''4 bes'4) ~ bes'4 ( a'4 g'4) a'4 ( a'4 g'4) \finalis

}

altoMusic = {
d'2*3/2 ~ d'2*4/2 ~ d'2*13/4 ~ d'2*3/2 ~ d'2*3/2 \divisioMinima
c'2 d'2*3/2 f'2*4/2 ~ f'2*9/4 ~ f'2*3/2 ees'2*3/2 d'2 ~ \divisioMaior
d'2 ~ d'2*4/2 f'2*3/2 ~ f'2 d'2*4/2 ~ d'2*3/2 ~ d'2*3/2 c'2*3/2 \divisioMaxima
d'2*5/2 ~ d'2 f'2*4/2 g'2*5/2 ~ g'2*3/2 \divisioMaior
f'2*5/2 ~ f'2 ~ f'2 g'2*3/2 ~ g'2 d'2 ~ d'4 \finalis
r2 d'2*3/2 ~ d'2*5/2 ~ d'2*5/2 f'2*5/2 ~ f'2*4/2 ~ f'2 ~ f'2 d'4 ~ \divisioMinima
d'2 f'2*3/2 d'2*3/2 ~ d'2*5/2 ~ d'2 ~ d'2*3/2 ees2*3/2 d'2*3/2 ~ \divisioMaxima
d'2*4/2 ~ d'2 ~ d'2*4/2 f'2 ~ f'2*3/2 ~ f'2*3/2 \divisioMaior
ees'2 f'2*3/2 ~ f'2*3/2 ~ f'2 g'2*3/2 ~ g'2 d'2 ~ d'4 \finalis
f'2 ~ f'2*3/2 ~ f'2*4/2 g'2 ~ g'2 f'2*3/2 ~ f'2 ees2*5/2 d'2 \divisioMaior
g'2 f'2*3/2 ~ f'2 ~ f'2 ees'2*4/2 d'2 \divisioMaior
c'2*3/2 d'2*3/2 ees'2*3/2 ee'2 f'2*5/2 ~ f'2*4/2 ~ f'2*3/2 ~ f'2*3/2 d'2*3/2 \divisioMaxima
c'4 ~ c'2*3/2 bes2 d'2 ~ d'2*4/2 ees'2*5/2 f'2*3/2 ~ \divisioMaior
f'2 ~ f'2*3/2 ~ f'2 e'2*3/2 ~ e'2*3/2 d'2*3/2 \finalis
r2 f'2 g'2*3/2 ~ g'2*3/2 ~ g'2*3/4 bes'2 ~ bes'2*4/2 ~ \divisioMinima
bes'2*3/2 ~ bes'2*7/4 ~ bes'2*3/2 g'2*7/4 a'2*3/2 d'2*3/2 c'2 d'4 \divisioMinima
f'2*3/2 ~ f'2*4/2 ees'2*4/2 d'2 ~ \divisioMaior
d'2*3/2 ~ d'2 ees'2*3/2 ~ ees'2*4/2 ee'4 f'2 ~ f'2*3/2 ~ f'2 d'2*3/2 ~ d'2*3/2 c'2*3/2 \divisioMaxima
bes2*3/2 c'2 d'2 ~ d'2 ees'2*7/4 ~ ees'2 f'2*3/2 ~ \divisioMaior
f'2*3/2 ~ f'2*3/2 ~ f'2 ~ f'2*4/2 g'2 f'2*3/2 ~ f'4 \divisioMinima
e'2*3/2 d'2*4/2 c'2*3/2 d'2 ~ d'2*4/2 ~ d'4 ~ \divisioMinima
d'2 ~ d'2 ~ d'2*4/2 bes2*3/2 \finalis
}

tenorMusic = {
r2 bes4 ~ bes2*4/2 ~ bes2*13/4 ~ bes2*3/2 ~ bes2*3/2 \divisioMinima
a2 r2*3/2 c'2*4/2 ~ c'2*9/4 f2*3/2 g2*3/2 ~ g2 ~ \divisioMaior
g2 ~ g2*4/2 f2*3/2 a2 ~ a2 f2 ~ f2*3/2 ~ f2*3/2 ~ f2*3/2 ~ \divisioMaxima
f2 g2*3/2 a2 bes2*4/2 ~ bes2 c'2*3/2 d'2*3/2 \divisioMaior
a2 bes2*3/2 g2 f2 ees2*3/2 c'2 ~ c'2 bes4 \finalis
r2 r2*3/2 a2*5/2 bes2*5/2 c'2*5/2 ~ c'2*4/2 d'2 c'2 ~ c'4 ~ \divisioMinima
c'4 bes4 c'2*3/2 ~ c'2*3/2 bes2*5/2 a2 bes2*3/2 ~ bes2*3/2 a2*3/2 \divisioMaxima
r4 g2*3/2 a2 bes2*4/2 ~ bes2 g2*3/2 f2*3/2 \divisioMaior
g2 f2*3/2 a2 g4 f2 ees2*3/2 c'2 ~ c'2 bes4 \finalis
d'2 ~ d'2*3/2 ~ d'2*4/2 ~ d'2 ~ d'2 ~ d'2*3/2 bes2 ~ bes2*5/2 ~ bes2 ~ \divisioMaior
bes2 ~ bes2*3/2 a2 g2 ~ g2*4/2 ~ g2 ~ \divisioMaior
g2*3/2 ~ g2*3/2 ~ g2*3/2 bes2 ~ bes2*5/2 d'2*4/2 c'2*3/2 bes2*3/2 a2*3/2 \divisioMaxima
d4 ~ d2*5/2 ~ d2 bes2*4/2 ~ bes2*5/2 ~ bes2*3/2 \divisioMaior
c'2 bes2 g4 f2 g2*3/2 bes2*3/2 ~ bes2*3/2 \finalis
r2 bes2 ~ bes2*3/2 ~ bes2*3/2 d'2*3/4 f'2 ees'2 g'2 \divisioMinima
f'2*3/2 ~ f'2*7/4 g'2*3/2 bes2*7/4 a2*3/2 ~ a2*3/2 ~ a2 g4 \divisioMinima
f2*3/2 bes2*4/2 ~ bes2*4/2 ~ bes2 \divisioMaior
a2*3/2 g2 ~ g2*3/2 c'2*4/2 bes4 ~ bes2 g2*3/2 f2 ~ f2*3/2 ~ f2*3/2 ~ f2*3/2 \divisioMaxima
d2*3/2 ~ d2 ~ d2 g2 ~ g2*7/4 bes2 ~ bes2*3/2 ~ \divisioMaior
bes4 d'2 c'2*3/2 bes2 a2*4/2 g2 ~ g2*3/2 f4 \divisioMinima
g2*3/2 ~ g2*4/2 ~ g2*3/2 ~ g2 a2*4/2 g4 ~ \divisioMinima
g2 ~ g2 ~ g2*4/2 d2*3/2 \finalis
}

bassMusic = {
g2 ~ g4 a2*4/2 bes2*13/4 a2*3/2 g2*3/2 ~ \divisioMinima
g2 ~ g2*3/2 f2*4/2 d2*9/4 ~ d2*3/2 c2*3/2 bes,2 \divisioMaior
a,2 g,2*4/2 d2*3/2 ~ d2 ~ d2 ~ d2 c2*3/2 bes,2*3/2 a,2*3/2 \divisioMaxima
d2*5/2 ~ d2 ~ d2*4/2 ees2 ~ ees2*3/2 g2*3/2 ~ \divisioMaior
g2 d2*3/2 ~ d2 ~ d2 ees2*3/2 ~ ees2 g2 ~ g4 \finalis
r2 g2*3/2 ~ g2*5/2 ~ g2*5/2 f2*5/2 d2*4/2 ~ d2 ~ d2 g4 ~ \divisioMinima
g2 f2*3/2 g2*3/2 ~ g2*5/2 ~ g2 ~ g2*3/2 c2*3/2 d2*3/2 \divisioMaxima
bes,4 ~ bes,2*3/2 ~ bes,2 ~ bes,2*4/2 d2 ~ d2*3/2 ~ d2*3/2 \divisioMaior
c2 d2*3/2 ~ d2 ~ d4 ~ d2 ees2*3/2 ~ ees2 g2 ~ g4 \finalis
d2 a2*3/2 g2*4/2 f2 ees2 d2*3/2 ~ d2 c2*5/2 g2 \divisioMaior
ees2 d2*3/2 ~ d2 ~ d2 c2*4/2 bes,2 \divisioMaior
a,2*3/2 bes,2*3/2 c2*3/2 ~ c2 d2*5/2 ~ d2*4/2 ~ d2*3/2 ~ d2*3/2 ~ d2*3/2 \divisioMaxima
a,4 g,2*5/2 bes,2 ~ bes,2*4/2 c2*5/2 d2*3/2 ~ \divisioMaior
d2 ~ d2*3/2 ~ d2 c2*3/2 ~ c2*3/2 g2*3/2 \finalis
r2 d2 ees2*3/2 g2*3/2 ~ g2*3/4 ~ g2 ~ g2 ~ g2 \divisioMinima
bes2*3/2 a2*7/4 g2*3/2 ~ g2*7/4 f2*3/2 g2*3/2 ~ g2 ~ g4 \divisioMinima
d2*3/2 ~ d2*4/2 c2*4/2 bes,2 ~ \divisioMaior
bes,2*3/2 ~ bes,2 c2*3/2 ~ c2*4/2 ~ c4 d2 ~ d2*3/2 ~ d2 c2*3/2 bes,2*3/2 a,2*3/2 \divisioMaxima
g,2*3/2 a,2 bes,2 ~ bes,2 c2*7/4 ~ c2 d2*3/2 ~ \divisioMaior
d2*3/2 ~ d2*3/2 ~ d2 ~ d2*4/2 ees2 d2*3/2 ~ d4 \divisioMinima
c2*3/2 bes,2*4/2 a,2*3/2 g,2 ~ g,2*4/2 ~ g,4 \divisioMinima
bes,2 a,2 g,2*4/2 ~ g,2*3/2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Tract"
        "2"
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
