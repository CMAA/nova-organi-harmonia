\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.238
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Nunc scio vere" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Nunc scio vere"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Nunc scio vere" }
    \line {}
  }
}

chantText = \lyricmode {
Nunc _ _ sci -- o ve -- re, 
\set stanza = " * " qui -- a mi -- sit Dó -- _ mi -- nus 
An -- ge -- _ lum su -- _ um: 
et e -- rí -- pu -- it me de ma -- nu He -- _ ró -- dis, 
et de _ o -- mni ex -- spe -- cta -- ti -- ó -- ne 
ple -- _ bis Ju -- dæ -- ó -- rum. Ps. 
Dó -- mi -- ne pro -- bá -- sti me, et co -- gno -- ví -- sti me: 
\set stanza = " * " 
tu co -- gno -- ví -- sti ses -- si -- ó -- nem me -- am, et re -- súr -- rec -- ti -- ó -- nem me -- am. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   ees'4 ( ees'4) ~ ees'4 ( c'4) f'4 ( ees'4 d'4) f'4 g'4 g'4 ( bes'4 a'4 bes'4) a'4 \divisioMinima
 bes'4 bes'4 bes'4 ( c''4 bes'4 bes'4) g'4 g'4 bes'4 ( bes'4) g'4 ( f'4 g'4) g'4 \divisioMaior
  g'4 ( \once \tweak #'font-size #-4 aes' ) f'4. ees'4 ( f'4 g'4) g'4  g'4 ( aes'4 f'4) ~ f'4 ( d'4 ees'4) ees'4 ( d'4) \divisioMaxima
 ees'4 ees'4 d'4 ( ees'4 f'4) f'4  g'4 ( aes'4 \tiny g' f' 4) f'4 \divisioMinima
 f'4 ( g'4) g'4 ees'4 ees'4 ( f'4) g'4 ( g'4 f'4 g'4) d'4 ( f'4 ees'4 f'4) ees'4 ( d'4) \divisioMaxima
 ees'4 ees'4 ( ees'4) ~ ees'4 ( c'4 f'4) f'4 ( g'4) d'4 f'4 f'4 f'4 bes'4 ( bes'4) g'4 ( bes'4 f'4) f'4 \divisioMaior
 f'4 ( g'4 f'4 d'4) f'4 ( ees'4 d'4 ees'4) c'4 ees'4 ( g'4 f'4) f'4 ( d'4) d'4 ( f'4 ees'4 f'4) ees'4 ( d'4) \finalis
 f'4 g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 c''4 bes'4 bes'4 a'4 ( g'4) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 a'4 f'4 ( g'4) \finalis
  f'4 g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 c''4 bes'4 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 c''4 bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) bes'4 ( bes'4 bes'4) \divisioMaxima
 a'4 ( f'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 ( bes'4 a'4) g'4 ( f'4) g'4 a'4 f'4 ( g'4) \finalis

}

altoMusic = {
r2*9/2 d'2*4/2 f'4 ~ \divisioMinima
f'2 ~ f'2*5/2 ~ f'4 ees'2*5/2 d'4 c'2 ~ c'2*3/4 ~ c'2*4/2 ~ c'2 ~ c'2*4/2 bes2 \divisioMaxima
r2*11/2 \divisioMinima
d'2 ees'2 c'2 d'2*4/2 c'2*4/2 bes2 \divisioMaxima
r4 bes2 ~ bes2*3/2 ~ bes2*6/2 c'2 ~ c'2*3/2 ~ c'4 \divisioMaior
d'2*4/2 c'2*5/2 ~ c'2*3/2 bes2 ~ bes2*4/2 ~ bes2 \finalis
r4 g'2*4/2 f'2 ~ f'2*4/2 ees'4 ~ ees'2 d'2*3/2 ~ \divisioMaxima
d'2 ~ d'2*3/2 ~ d'2*4/2 g'2 f'2 ~ \divisioMinima
f'2*4/2 ees'2*3/2 ~ ees'2*3/2 ~ ees'2 d'4 r4 g'2*6/2 f'2*3/2 ~ \divisioMinima
f'2 g'2*3/2 ees'2 g'2*3/2 \divisioMaxima
d'2 ~ d'2 ~ d'2*4/2 g'2*3/2 ~ \divisioMinima
g'4 f'2 ees'2 f'2*3/2 ~ \divisioMaxima
f'2 ~ f'2 ~ f'2*4/2 ees'2*3/2 ~ ees'2*3/2 d'2 ~ d'4 \finalis
}

tenorMusic = {
g2 bes2 ~ bes2*5/2 ~ bes2*4/2 c'4 ~ \divisioMinima
c'2 bes2*5/2 ~ bes4 g2*5/2 ~ g4 ees2 aes2*3/4 g2*4/2 ees2 f2*4/2 ~ f2 \divisioMaxima
r2 d'2*4/2 c'2*4/2 ~ c'4 \divisioMinima
bes2 ~ bes2 ~ bes2 ~ bes2*4/2 g2*4/2 ~ g2 \divisioMaxima
r4 g2 bes2*3/2 ~ bes2*6/2 ~ bes2 ~ bes2*3/2 a4 \divisioMaior
bes2*4/2 g2*5/2 ees2*3/2 d2 g2*4/2 f2 \finalis
r4 ees'2*4/2 ~ ees'2 d'2*4/2 ~ d'4 c'2 g2*3/2 \divisioMaxima
d'2 c'2*3/2 bes2*4/2 ~ bes2 ~ bes2 ~ \divisioMinima
bes2*4/2 ~ bes2*3/2 a2*3/2 c'2 bes4 r4 ees'2*6/2 d'2*3/2 ~ \divisioMinima
d'2 ees'2*3/2 ~ ees'2 d'2*3/2 ~ \divisioMaxima
d'2 c'2 bes2*4/2 ~ bes2*3/2 ~ \divisioMinima
bes4 ~ bes2 ~ bes2 ~ bes2*3/2 \divisioMaxima
d'2 c'2 bes2*4/2 g2*3/2 bes2*3/2 a2 bes4 \finalis
}

bassMusic = {
c2 ~ c2 d2*5/2 g2*4/2 f4 ~ \divisioMinima
f2 d2*5/2 c4 ~ c2*5/2 bes,4 aes,2 ~ aes,2*3/4 ~ aes,2*4/2 ~ aes,2 ~ aes,2*4/2 bes,2 \divisioMaxima
r2 bes2*4/2 ~ bes2*4/2 aes4 \divisioMinima
bes2 g2 ~ g2 ~ g2*4/2 ~ g2*4/2 ~ g2 \divisioMaxima
r4 c2 ~ c2*3/2 d2*6/2 ees2 f2*3/2 ~ f4 \divisioMaior
bes,2*4/2 ~ bes,2*5/2 ~ bes,2*3/2 ~ bes,2 ~ bes,2*4/2 ~ bes,2 \finalis
r2*17/2 \divisioMaxima
d2 ~ d2*3/2 g2*4/2 ees2 d2 ~ \divisioMinima
d2*4/2 c2*3/2 ~ c2*3/2 ~ c2 g4 r2*12/2 c'2*3/2 ~ c'2 g2*3/2 ~ \divisioMaxima
g2 ~ g2 ~ g2*4/2 ees2*3/2 ~ \divisioMinima
ees4 d2 c2 d2*3/2 ~ \divisioMaxima
d2 ~ d2 ~ d2*4/2 c2*3/2 ~ c2*3/2 d2 g4 \finalis
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
        "III"
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
