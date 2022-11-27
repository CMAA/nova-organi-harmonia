\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.4
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Mihi autem nimis" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Mihi autem nimis"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Mihi autem nimis" }
    \line {}
  }
}

chantText = \lyricmode {
Mi -- hi au -- tem 
\set stanza = " * " ni -- mis ho -- no -- rá -- ti sunt _ a -- mí -- ci tu -- i, De -- us: 
ni -- mis con -- for -- tá -- tus est prin -- ci -- pá -- tus e -- ó -- rum. _ Ps. 
Dó -- mi -- ne pro -- bá -- sti me, et co -- gno -- ví -- sti me: 
\set stanza = " * " 
tu co -- gno -- ví -- sti ses -- si -- ó -- nem me -- am, et re -- sur -- re -- cti -- ó -- nem me -- am. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   f'4 g'4 g'4 bes'4 ( bes'4)  c''4 ( bes'4 c''4) c''4 ( bes'4 c''4 g'4) \divisioMinima
 g'4 ( c''4) c''4 c''4 ( d''4) c''4 ( bes'4) bes'4. a'4 ( c''4 bes'4) \divisioMinima
 g'4 f'4 ( a'4 f'4) g'4 g'4 bes'4 ( bes'4 c''4) g'4 ( a'4 g'4 f'4) f'4 \divisioMaxima
 bes'4 bes'4 ( bes'4 bes'4) g'4 g'4 ( \once \tweak #'font-size #-4 c'' ) c''4 bes'4 bes'4 ( d''4 c''4) \divisioMinima
 bes'4 ( c''4 bes'4 bes'4) f'4 ( g'4) bes'4 ( bes'4 c''4) bes'4 bes'4 bes'4 ( d''4 c''4 bes'4) bes'4 ( bes'4 bes'4) g'4 ( a'4 g'4) \finalis
 f'4 g'4 ( f'4) f'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 ( \once \tweak #'font-size #-4 a' ) bes'4 ( c''4) c''4 bes'4 ( c''4) bes'4 bes'4 \divisioMaxima
 bes'4 ( g'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 bes'4 bes'4 c''4 bes'4 ( g'4) bes'4 a'4 ( f'4) g'4 ( a'4 g'4) \finalis
 f'4 g'4 ( f'4) f'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 bes'4 ( a'4) bes'4 ( c''4) c''4 bes'4 ( c''4) bes'4 \divisioMaxima
 bes'4 ( g'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 ( a'4) bes'4 ( c''4) c''4 bes'4 ( c''4) bes'4 \divisioMaxima
 bes'4 ( g'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 c''4 bes'4 ( g'4) bes'4 a'4 ( f'4) g'4 ( a'4 g'4) \finalis

}

altoMusic = {
d'2*3/2 ~ d'2 f'2*3/2 d'2*4/2 \divisioMinima
g'2*3/2 f'2*4/2 ~ f'2*9/4 \divisioMinima
d'4 ~ d'2*3/2 ~ d'2 ~ d'2*3/2 ~ d'2*4/2 ~ d'4 ~ \divisioMaxima
d'4 ~ d'2*4/2 ~ d'2 f'2 g'2*3/2 \divisioMinima
f'2*4/2 ~ f'2 ees'2*5/2 f'2*4/2 ~ f'2*3/2 d'2 ~ d'4 ~ \finalis
d'4 c'2 d'2*3/2 ~ d'2*3/2 f'2*5/2 ~ f'2*3/2 ~ f'4 \divisioMaxima
g'2 f'2*3/2 ees'2*4/2 d'2*4/2 \divisioMinima
f'2*5/2 d'2*3/2 ~ d'2 ~ d'2*3/2 ~ \finalis
d'4 c'2 d'2 ~ d'2*3/2 ~ d'2*3/2 ~ \divisioMinima
d'2 f'2 ~ f'2 ~ f'4 ~ f'2*3/2 \divisioMaxima
ees'2 ~ ees'2 d'2*4/2 ~ d'2*3/2 \divisioMinima
ees'2*5/2 f'2*3/2 \divisioMaxima
ees'2 ~ ees'2 d'2*5/2 ~ d'2*3/2 c'2 bes2*3/2 \finalis
}

tenorMusic = {
bes2*3/2 ~ bes2 a2*3/2 bes2*4/2 ~ \divisioMinima
bes2*3/2 ~ bes2*4/2 d'2*9/4 \divisioMinima
a4 ~ a2*3/2 bes2 a2*3/2 g2*4/2 a4 \divisioMaxima
r4 a2*4/2 bes2 ~ bes2 ~ bes2*3/2 ~ \divisioMinima
bes2*6/2 ~ bes2*5/2 ~ bes2*4/2 ~ bes2*3/2 c'2 bes4 ~ \finalis
bes4 ~ bes2 ~ bes2*3/2 ~ bes2*3/2 c'2*5/2 ees'2*3/2 d'4 ~ \divisioMaxima
d'2 ~ d'2*3/2 c'2*4/2 bes2*4/2 ~ \divisioMinima
bes2*5/2 ~ bes2*3/2 c'2 bes2*3/2 ~ \finalis
bes2*5/2 ~ bes2*3/2 ~ bes2*3/2 ~ \divisioMinima
bes2 c'2 bes2 a4 bes2*3/2 \divisioMaxima
g2 ees2 f2*4/2 g2*3/2 \divisioMinima
r2*5/2 f2*3/2 \divisioMaxima
r2 g2 ~ g2*5/2 ~ g2*3/2 ees2 d2*3/2 \finalis
}

bassMusic = {
r2*3/2 g2 f2*3/2 g2*4/2 \divisioMinima
ees2*3/2 d2*4/2 ~ d2*9/4 ~ \divisioMinima
d4 c2*3/2 bes,2 ~ bes,2*3/2 ~ bes,2*4/2 d4 \divisioMaxima
g4 ~ g2*4/2 ~ g2 d2 ees2*3/2 \divisioMinima
d2*6/2 c2*5/2 d2*4/2 g2*3/2 ~ g2 ~ g4 \finalis
r2*3/2 a2*3/2 g2*3/2 f2*5/2 bes2*3/2 ~ bes4 \divisioMaxima
g2 ~ g2*3/2 ~ g2*4/2 ~ g2*4/2 \divisioMinima
d2*5/2 g2*3/2 ~ g2 ~ g2*3/2 \finalis
r2*5/2 a2*3/2 g2*3/2 ~ \divisioMinima
g2 f2 ~ f2 ~ f4 d2*3/2 \divisioMaxima
c2 ~ c2 bes,2*4/2 ~ bes,2*3/2 \divisioMinima
c2*5/2 d2*3/2 \divisioMaxima
c2 ~ c2 bes,2*5/2 g,2*3/2 ~ g,2 ~ g,2*3/2 \finalis
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
