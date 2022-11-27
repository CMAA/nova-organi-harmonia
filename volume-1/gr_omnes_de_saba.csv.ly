\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.100
%(volume.page)

global = {
 \key ees \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Omnes de Saba" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Omnes de Saba"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Omnes de Saba" }
    \line {}
  }
}

chantText = \lyricmode {
O -- _ _ _ mnes 
\set stanza = " * " de Sa -- ba _ _ _ _ _ vé -- ni -- ent, 
au -- rum et thus de -- fe -- rén -- tes, _ 
et lau -- dem Dó -- mi -- no an -- nun -- ti -- án -- tes. _ _ _ _ ℣. 
Sur -- ge, _ _ _ _ _ _ _ 
et il -- lu -- mi -- ná -- _ _ _ _ _ _ _ _ re 
Je -- rú -- sa -- lem: _ _ _ _ 
qui -- a gló -- ri -- a Dó -- _ _ _ mi -- ni 
su -- _ per te _ 
\set stanza = " * " or -- ta est. _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   ees'4 ( f'\prall g'4 f'4) g'4 ( bes'4 c''4) a'4 ( bes'4 g'4) f'4 ( f'4 ees'4) f'4 f'4 \divisioMinima
 ees'4 f'4 ( g'4 f'4) g'4. bes'4 ( bes'4 bes'4) c''4 ( d''4 bes'4) ~ bes'4 ( g'4 f'4 \forceBreak
) a'4 ( c''4 bes'4) ~ bes'4 ( g'4) g'4 g'4 ( a'4 g'4) g'4 \divisioMaxima
 c''4 ( d''4 c''4 bes'4) c''4 ( bes'4) g'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 g'4 ees'4 ( g'4) f'4 ( \once \tweak #'font-size #-4 bes' ) bes'4 ( c''4 a'4) bes'4 ( g'4) \divisioMaior \forceBreak

 g'4 bes'4 a'4 bes'4 g'4 ees'4 \divisioMinima
 ees'4 ( g'4) ees'4 ( bes'4 a'4 bes'4) g'4 ees'4 ( \once \tweak #'font-size #-4 f' ) ees'4 ( f'\prall g'4 f'4 g'4) bes'4 ( c''4 a'4 bes'4 g'4. \forceBreak
) ees'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( ees'4) \finalis
 bes'4 ( \once \tweak #'font-size #-4 c'' ) c''4 ( bes'4) ~ bes'4 ( g'4) bes'4 ( c''4 bes'4 a'4) bes'4 ( c''4 g'4 ees'4) \divisioMinima
 g'4 bes'4 ( bes'4 c''4) bes'4 ( bes'4 g'4) bes'4 ( c''4 bes'4 a'4. \forceBreak
) bes'4 ( c''4 g'4 ees'4) \divisioMaior
 ees'4 ees'4 ees'4 ees'4 g'4 ( ees'4 g'4 f'4 ees'4.) g'4 ( ees'4) f'4 ( g'4) bes'4 ( bes'4) c''4 ( a'4) bes'4 ( g'4) bes'4 ( c''4) ees''4 ( ees''4) ~ ees''4 ( bes'4) bes'4 \divisioMaior \forceBreak

 g'4 ( bes'4) bes'4 ( c''4 bes'4) g'4 ( g'4 f'4)  f'4 ( g'4 ees'4.) g'4 ( f'4) g'4 ( aes'4 g'4 f'4 ees'4 ees'4) g'4 ( f'4 ees'4) f'4 ( ees'4) \divisioMaxima
 ees'4 ees'4 g'4 ( ees'4 g'4 f'4 ees'4) ees'4 ees'4 \forceBreak
 g'4 ( ees'4) f'4 ( g'4) bes'4 ( bes'4) c''4 ( d''\prall ees''4) c''4 ( bes'4) bes'4 ( c''4 bes'4 g'4) \divisioMaior
  aes'4 ( aes'4) ~ aes'4 ( aes'4) ees'4 f'4 ( g'4 f'4) g'4 ( g'4 f'4)  g'4 ( bes'4 a'4 g'4) c''4 \forceBreak
 bes'4 ( bes'4 g'4) \divisioMinima
  aes'4 ( g'4) aes'4 ( f'4 ees'4.) g'4 ( aes'4 f'4 ees'4.) g'4 ( f'4) bes'4. ~ bes'4 ( bes'4) ~ bes'4 ( g'4 g'4) ees'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( ees'4) \finalis

}

altoMusic = {
ees'2*4/2 f'2*6/2 f4 ~ f4 ees'2 d'4 \divisioMinima
r4 d'2*3/2 ~ d'2*3/4 ~ d'2*5/2 f'2*4/2 ~ f'2 ~ f'2*3/2 ~ f'4 d'2*3/2 ~ d'4 ~ \divisioMaxima
d'2*4/2 ~ d'2 ~ d'2 ees'2 ~ ees'2 f'2 d'2*5/2 ~ \divisioMaior
d'4 f'2 d'2 r4 \divisioMinima
ees'2 f'2*5/2 ees'2 ~ ees'2*5/2 d'2*4/2 ~ d'2*3/4 bes2 c'2 g2*3/2 \finalis
g'2*3/2 ~ g'2*3/2 ~ g'2*4/2 f'2*3/2 r4 \divisioMinima
g'4 ~ g'2*3/2 f'2*3/2 ees'2*9/4 ~ ees'2*4/2 ~ \divisioMaior
ees'2*4/2 ~ ees'2*11/4 ~ ees'2*4/2 f'2*6/2 ~ f'2 ees'2 bes'2 ~ bes'4 \divisioMaior
d'2 ees'2*3/2 d'2*3/2 bes2*7/4 c'2 ~ c'2*6/2 d'2*3/2 bes2 ~ \divisioMaxima
bes2 ~ bes2*7/2 ~ bes2*4/2 f'2 ees'2*3/2 ~ ees'2 d'2*4/2 \divisioMaior
ees'4 ~ ees'2*4/2 ~ ees'2*3/2 d'2*3/2 ~ d'2*5/2 ~ d'2*3/2 ees'2 ~ ees'2 ~ ees'2*3/4 c'2*3/2 ~ c'2*3/4 ~ c'2 bes2*3/4 d'2 ees'2*3/2 c'2 ~ c'2 bes2 ~ bes4 \finalis
}

tenorMusic = {
bes2*4/2 ~ bes2*6/2 ~ bes2*4/2 ~ bes4 ~ \divisioMinima
bes2*4/2 ~ bes2*3/4 ~ bes2*5/2 ~ bes2*4/2 c'2 d'2*3/2 c'4 ~ c'2*3/2 bes4 \divisioMaxima
a2*4/2 ~ a2 bes2 ~ bes2 ~ bes2 ~ bes2 ~ bes2*5/2 ~ \divisioMaior
bes4 c'2 ~ c'2 bes4 ~ \divisioMinima
bes2 ~ bes2*5/2 ~ bes2 g'2*5/2 g2*4/2 ees2*3/4 ~ ees2 ~ ees2 ~ ees2*3/2 \finalis
r2 ees'4 ~ ees'2*3/2 ~ ees'2*4/2 d'2*3/2 ees'4 \divisioMinima
d'4 ~ d'2*3/2 ~ d'2*3/2 c'2*9/4 bes2*4/2 ~ \divisioMaior
bes2*4/2 ~ bes2*11/4 ~ bes2*4/2 ~ bes2*6/2 ~ bes2 ~ bes2 c'2 d'4 \divisioMaior
r2 g2*3/2 ~ g2*3/2 ~ g2*7/4 ~ g2 f2*6/2 ~ f2*3/2 g2 ~ \divisioMaxima
g2 ~ g2*7/2 ~ g2*4/2 ~ g2 ~ g2*3/2 bes2 ~ bes2*4/2 \divisioMaior
c'4 bes2*4/2 aes2*3/2 bes2*3/2 a2*5/2 g2*3/2 ees2 f2 g2*3/4 ees2*3/2 ~ ees2*3/4 d2 ~ d2*3/4 f2 g2*3/2 ~ g2 aes2 ~ aes2 g4 \finalis
}

bassMusic = {
ees2*4/2 d2*6/2 g2*4/2 bes4 \divisioMinima
r2*4/2 a2*3/4 g2*5/2 d2*4/2 ~ d2 ~ d2*3/2 ~ d4 g2*3/2 ~ g4 \divisioMaxima
f2*4/2 g2 ~ g2 ~ g2 c2 d2 g2*5/2 ~ \divisioMaior
g4 f2 g2 ~ g4 \divisioMinima
ees2 d2*5/2 c2 ~ c2*5/2 bes,2*4/2 ~ bes,2*3/4 c2 aes,2 ees,2*3/2 \finalis
r2*3/2 d'2*3/2 c'2*4/2 ~ c'2*3/2 ~ c'4 \divisioMinima
g4 ~ g2*3/2 ~ g2*3/2 ~ g2*9/4 ~ g2*4/2 \divisioMaior
f2*4/2 ees2*11/4 c2*4/2 d2*6/2 g2 ~ g2 ~ g2 ~ g4 ~ \divisioMaior
g2 c2*3/2 bes,2*3/2 g,2*7/4 aes,2 ~ aes,2*6/2 bes,2*3/2 ees2 \divisioMaxima
r2 f2*7/2 ees2*4/2 d2 c2*3/2 ~ c2 g2*4/2 \divisioMaior
c4 ~ c2*4/2 ~ c2*3/2 bes,2*3/2 ~ bes,2*5/2 ~ bes,2*3/2 c2 ~ c2 ~ c2*3/4 bes,2*3/2 c2*3/4 a2 g,2*3/4 ~ g,2 ~ g,2*3/2 aes,2 ~ aes,2 ees2 ~ ees4 \finalis
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
