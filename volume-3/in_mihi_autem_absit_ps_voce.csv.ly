\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.346
%(volume.page)

global = {
 \key f \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Mihi autem absit. Ps. Voce" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Mihi autem absit. Ps. Voce"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Mihi autem absit. Ps. Voce" }
    \line {}
  }
}

chantText = \lyricmode {
Mi -- hi au -- tem 
\set stanza = " * " ab -- sit glo -- ri -- á -- ri, 
ni -- si in cru -- ce Dó -- mi -- ni _ no -- stri Je -- su Chri -- sti, 
per quem mi -- hi mun -- dus cru -- ci -- fí -- xus est, 
et e -- _ go mun -- do. _ Ps. 
Vo -- ce me -- a ad Dó -- mi -- num cla -- má -- vi: 
\set stanza = " * " 
vo -- ce me -- a ad Dó -- mi -- num de -- pre -- cá -- tus sum. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   ees'4 f'4 f'4 aes'4 ( aes'4) \divisioMinima
 bes'4 ( aes'4 bes'4) bes'4 ( aes'4 bes'4 f'4) aes'4 ( c''4) bes'4 ( aes'4) aes'4 ( g'4) ees'4 ( f'4) \divisioMaior
 f'4 ( bes'4) bes'4 bes'4  bes'4 ( c''\prall des''4 c''4) c''4 ( bes'4) \divisioMinima
 bes'4 ( c''4) bes'4 ( aes'4) aes'4. g'4 ( bes'4 aes'4) f'4 ( g'4 ees'4) f'4 \divisioMinima
 f'4 aes'4 ( aes'4 bes'4) f'4 ( g'4 f'4 ees'4) ees'4 \divisioMaxima
 aes'4 aes'4 ( aes'4 aes'4) f'4 f'4 ( bes'4) bes'4 aes'4 aes'4 aes'4 ( bes'4) bes'4 aes'4 aes'4 ( c''4 bes'4) \divisioMaior
 aes'4 ( bes'4 aes'4 aes'4) ees'4 ( f'4) aes'4 ( aes'4 bes'4) aes'4 aes'4 ( c''4 \tiny bes' aes' 4) aes'4 ( aes'4 aes'4) f'4 ( g'4 f'4) \finalis
 ees'4 f'4 ( ees'4) ees'4 ( aes'4) aes'4 aes'4 aes'4 aes'4 ( g'4) aes'4 ( bes'4) bes'4 aes'4 ( bes'4) aes'4 \divisioMaxima
 aes'4 ( f'4) f'4 ( aes'4) aes'4 aes'4 aes'4 aes'4 aes'4 aes'4 bes'4 aes'4 ( f'4) aes'4 g'4 ( ees'4) f'4 ( g'4 f'4) \finalis
 ees'4 f'4 ( ees'4) ees'4 ( aes'4) aes'4 aes'4 aes'4 aes'4 aes'4 aes'4 \divisioMinima
 aes'4 aes'4 aes'4 ( g'4) aes'4 ( bes'4) bes'4 aes'4 ( bes'4) aes'4 \divisioMaxima
 aes'4 ( f'4) f'4 ( aes'4) aes'4 aes'4 aes'4 aes'4 aes'4 aes'4 aes'4 \divisioMinima
 aes'4 ( g'4) aes'4 ( bes'4) bes'4 aes'4 ( bes'4) aes'4 \divisioMaxima
 aes'4 ( f'4) f'4 ( aes'4) aes'4 aes'4 aes'4 aes'4 bes'4 aes'4 ( f'4) aes'4 g'4 ( ees'4) f'4 ( g'4 f'4) \finalis

}

altoMusic = {
ees'2*3/2 ~ ees'2 \divisioMinima
f'2*3/2 ~ f'2*4/2 ~ f'2*4/2 c'2 ~ c'2 \divisioMaior
f'2*4/2 ~ f'2*4/2 ~ f'2 \divisioMinima
ees'2*4/2 ~ ees'2*3/4 ~ ees'2*3/2 c'2*3/2 ~ c'4 ~ \divisioMinima
c'4 bes2*3/2 ~ bes2*4/2 ~ bes4 \divisioMaxima
c'4 ~ c'2*4/2 des'2 ees'2*3/2 ~ ees'2 ~ ees'2 ~ ees'2*3/2 ~ \divisioMaior
ees'2*4/2 ~ ees'2 ~ ees'2*4/2 f'2*4/2 c'2*3/2 ~ c'2*3/2 \finalis
r4 c'2 ~ c'2*4/2 ~ c'4 ees'2*5/2 ~ ees'2 ~ ees'4 \divisioMaxima
des'2 d'2 ees'2*3/2 ~ ees'2*4/2 c'2*3/2 ~ c'2 ~ c'2*3/2 \finalis
r4 c'2 ~ c'2*5/2 ~ c'2*3/2 ~ \divisioMinima
c'2 f'2*5/2 ees'2*3/2 \divisioMaxima
des'2 ~ des'2 ees'2*4/2 f'2*3/2 ~ \divisioMinima
f'2 ~ f'2*3/2 ees'2*3/2 \divisioMaxima
des'2 ~ des'2 ees'2*5/2 ~ ees'2*3/2 c'2 ~ c'2*3/2 \finalis
}

tenorMusic = {
g2 bes4 aes2 ~ \divisioMinima
aes2*3/2 des'2*4/2 c'2*4/2 bes2 aes2 ~ \divisioMaior
aes2*4/2 ~ aes2*4/2 f2 \divisioMinima
g2*4/2 aes2*3/4 bes2*3/2 ~ bes2*3/2 aes4 ~ \divisioMinima
aes4 ~ aes2*3/2 ~ aes2*4/2 g4 \divisioMaxima
r4 aes2*4/2 ~ aes2 ~ aes2*3/2 f2 ees2 f2 g4 \divisioMaior
aes2*4/2 bes2 c'2*4/2 ~ c'2*4/2 bes2*3/2 aes2*3/2 ~ \finalis
aes4 ~ aes2 ~ aes2*4/2 ~ aes4 bes2*5/2 des'2 c'4 \divisioMaxima
f2 bes2 aes2*3/2 g2*4/2 f2*3/2 bes2 aes2*3/2 ~ \finalis
aes2*3/2 ~ aes2*5/2 ~ aes2*3/2 ~ \divisioMinima
aes2 ~ aes2*5/2 ~ aes2*3/2 \divisioMaxima
f2 bes2 aes2*4/2 ~ aes2*3/2 ~ \divisioMinima
aes2 g2*3/2 aes2*3/2 \divisioMaxima
f2 bes2 aes2*5/2 bes2*3/2 ~ bes2 aes2*3/2 \finalis
}

bassMusic = {
c2 ~ c4 ~ c2 \divisioMinima
des2*3/2 ~ des2*4/2 f2*4/2 ~ f2 ~ f2 \divisioMaior
ees2*4/2 des2*4/2 d2 \divisioMinima
c2*4/2 ~ c2*3/4 ~ c2*3/2 f2*3/2 ~ f4 \divisioMinima
des4 ~ des2*3/2 ees2*4/2 ~ ees4 \divisioMaxima
aes,4 ~ aes,2*4/2 bes,2 c2*3/2 ~ c2 ~ c2 ~ c2 ~ c4 ~ \divisioMaior
c2*4/2 ~ c2 ~ c2*4/2 f2*4/2 ~ f2*3/2 ~ f2*3/2 \finalis
r2*3/2 g2*4/2 f4 ees2*5/2 aes2 ~ aes4 \divisioMaxima
bes,2 ~ bes,2 c2*3/2 ~ c2*4/2 f2*3/2 ~ f2 ~ f2*3/2 \finalis
r2*3/2 g2*5/2 f2*3/2 ~ \divisioMinima
f2 des2*5/2 c2*3/2 \divisioMaxima
bes,2 bes2 c2*4/2 des2*3/2 \divisioMinima
d2 ~ d2*3/2 c2*3/2 \divisioMaxima
bes,2 ~ bes,2 c2*5/2 ~ c2*3/2 f2 ~ f2*3/2 \finalis
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
