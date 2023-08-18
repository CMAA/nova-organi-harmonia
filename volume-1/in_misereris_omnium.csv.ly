\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.156
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Misereris omnium" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Misereris omnium"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Misereris omnium" }
    \line {}
  }
}

chantText = \lyricmode {
Mi -- se -- ré -- ris 
\set stanza = " * " o -- mni -- um, Dó -- mi -- ne, 
et ni -- hil o -- dí -- sti e -- ó -- _ rum quæ fe -- cí -- sti, 
dis -- sí -- mu -- lans pec -- cá -- ta hó -- mi -- _ num 
pro -- pter pæ -- ni -- _ tén -- ti -- am, 
et par -- cens il -- _ lis: _ 
qui -- a tu _ _ es 
Dó -- _ mi -- nus De -- _ _ us _ _ no -- ster. Ps. 
Mi -- se -- ré -- re me -- i De -- us, mi -- se -- ré -- re me -- i: 
\set stanza = " * " 
quó -- ni -- am in te con -- fí -- dit á -- ni -- ma me -- a. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   f'4 g'4 ( a'4 g'4) a'4 g'4  f'4 ( g'4 a'4) a'4 a'4 g'4 ( f'4 g'4) f'4 f'4 ( d'4 e'\prall f'4) \divisioMaior
 f'4 f'4 ( g'\prall a'4 g'4 a'4 \forceBreak
) g'4 ( f'4) f'4 f'4 ( g'4) g'4 ( f'4 f'4)  d'4 d'4 ( c'4) d'4 ( e'\prall f'4 f'4) e'4 ( d'4) d'4 ( g'4) f'4 ( g'4 f'4 f'4) d'4 ( e'4 d'4) d'4 \divisioMaxima \forceBreak

 d'4 f'4 f'4 ( g'4) g'4 ( a'4 g'4) g'4 ( d'4) f'4 ( g'4) a'4  g'4 ( bes'4 a'4 g'4) a'4 ( g'4) ~ g'4 ( f'4 g'4) g'4 ( f'4) \divisioMaior
 f'4 ( g'4) g'4 ( a'4 \forceBreak
) a'4 ( b'\prall c''4) d''4 ( b'4) c''4 ( b'4) a'4 a'4 ( b'4 c''4 b'4 a'4 b'4) b'4 ( a'4) \divisioMaxima
 f'4 ( a'4 g'4 \once \tweak #'font-size #-4 a' ) a'4 ( f'4 a'4) a'4 ( g'4 f'4 f'4) a'4 ( g'4) a'4 ( f'4 g'4) d'4 \forceBreak
 f'4 ( f'4 d'4 f'4) \divisioMaxima
 c'4 d'4 d'4 ( g'4 f'4) ~ f'4 ( e'4 c'4.) d'4 ( e'\prall f'4 e'4 d'4 e'4) e'4 ( d'4) \divisioMaior
 d'4 ( g'4 f'4) g'4 ( a'4) g'4 g'4 ( a'4) a'4. f'4 ( a'4 g'4 \forceBreak
) a'4 ( f'4 e'4 d'4) d'4 ( e'\prall f'4) g'4 ( e'4) f'4 ( e'4) d'4 ( e'4 f'4 e'4 d'4 e'4) e'4 ( d'4) \finalis
 f'4 g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 \forceBreak
 a'4 ( c''4) a'4 a'4 ( g'4) g'4 ( a'4) \divisioMaxima
 g'4 ( f'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 ( c''4 a'4) g'4 f'4 f'4 ( f'4 f'4) d'4 \finalis \forceBreak

  f'4 ( g'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 a'4 ( c''4) a'4 a'4 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) \divisioMaxima \forceBreak

 g'4 ( f'4) g'4 ( a'4) a'4 a'4 a'4 a'4 a'4 a'4 a'4 \divisioMinima
 a'4 a'4 ( c''4) a'4 a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) \divisioMaxima
 g'4 ( f'4) g'4 ( a'4 \forceBreak
) a'4 a'4 a'4 a'4 a'4 ( c''4 a'4) g'4 f'4 f'4 ( f'4 f'4) d'4 \finalis

}

altoMusic = {
a4 ~ a2*3/2 ~ a2 c'2*5/2 ~ c'2*4/2 a2*5/2 ~ a2*5/2 d'2*3/2 ~ d'2 c'2*4/2 a2*6/2 ~ a2 d'2 ~ d'2*4/2 a2*3/2 ~ a4 \divisioMaxima
r4 d'4 ~ d'2 ~ d'2*3/2 ~ d'2 ~ d'2*3/2 ~ d'2*5/2 ~ d'2*4/2 ~ d'2 \divisioMaior
r2 g'2 e'2*7/2 ~ e'4 ~ e'2*6/2 ~ e'2 \divisioMaxima
f'2*4/2 e'2*3/2 d'2*4/2 ~ d'2 ~ d'2*4/2 a2*3/2 ~ a4 \divisioMaxima
c'2 bes2 c'2*3/2 ~ c'2*3/4 d'2*6/2 a2 \divisioMaior
d'2*3/2 ~ d'2*3/2 ~ d'2 c'2*9/4 ~ c'2*4/2 d'2*5/2 ~ d'2 a2*6/2 ~ a2 \finalis
r4 e'2 f'2*4/2 e'2*4/2 ~ e'2*3/2 d'2 e'2 \divisioMaxima
d'2 ~ d'2*6/2 ~ d'2 c'2*3/2 ~ c'2 a2*3/2 ~ a4 r4 e'2*3/2 f'2*3/2 e'2*3/2 ~ \divisioMinima
e'2 ~ e'2*4/2 d'2 e'2 \divisioMaxima
d'2*4/2 ~ d'2*4/2 ~ d'2*3/2 ~ \divisioMinima
d'4 e'2*3/2 d'2 c'2 ~ \divisioMaxima
c'2*4/2 ~ c'2*4/2 ~ c'2*3/2 ~ c'2 a2*3/2 ~ a4 \finalis
}

tenorMusic = {
r4 e2*3/2 f2 ~ f2*5/2 e2*4/2 d2*5/2 ~ d2*5/2 ~ d2*3/2 e2 f2*4/2 ~ f2*6/2 ~ f2 ~ f2 g2*4/2 ~ g2*3/2 f4 \divisioMaxima
r4 a4 bes2 a2*3/2 bes2 c'2*3/2 bes2*5/2 a2*4/2 g4 f4 \divisioMaior
c'2 ~ c'2 ~ c'2*7/2 d'4 b2*6/2 c'2 \divisioMaxima
a2*4/2 ~ a2*3/2 bes2*4/2 a2 g2*4/2 ~ g2*3/2 f4 ~ \divisioMaxima
f2 ~ f2 ~ f2*3/2 g2*3/4 ~ g2*6/2 ~ g2 \divisioMaior
a2*3/2 g2*3/2 e2 f2*9/4 ~ f2*4/2 ~ f2*5/2 g2 ~ g2*6/2 e4 f4 \finalis
d'2*3/2 ~ d'2*4/2 c'2*4/2 ~ c'2*3/2 bes2 c'2 \divisioMaxima
a2 g2*6/2 f2 ~ f2*3/2 g2 ~ g2*3/2 f4 d'2*4/2 ~ d'2*3/2 c'2*3/2 \divisioMinima
d'2 c'2*4/2 bes2 c'2 \divisioMaxima
a2*4/2 g2*4/2 f2*3/2 ~ \divisioMinima
f4 g2*3/2 e2 ~ e2 \divisioMaxima
f2*4/2 e2*4/2 g2*3/2 a2 g2*3/2 f4 \finalis
}

bassMusic = {
d4 ~ d2*3/2 ~ d2 a,2*5/2 ~ a,2*4/2 d2*5/2 c2*5/2 bes,2*3/2 ~ bes,2 a,2*4/2 d2*6/2 c2 bes,2 ~ bes,2*4/2 d2*3/2 ~ d4 ~ \divisioMaxima
d4 ~ d4 g2 ~ g2*3/2 ~ g2 ~ g2*3/2 ~ g2*5/2 d2*4/2 ~ d2 ~ \divisioMaior
d2 e2 a2*7/2 ~ a4 ~ a2*6/2 ~ a2 \divisioMaxima
d2*4/2 c2*3/2 bes,2*4/2 ~ bes,2 ~ bes,2*4/2 d2*3/2 ~ d4 \divisioMaxima
a,2 g,2 a,2*3/2 ~ a,2*3/4 bes,2*6/2 d2 ~ \divisioMaior
d2*3/2 ~ d2*3/2 ~ d2 a,2*9/4 ~ a,2*4/2 bes,2*5/2 ~ bes,2 d2*6/2 ~ d2 \finalis
r2*11/2 a2*3/2 ~ a2 ~ a2 \divisioMaxima
d2 ~ d2*6/2 ~ d2 a,2*3/2 ~ a,2 d2*3/2 ~ d4 r2*10/2 \divisioMinima
bes2 a2*4/2 ~ a2 ~ a2 \divisioMaxima
d2*4/2 ~ d2*4/2 ~ d2*3/2 ~ \divisioMinima
d4 c2*3/2 bes,2 a,2 ~ \divisioMaxima
a,2*4/2 ~ a,2*4/2 ~ a,2*3/2 ~ a,2 d2*3/2 ~ d4 \finalis
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
        "I"
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
