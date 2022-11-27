\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.10
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Loquebar... Ps. Laudate" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Loquebar... Ps. Laudate"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Loquebar... Ps. Laudate" }
    \line {}
  }
}

chantText = \lyricmode {
Lo -- qué -- bar 
\set stanza = " * " de te -- sti -- mó -- ni -- is tu -- _ is 
in con -- spé -- ctu re -- gum, 
et non con -- fun -- dé -- bar: 
et me -- di -- tá -- bar in man -- dá -- tis tu -- _ is, _ 
quæ di -- lé -- _ xi ni -- _ mis. Ps. 
Lau -- dá -- te Dó -- mi -- num o -- mnes gen -- tes, lau -- dá -- te e -- um o -- mnes pó -- pu -- li: 
\set stanza = " * " 
quó -- ni -- am con -- fir -- má -- ta est su -- per nos mi -- se -- ri -- cór -- di -- a e -- jus, 
et vé -- ri -- tas Dó -- mi -- ni ma -- net in æ -- tér -- num. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   ees'4 ( g'4) bes'4 ( bes'4 c''4) bes'4 \divisioMinima
 bes'4 bes'4 bes'4 c''4 bes'4 ( g'4 a'\prall bes'4) bes'4 bes'4 ( c''4) d''4 ( c''4 bes'4 c''4) c''4 ( bes'4) \divisioMaior
 bes'4 c''4 ( d''4 \once \tweak #'font-size #-4 c'' ) d''4 bes'4 bes'4 ( d''4 c''4 bes'4 c''4) bes'4 \divisioMaior
 g'4 ( ees'4 g'4) bes'4 ( bes'4) c''4 ( d''4 bes'4) bes'4 ( bes'4) bes'4 ( c''4 bes'4) bes'4 \divisioMaxima
 bes'4 f'4 g'4 bes'4 ( bes'4 c''4) bes'4 \divisioMinima
 bes'4 ( c''4 bes'4 bes'4) f'4 ( g'4) bes'4 ( bes'4 c''4) bes'4 bes'4 ( bes'4) c''4 ( d''4 bes'4) g'4 bes'4 ( bes'4 g'4 bes'4) \divisioMaior
 ees'4 f'4 ( g'4) g'4 bes'4 ( bes'4 g'4) f'4 f'4 ( g'4) bes'4 ( g'4 bes'4) ees'4 \finalis
 ees'4 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 c''4 c''4 bes'4 bes'4 \divisioMaxima
 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 c''4 c''4 bes'4 \divisioMaior
 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 c''4 a'4 bes'4 g'4 \finalis
  ees'4 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 bes'4 bes'4 c''4 c''4 bes'4 \divisioMaxima
 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 c''4 c''4 bes'4 \divisioMaxima
 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 c''4 a'4 bes'4 g'4 \finalis

}

altoMusic = {
ees'2 d'2*4/2 ~ \divisioMinima
d'2*3/2 ~ d'4 ~ d'2*5/2 g'2*6/2 f'2 \divisioMaior
d'4 ~ d'2*3/2 ~ d'2 ~ d'2*5/2 ~ d'4 \divisioMaior
ees'2*3/2 d'2 ~ d'2*3/2 ~ d'2 ees'2*3/2 f'4 ~ \divisioMaxima
f'2*3/2 ees'2*4/2 \divisioMinima
f'2*4/2 ~ f'2 g'2*4/2 d'2 ~ d'2*4/2 ~ d'2*4/2 \divisioMaior
ees'4 ~ ees'2*3/2 d'2*4/2 bes2*5/2 ~ bes4 \finalis
ees'4 ~ ees'2 d'2*5/2 ~ d'2*3/2 ~ d'2*4/2 ~ d'2 ~ d'2*3/2 \divisioMaxima
ees'2*5/2 f'2*5/2 g'2*4/2 f'2*3/2 ees'2 ~ \divisioMaior
ees'4 ~ ees'2*3/2 f'2*3/2 ~ f'2 ~ f'2 d'4 ~ d'4 ees'2*3/2 ~ ees'2*3/2 ~ ees'2*3/2 \divisioMinima
d'2 ~ d'2*3/2 ~ d'2 \divisioMaxima
g'2 f'2*4/2 ees'2*3/2 ~ \divisioMinima
ees'2*3/2 f'2 \divisioMaxima
g'2 f'2*5/2 ~ f'2 d'4 ~ d'4 \finalis
}

tenorMusic = {
c'2 bes2*4/2 \divisioMinima
r2*3/2 a4 bes2*5/2 ~ bes2*6/2 ~ bes2 ~ \divisioMaior
bes4 a2*3/2 g2 ~ g2*5/2 ~ g4 ~ \divisioMaior
g2*3/2 ~ g2 a2*3/2 g2 ~ g2*3/2 f4 \divisioMaxima
bes2*3/2 ~ bes2*4/2 ~ \divisioMinima
bes2*6/2 ~ bes2*4/2 ~ bes2 a2*4/2 bes2*4/2 ~ \divisioMaior
bes2*4/2 ~ bes2*4/2 f2*5/2 g4 \finalis
r4 c'2 bes2*5/2 a2 ~ \divisioMinima
a4 r2*4/2 a2 bes2*3/2 ~ \divisioMaxima
bes2*5/2 ~ bes2*5/2 ~ bes2*4/2 ~ bes2*3/2 ~ bes2 ~ \divisioMaior
bes4 g2*3/2 f2*3/2 g2 a2 g4 bes4 ees'2*3/2 d'2*3/2 c'2*3/2 \divisioMinima
bes2 ~ bes2*3/2 ~ bes2 ~ \divisioMaxima
bes2 ~ bes2*4/2 ~ bes2*3/2 ~ \divisioMinima
bes2*3/2 ~ bes2 ~ \divisioMaxima
bes2 ~ bes2*5/2 a2 g4 bes4 \finalis
}

bassMusic = {
r2*6/2 \divisioMinima
g2*3/2 ~ g4 ~ g2*5/2 ees2*6/2 d2 \divisioMaior
bes,4 ~ bes,2*3/2 ~ bes,2 a,2*5/2 g,4 \divisioMaior
c2*3/2 bes,2 ~ bes,2*3/2 ~ bes,2 c2*3/2 d4 ~ \divisioMaxima
d2*3/2 c2*4/2 \divisioMinima
d2*6/2 ees2*4/2 g2 ~ g2*4/2 ~ g2*4/2 \divisioMaior
c2*4/2 bes,2*4/2 d2*5/2 ees4 \finalis
r2*11/2 g2*4/2 ~ g2 ~ g2*3/2 \divisioMaxima
c2*5/2 d2*5/2 ees2*4/2 d2*3/2 c2 ~ \divisioMaior
c4 ~ c2*3/2 d2*3/2 ~ d2 ~ d2 g4 ~ g4 r2*9/2 \divisioMinima
r2 a2*3/2 g2 \divisioMaxima
ees2 d2*4/2 c2*3/2 ~ \divisioMinima
c2*3/2 d2 \divisioMaxima
ees2 d2*5/2 ~ d2 g4 ~ g4 \finalis
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
