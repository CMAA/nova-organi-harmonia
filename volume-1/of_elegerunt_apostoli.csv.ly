\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.68
%(volume.page)

global = {
 \key g \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Elegerunt Apostoli" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Elegerunt Apostoli"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Elegerunt Apostoli" }
    \line {}
  }
}

chantText = \lyricmode {
E -- le -- gé -- _ _ _ runt 
\set stanza = " * " A -- pó -- _ _ sto -- li _ 
Sté -- pha -- num _ le -- _ _ ví -- _ tam, 
ple -- _ _ _ _ num _ fi -- _ _ de 
et Spí -- ri -- tu San -- cto: 
quem _ _ _ _ la -- pi -- da -- vé -- _ _ _ _ runt _ Ju -- dǽ -- _ i 
o -- rán -- tem, _ et di -- cén -- tem: 
Dó -- mi -- ne _ Je -- _ _ _ su, 
ác -- ci -- pe _ _ 
spí -- ri -- _ _ _ tum me -- _ um, 
al -- le -- _ _ _ _ _ lú -- ia. }

chantMusic = {
\tieDown  c'4 d'4 ( f'4) f'4. e'4 ( f'4 g'4 a'4 e'4 c'4 d'4.) e'4 ( g'4 g'4) ~ g'4 ( g'4) a'4 ( g'4) \divisioMinima
 g'4 g'4 ( b'4) a'4 ( b'\prall c''4) ~ c''4 ( g'4) f'4 ( g'4) g'4 ( f'4) ~ f'4 ( e'4 d'4) \divisioMaior \forceBreak

 f'4 f'4 ( a'4 g'4) a'4 ( f'4) ~ f'4 ( e'4) d'4 ( e'\prall f'4) g'4 ( e'4 d'4) e'4 ( d'4) c'4 ( d'4) ~ d'4 ( c'4) c'4 \divisioMaxima
 g'4 ( a'4) b'4 ( g'4) a'4 ( f'4) g'4. a'4 c''4 ( c''4) ~ c''4 ( c''4) d''4 ( a'4) ~ a'4 ( \once \tweak #'font-size #-4 g'  \forceBreak
) g'4 ( g'4) a'4 ( f'4) g'4 ( g'4 e'4) e'4 \divisioMaior
 e'4 a'4 ( g'4) a'4 ( g'4) a'4 ( b'4 g'4 a'4) f'4 f'4 \divisioMaxima
 f'4 ( a'4 g'4 f'4) g'4 ( f'4) d'4 ( g'4 f'4) ~ f'4 ( f'4) ~ f'4 ( c'4) \divisioMinima \forceBreak

 c'4 ( d'4) d'4 ( f'4) f'4 ( g'4) g'4 ( a'4) b'4 ( g'4) a'4 ( f'4) g'4. a'4 c''4 ( c''4) ~ c''4 ( c''4) d''4 ( a'4) ~ a'4 ( \once \tweak #'font-size #-4 f' ) a'4 ( b'4) g'4 ( a'4) ~ a'4 ( g'4) g'4 \divisioMaior \forceBreak

 d'4 d'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( f'4) ~ f'4 ( e'4) f'4 f'4 ( g'\prall a'4 g'4) f'4 ( \once \tweak #'font-size #-4 g' ) g'4 \divisioMaxima
 g'4 ( c''4 b'4) c''4 ( d''4 c''4) d''4 ( a'4) ~ a'4 ( f'4 a'4) a'4. f'4 ( a'4) c''4 ( a'4 b'4 \forceBreak
) g'4 ( a'4 g'4) g'4 \divisioMaior
 g'4 ( b'4 g'4 a'4) f'4 ( e'4 f'\prall g'4) g'4 ( f'4) g'4 ( f'4 d'4) ~ d'4 ( c'4) \divisioMaior
 c'4 ( d'4) e'4 ( f'4 g'4.) a'4 ( b'4 a'4 g'4) a'4 ( c''4) ~ c''4 ( c''4 b'4 a'4 g'4 \forceBreak
) a'4 ( b'4 a'4) g'4 ( a'4) ~ a'4 ( g'4) g'4 \divisioMaxima
 f'4 ( a'4) a'4 ( b'4 g'4 a'4.) e'4 ( g'4 f'4 f'4) ~ f'4 ( d'4) ~ d'4 ( c'4) \divisioMinima
 d'4 ( e'4 f'4) g'4 ( a'4 g'4) f'4 ( \once \tweak #'font-size #-4 g' ) g'4 \finalis

}

altoMusic = {
c'2*9/4 ~ c'2*6/2 ~ c'2*3/4 ~ c'2*3/2 d'2 e'2 ~ \divisioMinima
e'4 ~ e'2 ~ e'2 ~ e'2*3/2 d'2*3/2 ~ d'2*4/2 ~ \divisioMaior
d'4 c'2*4/2 ~ c'2*3/2 ~ c'2*3/2 ~ c'2*3/2 ~ c'2*3/2 b2*3/2 ~ b4 \divisioMaxima
e'2*4/2 d'2 e'2*5/4 g'2 f'2*3/2 e'2*3/2 d'2 c'2 b2*3/2 c'4 ~ \divisioMaior
c'4 b2 c'2*6/2 ~ c'2 ~ \divisioMaxima
c'2*4/2 a2*5/2 b2 c'2 ~ \divisioMinima
c'2 b2 a2 e'2*4/2 d'2 e'2*5/4 f'2 g'2*3/2 f'2*3/2 d'2*3/2 ~ d'2*3/2 ~ d'4 ~ \divisioMaior
d'4 ~ d'2*3/2 c'2*4/2 d'2*4/2 ~ d'2 ~ d'4 \divisioMaxima
g'2*7/2 f'2*4/2 e'2*3/4 f'2*5/2 d'2*3/2 ~ d'4 \divisioMaior
e'2*4/2 d'2*4/2 c'2*7/2 \divisioMaior
a2 c'2*7/4 ~ c'2*6/2 e'2*5/2 ~ e'2*4/2 d'2*3/2 ~ d'4 \divisioMaxima
c'2 ~ c'2*9/4 ~ c'2*5/2 a2*3/2 ~ \divisioMinima
a2*3/2 d'2*3/2 c'2 b4 \finalis
}

tenorMusic = {
f2*9/4 g2*6/2 f2*3/4 e2*3/2 ~ e2 ~ e2 ~ \divisioMinima
e4 c'2 b2 a2*3/2 ~ a2*3/2 ~ a2*4/2 ~ \divisioMaior
a4 ~ a2*4/2 ~ a2*3/2 ~ a2*3/2 g2*3/2 ~ g2*3/2 f2*3/2 e4 \divisioMaxima
g2*4/2 f2 c'2*5/4 g2 ~ g2*3/2 ~ g2*3/2 e2 ~ e2 d2*3/2 e4 ~ \divisioMaior
e4 d2 e2*6/2 f2 ~ \divisioMaxima
f2*4/2 ~ f2*5/2 ~ f2 ~ f2 ~ \divisioMinima
f2 ~ f2 ~ f2 c'2*4/2 f2 c'2*5/4 ~ c'2 ~ c'2*3/2 ~ c'2*3/2 ~ c'2*3/2 a2*3/2 b4 ~ \divisioMaior
b4 a2*3/2 ~ a2*4/2 c'2*4/2 ~ c'2 b4 \divisioMaxima
c'2*7/2 ~ c'2*4/2 ~ c'2*3/4 ~ c'2*5/2 ~ c'2*3/2 b4 \divisioMaior
c'2*4/2 a2*4/2 ~ a2*4/2 g2*3/2 \divisioMaior
f2 g2*7/4 f2*6/2 g2*5/2 ~ g2*4/2 d2*3/2 g4 \divisioMaxima
d2 e2*9/4 f2*5/2 e2*3/2 \divisioMinima
f2*3/2 e2*3/2 d2 ~ d4 \finalis
}

bassMusic = {
r2*9/4 a,2*6/2 ~ a,2*3/4 ~ a,2*3/2 b,2 c2 ~ \divisioMinima
c4 ~ c2 ~ c2 ~ c2*3/2 ~ c2*3/2 d2*4/2 ~ \divisioMaior
d4 ~ d2*4/2 e2*3/2 f2*3/2 e2*3/2 c2*3/2 ~ c2*3/2 ~ c4 ~ \divisioMaxima
c2*4/2 ~ c2 ~ c2*5/4 e2 d2*3/2 c2*3/2 b,2 a,2 ~ a,2*3/2 ~ a,4 ~ \divisioMaior
a,4 ~ a,2 ~ a,2*6/2 ~ a,2 \divisioMaxima
d2*4/2 ~ d2*5/2 ~ d2 a,2 \divisioMinima
d2 ~ d2 ~ d2 c2*4/2 ~ c2 ~ c2*5/4 d2 e2*3/2 d2*3/2 g2*3/2 ~ g2*3/2 ~ g4 ~ \divisioMaior
g4 f2*3/2 d2*4/2 ~ d2*4/2 g2 ~ g4 \divisioMaxima
e2*7/2 d2*4/2 c2*3/4 d2*5/2 g2*3/2 ~ g4 \divisioMaior
c2*4/2 ~ c2*4/2 d2*4/2 e2*3/2 \divisioMaior
f2 e2*7/4 d2*6/2 c2*5/2 ~ c2*4/2 b,2*3/2 ~ b,4 \divisioMaxima
a,2 ~ a,2*9/4 ~ a,2*5/2 ~ a,2*3/2 \divisioMinima
d2*3/2 b,2*3/2 a,2 g,4 \finalis
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
        "VIII"
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
