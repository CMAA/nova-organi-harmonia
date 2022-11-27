\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.39
%(volume.page)

global = {
 \key c \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Prope est Dominus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Prope est Dominus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Prope est Dominus" }
    \line {}
  }
}

chantText = \lyricmode {
Pro -- pe est Dó -- mi -- nus _ _ _ _ _ _ _ _ _ 
\set stanza = " * " 
ó -- mni -- bus in -- vo -- cán -- ti -- bus e -- _ _ _ _ _ _ um: 
ó -- mni -- bus qui ín -- vo -- cant e -- _ _ um 
in ve -- ri -- tá -- _ te. _ _ _ _ _ _ _ _ _ _ _ ℣. 
Lau -- dem Dó -- mi -- ni _ _ _ _ _ _ _ _ 
lo -- qué -- tur _ _ os _ me -- um: _ _ _ 
et be -- ne -- dí -- cat o -- _ mnis ca -- ro _ _ _ 
no -- men _ san -- ctum 
\set stanza = " * " e -- jus. _ _ _ _ }

chantMusic = {
\tieDown   ees'4 ees'4 ees'4 ees'4 c'4 c'4 ees'4 ( ees'4 f'4) ees'4 ( ees'4) ~ ees'4 ( c'4) \divisioMinima
 ees'4 ( ees'4) f'4 ( d'4) ees'4 ( c'4 bes4.) ees'4 ( c'4) d'4 ( c'4) ~ c'4 ( bes4) \divisioMaior \forceBreak

 ees'4 f'4 ( g'4) g'4 g'4 f'4 ees'4 ( g'4 f'4) f'4 f'4 g'4 ( f'4) g'4 bes'4 ( bes'4) ~ bes'4 ( g'4) \divisioMinima
 bes'4 ( bes'4) ~ bes'4 ( a'4 g'4) bes'4 ( f'4) ~ f'4 ( ees'4 f'4) f'4 ( ees'4) \divisioMaxima \forceBreak

 g'4 ( bes'4) f'4 ( ees'4) ees'4 ees'4 ees'4 d'4 c'4 ( f'4 \once \tweak #'font-size #-4 ees' ) ees'4 ( f'4 d'4) ees'4 ( c'4) ~ c'4 ( bes4 c'4) c'4 ( bes4) \divisioMaior
 d'4 bes4 c'4 ( d'\prall ees'4) ees'4 ( f'4 ees'4 bes4 c'4 \forceBreak
) ees'4 ( ees'4 ees'4) ees'4 \divisioMinima
  g'4 ( g'4 f'4) g'4 ( g'4) f'4 ( g'4) aes'4 ( f'4 ees'4) g'4 ( g'4)  ees'4 ( g'4) bes'4 ( c''4 a'4 bes'4 g'4) \divisioMinima
 ees'4 ( f'4) g'4 bes'4 ( bes'4) c''4 ( d''4 a'4 bes'4 g'4.)  f'4 ( aes'4 g'4 ees'4) \finalis \forceBreak

  bes'4 ( bes'4) bes'4 bes'4 bes'4 c''4 ( bes'4) ~ bes'4 ( bes'4) ~ bes'4 ( g'4) \divisioMinima
 bes'4 ( bes'4 g'4) bes'4 ( bes'4 f'4.)  g'4 ( aes'4 f'4 ees'4) bes'4 ( bes'4) d''4 ( c''4 bes'4) ~ bes'4 ( aes'4 g'4) \divisioMaxima \forceBreak

 g'4 ( bes'4 c''4) c''4 c''4 ( bes'4) d''4 ( ees''4 c''4 bes'4) ~ bes'4 ( g'4) \divisioMinima
 bes'4 ( g'4) bes'4 ( bes'4 bes'4) bes'4 bes'4 ( g'4 a'\prall bes'4 c''4.) bes'4 ( c''4) d''4 ( bes'4 bes'4) c''4 ( c''4 bes'4) \divisioMaxima \forceBreak

 ees'4 ees'4 g'4 ( f'4) f'4 ( bes'4) bes'4 \divisioMinima
 c''4 ( bes'4) ~ bes'4 ( \once \tweak #'font-size #-4 a' ) c''4 ( d''4 ees''4) c''4 ( bes'4) bes'4 ( a'4) c''4 ( bes'4) d''4 ( c''4 bes'4 a'4) bes'4 ( g'4) \divisioMaior
 g'4 ( f'4 \forceBreak
)  f'4 ( aes'4 g'4) aes'4 ( f'4 ees'4) g'4 ( \once \tweak #'font-size #-4 f' ) bes'4 \divisioMinima
 bes'4 ( c''4 bes'4 g'4) g'4. ees'4 ( f'4) g'4 bes'4 ( bes'4) c''4 ( d''4 a'4 bes'4 g'4.)  f'4 ( aes'4 g'4 ees'4) \finalis

}

altoMusic = {
r2*3/2 g2*3/2 c'2*3/2 g2 ~ g2 \divisioMinima
bes2*4/2 ~ bes2*7/4 ~ bes2*3/2 r2*3/2 \divisioMaior
c'4 ~ c'2*3/2 d2 bes2*3/2 ~ bes2 d'2*3/2 ees'2 ~ ees'2 \divisioMinima
f'2 ~ f'2 d'2 ~ d'2*4/2 c'2 \divisioMaxima
bes2*6/2 aes2 bes2*3/2 g2*4/2 ~ g2*4/2 r2 \divisioMaior
bes2 g2*3/2 ~ g2*5/2 aes2*3/2 g4 c'2*3/2 ~ c'2*4/2 ~ c'2*3/2 ~ c'2 ees'2 f'2*3/2 d'2 \divisioMinima
ees'2*3/2 d'2 f'2*4/2 d'2*3/4 c'4 bes2*3/2 d'2*3/2 ~ d'2*4/2 ~ d'2 ees'2 \divisioMinima
g'2*3/2 f'2 ~ f'2*3/4 ees'2*4/2 d'2 ~ d'2*3/2 ~ d'2*3/2 \divisioMaxima
ees'2*3/2 ~ ees'4 f'2 ees'2*3/2 d'2*3/2 \divisioMinima
ees'2 d'2*3/2 ~ d'4 ~ d'2*4/2 g'2*3/4 f'2*5/2 ~ f'2*3/2 \divisioMaxima
ees'2 d'2 ~ d'2 ~ d'4 ~ \divisioMinima
d'4 f'2*3/2 g'2*3/2 f'2 ~ f'2*4/2 ~ f'2*4/2 d'2 \divisioMaior
ees'2 ~ ees'2*6/2 d'2*3/2 ~ \divisioMinima
d'2*4/2 ees'2*9/4 g'2 f'2*4/2 d'2*3/4 c'2*3/2 bes4 \finalis
}

tenorMusic = {
r2*3/2 r2*3/2 g2*3/2 f2 ees2 ~ \divisioMinima
ees2*4/2 g2*7/4 ~ g2*3/2 f2*3/2 \divisioMaior
g4 ees2*3/2 d2 ees2*3/2 ~ ees2 d2*3/2 c2 g2 \divisioMinima
f2 bes2 ~ bes2 g2*4/2 ~ g2 \divisioMaxima
ees2*6/2 ~ ees2 ~ ees2*3/2 ~ ees2*4/2 ~ ees2*4/2 f2 ~ \divisioMaior
f2 ees2*3/2 ~ ees2*5/2 ~ ees2*3/2 ~ ees4 ~ ees2*3/2 ~ ees2*4/2 f2*3/2 ees2 c'2 ~ c'2*3/2 ~ c'2 \divisioMinima
bes2*3/2 ~ bes2 ~ bes2*4/2 ~ bes2*3/4 aes4 ~ aes4 g2 r2*3/2 a2*4/2 bes2 c'2 \divisioMinima
d'2*3/2 ~ d'2*7/4 ees'2*4/2 bes2 a2*3/2 bes2*3/2 \divisioMaxima
c'2*3/2 bes4 ~ bes2 ~ bes2*3/2 ~ bes2*3/2 \divisioMinima
c'2 ~ c'2*3/2 bes4 g2*4/2 ~ g2*3/4 bes2*5/2 d'2*3/2 \divisioMaxima
c'2 bes2 ~ bes2 ~ bes4 ~ \divisioMinima
bes4 c'2*3/2 ~ c'4 g2 ~ g2 f2*4/2 bes2*4/2 ~ bes2 ~ \divisioMaior
bes2 c'2*6/2 bes2*3/2 ~ \divisioMinima
bes2*4/2 ~ bes2*9/4 ~ bes2 ~ bes2*4/2 ~ bes2*3/4 aes2*3/2 g4 \finalis
}

bassMusic = {
r2*3/2 c2*3/2 ~ c2*3/2 ~ c2 ~ c2 \divisioMinima
g,2*4/2 ~ g,2*7/4 c2*3/2 d2*3/2 \divisioMaior
c4 ~ c2*3/2 bes,2 g,2*3/2 bes,2 ~ bes,2*3/2 c2 ~ c2 \divisioMinima
d2 ~ d2 bes,2 c2*4/2 ~ c2 \divisioMaxima
g,2*6/2 f,2 g,2*3/2 c2*4/2 ees2*4/2 d2 ~ \divisioMaior
d2 ~ d2*3/2 c2*5/2 ~ c2*3/2 ~ c4 bes,2*3/2 aes,2*4/2 ~ aes,2*3/2 c2 ~ c2 d2*3/2 g2 ~ \divisioMinima
g2*3/2 ~ g2 d2*4/2 ees2*3/4 ~ ees4 ~ ees2*3/2 g2*3/2 ~ g2*4/2 ~ g2 ~ g2 ~ \divisioMinima
g2*3/2 ~ g2*7/4 ~ g2*4/2 ~ g2 ~ g2*3/2 ~ g2*3/2 \divisioMaxima
c2*3/2 ~ c4 d2 g2*3/2 ~ g2*3/2 ~ \divisioMinima
g2 ~ g2*3/2 ~ g4 f2*4/2 ees2*3/4 d2*5/2 ~ d2*3/2 \divisioMaxima
r2*4/2 a2 g4 ~ \divisioMinima
g4 f2*3/2 ees4 ~ ees2 d2 ~ d2*4/2 ~ d2*4/2 g2 ~ \divisioMaior
g2 aes2*6/2 bes2*3/2 \divisioMinima
g2*4/2 ~ g2*9/4 ees2 d2*4/2 ees2*3/4 ~ ees2*3/2 ~ ees4 \finalis
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
