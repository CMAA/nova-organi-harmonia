\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.171
%(volume.page)

global = {
 \key a \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Ecce Deus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Ecce Deus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Ecce Deus" }
    \line {}
  }
}

chantText = \lyricmode {
Ec -- ce De -- _ us 
\set stanza = " * " ád -- ju -- vat me, 
et Dó -- mi -- nus sus -- cé -- ptor est á -- ni -- mæ me -- _ æ: 
a -- vér -- te ma -- _ la in -- i -- mí -- cis me -- is, 
in ve -- ri -- tá -- te tu -- a di -- spér -- de il -- los, _ _ 
pro -- té -- ctor me -- _ us Dó -- mi -- ne. Ps. 
De -- us in nó -- mi -- ne tu -- o sal -- vum me fac: 
\set stanza = " * " 
et in vir -- tú -- te tu -- a jú -- di -- ca me. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   c''4 a'4 a'4 c''4 ( c''4 a'4 f'4) f'4   a'4 ( bes'4) g'4 ( f'4) f'4 ( g'4 f'4) f'4 \divisioMaior
 a'4 a'4 ( b'\prall c''4 \forceBreak
) g'4 ( f'4) f'4 \divisioMinima
 g'4 ( f'4 g'4) a'4 ( g'4 a'4) f'4 ( g'4 f'4) f'4 a'4 ( c''4) c''4 c''4 c''4 ( c''4 c''4) d''4 ( c''4 a'4) a'4 \divisioMaxima \forceBreak

 a'4 c''4 ( \once \tweak #'font-size #-4 d'' ) c''4 c''4 ( c''4) ~ c''4 ( a'4) a'4 \divisioMinima
 g'4 a'4 ( g'4 a'4) c''4 ( a'4 b'\prall c''4) c''4 ( b'4) b'4 ( d''4 c''4 b'4) b'4 \divisioMaxima \forceBreak

 a'4 ( \once \tweak #'font-size #-4 c'' ) b'4 ( b'4 c''4) a'4 a'4 g'4 g'4 ( f'4 a'4 g'4) g'4 \divisioMinima
 a'4 ( c''4) c''4 b'4 ( a'4) c''4 c''4 ( c''4) ~ c''4 ( a'4) ~ a'4 ( f'4) \divisioMaior \forceBreak

 f'4 f'4 ( g'4 a'4) c''4 ( a'4 c''4) c''4 ( c''4) d''4 ( c''4 g'4 a'4)  a'4 ( c''4 a'4 g'4 a'\prall bes'4 a'4 g'4) f'4 f'4 ( g'4 a'4 g'4 f'4 g'4) g'4 ( f'4) \finalis \forceBreak

 f'4 a'4 c''4 c''4 c''4 c''4 c''4 c''4 c''4 d''4 d''4 c''4 \divisioMaxima
 a'4 c''4 c''4 c''4 c''4 \forceBreak
 c''4 c''4 d''4 b'4 c''4 a'4 \finalis
  f'4 a'4 c''4 c''4 c''4 c''4 c''4 c''4 c''4 \divisioMinima
 c''4 c''4 \forceBreak
 c''4 c''4 d''4 d''4 c''4 \divisioMaxima
 a'4 c''4 c''4 c''4 c''4 c''4 c''4 c''4 c''4 \divisioMinima
 c''4 c''4 d''4 \forceBreak
 d''4 c''4 \divisioMaxima
 a'4 c''4 c''4 c''4 c''4 c''4 c''4 d''4 b'4 c''4 a'4 \finalis

}

altoMusic = {
f'2*3/2 e'2*4/2 d'4 ~ d'2 ~ d'2 ~ d'2*3/2 c'4 ~ \divisioMaior
c'4 e'2*3/2 d'2*3/2 \divisioMinima
c'2*3/2 ~ c'2*3/2 ~ c'2*3/2 ~ c'4 f'2 ~ f'2 e'2*3/2 f'2*3/2 e'4 \divisioMaxima
a'4 ~ a'2*3/2 g'2 f'2 e'4 ~ \divisioMinima
e'4 d'2*3/2 c'2*4/2 e'2 ~ e'2*4/2 ~ e'4 ~ \divisioMaxima
e'2 ~ e'2*4/2 c'2 e'2 ~ e'2 c'4 ~ \divisioMinima
c'2 e'4 d'2 c'4 e'2*3/2 f'2*4/2 ~ f'2*3/2 ~ f'2*3/2 g'2*6/2 f'2*3/2 d'2 ~ d'2*3/2 ~ d'4 ~ d'2 e'2*4/2 c'2 \finalis
r4 a'2 g'2*3/2 ~ g'2 <a' f'>2 <a' e'>2 \divisioMaxima
e'2*5/2 f'2 g'2 ~ g'4 f'4 ~ f'2*3/2 ~ f'2*6/2 \divisioMinima
g'2 f'2*3/2 g'2 \divisioMaxima
f'2 ~ f'2*4/2 g'2*3/2 \divisioMinima
f'2*3/2 e'2 \divisioMaxima
f'2 e'2*3/2 f'2 ~ f'2 e'2 \finalis
}

tenorMusic = {
a2*3/2 ~ a2*4/2 ~ a4 f2 a2 bes2*3/2 a4 ~ \divisioMaior
a4 ~ a2*3/2 ~ a2*3/2 \divisioMinima
g2*3/2 f2*3/2 bes2*3/2 a4 ~ a2 ~ a2 ~ a2*3/2 ~ a2*3/2 c'4 ~ \divisioMaxima
c'4 a2*3/2 ~ a2 ~ a2 ~ a4 ~ \divisioMinima
a4 e2*3/2 ~ e2*4/2 a2 ~ a2*4/2 g4 \divisioMaxima
c'2 g2*4/2 f2 ~ f2 d2 e4 \divisioMinima
f2 ~ f4 g2 a4 ~ a2*3/2 ~ a2*3/2 ~ \divisioMaior
a4 c'2*3/2 a2*3/2 g2*6/2 c'2*3/2 ~ c'2 bes2*3/2 b4 a2 c'2*4/2 a2 \finalis
f'2*3/2 ~ f'2*3/2 e'2*4/2 a2 ~ \divisioMaxima
a2*5/2 ~ a2 g2 c'4 ~ c'4 r2*3/2 a2*6/2 ~ \divisioMinima
a2 ~ a2*3/2 g2 \divisioMaxima
c'2 a2*4/2 ~ a2*3/2 ~ \divisioMinima
a2*3/2 ~ a2 ~ \divisioMaxima
a2 ~ a2*3/2 ~ a2 b4 d'4 ~ d'4 c'4 \finalis
}

bassMusic = {
f2*3/2 c2*4/2 d4 ~ d2 ~ d2 bes,2*3/2 f4 ~ \divisioMaior
f4 c2*3/2 d2*3/2 \divisioMinima
e2*3/2 f2*3/2 ~ f2*3/2 ~ f4 e2 d2 a2*3/2 ~ a2*3/2 ~ a4 \divisioMaxima
f4 ~ f2*3/2 e2 d2 c4 ~ \divisioMinima
c4 b,2*3/2 a,2*4/2 ~ a,2 e2*4/2 ~ e4 \divisioMaxima
a2 e2*4/2 f2 c2 ~ c2 ~ c4 \divisioMinima
a,2 ~ a,4 ~ a,2 ~ a,4 c2*3/2 d2*4/2 ~ d2*3/2 ~ d2*3/2 e2*6/2 f2*3/2 g2 ~ g2*3/2 d4 ~ d2 c2*4/2 f2 \finalis
r2*12/2 \divisioMaxima
c2*5/2 d2 e2 ~ e4 f4 ~ f2*3/2 ~ f2*6/2 \divisioMinima
e2 d2*3/2 e2 \divisioMaxima
f2 ~ f2*4/2 e2*3/2 \divisioMinima
d2*3/2 a,2 \divisioMaxima
d2 c2*3/2 d2 e2 a2 \finalis
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
