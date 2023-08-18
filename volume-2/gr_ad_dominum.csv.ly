\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.129
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Ad Dominum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Ad Dominum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Ad Dominum" }
    \line {}
  }
}

chantText = \lyricmode {
Ad Dó -- mi -- _ num, _ _ _ _ 
\set stanza = " * " 
dum tri -- bu -- lá -- _ rer, cla -- má -- _ _ _ _ _ _ _ vi, 
et ex -- au -- dí -- _ vit me. _ _ _ _ _ ℣. 
Dó -- mi -- ne, _ _ _ _ _ _ _ _ _ _ _ 
lí -- be -- ra á -- ni -- mam me -- _ am _ _ 
a lá -- _ _ _ bi -- is in -- í -- _ _ _ _ _ _ _ quis, 
et a lin -- _ _ _ _ gua 
\set stanza = " * " do -- ló -- sa. _ _ 
_ _ _ _ _ _ }

chantMusic = {
\tieDown   d'4 f'4 ( f'4) f'4 ( g'4 f'4) ~ f'4 ( f'4) f'4 ( d'4) f'4 ( g'4 e'4) f'4 ( g'4 d'4) e'4 ( d'4) ~ d'4 ( c'4) \divisioMaior
 f'4 f'4 a'4 \forceBreak
 c''4 ( a'4) c''4 ( c''4 c''4) c''4 \divisioMinima
 c''4 d''4 ( c''4.) b'4 ( c''4 b'4 a'4.) d''4 ( c''4) ~ c''4 ( c''4) ~ c''4 ( a'4 g'4) a'4 ( g'4) a'4 c''4 ( c''4) d''4 ( c''4 b'4) c''4 \divisioMaxima \forceBreak

 a'4 a'4 ( c''4 d''4) c''4 ( \once \tweak #'font-size #-4 a' ) a'4 c''4 ( c''4 g'4) a'4 f'4 ( g'4) f'4 ( g'4 a'4) c''4. d''4 ( e''4 c''4 a'4) \divisioMinima
  c''4 ( c''4 a'4 g'4.) a'4 ( bes'4 g'4 f'4 g'\prall a'4 g'4 \forceBreak
) a'4 ( c''4 a'4) a'4 f'4 ( g'4 f'4) \finalis
  c''4 d''4 ( c''4) c''4 ( c''4 b'4 a'4.) d''4 ( b'4) c''4 ( d''4 b'4.) c''4 ( d''4 c''4) ~ c''4 ( d''4 c''4 b'4 g'4) a'4. ~ a'4 ( a'4) \divisioMinima \forceBreak

  a'4 ( a'4 a'4) ~ a'4 ( a'4 a'4) ~ a'4 ( c''4) d''4 ( c''4) bes'4 ( bes'4) g'4 ( a'4 g'4) \divisioMaior
  bes'4 ( c''4 d''4) c''4 ( d''4 c''4 bes'4 a'4 bes'4) a'4 \divisioMinima
  a'4 ( bes'4 c''4) bes'4 a'4 ( \once \tweak #'font-size #-4 g' ) a'4 \forceBreak
 c''4 ( c''4 c''4) c''4. a'4 ( c''4 a'4 a'4) f'4 ( g'4 f'4) \divisioMaior
 f'4 a'4 ( f'4 a'4 g'4 f'4.) a'4 ( f'4) g'4 ( a'4 b'\prall c''4) ~ c''4 ( d''4) c''4 c''4 \divisioMinima
 c''4 d''4 ( c''4.) b'4 ( c''4 b'4 a'4 \forceBreak
) d''4 ( c''4) ~ c''4 ( c''4) ~ c''4 ( a'4 g'4) a'4 ( g'4) a'4 c''4 ( c''4) d''4 ( c''4 b'4) c''4 \divisioMaxima
 c''4 ( c''4 d''4) c''4 c''4 ( a'4) c''4 ( c''4) ~ c''4 ( g'4) a'4 ( g'4) a'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( f'4) \divisioMinima \forceBreak

 c''4 c''4 d''4 ( c''4 c''4) ~ c''4 ( a'4 g'4) ~ g'4 ( f'4) \divisioMaior
 a'4 ( f'4 a'4 g'4 f'4.) a'4 ( f'4) g'4 ( a'4) c''4 ( c''4) d''4 ( e''4 b'4 c''4 a'4.)  g'4 ( bes'4 a'4 f'4) \finalis

}

altoMusic = {
d'4 ~ d'2 ~ d'2*3/2 ~ d'2 bes2 a2*3/2 d'2*4/2 ~ d'4 r2 \divisioMaior
f'4 ~ f'2 e'2 g'2*4/2 ~ \divisioMinima
g'4 f'2*5/4 e'2*9/4 d'2 e'2 f'2*3/2 ~ f'2*3/2 g'2 e'2*4/2 \divisioMaxima
r4 f'4 ~ f'2*4/2 ~ f'4 c'2*4/2 d'2 ~ d'2*3/2 e'2*3/4 ~ e'2*4/2 f'2 e'2*5/4 d'2*3/2 ~ d'2*4/2 e'2 ~ e'2 c'2 ~ c'4 a'4 ~ a'2 f'2*9/4 ~ f'2*11/4 a'2*3/2 e'2 ~ e'2*3/2 ~ e'2*3/4 ~ e'2 r2*3/2 g'2*3/2 f'2*4/2 g'2 d'2 ~ d'4 f'2*3/2 ~ f'2*3/2 ~ f'2*3/2 ~ f'4 ~ f'2*7/2 ~ f'2*3/2 e'2*3/4 ~ e'2*4/2 d'2 ~ d'4 ~ \divisioMaior
d'4 ~ d'2*11/4 f'2 g'2*3/2 ~ g'2*4/2 ~ g'4 ~ \divisioMinima
g'4 f'2*5/4 e'2*3/2 a'4 ~ a'2 g'2 f'2*3/2 ~ f'2*3/2 e'2 g'2*4/2 \divisioMaxima
a'2*4/2 f'2 g'2 ~ g'2*4/2 f'2 c'2 ~ \divisioMinima
c'4 e'4 ~ e'2*3/2 ~ e'2 d'2*3/2 \divisioMaior
c'2 ~ c'2*7/4 f'2*4/2 e'2*6/2 ~ e'2*3/4 d'2*3/2 c'4 \finalis
}

tenorMusic = {
r4 a2 bes2*3/2 a2 g2 f2*3/2 a2*4/2 g2*3/2 \divisioMaior
r4 a2 ~ a2 ~ a2*5/2 ~ a2*5/4 ~ a2*9/4 ~ a2 ~ a2 ~ a2*3/2 c'2*3/2 ~ c'2 ~ c'2*4/2 \divisioMaxima
r2 a2*4/2 f4 g2*4/2 a2 bes2*3/2 a2*3/4 ~ a2*4/2 ~ a2 c'2*5/4 bes2*3/2 a2*4/2 ~ a2 c'2 bes2 a4 f'4 ~ f'2 e'2*9/4 f'2*11/4 e'2*3/2 ~ e'2 d'2*3/2 ~ d'2*3/4 c'2 ~ c'2*3/2 ~ c'2*3/2 f'2*4/2 d'2 c'2 bes4 ~ bes2*3/2 a2*3/2 g2*3/2 f4 ~ f2*7/2 g2*3/2 ~ g2*3/4 c'2*4/2 bes2 a4 ~ \divisioMaior
a4 ~ a2*11/4 d'2 ~ d'2*3/2 c'2*4/2 a4 ~ \divisioMinima
a4 ~ a2*5/4 ~ a2*4/2 ~ a2 ~ a2 ~ a2*3/2 c'2*3/2 ~ c'2 ~ c'2*4/2 ~ \divisioMaxima
c'2*4/2 ~ c'2 ~ c'2 ~ c'2*4/2 ~ c'2 a2 \divisioMinima
g2 ~ g2*3/2 a2 ~ a2*3/2 ~ \divisioMaior
a2 ~ a2*7/4 ~ a2*4/2 ~ a2*4/2 d'2 c'2*3/4 bes2*3/2 a4 \finalis
}

bassMusic = {
d4 ~ d2 ~ d2*3/2 ~ d2 ~ d2 ~ d2*3/2 ~ d2*4/2 e2*3/2 \divisioMaior
f4 ~ f2 a2 e2*4/2 ~ \divisioMinima
e4 d2*5/4 c2*9/4 f2 e2 d2*3/2 ~ d2*3/2 e2 a2*4/2 \divisioMaxima
f2 ~ f2*4/2 ~ f4 e2*4/2 d2 ~ d2*3/2 cv2*3/4 a,2*4/2 d2 ~ d2*5/4 ~ d2*3/2 ~ d2*4/2 c2 ~ c2 f2 ~ f4 r4 f2 a2*9/4 ~ a2*11/4 ~ a2*3/2 ~ a2 ~ a2*3/2 ~ a2*3/4 ~ a2 f2*3/2 e2*3/2 d2*4/2 g2 ~ g2 ~ g4 d2*3/2 f2*3/2 ~ f2*3/2 ~ f4 d2*7/2 c2*3/2 ~ c2*3/4 ~ c2*4/2 d2 ~ d4 ~ \divisioMaior
d4 f2*11/4 ~ f2 e2*3/2 ~ e2*4/2 ~ e4 ~ \divisioMinima
e4 d2*5/4 c2*4/2 f2 e2 d2*3/2 ~ d2*3/2 a2 e2*4/2 \divisioMaxima
f2*4/2 ~ f2 ~ f2 e2*4/2 d2 ~ d2 \divisioMinima
e2 c2*3/2 ~ c2 d2*3/2 \divisioMaior
f2 e2*7/4 d2*4/2 c2*6/2 ~ c2*3/4 f2*3/2 ~ f4 \finalis
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
