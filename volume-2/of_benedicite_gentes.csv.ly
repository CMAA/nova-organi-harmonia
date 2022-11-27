\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.58
%(volume.page)

global = {
 \key g \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Benedicite gentes" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Benedicite gentes"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Benedicite gentes" }
    \line {}
  }
}

chantText = \lyricmode {
Be -- ne -- dí -- ci -- te gen -- _ tes 
\set stanza = " * " Dó -- _ mi -- num De -- _ _ um no -- _ strum, 
et ob -- au -- dí -- te vo -- _ cem lau -- dis e -- jus: 
qui pó -- su -- it _ á -- _ ni -- mam me -- am ad _ vi -- tam, _ 
et non de -- dit _ com -- mo -- vé -- ri _ pe -- des _ me -- os: 
be -- ne -- dí -- ctus Dó -- _ mi -- nus, 
qui non _ a -- mó -- vit de -- pre -- ca -- ti -- ó -- nem me -- _ am, 
et _ mi -- se -- ri -- cór -- _ di -- am su -- _ am a me, _ _ 
al -- le -- _ _ _ _ _ lú -- ia. }

chantMusic = {
\tieDown   d'4 d'4 f'4 ( g'4 a'4) f'4 d'4 ( f'4) d'4 ( f'4) g'4 ( f'4 g'4) g'4 ( f'4) \divisioMinima
 f'4 ( a'4) c''4 ( bes'4) bes'4 ( bes'4 bes'4) g'4 g'4 bes'4 ( bes'4) ~ bes'4 ( g'4 \forceBreak
) g'4 ( \once \tweak #'font-size #-4 f' ) f'4 ( g'4) a'4 ( g'4 a'4 f'4) d'4 ( f'4) \divisioMaior
 g'4 f'4 g'4 bes'4 ( bes'4) g'4 ( a'4) f'4 bes'4 ( bes'4 bes'4) bes'4 ( c''4 bes'4 bes'4) g'4 ( \once \tweak #'font-size #-4 f' ) bes'4 ( bes'4 \forceBreak
) g'4 ( a'4 \tiny g' f' 4) g'4 ( f'4) \divisioMaior
 g'4 bes'4 ( bes'4) bes'4 ( d''4 c''4) c''4 ( d''4 bes'4) bes'4 g'4 ( a'4 g'4) \divisioMinima
 g'4 bes'4 ( d''4 c''4) bes'4 bes'4 ( bes'4 bes'4) g'4 ( bes'4) bes'4 ( bes'4 bes'4 \forceBreak
) bes'4 c''4 ( bes'4 bes'4) g'4 g'4 ( a'\prall bes'4 g'4) a'4 ( bes'4 a'4) \divisioMaior
 g'4 g'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( bes'4) bes'4 c''4 ( bes'4 bes'4) g'4 g'4 ( f'4) g'4 ( bes'4) bes'4 c''4 ( bes'4 bes'4) \divisioMinima \forceBreak

 g'4 f'4 bes'4 ( bes'4 bes'4) g'4 ( a'\prall bes'4 a'4 g'4 f'4 g'4) f'4 ( g'4) \divisioMaxima
 f'4 g'4 bes'4 ( c''4 bes'4) bes'4 ( bes'4 bes'4) bes'4 c''4 ( bes'4 bes'4) g'4 g'4 ( a'4 g'4) \divisioMaior \forceBreak

 f'4 ( g'4) g'4 bes'4 ( c''4 bes'4) bes'4 ( bes'4 bes'4) g'4 ( a'4 f'4) d'4 ( f'4) \divisioMinima
 g'4 g'4 f'4 g'4 bes'4 ( bes'4) g'4 ( a'4) f'4 bes'4 ( bes'4 bes'4) a'4 ( f'4 g'4) \divisioMaior \forceBreak

 g'4 bes'4 ( bes'4 bes'4) bes'4 bes'4 g'4 g'4 bes'4 ( bes'4 bes'4) g'4 ( f'4) f'4 ( g'4 f'4) f'4 ( g'4) bes'4. d''4 ( c''4 bes'4) bes'4 \divisioMinima \forceBreak

 bes'4 bes'4 ( g'4) bes'4 ( bes'4 bes'4) g'4 ( a'4 g'4) \divisioMaxima
 g'4 ( a'4) f'4 bes'4 ( bes'4 bes'4) ~ bes'4 ( c''4 bes'4 f'4) g'4 bes'4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( c''4 bes'4 c''4) g'4 ( a'4 g'4) g'4 \finalis

}

altoMusic = {
r2 c'2*4/2 d'2 ~ d'2 ~ d'2*3/2 e'4 r4 \divisioMinima
f'2 ~ f'2 g'2*4/2 d'4 ~ d'2 f'2 d'2 ~ d'2 ~ d'2*4/2 ~ d'2 ~ \divisioMaior
d'2*3/2 ~ d'2 c'2*3/2 d'2*4/2 f'2*3/2 ~ f'2 d'2 ~ d'2*4/2 c'2 \divisioMaior
g'4 ~ g'2 f'2*3/2 ~ f'2 ~ f'2 d'2*3/2 ~ \divisioMinima
d'4 ~ d'2*4/2 ~ d'2*3/2 g'2 f'2*3/2 ~ f'4 ees'2*3/2 ~ ees'4 d'2*4/2 ~ d'2*3/2 ~ \divisioMaior
d'4 c'2 d'2 ~ d'4 f'2*4/2 ~ f'2 ~ f'2 ees4 d'2*3/2 \divisioMinima
c'2 d'2*3/2 ~ d'2 c'2 ~ c'2*3/2 d'2 \divisioMaxima
f'2 ~ f'2*3/2 ~ f'2*3/2 ~ f'4 ees'2*4/2 d'2*3/2 \divisioMaior
c'2 d'4 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2 ~ \divisioMinima
d'2*4/2 f'2 ~ f'2 ~ f'4 d'2*3/2 ~ d'2*3/2 ~ \divisioMaior
d'4 ~ d'2*4/2 ees'2 ~ ees'4 f'2*3/2 ~ f'2 ~ f'2*3/2 c'2 d'2*3/4 ~ d'2*3/2 ~ d'4 ~ \divisioMinima
d'4 c'2 d'2*3/2 ~ d'2 ~ d'4 ~ \divisioMaxima
d'2*3/2 ~ d'2*3/2 ~ d'2*5/2 ~ d'2 ees'2 f'2 ~ f'2 d'2*3/2 ~ d'4 \finalis
}

tenorMusic = {
r2 a2*4/2 ~ a2 ~ a2 ~ a2*3/2 ~ a2 \divisioMinima
c'2 d'2 ~ d'2*4/2 c'4 bes2 ~ bes2 a2 ~ a2 f2*4/2 g2 ~ \divisioMaior
g2*3/2 ~ g2 a2*3/2 g2*4/2 f2*3/2 a2 g2 bes2*4/2 a2 \divisioMaior
g4 ~ g2 bes2*3/2 a2 g2 c'2*3/2 ~ \divisioMinima
c'4 bes2*4/2 g2*3/2 ~ g2 ~ g2*3/2 f4 g2*3/2 bes4 ~ bes2 g2 f2*3/2 \divisioMaior
d4 ~ d2 ~ d2 g4 f2*4/2 a2 bes2 ~ bes4 ~ bes2*3/2 \divisioMinima
a2 g2*3/2 ~ g2 ~ g2 a2*3/2 ~ a4 bes4 ~ \divisioMaxima
bes2 g2*3/2 f2*3/2 g4 ~ g2*4/2 ~ g2*3/2 \divisioMaior
d2 ~ d4 g2*3/2 ~ g2*3/2 ~ g2*3/2 a2 \divisioMinima
bes2*4/2 ~ bes2 d'2 c'4 ~ c'2*3/2 bes2*3/2 \divisioMaior
a4 g2*4/2 ~ g2 c'4 ~ c'2*3/2 bes2 a2*3/2 ~ a2 g2*3/4 a2*3/2 g4 \divisioMinima
r4 a2 bes2*3/2 c'2 bes4 \divisioMaxima
g2*3/2 ~ g2*3/2 a2*5/2 g2 ~ g2 f2 d'2 c'2*3/2 bes4 \finalis
}

bassMusic = {
r2*6/2 f2 e2 d2*3/2 ~ d2 ~ \divisioMinima
d2 ~ d2 g2*4/2 ~ g4 ~ g2 d2 ~ d2 c2 ~ c2*4/2 bes,2 \divisioMaior
a,2*3/2 g,2 ~ g,2*3/2 ~ g,2*4/2 d2*3/2 ~ d2 g2 ~ g2*4/2 a2 \divisioMaior
r4 ees2 d2*3/2 ~ d2 g2 ~ g2*3/2 ~ \divisioMinima
g4 ~ g2*4/2 f2*3/2 ees2 d2*3/2 ~ d4 c2*3/2 ~ c4 bes,2 ~ bes,2 d2*3/2 \divisioMaior
bes,4 a,2 bes,2 ~ bes,4 d2*4/2 ~ d2 ~ d2 g4 ~ g2*3/2 ~ \divisioMinima
g2 ~ g2*3/2 f2 ees2 ~ ees2*3/2 g4 ~ g4 \divisioMaxima
d2 ~ d2*3/2 ~ d2*3/2 ~ d4 c2*4/2 bes,2*3/2 \divisioMaior
a,2 g,4 ~ g,2*3/2 a,2*3/2 bes,2*3/2 ~ bes,2 ~ \divisioMinima
bes,2*4/2 d2 ~ d2 ~ d4 g2*3/2 ~ g2*3/2 ~ \divisioMaior
g4 ~ g2*4/2 c2 ~ c4 d2*3/2 ~ d2 ~ d2*3/2 g2 ~ g2*3/4 f2*3/2 g4 ~ \divisioMinima
g4 ~ g2 ~ g2*3/2 ~ g2 ~ g4 \divisioMaxima
a,2*3/2 g,2*3/2 ~ g,2*5/2 ~ g,2 c2 d2 ~ d2 g2*3/2 ~ g4 \finalis
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
        "II"
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
