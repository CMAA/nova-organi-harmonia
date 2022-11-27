\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.143
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Sapientia hujus" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Sapientia hujus"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Sapientia hujus" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- _ lú -- _ ia, 
\set stanza = " * " 
al -- le -- _ lú -- _ ia. 
_ _ _ _ _ _ _ 
_ _ _ _ _ ℣. 
Sa -- pi -- én -- ti -- a hu -- _ jus mun -- _ di 
stul -- tí -- _ _ ti -- a _ est a -- pud De -- um, 
scri -- ptum est e -- nim: 
Dó -- mi -- nus no -- _ _ vit co -- gi -- ta -- ti -- ó -- nes sa -- pi -- én -- ti -- um, 
\set stanza = " * " 
quo -- ni -- am va -- _ _ næ sunt. _ _ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   c'4 ( \once \tweak #'font-size #-4 d' ) d'4 ( e'4 d'4) e'4 ( d'4 c'4) e'4 ( f'4) g'4 ( f'4 e'4 e'4) d'4 \divisioMaior
  c'4 ( \once \tweak #'font-size #-4 d' ) d'4 ( e'4 d'4) e'4 ( d'4 c'4) e'4 ( f'4) g'4 ( f'4 e'4 e'4) d'4 \divisioMaior
 d'4 ( a'4) ~ a'4 ( a'4 g'4 f'4) g'4 ( a'4 a'4) d'4 f'4 ( f'4) ~ f'4 ( e'4 d'4) e'4 ( d'4 c'4) e'4 ( e'4 d'4) \divisioMaior
 d'4 ( c'4 d'4) f'4 ( e'4) f'4 ( g'4 f'4 e'4 d'4.) e'4 ( d'4 c'4) d'4 ( e'\prall f'4 d'4) \finalis
 c'4 c'4 c'4 ( \once \tweak #'font-size #-4 d' ) d'4 d'4 e'4 ( d'4) e'4 ( \tiny d' c' 4) c'4 e'4 ( f'4) g'4 ( f'4 e'4 e'4) d'4 \divisioMaior
  d'4 ( a'4) a'4 ( a'4 g'4 f'4) g'4 ( a'4) bes'4 ( a'4) g'4 ( a'4) a'4 ( g'4 f'4) ~ f'4 ( e'4 d'4) d'4 ( c'4) \divisioMinima
 f'4 ( e'4) f'4 ( g'4 f'4 e'4 f'4) d'4 ( e'\prall f'4 e'4 f'4) e'4 ( d'4) \divisioMaxima
 a'4 g'4 a'4 c''4 c''4 ( d''4 c''4) \divisioMaior
 a'4 ( b'4) a'4 a'4 ( g'4) g'4 ( b'4 g'4) a'4 ( a'4 g'4) b'4 ( b'4 a'4) a'4 \divisioMinima
 a'4 a'4 ( g'4) g'4 ( c''4) c''4 ( b'4) c''4 ( d''4 c''4) a'4 ( g'4) a'4 g'4 f'4 ( e'4) c'4 ( d'4) d'4 ( e'4 d'4 c'4) \divisioMaior
 c'4 d'4 ( e'4) e'4 ( d'4) f'4 ( e'4) g'4 ( f'4 e'4 d'4) e'4 ( d'4) c'4 ( d'4) d'4. a'4 ( a'4) ~ a'4 ( g'4 f'4) g'4 ( a'4 a'4) d'4 f'4 ( f'4) ~ f'4 ( e'4 d'4) e'4 ( d'4 c'4) e'4 ( e'4 d'4) \divisioMinima
 d'4 ( c'4 d'4) f'4 ( e'4) f'4 ( g'4 f'4 e'4 d'4.) e'4 ( d'4 c'4) d'4 ( e'\prall f'4 d'4) \finalis

}

altoMusic = {
g2 a2*3/2 ~ a2 c'4 ~ c'2 d'2*4/2 ~ d'4 a2 ~ a2*3/2 ~ a2 c'4 ~ c'2 ~ c'2*4/2 a4 \divisioMaior
d'2 ~ d'2*4/2 c'2*3/2 ~ c'4 ~ c'2 a2*6/2 ~ a2 ~ a4 ~ \divisioMaior
a2*3/2 ~ a2 ~ a2*4/2 ~ a2*3/4 ~ a2*3/2 ~ a2*4/2 ~ \finalis
a2 ~ a2 ~ a2 ~ a2 ~ a2*3/2 c'4 ~ c'2*6/2 a4 d'2 ~ d'2*4/2 c'2 bes2 c'2 b2 ~ b2*4/2 a2 \divisioMinima
c'2 ~ c'2*5/2 a2*5/2 ~ a2 \divisioMaxima
c'2*3/2 ~ c'4 ~ c'2*3/2 \divisioMaior
d'2*3/2 c'2 d'2*3/2 e'2*3/2 ~ e'2*3/2 ~ e'4 ~ \divisioMinima
e'4 f'2 g'2 a'2 g'2*3/2 f'2 e'2 c'2 ~ c'4 d'4 a2*4/2 \divisioMaior
c'4 ~ c'2 a2 ~ a2 ~ a2*4/2 ~ a2*4/2 ~ a2*3/4 d'2 ~ d'2*3/2 c'2*4/2 ~ c'2 a2*6/2 ~ a2 ~ a4 ~ \divisioMinima
a2*3/2 ~ a2 ~ a2*4/2 ~ a2*3/4 ~ a2*3/2 ~ a2*4/2 \finalis
}

tenorMusic = {
e2 f2*3/2 g2*3/2 a2 bes2*4/2 a4 e2 f2*3/2 g2*3/2 a2 g2*4/2 f4 ~ \divisioMaior
f2 ~ f2*4/2 ~ f2*3/2 g4 a2 g2*6/2 ~ g2 f4 ~ \divisioMaior
f2*3/2 ~ f2 e2*4/2 f2*3/4 g2*3/2 f2*4/2 ~ \finalis
f2 ~ f2 ~ f2 e2 g2*3/2 ~ g4 ~ g2*6/2 f4 ~ f2 ~ f2*4/2 ~ f2 ~ f2 ~ f2 ~ f2 g2*4/2 ~ g2 \divisioMinima
a2 g2*5/2 ~ g2*5/2 f2 \divisioMaxima
e2*3/2 ~ e4 ~ e2*3/2 \divisioMaior
f2*3/2 g2 ~ g2*3/2 ~ g2*3/2 a2*3/2 c'4 ~ \divisioMinima
c'4 ~ c'2 ~ c'2 ~ c'2 ~ c'2*3/2 ~ c'2 ~ c'2 g2 ~ g2 ~ g2*4/2 ~ \divisioMaior
g2*3/2 f2 ~ f2 ~ f2*4/2 g2*4/2 f2*3/4 ~ f2 ~ f2*3/2 ~ f2*4/2 a2 g2*6/2 ~ g2 f4 ~ \divisioMinima
f2*3/2 ~ f2 e2*4/2 f2*3/4 g2*3/2 f2*4/2 \finalis
}

bassMusic = {
r2*10/2 g2*4/2 f4 a,2 ~ a,2*3/2 ~ a,2*3/2 ~ a,2 ~ a,2*4/2 d4 ~ \divisioMaior
d2 bes,2*4/2 a,2*3/2 ~ a,4 ~ a,2 ~ a,2*6/2 d2 ~ d4 \divisioMaior
r2*3/2 e2 d2*4/2 ~ d2*3/4 ~ d2*3/2 ~ d2*4/2 \finalis
r2 e2 d2 ~ d2 ~ d2*3/2 e4 c2*6/2 d4 c2 bes,2*4/2 a,2 g,2 f,2 g,2 ~ g,2*4/2 a,2 ~ \divisioMinima
a,2 ~ a,2*5/2 d2*5/2 ~ d2 \divisioMaxima
c2*3/2 b,4 a,2*3/2 ~ \divisioMaior
a,2*3/2 ~ a,2 b,2*3/2 c2*3/2 ~ c2*3/2 ~ c4 ~ \divisioMinima
c4 d2 e2 f2 e2*3/2 d2 c2 ~ c2 e2 d2*4/2 \divisioMaior
e2*3/2 f2 e2 d2*4/2 ~ d2*4/2 ~ d2*3/4 c2 bes,2*3/2 a,2*4/2 ~ a,2 ~ a,2*6/2 d2 ~ d4 \divisioMinima
f2*3/2 e2 d2*4/2 ~ d2*3/4 ~ d2*3/2 ~ d2*4/2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Alleluia"
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
