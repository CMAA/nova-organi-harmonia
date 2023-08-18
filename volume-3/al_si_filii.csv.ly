\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.154
%(volume.page)

global = {
 \key e \phrygian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Si filii" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Si filii"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Si filii" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- ia. 
\set stanza = " * " 
_ _ _ _ _ _ _ _ _ _ ℣. 
Si fí -- li -- i, et hæ -- ré -- des; 
hæ -- ré -- des qui -- dem De -- i, 
co -- hæ -- ré -- des au -- tem Chri -- sti: 
si ta -- men com -- pá -- ti -- mur, _ _ 
\set stanza = " * " 
ut et con -- glo -- ri -- fi -- cé -- mur. 
_ _ _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   e'4 ( \once \tweak #'font-size #-4 d' ) g'4 a'4 ( c''4) a'4 \divisioMaior
 a'4 ( b'\prall c''4) d''4 ( c''4 a'4 g'4) b'4 ( d''4 c''4) ~ c''4 ( c''4) ~ c''4 ( a'4.) b'4 ( a'4 g'4 e'4) ~ e'4 ( d'4) \divisioMinima
 a'4 ( a'4 g'4 f'4) c''4 ( c''4 b'4 a'4 g'4) a'4 ( f'4) ~ f'4 ( e'4) \finalis
 e'4 ( d'4) g'4 a'4 ( c''4) b'4 a'4 b'4 ( d''4) c''4 ( b'4) a'4 ( g'4) \divisioMaior
 b'4 ( a'4) c''4 ( d''4) c''4 ( c''4 b'4) a'4 ( g'4) a'4 ( b'4 a'4) g'4 ( f'4) e'4 ( d'4) \divisioMaior
 d'4 ( a'4) a'4 ( c''4) c''4 ( c''4 b'4) g'4 ( g'4 f'4) g'4 g'4 ( a'4 g'4) e'4 e'4 \divisioMaxima
 g'4 ( a'4) g'4 ( a'\prall b'4 c''4) c''4 b'4 ( \once \tweak #'font-size #-4 a' ) c''4 ( b'4) c''4 ( d''4) d''4. c''4 ( d''4 c''4) ~ c''4 ( b'4) \divisioMaior
 g'4 a'4 g'4 a'4 ( c''4) c''4 b'4 ( a'4 d''4) d''4 ( c''4 b'4 a'4 b'\prall c''4 d''4 c''4 b'4) b'4 \divisioMaior
 a'4 ( b'\prall c''4) d''4 ( c''4 a'4 g'4) b'4 ( d''4 c''4) ~ c''4 ( c''4) ~ c''4 ( a'4.) b'4 ( a'4 g'4 e'4) ~ e'4 ( d'4) \divisioMinima
 a'4 ( a'4 g'4 f'4) c''4 ( c''4 b'4 a'4 g'4) a'4 ( f'4) ~ f'4 ( e'4) \finalis

}

altoMusic = {
r4 \tiny d' \normalsize4 d'4 e'2 ~ e'4 ~ \divisioMaior
e'2*3/2 ~ e'2 d'2 e'2*3/2 ~ e'2 ~ e'2*11/4 ~ e'4 ~ e'4 d'4 \divisioMinima
f'2*3/2 ~ f'4 e'2*3/2 d'2*3/2 c'2*3/2 \finalis
r2 c'2*5/2 d'2 ~ d'2 ~ d'2 \divisioMaior
e'2 ~ e'2 ~ e'2*3/2 d'2 e'2*3/2 d'2 a2 \divisioMaior
d'2 ~ d'2 c'2*3/2 ~ c'2*4/2 d'2*3/2 ~ d'4 c'4 \divisioMaxima
d'2 e'2*5/2 ~ e'2 f'2*4/2 g'2*7/4 e'2*3/2 ~ \divisioMaior
e'2*3/2 ~ e'2*3/2 f'2*3/2 g'2*3/2 ~ g'2*6/2 ~ g'4 \divisioMaior
e'2*3/2 ~ e'2 d'2 e'2*3/2 ~ e'2 ~ e'2*11/4 ~ e'4 ~ e'4 d'4 \divisioMinima
f'2*3/2 ~ f'4 e'2*3/2 d'2*3/2 c'2*3/2 \finalis
}

tenorMusic = {
r2 b4 ~ b2 ~ b4 \divisioMaior
c'2*3/2 b2 ~ b2 ~ b2*3/2 a2 b2*5/4 ~ b2*3/2 a2*3/2 ~ \divisioMinima
a2*4/2 ~ a2*3/2 ~ a2*3/2 ~ a2*3/2 \finalis
b2 a2*5/2 g2 d'2 c'4 b4 \divisioMaior
a2 ~ a2 b2*3/2 ~ b2 c'2*3/2 a2 g4 f4 ~ \divisioMaior
f2 e2 ~ e2*3/2 g2*4/2 ~ g2*3/2 ~ g2 ~ \divisioMaxima
g2 ~ g2*5/2 a2 ~ a2*4/2 g2*7/4 ~ g2*3/2 \divisioMaior
b2*3/2 a2*3/2 ~ a2*3/2 g2*3/2 a2*6/2 b4 \divisioMaior
c'2*3/2 b2 ~ b2 ~ b2*3/2 a2 b2*5/4 ~ b2*3/2 a2*3/2 ~ \divisioMinima
a2*4/2 ~ a2*3/2 ~ a2*3/2 ~ a2*3/2 \finalis
}

bassMusic = {
r2*3/2 a2 g4 \divisioMaior
a2*3/2 ~ a2 b2 a2*3/2 ~ a2 ~ a2*5/4 g2*3/2 f2*3/2 \divisioMinima
d2*4/2 c2*3/2 b,2*3/2 a,2*3/2 \finalis
g2 ~ g2*5/2 ~ g2 ~ g2 ~ g2 ~ \divisioMaior
g2 a2 ~ a2*3/2 b2 a2*3/2 d2 ~ d2 ~ \divisioMaior
d2 b,2 a,2*3/2 ~ a,2*4/2 b,2*3/2 c2 \divisioMaxima
b,2 c2*5/2 ~ c2 d2*4/2 e2*7/4 ~ e2*3/2 ~ \divisioMaior
e2*3/2 c2*3/2 d2*3/2 e2*3/2 ~ e2*6/2 ~ e4 \divisioMaior
a2*3/2 ~ a2 b2 a2*3/2 ~ a2 ~ a2*5/4 g2*3/2 f2*3/2 \divisioMinima
d2*4/2 c2*3/2 b,2*3/2 a,2*3/2 \finalis
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
        "III"
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
