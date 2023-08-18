\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.144
%(volume.page)

global = {
 \key f \lydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Respice in me" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Respice in me"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Respice in me" }
    \line {}
  }
}

chantText = \lyricmode {
Re -- spi -- ce in me, 
\set stanza = " * " et mi -- se -- ré -- re me -- i, _ Dó -- mi -- ne: 
quó -- ni -- am ú -- ni -- cus et pau -- per sum e -- _ go: 
vi -- de hu -- mi -- _ li -- tá -- _ tem me -- _ am, 
et la -- bó -- _ rem me -- _ um: 
et di -- mít -- _ te ó -- mni -- a pec -- cá -- ta me -- _ a, 
De -- us me -- us. Ps. 
Ad te Dó -- mi -- ne le -- vá -- vi á -- ni -- mam me -- am: 
\set stanza = " * " 
De -- us me -- us, in te con -- fí -- do, non e -- ru -- bé -- scam. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   f'4 ( f'4 g'4) f'4 f'4 f'4 ( g'4) g'4 ( f'4 f'4) \divisioMinima
 f'4 ( \once \tweak #'font-size #-4 d' ) f'4 g'4  g'4 ( bes'4 a'4 g'4) g'4 ( f'4) f'4  f'4 ( e'4) g'4 ( a'\prall bes'4 \forceBreak
) f'4 f'4 ( g'4 f'4) f'4 \divisioMaior
  f'4 ( g'\prall a'4 bes'4) a'4 a'4 c''4 ( c''4 d''4) c''4 c''4 \divisioMinima
 c''4 ( \once \tweak #'font-size #-4 a' ) c''4 ( e''4 d''4) c''4 ( b'4 \forceBreak
) c''4 ( e''4 d''4) d''4 ( c''4) ~ c''4 ( a'4) a'4 \divisioMaxima
 a'4 c''4 a'4 a'4 c''4 ( c''4 c''4) g'4 g'4 c''4 ( c''4 a'4) g'4 f'4 ( g'4 e'4) f'4 ( d'4) d'4 ( c'4) \divisioMaior \forceBreak

 c'4 ( d'4 \once \tweak #'font-size #-4 f' ) f'4 ( f'4 e'4)  e'4 ( g'4 a'4) bes'4 ( g'4 f'4) f'4 f'4 ( f'4) g'4 ( f'4) f'4 \divisioMaxima
 f'4 f'4 g'4 ( f'4) a'4 ( g'4) f'4 ( e'4) \divisioMinima \forceBreak

 f'4 ( f'4 f'4) d'4 ( c'4) c'4 c'4 ( d'4) f'4 ( f'4 g'4) f'4 f'4 ( f'4) g'4 ( f'4) f'4 ( e'4) \divisioMaior
  g'4 ( bes'4 a'4) a'4 ( c''4 a'4 g'4 a'\prall bes'4 a'4 g'4 \forceBreak
) f'4 ( g'4 a'4 g'4 f'4 g'4) g'4 ( f'4) \finalis
 f'4 ( g'4) g'4 ( f'4) g'4 ( a'4) a'4 a'4 a'4 a'4 g'4  bes'4 a'4 a'4 g'4 f'4 \divisioMaxima \forceBreak

 f'4 g'4 ( a'4) a'4 ( c''4) g'4 f'4 f'4 f'4 f'4 f'4 g'4 f'4 ( d'4) f'4 g'4 f'4 \finalis
  f'4 ( g'4) g'4 ( f'4) g'4 ( a'4) a'4 a'4 \forceBreak
 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 g'4  bes'4 a'4 a'4 g'4 f'4 \divisioMaxima
 f'4 g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima \forceBreak

 g'4  bes'4 a'4 g'4 f'4 \divisioMaxima
 f'4 g'4 ( a'4) a'4 ( c''4) g'4 f'4 f'4 g'4 f'4 ( d'4) f'4 g'4 f'4 \finalis

}

altoMusic = {
c'2*5/2 ~ c'2 d'2*3/2 \divisioMinima
a2 ~ a2 d'2*4/2 ~ d'2 ~ d'4 c'2 d'2*3/2 ~ d'4 c'2*3/2 ~ c'4 ~ c'2 f'2*4/2 g'2*3/2 ~ g'2 ~ \divisioMinima
g'2 f'2*5/2 e'2*4/2 d'2*3/2 c'4 ~ \divisioMaxima
c'2 ~ c'2 ~ c'2*5/2 ~ c'2*4/2 d'2*4/2 ~ d'4 r2 \divisioMaior
c'2*3/2 ~ c'2*3/2 e'2*3/2 d'2 ~ d'2 c'2*4/2 ~ c'4 \divisioMaxima
d'2 c'2*4/2 ~ c'2 ~ \divisioMinima
c'2*3/2 a2*3/2 ~ a2 ~ a2*3/2 ~ a4 d'2 ~ d'2 c'2 d'2*3/2 c'2*3/2 ~ c'2 bes2*3/2 a2 c'2*4/2 bes4 a4 \finalis
r2*3/2 f'4 ~ f'2*5/2 e'2 d'2*3/2 c'2 \divisioMaxima
f'4 ~ f'2 e'2*3/2 d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 c'2 r2*3/2 f'4 ~ f'2 ~ f'2*3/2 ~ f'2*3/2 \divisioMinima
e'2 d'2*3/2 c'2 \divisioMaxima
f'4 ~ f'2 e'2 ~ e'2 d'2*4/2 ~ d'2 ~ d'2 \divisioMaxima
r4 c'2 ~ c'2*3/2 a2*3/2 bes2*3/2 b4 a4 \finalis
}

tenorMusic = {
a2*5/2 ~ a2 ~ a2*3/2 \divisioMinima
d2 ~ d2 ~ d2*4/2 bes2 a4 g2 ~ g2*3/2 bess4 bes2*3/2 a4 ~ a2 c'2*4/2 ~ c'2*3/2 g2 \divisioMinima
a2 ~ a2*5/2 ~ a2*4/2 f2*3/2 e4 ~ \divisioMaxima
e2 f2 g2*5/2 ~ g2*4/2 a2*5/2 g2 \divisioMaior
f2*3/2 g2*3/2 ~ g2*3/2 ~ g2 bes2 ~ bes2*4/2 a4 ~ \divisioMaxima
a2 ~ a2*4/2 g2 \divisioMinima
f2*3/2 e2*3/2 g2 f2*3/2 a4 ~ a2 bes2 g2 f2*3/2 ~ f2*3/2 d2 ~ d2*3/2 ~ d2 e2*4/2 f2 \finalis
a2 bes2 c'2*5/2 ~ c'2 bes2*3/2 a2 \divisioMaxima
r4 c'2 ~ c'2*3/2 a2*3/2 ~ a2*3/2 bes2*3/2 ~ bes4 a4 r2 a2 bes2 c'2*3/2 ~ c'2*3/2 ~ \divisioMinima
c'2 bes2*3/2 a2 \divisioMaxima
r4 c'2 ~ c'2 a2 f2*3/2 ~ \divisioMinima
f4 g2 a2 \divisioMaxima
f4 ~ f2 e2*3/2 f2*3/2 d2*3/2 c2 \finalis
}

bassMusic = {
f2*5/2 e2 d2*3/2 ~ \divisioMinima
d2 c2 bes,2*4/2 ~ bes,2 ~ bes,4 c2 bes,2*3/2 ~ bes,4 f2*3/2 ~ f4 r2 f2*4/2 ~ f2*3/2 e2 ~ \divisioMinima
e2 d2*5/2 a,2*4/2 ~ a,2*3/2 ~ a,4 \divisioMaxima
c2 f2 ~ f2*5/2 e2*4/2 d2*5/2 e2 \divisioMaior
r2*3/2 c2*3/2 ~ c2*3/2 bes,2 ~ bes,2 f2*4/2 ~ f4 \divisioMaxima
d2 a,2*4/2 ~ a,2 ~ \divisioMinima
a,2*3/2 ~ a,2*3/2 ~ a,2 d2*3/2 ~ d4 bes,2 ~ bes,2 c2 bes,2*3/2 f,2*3/2 g,2 ~ g,2*3/2 d2 c2*4/2 <c f,>2 \finalis
f2 ~ f2 ~ f2*5/2 c'2 r2*5/2 \divisioMaxima
f4 ~ f2 c2*3/2 d2*3/2 bes,2*3/2 ~ bes,2*3/2 f2 ~ f2 ~ f2 ~ f2 ~ f2*3/2 ~ f2*3/2 \divisioMinima
r2*7/2 \divisioMaxima
f4 ~ f2 c2 ~ c2 d2*3/2 ~ \divisioMinima
d4 bes,2 d2 \divisioMaxima
r4 a,2 c2*3/2 d2*3/2 bes,2*3/2 f,2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Introit"
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
