\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.271
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Per te Dei Genitrix" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Per te Dei Genitrix"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Per te Dei Genitrix" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- _ _ ia, 
\set stanza = " * " 
al -- le -- lú -- _ _ ia. _ _ _ _ _ _ 
_ _ _ _ _ _ _ _ _ _ ℣. 
Per _ te, _ De -- _ _ i Gé -- ni -- trix, 
no -- _ bis est vi -- ta pér -- di -- ta _ da -- ta: 
quæ _ de cœ -- lo su -- sce -- pí -- sti pro -- lem, 
et mun -- _ _ do ge -- nu -- _ í -- sti 
\set stanza = " * " Sal -- va -- tó -- _ _ rem. _ _ _ _ _ _ 
_ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   d'4 e'4 ( f'4 g'4) g'4 ( e'4) f'4 ( g'4 e'4) ~ e'4 ( \once \tweak #'font-size #-4 d' ) d'4 \divisioMaior
  d'4 e'4 ( f'4 g'4) g'4 ( e'4) f'4 ( g'4 e'4) ~ e'4 ( \once \tweak #'font-size #-4 d' ) d'4 \divisioMinima
 c'4 d'4 ( d'4) c'4 ( d'4) e'4 ( d'4.) e'4 ( f'4 g'4) ~ g'4 ( f'4 d'4) e'4 ( c'4 d'4) \divisioMaior
 d'4 ( a'4) ~ a'4 ( f'4) g'4 ( a'4 d'4) ~ d'4 ( c'4) d'4 ( f'4 d'4 e'4) \divisioMinima
 f'4 ( a'4 g'4) a'4 ( f'4 e'4 d'4.) f'4 ( e'4) g'4 ( f'4 e'4 c'4) e'4 ( e'4 d'4) \finalis
 d'4 a'4 ( \once \tweak #'font-size #-4 g' ) a'4 ( g'4) ~ g'4 ( d'4) f'4. e'4 ( g'4) a'4 ( e'4) ~ e'4 ( d'4) d'4 c'4 c'4 ( d'4) d'4 \divisioMaior
  d'4 ( a'4) bes'4 ( a'4) g'4 ( a'4) a'4 ( e'4) f'4 ( e'4) c'4 e'4 ( f'4 \once \tweak #'font-size #-4 g' ) g'4 ( f'4) e'4 ( d'4) f'4 ( e'4) c'4 ( d'4) d'4 \divisioMaxima
 a'4 ( c''4) ~ c''4 ( b'4 g'4) g'4 ( a'4) a'4 g'4 c''4 c''4 ( b'4 a'4) b'4 ( g'4 a'4) a'4 a'4 ( d''4) c''4 ( b'4) \divisioMaior
 g'4 ( \once \tweak #'font-size #-4 c'' ) c''4 ( b'4 g'4) c''4 ( a'4) ~ a'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( a'4) g'4 ( e'4 f'4) g'4 ( e'4) f'4 ( d'4) c'4 ( d'4) d'4 \divisioMinima
 d'4 e'4 ( f'4 g'4) g'4 ( e'4) f'4 ( g'4 e'4) ~ e'4 ( d'4) d'4 \divisioMinima
 c'4 d'4 ( d'4) c'4 ( d'4) e'4 ( d'4.) e'4 ( f'4 g'4) ~ g'4 ( f'4 d'4) e'4 ( c'4 d'4) \divisioMaior
 d'4 ( a'4) ~ a'4 ( f'4) g'4 ( a'4 d'4) ~ d'4 ( c'4) d'4 ( f'4 d'4 e'4) \divisioMinima
 f'4 ( a'4 g'4) a'4 ( f'4 e'4 d'4.) f'4 ( e'4) g'4 ( f'4 e'4 c'4) e'4 ( e'4 d'4) \finalis

}

altoMusic = {
r4 a2*3/2 ~ a2*4/2 ~ a2*3/2 ~ a4 r4 c'2*3/2 ~ c'2*4/2 a2*3/2 ~ a4 ~ \divisioMinima
a4 ~ a2*4/2 ~ a2*9/4 ~ a2*4/2 ~ a2 ~ a4 ~ \divisioMaior
a4 d'2*5/2 ~ d'4 ~ d'4 c'4 ~ c'2*4/2 \divisioMinima
bes2*15/4 c'2 ~ c'2*4/2 ~ c'2 a4 \finalis
d'2*4/2 a2*3/2 ~ a2*9/4 ~ a2*5/2 ~ a2 ~ a4 d'2*4/2 ~ d'2 ~ d'2 c'2*3/2 ~ c'2*3/2 a2 ~ a2*4/2 ~ a2 ~ a4 \divisioMaxima
r4 e'2*4/2 ~ e'2 ~ e'2*3/2 ~ e'2*3/2 ~ e'2*4/2 ~ e'2 g'2 ~ \divisioMaior
g'2 ~ g'2*4/2 f'2*3/2 c'2 ~ c'2*3/2 ~ c'2 a2 ~ a2 ~ a4 ~ \divisioMinima
a4 c'2*3/2 ~ c'2*4/2 a2*3/2 ~ a4 ~ \divisioMinima
a4 ~ a2*4/2 ~ a2*9/4 ~ a2*4/2 ~ a2*3/2 ~ \divisioMaior
a4 d'2*5/2 ~ d'4 ~ d'4 c'4 ~ c'2*4/2 \divisioMinima
bes2*15/4 c'2 ~ c'2*4/2 ~ c'2 a4 \finalis
}

tenorMusic = {
r4 f2*3/2 e2*4/2 g2*3/2 f4 r4 g2*3/2 ~ g2*4/2 ~ g2*3/2 f4 ~ \divisioMinima
f4 ~ f2*4/2 ~ f2*9/4 ~ f2*4/2 g2 f4 ~ \divisioMaior
f4 ~ f2*5/2 ~ f2*3/2 ~ f2*4/2 ~ \divisioMinima
f2*15/4 ~ f2 e2*4/2 g2 f4 ~ \finalis
f2*4/2 e2*3/2 f2*9/4 g2*5/2 e2 f4 ~ f2*4/2 d2 e2 a2*3/2 g2*3/2 ~ g2 ~ g2*4/2 e2 f4 \divisioMaxima
r2*5/2 b2 c'2*3/2 d'2*3/2 b2*4/2 c'2 d'2 ~ \divisioMaior
d'2 c'2*4/2 ~ c'2*3/2 g2 ~ g2*3/2 ~ g2 ~ g2 e2 f4 ~ \divisioMinima
f4 g2*3/2 ~ g2*4/2 ~ g2*3/2 f4 ~ \divisioMinima
f4 ~ f2*4/2 ~ f2*9/4 ~ f2*4/2 g2 f4 ~ \divisioMaior
f4 ~ f2*5/2 ~ f2*3/2 ~ f2*4/2 ~ \divisioMinima
f2*15/4 ~ f2 e2*4/2 g2 f4 \finalis
}

bassMusic = {
r4 d2*3/2 ~ d2*4/2 ~ d2*3/2 ~ d4 r4 c2*3/2 a,2*4/2 d2*3/2 ~ d4 ~ \divisioMinima
d4 f2*4/2 e2*9/4 d2*4/2 ~ d2 ~ d4 ~ \divisioMaior
d4 c2*5/2 bes,2*3/2 a,2*4/2 \divisioMinima
g,2*15/4 a,2 ~ a,2*4/2 ~ a,2 d4 ~ \finalis
d2*4/2 ~ d2*3/2 ~ d2*9/4 ~ d2*5/2 ~ d2 ~ d4 bes,2*4/2 ~ bes,2 a,2 ~ a,2*3/2 c2*3/2 ~ c2 d2*4/2 ~ d2 ~ d4 \divisioMaxima
a4 ~ a2*4/2 ~ a2 ~ a2*3/2 ~ a2*3/2 ~ a2*4/2 ~ a2 g2 \divisioMaior
e2 ~ e2*4/2 f2*3/2 ~ f2 e2*3/2 c2 d2 ~ d2 ~ d4 ~ \divisioMinima
d4 c2*3/2 a,2*4/2 d2*3/2 ~ d4 ~ \divisioMinima
d4 f2*4/2 e2*9/4 d2*4/2 ~ d2*3/2 ~ \divisioMaior
d4 c2*5/2 bes,2*3/2 a,2*4/2 \divisioMinima
g,2*15/4 a,2 ~ a,2*4/2 ~ a,2 d4 \finalis
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
