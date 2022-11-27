\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.431
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Beati mundo corde" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Beati mundo corde"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Beati mundo corde" }
    \line {}
  }
}

chantText = \lyricmode {
Be -- á -- ti mun -- do cor -- de, 
\set stanza = " * " quó -- ni -- am i -- psi De -- um vi -- dé -- bunt: 
be -- á -- ti pa -- cí -- fi -- ci, _ 
quó -- ni -- am fí -- li -- i De -- i vo -- ca -- bún -- tur: 
be -- á -- ti qui per -- se -- cu -- ti -- ó -- nem pa -- ti -- ún -- tur pro -- pter _ ju -- stí -- ti -- am, 
quó -- ni -- am i -- psó -- rum est _ 
re -- gnum cœ -- ló -- rum. }

chantMusic = {
\tieDown   a'4 a'4 a'4 ( g'4) a'4 ( c''4) c''4 ( b'4) a'4 ( b'4) a'4 \divisioMinima
 a'4 g'4 a'4 ( g'4 e'4) f'4 ( g'4 a'4) g'4 \divisioMinima
 a'4 ( g'4 f'4) g'4 f'4 ( e'4) d'4 ( e'4 f'4 e'4 d'4 e'4) e'4 ( d'4) \divisioMaxima
 d'4 ( f'4) f'4 ( e'4 f'4) d'4 ( e'\prall f'4) f'4 ( d'4) f'4 ( a'4) g'4 ( f'4) f'4 ( g'4 a'4) ~ a'4 ( g'4) \divisioMaior
 g'4 ( a'4) g'4 ( f'4) f'4 g'4 ( a'4) a'4 a'4 c''4 a'4 a'4 a'4 ( g'4) f'4 ( g'4 a'4 \tiny g' f' 4) g'4 f'4 \divisioMaxima
 f'4 ( a'4 c''4) c''4 ( d''4 e''4) d''4 ( c''4) \divisioMinima
 c''4 c''4 a'4 c''4 g'4 a'4 g'4 a'4 g'4 a'4 c''4 ( a'4 b'\prall c''4 b'4) \divisioMinima
 g'4 a'4 ( g'4) ~ g'4 ( f'4) g'4 ( a'4) f'4 f'4 ( g'4 a'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMaxima
 a'4 g'4 a'4 ( g'4 a'4) f'4 g'4 ( f'4 g'4) f'4 ( e'4) d'4 ( f'4 d'4) ~ d'4 ( c'4) \divisioMaior
 f'4 ( e'4 g'\prall a'4 g'4 a'4) g'4 ( a'4) f'4 ( e'4) d'4 ( e'4 f'4 e'4 d'4 e'4) e'4 ( d'4) \finalis

}

altoMusic = {
r2 e'2 ~ e'2*4/2 ~ e'2 ~ e'4 ~ \divisioMinima
e'2 ~ e'2*3/2 c'2*3/2 ~ c'4 ~ \divisioMinima
c'2*4/2 ~ c'2 a2*6/2 ~ a2 \divisioMaxima
bes2 ~ bes2*3/2 ~ bes2*3/2 c'2 ~ c'2*4/2 ~ c'2 ~ c'2*3/2 ~ \divisioMaior
c'2*5/2 ~ c'2*4/2 ~ c'2*3/2 ~ c'2 ~ c'2*5/2 ~ c'2 \divisioMaxima
f'4 ~ f'2 g'2*5/2 ~ \divisioMinima
g'4 e'2*4/2 ~ e'2*4/2 ~ e'2 f'2*3/2 g'4 \divisioMinima
c'2 ~ c'2*3/2 ~ c'2 ~ c'4 ~ c'2*6/2 ~ c'2 ~ \divisioMaxima
c'2*6/2 ~ c'2*3/2 ~ c'2 a2 g2*3/2 \divisioMaior
c'2*3/2 ~ c'2*5/2 ~ c'2 a2*6/2 ~ a2 \finalis
}

tenorMusic = {
r4 b2*3/2 c'2 e'2 d'2 c'4 ~ \divisioMinima
c'2 b2*3/2 a2*3/2 ~ a4 ~ \divisioMinima
a2*4/2 g2 ~ g2*6/2 f2 \divisioMaxima
g2 d2*3/2 f2*3/2 ~ f2 c2*4/2 d2 e2*3/2 \divisioMaior
a2*5/2 f2*4/2 g2*3/2 f2 bes2*5/2 a2 ~ \divisioMaxima
a4 c'2 ~ c'2*5/2 ~ \divisioMinima
c'4 ~ c'2*4/2 b2*4/2 c'2 ~ c'2*3/2 d'4 \divisioMinima
g2 ~ g2*3/2 ~ g2 a4 bes2*6/2 a2 \divisioMaxima
e2 f2*4/2 e2*3/2 g2 f2 g2*3/2 ~ \divisioMaior
g2*3/2 e2*5/2 g2 ~ g2*6/2 f2 \finalis
}

bassMusic = {
a4 ~ a2*3/2 ~ a2 ~ a2 ~ a2 ~ a4 \divisioMinima
c2 ~ c2*3/2 d2*3/2 e4 \divisioMinima
f2*4/2 c2 d2*6/2 ~ d2 \divisioMaxima
g,2 ~ g,2*3/2 ~ g,2*3/2 a,2 ~ a,2*4/2 ~ a,2 c2*3/2 \divisioMaior
d2*5/2 ~ d2*4/2 e2*3/2 f2 ~ f2*5/2 ~ f2 \divisioMaxima
d4 ~ d2 e2*5/2 ~ \divisioMinima
e4 a2*4/2 ~ a2*4/2 ~ a2 ~ a2*3/2 g4 \divisioMinima
e2 d2*3/2 e2 f4 ~ f2*6/2 ~ f2 \divisioMaxima
c2 a,2*4/2 ~ a,2*3/2 ~ a,2 d2 e2*3/2 \divisioMaior
c2*3/2 ~ c2*5/2 ~ c2 d2*6/2 ~ d2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Communion"
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
